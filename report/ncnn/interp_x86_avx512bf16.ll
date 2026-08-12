inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.2:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph108.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec168 = and i64 %i.df, -8                   ; 3 uses
  %i.ef = add nsw i64 %n.vec168, %i.dd
  %broadcast.splatinsert169 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat170 = shufflevector <8 x float> %broadcast.splatinsert169, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index173 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 2 uses
  %i.eg = add i64 %index173, %i.dd                ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.eg
  %wide.load174 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !56
  %i.ei = zext <8 x i16> %wide.load174 to <8 x i32>
  %i.ej = shl nuw <8 x i32> %i.ei, splat (i32 16)
  %i.ek = bitcast <8 x i32> %i.ej to <8 x float>
  %i.el = fmul fast <8 x float> %broadcast.splat170, %i.ek
  %i.em = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.eg
  %wide.load175 = load <8 x i16>, ptr %i.em, align 2, !tbaa !56
  %i.en = zext <8 x i16> %wide.load175 to <8 x i32>
  %i.eo = shl nuw <8 x i32> %i.en, splat (i32 16)
  %i.ep = bitcast <8 x i32> %i.eo to <8 x float>
  %i.eq = fmul fast <8 x float> %broadcast.splat172, %i.ep
  %i.er = fadd fast <8 x float> %i.eq, %i.el
  %i.es = bitcast <8 x float> %i.er to <8 x i32>
  %i.et = lshr <8 x i32> %i.es, splat (i32 16)
  %i.eu = trunc nuw <8 x i32> %i.et to <8 x i16>
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.077111, i64 %i.eg
  store <8 x i16> %i.eu, ptr %i.ev, align 2, !tbaa !56
  %index.next176 = add nuw i64 %index173, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next176, %n.vec168
  br i1 %i.ew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n177 = icmp eq i64 %i.df, %n.vec168
  br i1 %cmp.n177, label %._crit_edge, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv132.ph = phi i64 [ %i.dd, %iter.check ], [ %i.dd, %vector.memcheck ], [ %i.dn, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  br label %.lr.ph108

bb.e:                                             ; preds = %.lr.ph104, %bb.e
  %indvars.iv129 = phi i64 [ %i.cj, %.lr.ph104 ], [ %indvars.iv.next130, %bb.e ] ; 3 uses
  %i.ex = phi i32 [ %i.cc, %.lr.ph104 ], [ %i.fs, %bb.e ]
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv129 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 1, !tbaa !53
  %i.fa = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %i.fb = bitcast <2 x i64> %i.fa to <8 x i16>
  %i.fc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fd = bitcast <8 x i16> %i.fc to <4 x float>
  %i.fe = sext i32 %i.ex to i64
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 1, !tbaa !53
  %i.fh = insertelement <2 x i64> poison, i64 %i.fg, i64 0
  %i.fi = bitcast <2 x i64> %i.fh to <8 x i16>
  %i.fj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fk = bitcast <8 x i16> %i.fj to <4 x float>
  %i.fl = fmul fast <4 x float> %i.cg, %i.fd
  %i.fm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.fl)
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fo = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fn)
  %i.fp = bitcast <8 x bfloat> %i.fo to <2 x i64>
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.077111, i64 %indvars.iv129
  %i.fr = extractelement <2 x i64> %i.fp, i64 0
  store i64 %i.fr, ptr %i.fq, align 1, !tbaa !53
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 4 ; 3 uses
  %i.fs = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.ft = trunc i64 %indvars.iv.next130 to i32
  %i.fu = or i32 %i.ft, 3
  %i.fv = icmp slt i32 %i.fu, %i.fs
  br i1 %i.fv, label %bb.e, label %.preheader.loopexit, !llvm.loop !61

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph108 ], [ %indvars.iv132.ph, %.lr.ph108.preheader ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv132
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !56
  %i.fy = zext i16 %i.fx to i32
  %i.fz = shl nuw i32 %i.fy, 16
  %i.ga = bitcast i32 %i.fz to float
  %i.gb = fmul fast float %i.au, %i.ga
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %i.gc = load i16, ptr %gep, align 2, !tbaa !56
  %i.gd = zext i16 %i.gc to i32
  %i.ge = shl nuw i32 %i.gd, 16
  %i.gf = bitcast i32 %i.ge to float
  %i.gg = fmul fast float %i.aw, %i.gf
  %i.gh = fadd fast float %i.gg, %i.gb
  %i.gi = bitcast float %i.gh to i32
  %i.gj = lshr i32 %i.gi, 16
  %i.gk = trunc nuw i32 %i.gj to i16
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.077111, i64 %indvars.iv132
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !56
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next133, %i.de
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph108, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph108, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre142, %.preheader.._crit_edge_crit_edge ], [ %i.de, %middle.block ], [ %i.de, %vec.epilog.middle.block ], [ %i.de, %.lr.ph108 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.078110, i64 8
  %i.gn = getelementptr inbounds [2 x i8], ptr %.077111, i64 %.pre-phi
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.go = load i32, ptr %6, align 4, !tbaa !18    ; 2 uses
  %i.gp = sext i32 %i.go to i64
  %i.gq = icmp slt i64 %indvars.iv.next136, %i.gp
  br i1 %i.gq, label %.lr.ph113, label %._crit_edge114, !llvm.loop !63

._crit_edge119:                                   ; preds = %._crit_edge114, %.lr.ph118, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge119, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #7 {
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
  store <64 x float> %interleaved.vec, ptr %i.z, align 4, !tbaa !24
  %i.aw = icmp sgt <16 x i32> %i.v, splat (i32 -1) ; 3 uses
  %i.ax = fadd fast <16 x float> %i.al, %i.ag
  %i.ay = fadd fast <16 x float> %i.as, splat (float 1.000000e+00)
  %i.az = icmp slt <16 x i32> %i.v, splat (i32 1) ; 4 uses
  %predphi = select <16 x i1> %i.aw, <16 x float> %i.ax, <16 x float> %i.ay ; 2 uses
  %predphi116 = select <16 x i1> %i.aw, <16 x float> %i.aq, <16 x float> %i.at ; 2 uses
  %predphi117 = select <16 x i1> %i.aw, <16 x float> %i.at, <16 x float> zeroinitializer ; 2 uses
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi, <16 x ptr> align 4 %wide.gep, <16 x i1> %i.az), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi116, <16 x ptr> align 4 %wide.gep113, <16 x i1> %i.az), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi117, <16 x ptr> align 4 %wide.gep114, <16 x i1> %i.az), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> zeroinitializer, <16 x ptr> align 4 %wide.gep115, <16 x i1> %i.az), !tbaa !24
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
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi123, <16 x ptr> align 4 %wide.gep115, <16 x i1> %i.bg), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi124, <16 x ptr> align 4 %wide.gep114, <16 x i1> %i.bg), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi125, <16 x ptr> align 4 %wide.gep113, <16 x i1> %i.bg), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> zeroinitializer, <16 x ptr> align 4 %wide.gep, <16 x i1> %i.bg), !tbaa !24
  %predphi126 = select <16 x i1> %i.bg, <16 x i32> %broadcast.splat109, <16 x i32> %predphi122
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <16 x i32> %predphi126, ptr %i.bh, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next127 = add <16 x i32> %vec.ind112, splat (i32 16)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !46

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
  store <16 x float> %interleaved.vec149, ptr %i.bw, align 4, !tbaa !24
  %i.ct = icmp sgt <4 x i32> %i.bs, splat (i32 -1) ; 3 uses
  %i.cu = fadd fast <4 x float> %i.ci, %i.cd
  %i.cv = fadd fast <4 x float> %i.cp, splat (float 1.000000e+00)
  %i.cw = icmp slt <4 x i32> %i.bs, splat (i32 1) ; 4 uses
  %predphi150 = select <4 x i1> %i.ct, <4 x float> %i.cu, <4 x float> %i.cv ; 2 uses
  %predphi151 = select <4 x i1> %i.ct, <4 x float> %i.cn, <4 x float> %i.cq ; 2 uses
  %predphi152 = select <4 x i1> %i.ct, <4 x float> %i.cq, <4 x float> zeroinitializer ; 2 uses
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi150, <4 x ptr> align 4 %wide.gep145, <4 x i1> %i.cw), !tbaa !24
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi151, <4 x ptr> align 4 %wide.gep146, <4 x i1> %i.cw), !tbaa !24
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi152, <4 x ptr> align 4 %wide.gep147, <4 x i1> %i.cw), !tbaa !24
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep148, <4 x i1> %i.cw), !tbaa !24
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
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi158, <4 x ptr> align 4 %wide.gep148, <4 x i1> %i.dd), !tbaa !24
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi159, <4 x ptr> align 4 %wide.gep147, <4 x i1> %i.dd), !tbaa !24
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi160, <4 x ptr> align 4 %wide.gep146, <4 x i1> %i.dd), !tbaa !24
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep145, <4 x i1> %i.dd), !tbaa !24
  %predphi161 = select <4 x i1> %i.dd, <4 x i32> %broadcast.splat134, <4 x i32> %predphi157
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index142
  store <4 x i32> %predphi161, ptr %i.de, align 4, !tbaa !18
  %index.next162 = add nuw i64 %index142, 4       ; 2 uses
  %vec.ind.next163 = add nuw nsw <4 x i64> %vec.ind143, splat (i64 4)
  %vec.ind.next164 = add <4 x i32> %vec.ind144, splat (i32 4)
  %i.df = icmp eq i64 %index.next162, %n.vec128
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

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
  store float %i.dw, ptr %i.dq, align 4, !tbaa !24
  %i.dx = fmul fast float %i.dp, %i.dp
  %i.dy = fmul fast float %i.dp, 1.250000e+00
  %i.dz = fadd fast float %i.dy, -2.250000e+00
  %i.ea = fmul fast float %i.dx, %i.dz
  %i.eb = fadd fast float %i.ea, 1.000000e+00     ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 3 uses
  store float %i.eb, ptr %i.ec, align 4, !tbaa !24
  %i.ed = fmul fast float %i.ds, %i.ds
  %i.ee = fmul fast float %i.ds, 1.250000e+00
  %i.ef = fadd fast float %i.ee, -2.250000e+00
  %i.eg = fmul fast float %i.ed, %i.ef            ; 2 uses
  %i.eh = fadd fast float %i.eg, 1.000000e+00     ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  store float %i.eh, ptr %i.ei, align 4, !tbaa !24
  %i.ej = fadd fast float %i.eg, %i.eb
  %i.ek = fadd fast float %i.ej, %i.dw            ; 2 uses
  %i.el = fneg fast float %i.ek                   ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 3 uses
  store float %i.el, ptr %i.em, align 4, !tbaa !24
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
  store float %.sink100, ptr %i.dq, align 4, !tbaa !24
  store float %.sink99, ptr %i.ec, align 4, !tbaa !24
  store float %.sink, ptr %i.ei, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !24
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
  store float %.sink104, ptr %i.em, align 4, !tbaa !24
  store float %.sink103, ptr %i.ei, align 4, !tbaa !24
  store float %.sink102, ptr %i.ec, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.dq, align 4, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %.sink.split101, %bb.g
  %.3 = phi i32 [ %.1, %bb.g ], [ %i.l, %.sink.split101 ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.ey, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !66
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not164 = icmp sgt i32 %i.k, %i.j
  br i1 %.not164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !18     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph167.split.preheader, label %._crit_edge168

.lr.ph167.split.preheader:                        ; preds = %.lr.ph167
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph167.split

.lr.ph167.split:                                  ; preds = %.lr.ph167.split.preheader, %._crit_edge163
  %i.t = phi i32 [ %i.p, %.lr.ph167.split.preheader ], [ %i.am, %._crit_edge163 ] ; 2 uses
  %indvars.iv187 = phi i64 [ %i.r, %.lr.ph167.split.preheader ], [ %indvars.iv.next188, %._crit_edge163 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !39
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv187, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph162.preheader, label %._crit_edge163

.lr.ph162.preheader:                              ; preds = %.lr.ph167.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !27
  %i.ae = load ptr, ptr %4, align 8, !tbaa !29
  %i.af = load i32, ptr %i.n, align 4, !tbaa !39
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv187, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !34
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !18
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph162

._crit_edge163:                                   ; preds = %._crit_edge, %.lr.ph167.split
  %i.am = phi i32 [ %i.t, %.lr.ph167.split ], [ %i.ko, %._crit_edge ]
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next188 to i32
  %exitcond190.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond190.not, label %._crit_edge168, label %.lr.ph167.split, !llvm.loop !67

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph162.preheader ], [ %i.en, %._crit_edge ] ; 4 uses
  %indvars.iv184 = phi i64 [ 0, %.lr.ph162.preheader ], [ %indvars.iv.next185, %._crit_edge ] ; 2 uses
  %.0107160 = phi ptr [ %i.ak, %.lr.ph162.preheader ], [ %i.kn, %._crit_edge ] ; 8 uses
  %.0108159 = phi ptr [ %i.ad, %.lr.ph162.preheader ], [ %i.km, %._crit_edge ] ; 5 uses
  %.0107160213 = ptrtoaddr ptr %.0107160 to i64   ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv184
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0108159, align 4, !tbaa !24 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0108159, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !24 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0108159, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !24 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0108159, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !24 ; 6 uses
  %i.bb = icmp sgt i32 %i.an, 15
  br i1 %i.bb, label %.lr.ph, label %.preheader147

.lr.ph:                                           ; preds = %.lr.ph162
  %i.bc = insertelement <16 x float> poison, float %i.au, i64 0
  %i.bd = shufflevector <16 x float> %i.bc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.be = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.bf = shufflevector <16 x float> %i.be, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bg = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.bh = shufflevector <16 x float> %i.bg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bi = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bj = shufflevector <16 x float> %i.bi, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.c

.preheader147.loopexit:                           ; preds = %bb.c
  %i.bk = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.loopexit, %.lr.ph162
  %i.bl = phi i32 [ %i.an, %.lr.ph162 ], [ %i.cv, %.preheader147.loopexit ] ; 3 uses
  %.0110.lcssa = phi i32 [ 0, %.lr.ph162 ], [ %i.bk, %.preheader147.loopexit ] ; 3 uses
  %i.bm = or disjoint i32 %.0110.lcssa, 7
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph150, label %.preheader146

.lr.ph150:                                        ; preds = %.preheader147
  %i.bo = insertelement <8 x float> poison, float %i.au, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bq = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bs = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bu = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bw = zext nneg i32 %.0110.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bx = phi i32 [ %i.an, %.lr.ph ], [ %i.cv, %bb.c ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bz = sext i32 %i.bx to i64                   ; 2 uses
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load <16 x bfloat>, ptr %i.cb, align 1, !tbaa !53
  %i.cd = fpext fast <16 x bfloat> %i.cc to <16 x float>
  %i.ce = load <16 x bfloat>, ptr %i.by, align 1, !tbaa !53
  %i.cf = fpext fast <16 x bfloat> %i.ce to <16 x float>
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bz
  %i.ch = load <16 x bfloat>, ptr %i.cg, align 1, !tbaa !53
  %i.ci = fpext fast <16 x bfloat> %i.ch to <16 x float>
  %i.cj = shl nsw i32 %i.bx, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ck
  %i.cm = load <16 x bfloat>, ptr %i.cl, align 1, !tbaa !53
  %i.cn = fpext fast <16 x bfloat> %i.cm to <16 x float>
  %i.co = fmul fast <16 x float> %i.bd, %i.cd
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.co)
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.cp)
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cn, <16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.cq)
  %i.cs = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cr)
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0107160, i64 %indvars.iv
  store <16 x bfloat> %i.cs, ptr %i.ct, align 1, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.cu = or disjoint i64 %indvars.iv.next, 15
  %i.cv = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.c, label %.preheader147.loopexit, !llvm.loop !68

.preheader146.loopexit:                           ; preds = %bb.d
  %i.cy = trunc nuw nsw i64 %indvars.iv.next176 to i32
  br label %.preheader146

.preheader146:                                    ; preds = %.preheader146.loopexit, %.preheader147
  %i.cz = phi i32 [ %i.bl, %.preheader147 ], [ %i.ej, %.preheader146.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0110.lcssa, %.preheader147 ], [ %i.cy, %.preheader146.loopexit ] ; 3 uses
  %i.da = or disjoint i32 %.1.lcssa, 3
  %i.db = icmp slt i32 %i.da, %i.cz
  br i1 %i.db, label %.lr.ph153, label %.preheader

.lr.ph153:                                        ; preds = %.preheader146
  %i.dc = insertelement <4 x float> poison, float %i.au, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = zext nneg i32 %.1.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph150, %bb.d
  %indvars.iv175 = phi i64 [ %i.bw, %.lr.ph150 ], [ %indvars.iv.next176, %bb.d ] ; 3 uses
  %i.dl = phi i32 [ %i.bl, %.lr.ph150 ], [ %i.ej, %bb.d ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv175 ; 4 uses
  %i.dn = sext i32 %i.dl to i64                   ; 2 uses
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.do
  %i.dq = load <8 x bfloat>, ptr %i.dp, align 1, !tbaa !53
  %i.dr = fpext fast <8 x bfloat> %i.dq to <8 x float>
  %i.ds = load <8 x bfloat>, ptr %i.dm, align 1, !tbaa !53
  %i.dt = fpext fast <8 x bfloat> %i.ds to <8 x float>
  %i.du = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dn
  %i.dv = load <8 x bfloat>, ptr %i.du, align 1, !tbaa !53
  %i.dw = fpext fast <8 x bfloat> %i.dv to <8 x float>
  %i.dx = shl nsw i32 %i.dl, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dy
  %i.ea = load <8 x bfloat>, ptr %i.dz, align 1, !tbaa !53
  %i.eb = fpext fast <8 x bfloat> %i.ea to <8 x float>
  %i.ec = fmul fast <8 x float> %i.bp, %i.dr
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dt, <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.ec)
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.ed)
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.ee)
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.0107160, i64 %indvars.iv175
  %i.eh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ef)
  store <8 x bfloat> %i.eh, ptr %i.eg, align 1, !tbaa !53
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 8 ; 3 uses
  %i.ei = or disjoint i64 %indvars.iv.next176, 7
  %i.ej = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.d, label %.preheader146.loopexit, !llvm.loop !69

.preheader.loopexit:                              ; preds = %bb.e
  %i.em = trunc nuw i64 %indvars.iv.next179 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader146
  %i.en = phi i32 [ %i.cz, %.preheader146 ], [ %i.je, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader146 ], [ %i.em, %.preheader.loopexit ] ; 2 uses
  %i.eo = icmp slt i32 %.2.lcssa, %i.en
  br i1 %i.eo, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre191 = sext i32 %i.en to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ep = shl nsw i32 %i.en, 1
  %i.eq = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.er = sext i32 %i.en to i64                   ; 11 uses
  %i.es = sext i32 %i.ep to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.er ; 3 uses
  %invariant.gep208 = getelementptr [2 x i8], ptr %i.at, i64 %i.es ; 3 uses
  %i.et = sub nsw i64 %i.er, %i.eq                ; 7 uses
  %min.iters.check = icmp ult i64 %i.et, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eu = sub i64 %.0107160213, %i.al             ; 2 uses
  %i.ev = add nsw i64 %i.as, %i.es
  %i.ew = shl nsw i64 %i.ev, 1
  %i.ex = sub i64 %i.ew, %i.eu
  %diff.check = icmp ugt i64 %i.ex, -64
  %i.ey = add nsw i64 %i.er, %i.as
  %i.ez = shl nsw i64 %i.ey, 1
  %i.fa = sub i64 %i.ez, %i.eu
  %diff.check214 = icmp ugt i64 %i.fa, -64
  %conflict.rdx = or i1 %diff.check, %diff.check214
  %i.fb = sub i64 %.0107160213, %i.al             ; 2 uses
  %i.fc = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.fd = sub i64 %i.fc, %i.fb
  %diff.check215 = icmp ugt i64 %i.fd, -64
  %conflict.rdx216 = or i1 %conflict.rdx, %diff.check215
  %i.fe = shl nsw i64 %i.er, 1
  %i.ff = add i64 %i.fb, %i.fe
  %i.fg = sub i64 %i.fc, %i.ff
  %diff.check217 = icmp ugt i64 %i.fg, -64
  %conflict.rdx218 = or i1 %conflict.rdx216, %diff.check217
  br i1 %conflict.rdx218, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.et, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fh = and i64 %i.et, 24
  %n.vec = and i64 %i.et, -32                     ; 4 uses
  %i.fi = add nsw i64 %n.vec, %i.eq
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <32 x float> poison, float %i.aw, i64 0
  %broadcast.splat221 = shufflevector <32 x float> %broadcast.splatinsert220, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <32 x float> poison, float %i.ay, i64 0
  %broadcast.splat223 = shufflevector <32 x float> %broadcast.splatinsert222, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <32 x float> poison, float %i.ba, i64 0
  %broadcast.splat225 = shufflevector <32 x float> %broadcast.splatinsert224, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fj = add i64 %index, %i.eq                   ; 5 uses
  %i.fk = sub nsw i64 %i.fj, %i.er
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.fk
  %wide.load = load <32 x i16>, ptr %i.fl, align 2, !tbaa !56
  %i.fm = zext <32 x i16> %wide.load to <32 x i32>
  %i.fn = shl nuw <32 x i32> %i.fm, splat (i32 16)
  %i.fo = bitcast <32 x i32> %i.fn to <32 x float>
  %i.fp = fmul fast <32 x float> %broadcast.splat, %i.fo
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.fj
  %wide.load226 = load <32 x i16>, ptr %i.fq, align 2, !tbaa !56
  %i.fr = zext <32 x i16> %wide.load226 to <32 x i32>
  %i.fs = shl nuw <32 x i32> %i.fr, splat (i32 16)
  %i.ft = bitcast <32 x i32> %i.fs to <32 x float>
  %i.fu = fmul fast <32 x float> %broadcast.splat221, %i.ft
  %i.fv = fadd fast <32 x float> %i.fp, %i.fu
  %i.fw = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fj
  %wide.load227 = load <32 x i16>, ptr %i.fw, align 2, !tbaa !56
  %i.fx = zext <32 x i16> %wide.load227 to <32 x i32>
  %i.fy = shl nuw <32 x i32> %i.fx, splat (i32 16)
  %i.fz = bitcast <32 x i32> %i.fy to <32 x float>
  %i.ga = fmul fast <32 x float> %broadcast.splat223, %i.fz
  %i.gb = fadd fast <32 x float> %i.fv, %i.ga
  %i.gc = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.fj
  %wide.load228 = load <32 x i16>, ptr %i.gc, align 2, !tbaa !56
  %i.gd = zext <32 x i16> %wide.load228 to <32 x i32>
  %i.ge = shl nuw <32 x i32> %i.gd, splat (i32 16)
  %i.gf = bitcast <32 x i32> %i.ge to <32 x float>
  %i.gg = fmul fast <32 x float> %broadcast.splat225, %i.gf
  %i.gh = fadd fast <32 x float> %i.gb, %i.gg
  %i.gi = bitcast <32 x float> %i.gh to <32 x i32>
  %i.gj = lshr <32 x i32> %i.gi, splat (i32 16)
  %i.gk = trunc nuw <32 x i32> %i.gj to <32 x i16>
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.0107160, i64 %i.fj
  store <32 x i16> %i.gk, ptr %i.gl, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.et, -8                   ; 3 uses
  %i.gn = add nsw i64 %n.vec229, %i.eq
  %broadcast.splatinsert230 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat231 = shufflevector <8 x float> %broadcast.splatinsert230, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat233 = shufflevector <8 x float> %broadcast.splatinsert232, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert234 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat235 = shufflevector <8 x float> %broadcast.splatinsert234, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert236 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat237 = shufflevector <8 x float> %broadcast.splatinsert236, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index238 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 2 uses
  %i.go = add i64 %index238, %i.eq                ; 5 uses
  %i.gp = sub nsw i64 %i.go, %i.er
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.gp
  %wide.load239 = load <8 x i16>, ptr %i.gq, align 2, !tbaa !56
  %i.gr = zext <8 x i16> %wide.load239 to <8 x i32>
  %i.gs = shl nuw <8 x i32> %i.gr, splat (i32 16)
  %i.gt = bitcast <8 x i32> %i.gs to <8 x float>
  %i.gu = fmul fast <8 x float> %broadcast.splat231, %i.gt
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.go
  %wide.load240 = load <8 x i16>, ptr %i.gv, align 2, !tbaa !56
  %i.gw = zext <8 x i16> %wide.load240 to <8 x i32>
  %i.gx = shl nuw <8 x i32> %i.gw, splat (i32 16)
  %i.gy = bitcast <8 x i32> %i.gx to <8 x float>
  %i.gz = fmul fast <8 x float> %broadcast.splat233, %i.gy
  %i.ha = fadd fast <8 x float> %i.gu, %i.gz
  %i.hb = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.go
  %wide.load241 = load <8 x i16>, ptr %i.hb, align 2, !tbaa !56
  %i.hc = zext <8 x i16> %wide.load241 to <8 x i32>
  %i.hd = shl nuw <8 x i32> %i.hc, splat (i32 16)
  %i.he = bitcast <8 x i32> %i.hd to <8 x float>
  %i.hf = fmul fast <8 x float> %broadcast.splat235, %i.he
  %i.hg = fadd fast <8 x float> %i.ha, %i.hf
  %i.hh = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.go
  %wide.load242 = load <8 x i16>, ptr %i.hh, align 2, !tbaa !56
  %i.hi = zext <8 x i16> %wide.load242 to <8 x i32>
  %i.hj = shl nuw <8 x i32> %i.hi, splat (i32 16)
  %i.hk = bitcast <8 x i32> %i.hj to <8 x float>
  %i.hl = fmul fast <8 x float> %broadcast.splat237, %i.hk
  %i.hm = fadd fast <8 x float> %i.hg, %i.hl
  %i.hn = bitcast <8 x float> %i.hm to <8 x i32>
  %i.ho = lshr <8 x i32> %i.hn, splat (i32 16)
  %i.hp = trunc nuw <8 x i32> %i.ho to <8 x i16>
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.0107160, i64 %i.go
  store <8 x i16> %i.hp, ptr %i.hq, align 2, !tbaa !56
  %index.next243 = add nuw i64 %index238, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next243, %n.vec229
  br i1 %i.hr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %i.et, %n.vec229
  br i1 %cmp.n244, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv181.ph = phi i64 [ %i.eq, %iter.check ], [ %i.eq, %vector.memcheck ], [ %i.fi, %vec.epilog.iter.check ], [ %i.gn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %.lr.ph153, %bb.e
  %indvars.iv178 = phi i64 [ %i.dk, %.lr.ph153 ], [ %indvars.iv.next179, %bb.e ] ; 3 uses
  %i.hs = phi i32 [ %i.cz, %.lr.ph153 ], [ %i.je, %bb.e ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv178 ; 4 uses
  %i.hu = sext i32 %i.hs to i64                   ; 2 uses
  %i.hv = sub nsw i64 0, %i.hu
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 1, !tbaa !53
  %i.hy = insertelement <2 x i64> poison, i64 %i.hx, i64 0
  %i.hz = bitcast <2 x i64> %i.hy to <8 x i16>
  %i.ia = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ib = bitcast <8 x i16> %i.ia to <4 x float>
  %i.ic = load i64, ptr %i.ht, align 1, !tbaa !53
  %i.id = insertelement <2 x i64> poison, i64 %i.ic, i64 0
  %i.ie = bitcast <2 x i64> %i.id to <8 x i16>
  %i.if = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ie, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ig = bitcast <8 x i16> %i.if to <4 x float>
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.hu
  %i.ii = load i64, ptr %i.ih, align 1, !tbaa !53
  %i.ij = insertelement <2 x i64> poison, i64 %i.ii, i64 0
  %i.ik = bitcast <2 x i64> %i.ij to <8 x i16>
  %i.il = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.im = bitcast <8 x i16> %i.il to <4 x float>
  %i.in = shl nsw i32 %i.hs, 1
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 1, !tbaa !53
  %i.ir = insertelement <2 x i64> poison, i64 %i.iq, i64 0
  %i.is = bitcast <2 x i64> %i.ir to <8 x i16>
  %i.it = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.is, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iu = bitcast <8 x i16> %i.it to <4 x float>
  %i.iv = fmul fast <4 x float> %i.dd, %i.ib
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ig, <4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.iv)
  %i.ix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.iw)
  %i.iy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.ix)
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ja = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.iz)
  %i.jb = bitcast <8 x bfloat> %i.ja to <2 x i64>
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.0107160, i64 %indvars.iv178
  %i.jd = extractelement <2 x i64> %i.jb, i64 0
  store i64 %i.jd, ptr %i.jc, align 1, !tbaa !53
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 4 ; 3 uses
  %i.je = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.jf = trunc i64 %indvars.iv.next179 to i32
  %i.jg = or i32 %i.jf, 3
  %i.jh = icmp slt i32 %i.jg, %i.je
  br i1 %i.jh, label %bb.e, label %.preheader.loopexit, !llvm.loop !72

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %vec.epilog.scalar.ph ], [ %indvars.iv181.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.ji = sub nsw i64 %indvars.iv181, %i.er
  %i.jj = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !56
  %i.jl = zext i16 %i.jk to i32
  %i.jm = shl nuw i32 %i.jl, 16
  %i.jn = bitcast i32 %i.jm to float
  %i.jo = fmul fast float %i.au, %i.jn
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv181
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !56
  %i.jr = zext i16 %i.jq to i32
  %i.js = shl nuw i32 %i.jr, 16
  %i.jt = bitcast i32 %i.js to float
  %i.ju = fmul fast float %i.aw, %i.jt
  %i.jv = fadd fast float %i.jo, %i.ju
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv181
  %i.jw = load i16, ptr %gep, align 2, !tbaa !56
  %i.jx = zext i16 %i.jw to i32
  %i.jy = shl nuw i32 %i.jx, 16
  %i.jz = bitcast i32 %i.jy to float
  %i.ka = fmul fast float %i.ay, %i.jz
  %i.kb = fadd fast float %i.jv, %i.ka
  %gep209 = getelementptr [2 x i8], ptr %invariant.gep208, i64 %indvars.iv181
  %i.kc = load i16, ptr %gep209, align 2, !tbaa !56
  %i.kd = zext i16 %i.kc to i32
  %i.ke = shl nuw i32 %i.kd, 16
  %i.kf = bitcast i32 %i.ke to float
  %i.kg = fmul fast float %i.ba, %i.kf
  %i.kh = fadd fast float %i.kb, %i.kg
  %i.ki = bitcast float %i.kh to i32
  %i.kj = lshr i32 %i.ki, 16
  %i.kk = trunc nuw i32 %i.kj to i16
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %.0107160, i64 %indvars.iv181
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !56
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next182, %i.er
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre191, %.preheader.._crit_edge_crit_edge ], [ %i.er, %middle.block ], [ %i.er, %vec.epilog.middle.block ], [ %i.er, %vec.epilog.scalar.ph ]
  %i.km = getelementptr inbounds nuw i8, ptr %.0108159, i64 16
  %i.kn = getelementptr inbounds [2 x i8], ptr %.0107160, i64 %.pre-phi
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ko = load i32, ptr %6, align 4, !tbaa !18    ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %i.kq = icmp slt i64 %indvars.iv.next185, %i.kp
  br i1 %i.kq, label %.lr.ph162, label %._crit_edge163, !llvm.loop !74

._crit_edge168:                                   ; preds = %._crit_edge163, %.lr.ph167, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge168, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not87 = icmp sgt i32 %i.k, %i.j
  br i1 %.not87, label %._crit_edge89, label %.noexc40.lr.ph

.noexc40.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !18     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.noexc40.preheader, label %._crit_edge89

.noexc40.preheader:                               ; preds = %.noexc40.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %.noexc40

.noexc40:                                         ; preds = %.noexc40.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %.noexc40.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %.noexc40.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %.noexc40.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv93 = phi i64 [ %i.t, %.noexc40.preheader ], [ %indvars.iv.next94, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !29, !noalias !75
  %i.y = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !75
  %i.z = mul i64 %i.y, %indvars.iv93
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !34, !noalias !75 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !29, !noalias !78
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !78
  %i.af = mul i64 %i.ae, %indvars.iv93
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !34, !noalias !78 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph86, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph86:                                         ; preds = %.noexc40
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !39, !noalias !78
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !39, !noalias !75
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !18    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph86.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre97 = load i32, ptr %i.b, align 4, !tbaa !18
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph86, %_ZN4ncnn3MatD2Ev.exit.loopexit, %.noexc40
  %i.as = phi i32 [ %i.u, %.noexc40 ], [ %.pre97, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph86 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %.noexc40 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph86 ]
  %i.au = phi i32 [ %i.w, %.noexc40 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph86 ]
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv93, %i.av
  br i1 %.not.not, label %.noexc40, label %._crit_edge89, !llvm.loop !81

.lr.ph86.split:                                   ; preds = %.lr.ph86, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph86 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph86 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph86 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !24
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !18
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated53 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated53 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph86.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !18
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre96 = load i32, ptr %5, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph86.split
  %i.bl = phi i32 [ %.pre96, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph86.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph86.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph86.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !82

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03784 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03883 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03784 to float
  %i.br = load float, ptr %9, align 4, !tbaa !24
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !18
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03883, ptr align 2 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !18   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %.03883, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03784, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !18    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !83

._crit_edge89:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc40.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.6:bb.a
  %i.oh = fpext fast <16 x bfloat> %i.og to <16 x float>
  %i.oi = fmul fast <16 x float> %i.mc, %i.nz
  %i.oj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ob, <16 x float> nofpclass(nan inf) %i.mg, <16 x float> nofpclass(nan inf) %i.oi)
  %i.ok = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oe, <16 x float> nofpclass(nan inf) %i.mk, <16 x float> nofpclass(nan inf) %i.oj)
  %i.ol = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oh, <16 x float> nofpclass(nan inf) %i.mo, <16 x float> nofpclass(nan inf) %i.ok)
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.0288428.i, i64 %i.mp
  store <16 x float> %i.ol, ptr %i.om, align 64, !tbaa !53
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.3.i ; 4 uses
  %i.on = getelementptr inbounds i8, ptr %gep.3.i, i64 -32
  %i.oo = load <16 x bfloat>, ptr %i.on, align 1, !tbaa !53
  %i.op = fpext fast <16 x bfloat> %i.oo to <16 x float>
  %i.oq = load <16 x bfloat>, ptr %gep.3.i, align 1, !tbaa !53
  %i.or = fpext fast <16 x bfloat> %i.oq to <16 x float>
  %i.os = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 32
  %i.ot = load <16 x bfloat>, ptr %i.os, align 1, !tbaa !53
  %i.ou = fpext fast <16 x bfloat> %i.ot to <16 x float>
  %i.ov = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 64
  %i.ow = load <16 x bfloat>, ptr %i.ov, align 1, !tbaa !53
  %i.ox = fpext fast <16 x bfloat> %i.ow to <16 x float>
  %i.oy = fmul fast <16 x float> %i.mc, %i.op
  %i.oz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.or, <16 x float> nofpclass(nan inf) %i.mg, <16 x float> nofpclass(nan inf) %i.oy)
  %i.pa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ou, <16 x float> nofpclass(nan inf) %i.mk, <16 x float> nofpclass(nan inf) %i.oz)
  %i.pb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ox, <16 x float> nofpclass(nan inf) %i.mo, <16 x float> nofpclass(nan inf) %i.pa)
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.0290427.i, i64 %i.mp
  store <16 x float> %i.pb, ptr %i.pc, align 64, !tbaa !53
  %i.pd = getelementptr inbounds nuw i8, ptr %.0303411.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.thread405.3.i, !llvm.loop !154

.loopexit.i:                                      ; preds = %.thread405.3.i, %bb.al, %.lr.ph421.i, %.lr.ph424.i, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1291.i = phi ptr [ %.0290427.i, %bb.ae ], [ %.0284430.i, %bb.ag ], [ %.0286429.i, %bb.ai ], [ %.0288428.i, %bb.ak ], [ %.0290427.i, %bb.am ], [ %.0288428.i, %bb.al ], [ %.0284430.i, %.lr.ph424.i ], [ %.0286429.i, %.lr.ph421.i ], [ %.0290427.i, %.thread405.3.i ] ; 7 uses
  %.1289.i = phi ptr [ %.0288428.i, %bb.ae ], [ %.0290427.i, %bb.ag ], [ %.0284430.i, %bb.ai ], [ %.0286429.i, %bb.ak ], [ %.0288428.i, %bb.am ], [ %.0286429.i, %bb.al ], [ %.0290427.i, %.lr.ph424.i ], [ %.0284430.i, %.lr.ph421.i ], [ %.0288428.i, %.thread405.3.i ] ; 7 uses
  %.1287.i = phi ptr [ %.0286429.i, %bb.ae ], [ %.0288428.i, %bb.ag ], [ %.0290427.i, %bb.ai ], [ %.0284430.i, %bb.ak ], [ %.0286429.i, %bb.am ], [ %.0284430.i, %bb.al ], [ %.0288428.i, %.lr.ph424.i ], [ %.0290427.i, %.lr.ph421.i ], [ %.0286429.i, %.thread405.3.i ] ; 7 uses
  %.1285.i = phi ptr [ %.0284430.i, %bb.ae ], [ %.0286429.i, %bb.ag ], [ %.0288428.i, %bb.ai ], [ %.0290427.i, %bb.ak ], [ %.0284430.i, %bb.am ], [ %.0290427.i, %bb.al ], [ %.0286429.i, %.lr.ph424.i ], [ %.0288428.i, %.lr.ph421.i ], [ %.0284430.i, %.thread405.3.i ] ; 7 uses
  %i.pe = mul i64 %i.cu, %indvars.iv453.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.pe ; 6 uses
  %i.pg = load float, ptr %.0431.i, align 4, !tbaa !24 ; 6 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.0431.i, i64 4
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !24 ; 6 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.0431.i, i64 8
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !24 ; 6 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.0431.i, i64 12
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !24 ; 6 uses
  %i.pn = insertelement <16 x float> poison, float %i.pg, i64 0
  %i.po = shufflevector <16 x float> %i.pn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pp = insertelement <16 x float> poison, float %i.pi, i64 0
  %i.pq = shufflevector <16 x float> %i.pp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pr = insertelement <16 x float> poison, float %i.pk, i64 0
  %i.ps = shufflevector <16 x float> %i.pr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pt = insertelement <16 x float> poison, float %i.pm, i64 0
  %i.pu = shufflevector <16 x float> %i.pt, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.cr, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %indvars.iv.i.i
  %i.pw = load <16 x float>, ptr %i.pv, align 1, !tbaa !53
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %indvars.iv.i.i
  %i.py = load <16 x float>, ptr %i.px, align 1, !tbaa !53
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %indvars.iv.i.i
  %i.qa = load <16 x float>, ptr %i.pz, align 1, !tbaa !53
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %indvars.iv.i.i
  %i.qc = load <16 x float>, ptr %i.qb, align 1, !tbaa !53
  %i.qd = fmul fast <16 x float> %i.pw, %i.po
  %i.qe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.py, <16 x float> nofpclass(nan inf) %i.pq, <16 x float> nofpclass(nan inf) %i.qd)
  %i.qf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qa, <16 x float> nofpclass(nan inf) %i.ps, <16 x float> nofpclass(nan inf) %i.qe)
  %i.qg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qc, <16 x float> nofpclass(nan inf) %i.pu, <16 x float> nofpclass(nan inf) %i.qf)
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %indvars.iv.i.i
  %i.qi = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qg)
  store <16 x bfloat> %i.qi, ptr %i.qh, align 1, !tbaa !53
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 16 ; 3 uses
  %i.qj = or disjoint i64 %indvars.iv.next.i.i, 15
  %i.qk = icmp samesign ult i64 %i.qj, %i.ct
  br i1 %i.qk, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !155

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.ql = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.ql, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.qm = insertelement <8 x float> poison, float %i.pg, i64 0
  %i.qn = shufflevector <8 x float> %i.qm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qo = insertelement <8 x float> poison, float %i.pi, i64 0
  %i.qp = shufflevector <8 x float> %i.qo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qq = insertelement <8 x float> poison, float %i.pk, i64 0
  %i.qr = shufflevector <8 x float> %i.qq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qs = insertelement <8 x float> poison, float %i.pm, i64 0
  %i.qt = shufflevector <8 x float> %i.qs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qu = or disjoint i32 %.0.lcssa.i.i, 7
  %i.qv = icmp slt i32 %i.qu, %i.cs
  br i1 %i.qv, label %.lr.ph104.preheader.i.i, label %._crit_edge105.i.i

.lr.ph104.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %i.qw = zext nneg i32 %.0.lcssa.i.i to i64
  br label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.lr.ph104.i.i, %.lr.ph104.preheader.i.i
  %indvars.iv117.i.i = phi i64 [ %i.qw, %.lr.ph104.preheader.i.i ], [ %indvars.iv.next118.i.i, %.lr.ph104.i.i ] ; 6 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %indvars.iv117.i.i
  %i.qy = load <8 x float>, ptr %i.qx, align 1, !tbaa !53
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %indvars.iv117.i.i
  %i.ra = load <8 x float>, ptr %i.qz, align 1, !tbaa !53
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %indvars.iv117.i.i
  %i.rc = load <8 x float>, ptr %i.rb, align 1, !tbaa !53
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %indvars.iv117.i.i
  %i.re = load <8 x float>, ptr %i.rd, align 1, !tbaa !53
  %i.rf = fmul fast <8 x float> %i.qy, %i.qn
  %i.rg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ra, <8 x float> nofpclass(nan inf) %i.qp, <8 x float> nofpclass(nan inf) %i.rf)
  %i.rh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rc, <8 x float> nofpclass(nan inf) %i.qr, <8 x float> nofpclass(nan inf) %i.rg)
  %i.ri = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.re, <8 x float> nofpclass(nan inf) %i.qt, <8 x float> nofpclass(nan inf) %i.rh)
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %indvars.iv117.i.i
  %i.rk = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ri)
  store <8 x bfloat> %i.rk, ptr %i.rj, align 1, !tbaa !53
  %indvars.iv.next118.i.i = add nuw nsw i64 %indvars.iv117.i.i, 8 ; 3 uses
  %i.rl = icmp slt i64 %indvars.iv.next118.i.i, %invariant.op.i.i
  br i1 %i.rl, label %.lr.ph104.i.i, label %._crit_edge105.loopexit.i.i, !llvm.loop !156

._crit_edge105.loopexit.i.i:                      ; preds = %.lr.ph104.i.i
  %i.rm = trunc nuw nsw i64 %indvars.iv.next118.i.i to i32
  br label %._crit_edge105.i.i

._crit_edge105.i.i:                               ; preds = %._crit_edge105.loopexit.i.i, %._crit_edge.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.rm, %._crit_edge105.loopexit.i.i ] ; 3 uses
  %i.rn = insertelement <4 x float> poison, float %i.pg, i64 0
  %i.ro = shufflevector <4 x float> %i.rn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rp = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.rq = shufflevector <4 x float> %i.rp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rr = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rt = insertelement <4 x float> poison, float %i.pm, i64 0
  %i.ru = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rv = or disjoint i32 %.1.lcssa.i.i, 3
  %i.rw = icmp slt i32 %i.rv, %i.cs
  br i1 %i.rw, label %.lr.ph109.preheader.i.i, label %.preheader.i.i

.lr.ph109.preheader.i.i:                          ; preds = %._crit_edge105.i.i
  %i.rx = zext nneg i32 %.1.lcssa.i.i to i64
  br label %.lr.ph109.i.i

.preheader.i.i:                                   ; preds = %.lr.ph109.i.i, %._crit_edge105.i.i
  %.2.lcssa.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge105.i.i ], [ %i.vz, %.lr.ph109.i.i ] ; 3 uses
  %i.ry = icmp slt i32 %.2.lcssa.i.i, %i.cs
  br i1 %i.ry, label %iter.check1004, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i

iter.check1004:                                   ; preds = %.preheader.i.i
  %i.rz = zext i32 %.2.lcssa.i.i to i64           ; 5 uses
  %i.sa = xor i32 %.2.lcssa.i.i, -1
  %i.sb = add i32 %i.cs, %i.sa                    ; 3 uses
  %i.sc = zext i32 %i.sb to i64
  %i.sd = add nuw nsw i64 %i.sc, 1                ; 5 uses
  %min.iters.check969 = icmp ult i32 %i.sb, 7
  br i1 %min.iters.check969, label %.lr.ph112.i.i.preheader, label %vector.main.loop.iter.check970

vector.main.loop.iter.check970:                   ; preds = %iter.check1004
  %min.iters.check971 = icmp ult i32 %i.sb, 63
  br i1 %min.iters.check971, label %vec.epilog.ph1008, label %vector.ph972

vector.ph972:                                     ; preds = %vector.main.loop.iter.check970
  %i.se = and i64 %i.sd, 56
  %n.vec973 = and i64 %i.sd, 8589934528           ; 4 uses
  %i.sf = add nuw nsw i64 %n.vec973, %i.rz
  %broadcast.splatinsert974 = insertelement <16 x float> poison, float %i.pg, i64 0
  %broadcast.splat975 = shufflevector <16 x float> %broadcast.splatinsert974, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert976 = insertelement <16 x float> poison, float %i.pi, i64 0
  %broadcast.splat977 = shufflevector <16 x float> %broadcast.splatinsert976, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert978 = insertelement <16 x float> poison, float %i.pk, i64 0
  %broadcast.splat979 = shufflevector <16 x float> %broadcast.splatinsert978, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert980 = insertelement <16 x float> poison, float %i.pm, i64 0
  %broadcast.splat981 = shufflevector <16 x float> %broadcast.splatinsert980, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %vector.ph972
  %index983 = phi i64 [ 0, %vector.ph972 ], [ %index.next1000, %vector.body982 ] ; 2 uses
  %i.sg = add nuw i64 %index983, %i.rz            ; 5 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %i.sg ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 128
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 192
  %wide.load984 = load <16 x float>, ptr %i.sh, align 4, !tbaa !24
  %wide.load985 = load <16 x float>, ptr %i.si, align 4, !tbaa !24
  %wide.load986 = load <16 x float>, ptr %i.sj, align 4, !tbaa !24
  %wide.load987 = load <16 x float>, ptr %i.sk, align 4, !tbaa !24
  %i.sl = fmul fast <16 x float> %wide.load984, %broadcast.splat975
  %i.sm = fmul fast <16 x float> %wide.load985, %broadcast.splat975
  %i.sn = fmul fast <16 x float> %wide.load986, %broadcast.splat975
  %i.so = fmul fast <16 x float> %wide.load987, %broadcast.splat975
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %i.sg ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 128
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 192
  %wide.load988 = load <16 x float>, ptr %i.sp, align 4, !tbaa !24
  %wide.load989 = load <16 x float>, ptr %i.sq, align 4, !tbaa !24
  %wide.load990 = load <16 x float>, ptr %i.sr, align 4, !tbaa !24
  %wide.load991 = load <16 x float>, ptr %i.ss, align 4, !tbaa !24
  %i.st = fmul fast <16 x float> %wide.load988, %broadcast.splat977
  %i.su = fmul fast <16 x float> %wide.load989, %broadcast.splat977
  %i.sv = fmul fast <16 x float> %wide.load990, %broadcast.splat977
  %i.sw = fmul fast <16 x float> %wide.load991, %broadcast.splat977
  %i.sx = fadd fast <16 x float> %i.sl, %i.st
  %i.sy = fadd fast <16 x float> %i.sm, %i.su
  %i.sz = fadd fast <16 x float> %i.sn, %i.sv
  %i.ta = fadd fast <16 x float> %i.so, %i.sw
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %i.sg ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 128
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 192
  %wide.load992 = load <16 x float>, ptr %i.tb, align 4, !tbaa !24
  %wide.load993 = load <16 x float>, ptr %i.tc, align 4, !tbaa !24
  %wide.load994 = load <16 x float>, ptr %i.td, align 4, !tbaa !24
  %wide.load995 = load <16 x float>, ptr %i.te, align 4, !tbaa !24
  %i.tf = fmul fast <16 x float> %wide.load992, %broadcast.splat979
  %i.tg = fmul fast <16 x float> %wide.load993, %broadcast.splat979
  %i.th = fmul fast <16 x float> %wide.load994, %broadcast.splat979
  %i.ti = fmul fast <16 x float> %wide.load995, %broadcast.splat979
  %i.tj = fadd fast <16 x float> %i.sx, %i.tf
  %i.tk = fadd fast <16 x float> %i.sy, %i.tg
  %i.tl = fadd fast <16 x float> %i.sz, %i.th
  %i.tm = fadd fast <16 x float> %i.ta, %i.ti
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %i.sg ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 128
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 192
  %wide.load996 = load <16 x float>, ptr %i.tn, align 4, !tbaa !24
  %wide.load997 = load <16 x float>, ptr %i.to, align 4, !tbaa !24
  %wide.load998 = load <16 x float>, ptr %i.tp, align 4, !tbaa !24
  %wide.load999 = load <16 x float>, ptr %i.tq, align 4, !tbaa !24
  %i.tr = fmul fast <16 x float> %wide.load996, %broadcast.splat981
  %i.ts = fmul fast <16 x float> %wide.load997, %broadcast.splat981
  %i.tt = fmul fast <16 x float> %wide.load998, %broadcast.splat981
  %i.tu = fmul fast <16 x float> %wide.load999, %broadcast.splat981
  %i.tv = fadd fast <16 x float> %i.tj, %i.tr
  %i.tw = fadd fast <16 x float> %i.tk, %i.ts
  %i.tx = fadd fast <16 x float> %i.tl, %i.tt
  %i.ty = fadd fast <16 x float> %i.tm, %i.tu
  %i.tz = bitcast <16 x float> %i.tv to <16 x i32>
  %i.ua = bitcast <16 x float> %i.tw to <16 x i32>
  %i.ub = bitcast <16 x float> %i.tx to <16 x i32>
  %i.uc = bitcast <16 x float> %i.ty to <16 x i32>
  %i.ud = lshr <16 x i32> %i.tz, splat (i32 16)
  %i.ue = lshr <16 x i32> %i.ua, splat (i32 16)
  %i.uf = lshr <16 x i32> %i.ub, splat (i32 16)
  %i.ug = lshr <16 x i32> %i.uc, splat (i32 16)
  %i.uh = trunc nuw <16 x i32> %i.ud to <16 x i16>
  %i.ui = trunc nuw <16 x i32> %i.ue to <16 x i16>
  %i.uj = trunc nuw <16 x i32> %i.uf to <16 x i16>
  %i.uk = trunc nuw <16 x i32> %i.ug to <16 x i16>
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %i.sg ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 32
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 96
  store <16 x i16> %i.uh, ptr %i.ul, align 2, !tbaa !56
  store <16 x i16> %i.ui, ptr %i.um, align 2, !tbaa !56
  store <16 x i16> %i.uj, ptr %i.un, align 2, !tbaa !56
  store <16 x i16> %i.uk, ptr %i.uo, align 2, !tbaa !56
  %index.next1000 = add nuw i64 %index983, 64     ; 2 uses
  %i.up = icmp eq i64 %index.next1000, %n.vec973
  br i1 %i.up, label %middle.block1001, label %vector.body982, !llvm.loop !157

middle.block1001:                                 ; preds = %vector.body982
  %cmp.n1002 = icmp eq i64 %i.sd, %n.vec973
  br i1 %cmp.n1002, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %vec.epilog.iter.check1006

vec.epilog.iter.check1006:                        ; preds = %middle.block1001
  %min.epilog.iters.check1007 = icmp eq i64 %i.se, 0
  br i1 %min.epilog.iters.check1007, label %.lr.ph112.i.i.preheader, label %vec.epilog.ph1008, !prof !101

vec.epilog.ph1008:                                ; preds = %vector.main.loop.iter.check970, %vec.epilog.iter.check1006
  %vec.epilog.resume.val1003 = phi i64 [ %n.vec973, %vec.epilog.iter.check1006 ], [ 0, %vector.main.loop.iter.check970 ]
  %n.vec1009 = and i64 %i.sd, 8589934584          ; 3 uses
  %i.uq = add nuw nsw i64 %n.vec1009, %i.rz
  %broadcast.splatinsert1010 = insertelement <8 x float> poison, float %i.pg, i64 0
  %broadcast.splat1011 = shufflevector <8 x float> %broadcast.splatinsert1010, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1012 = insertelement <8 x float> poison, float %i.pi, i64 0
  %broadcast.splat1013 = shufflevector <8 x float> %broadcast.splatinsert1012, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1014 = insertelement <8 x float> poison, float %i.pk, i64 0
  %broadcast.splat1015 = shufflevector <8 x float> %broadcast.splatinsert1014, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1016 = insertelement <8 x float> poison, float %i.pm, i64 0
  %broadcast.splat1017 = shufflevector <8 x float> %broadcast.splatinsert1016, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body1018

vec.epilog.vector.body1018:                       ; preds = %vec.epilog.vector.body1018, %vec.epilog.ph1008
  %index1019 = phi i64 [ %vec.epilog.resume.val1003, %vec.epilog.ph1008 ], [ %index.next1024, %vec.epilog.vector.body1018 ] ; 2 uses
  %i.ur = add nuw i64 %index1019, %i.rz           ; 5 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %i.ur
  %wide.load1020 = load <8 x float>, ptr %i.us, align 4, !tbaa !24
  %i.ut = fmul fast <8 x float> %wide.load1020, %broadcast.splat1011
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %i.ur
  %wide.load1021 = load <8 x float>, ptr %i.uu, align 4, !tbaa !24
  %i.uv = fmul fast <8 x float> %wide.load1021, %broadcast.splat1013
  %i.uw = fadd fast <8 x float> %i.ut, %i.uv
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %i.ur
  %wide.load1022 = load <8 x float>, ptr %i.ux, align 4, !tbaa !24
  %i.uy = fmul fast <8 x float> %wide.load1022, %broadcast.splat1015
  %i.uz = fadd fast <8 x float> %i.uw, %i.uy
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %i.ur
  %wide.load1023 = load <8 x float>, ptr %i.va, align 4, !tbaa !24
  %i.vb = fmul fast <8 x float> %wide.load1023, %broadcast.splat1017
  %i.vc = fadd fast <8 x float> %i.uz, %i.vb
  %i.vd = bitcast <8 x float> %i.vc to <8 x i32>
  %i.ve = lshr <8 x i32> %i.vd, splat (i32 16)
  %i.vf = trunc nuw <8 x i32> %i.ve to <8 x i16>
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %i.ur
  store <8 x i16> %i.vf, ptr %i.vg, align 2, !tbaa !56
  %index.next1024 = add nuw i64 %index1019, 8     ; 2 uses
  %i.vh = icmp eq i64 %index.next1024, %n.vec1009
  br i1 %i.vh, label %vec.epilog.middle.block1025, label %vec.epilog.vector.body1018, !llvm.loop !158

vec.epilog.middle.block1025:                      ; preds = %vec.epilog.vector.body1018
  %cmp.n1026 = icmp eq i64 %i.sd, %n.vec1009
  br i1 %cmp.n1026, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph112.i.i.preheader

.lr.ph112.i.i.preheader:                          ; preds = %iter.check1004, %vec.epilog.iter.check1006, %vec.epilog.middle.block1025
  %indvars.iv123.i.i.ph = phi i64 [ %i.rz, %iter.check1004 ], [ %i.sf, %vec.epilog.iter.check1006 ], [ %i.uq, %vec.epilog.middle.block1025 ]
  br label %.lr.ph112.i.i

.lr.ph109.i.i:                                    ; preds = %.lr.ph109.i.i, %.lr.ph109.preheader.i.i
  %indvars.iv120.i.i = phi i64 [ %i.rx, %.lr.ph109.preheader.i.i ], [ %indvars.iv.next121.i.i, %.lr.ph109.i.i ] ; 6 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %indvars.iv120.i.i
  %i.vj = load <4 x float>, ptr %i.vi, align 1, !tbaa !53
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %indvars.iv120.i.i
  %i.vl = load <4 x float>, ptr %i.vk, align 1, !tbaa !53
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %indvars.iv120.i.i
  %i.vn = load <4 x float>, ptr %i.vm, align 1, !tbaa !53
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %indvars.iv120.i.i
  %i.vp = load <4 x float>, ptr %i.vo, align 1, !tbaa !53
  %i.vq = fmul fast <4 x float> %i.vj, %i.ro
  %i.vr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vl, <4 x float> nofpclass(nan inf) %i.rq, <4 x float> nofpclass(nan inf) %i.vq)
  %i.vs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vn, <4 x float> nofpclass(nan inf) %i.rs, <4 x float> nofpclass(nan inf) %i.vr)
  %i.vt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vp, <4 x float> nofpclass(nan inf) %i.ru, <4 x float> nofpclass(nan inf) %i.vs)
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %indvars.iv120.i.i
  %i.vv = shufflevector <4 x float> %i.vt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.vw = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.vv)
  %i.vx = bitcast <8 x bfloat> %i.vw to <2 x i64>
  %i.vy = extractelement <2 x i64> %i.vx, i64 0
  store i64 %i.vy, ptr %i.vu, align 1, !tbaa !53
  %indvars.iv.next121.i.i = add nuw nsw i64 %indvars.iv120.i.i, 4 ; 2 uses
  %i.vz = trunc i64 %indvars.iv.next121.i.i to i32 ; 2 uses
  %i.wa = or i32 %i.vz, 3
  %i.wb = icmp slt i32 %i.wa, %i.cs
  br i1 %i.wb, label %.lr.ph109.i.i, label %.preheader.i.i, !llvm.loop !159

.lr.ph112.i.i:                                    ; preds = %.lr.ph112.i.i.preheader, %.lr.ph112.i.i
  %indvars.iv123.i.i = phi i64 [ %indvars.iv.next124.i.i, %.lr.ph112.i.i ], [ %indvars.iv123.i.i.ph, %.lr.ph112.i.i.preheader ] ; 6 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %indvars.iv123.i.i
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !24
  %i.we = fmul fast float %i.wd, %i.pg
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %indvars.iv123.i.i
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !24
  %i.wh = fmul fast float %i.wg, %i.pi
  %i.wi = fadd fast float %i.we, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %indvars.iv123.i.i
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !24
  %i.wl = fmul fast float %i.wk, %i.pk
  %i.wm = fadd fast float %i.wi, %i.wl
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %indvars.iv123.i.i
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !24
  %i.wp = fmul fast float %i.wo, %i.pm
  %i.wq = fadd fast float %i.wm, %i.wp
  %i.wr = bitcast float %i.wq to i32
  %i.ws = lshr i32 %i.wr, 16
  %i.wt = trunc nuw i32 %i.ws to i16
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %indvars.iv123.i.i
  store i16 %i.wt, ptr %i.wu, align 2, !tbaa !56
  %indvars.iv.next124.i.i = add nuw nsw i64 %indvars.iv123.i.i, 1 ; 2 uses
  %i.wv = trunc nuw i64 %indvars.iv.next124.i.i to i32
  %i.ww = icmp sgt i32 %i.cs, %i.wv
  br i1 %i.ww, label %.lr.ph112.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, !llvm.loop !160

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i: ; preds = %.lr.ph112.i.i, %middle.block1001, %vec.epilog.middle.block1025, %.preheader.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %.0431.i, i64 16
  %indvars.iv.next454.i = add nuw nsw i64 %indvars.iv453.i, 1 ; 2 uses
  %exitcond457.not.i = icmp eq i64 %indvars.iv.next454.i, %wide.trip.count456.i
  br i1 %exitcond457.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !161

bb.an:                                            ; preds = %bb.ad
  %i.wy = atomicrmw add ptr %i.en, i32 -1 acq_rel, align 4
  %i.wz = icmp eq i32 %i.wy, 1
  br i1 %i.wz, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit332.i

bb.ao:                                            ; preds = %bb.an
  %i.xa = load ptr, ptr %i.z, align 8, !tbaa !92  ; 3 uses
  %.not3.i355.i = icmp eq ptr %i.xa, null
  %i.xb = load ptr, ptr %24, align 8, !tbaa !29   ; 3 uses
  br i1 %.not3.i355.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.xc = load ptr, ptr %i.xa, align 8, !tbaa !93
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8
  invoke void %i.xe(ptr noundef nonnull align 8 dereferenceable(8) %i.xa, ptr noundef %i.xb)
          to label %_ZN4ncnn3MatD2Ev.exit332.i unwind label %bb.as, !inline_history !95

bb.aq:                                            ; preds = %bb.ao
  %.not.i369.i = icmp eq ptr %i.xb, null
  br i1 %.not.i369.i, label %_ZN4ncnn3MatD2Ev.exit332.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.xb) #3
  br label %_ZN4ncnn3MatD2Ev.exit332.i

bb.as:                                            ; preds = %bb.ap
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit332.i:                       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.ad, %bb.ac
  %.pn326.pn.pn.i = phi { ptr, i32 } [ %i.el, %bb.ac ], [ %i.em, %bb.an ], [ %i.em, %bb.ad ], [ %i.em, %bb.ap ], [ %i.em, %bb.aq ], [ %i.em, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #3
  %i.xh = load ptr, ptr %i.v, align 8, !tbaa !91  ; 2 uses
  %.not.i358.i = icmp eq ptr %i.xh, null
  br i1 %.not.i358.i, label %_ZN4ncnn3MatD2Ev.exit331.i, label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit332.i
  %i.xi = atomicrmw add ptr %i.xh, i32 -1 acq_rel, align 4
  %i.xj = icmp eq i32 %i.xi, 1
  br i1 %i.xj, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit331.i

bb.au:                                            ; preds = %bb.at
  %i.xk = load ptr, ptr %i.w, align 8, !tbaa !92  ; 3 uses
  %.not3.i359.i = icmp eq ptr %i.xk, null
  %i.xl = load ptr, ptr %23, align 8, !tbaa !29   ; 3 uses
  br i1 %.not3.i359.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.xm = load ptr, ptr %i.xk, align 8, !tbaa !93
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8
  invoke void %i.xo(ptr noundef nonnull align 8 dereferenceable(8) %i.xk, ptr noundef %i.xl)
          to label %_ZN4ncnn3MatD2Ev.exit331.i unwind label %bb.ay, !inline_history !95

bb.aw:                                            ; preds = %bb.au
  %.not.i367.i = icmp eq ptr %i.xl, null
  br i1 %.not.i367.i, label %_ZN4ncnn3MatD2Ev.exit331.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.xl) #3
  br label %_ZN4ncnn3MatD2Ev.exit331.i

bb.ay:                                            ; preds = %bb.av
  %i.xp = landingpad { ptr, i32 }
          catch ptr null
  %i.xq = extractvalue { ptr, i32 } %i.xp, 0
  call void @__clang_call_terminate(ptr %i.xq) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit331.i:                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %_ZN4ncnn3MatD2Ev.exit332.i, %bb.ab
  %.pn326.pn.pn.pn.i = phi { ptr, i32 } [ %i.ek, %bb.ab ], [ %.pn326.pn.pn.i, %bb.at ], [ %.pn326.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit332.i ], [ %.pn326.pn.pn.i, %bb.av ], [ %.pn326.pn.pn.i, %bb.aw ], [ %.pn326.pn.pn.i, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #3
  %i.xr = load ptr, ptr %i.s, align 8, !tbaa !91  ; 2 uses
  %.not.i362.i = icmp eq ptr %i.xr, null
  br i1 %.not.i362.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit331.i
  %i.xs = atomicrmw add ptr %i.xr, i32 -1 acq_rel, align 4
  %i.xt = icmp eq i32 %i.xs, 1
  br i1 %i.xt, label %bb.ba, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.xu = load ptr, ptr %i.t, align 8, !tbaa !92  ; 3 uses
  %.not3.i363.i = icmp eq ptr %i.xu, null
  %i.xv = load ptr, ptr %22, align 8, !tbaa !29   ; 3 uses
  br i1 %.not3.i363.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.xw = load ptr, ptr %i.xu, align 8, !tbaa !93
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  %i.xy = load ptr, ptr %i.xx, align 8
  invoke void %i.xy(ptr noundef nonnull align 8 dereferenceable(8) %i.xu, ptr noundef %i.xv)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.be, !inline_history !95

bb.bc:                                            ; preds = %bb.ba
  %.not.i366.i = icmp eq ptr %i.xv, null
  br i1 %.not.i366.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.xv) #3
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.be:                                            ; preds = %bb.bb
  %i.xz = landingpad { ptr, i32 }
          catch ptr null
  %i.ya = extractvalue { ptr, i32 } %i.xz, 0
  call void @__clang_call_terminate(ptr %i.ya) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %_ZN4ncnn3MatD2Ev.exit331.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #3
  br label %.body

_ZN4ncnnL33resize_bicubic_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit334.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #3
  %.pr = load i32, ptr %5, align 4, !tbaa !18
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnnL33resize_bicubic_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %.noexc22
  %i.yb = phi i32 [ %.pr, %_ZN4ncnnL33resize_bicubic_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.cg, %.noexc22 ] ; 2 uses
  %i.yc = icmp eq i32 %i.yb, 8
  br i1 %i.yc, label %bb.bg, label %bb.dj

bb.bg:                                            ; preds = %bb.bf
  %i.yd = load ptr, ptr %6, align 8, !tbaa !27    ; 4 uses
  %i.ye = load ptr, ptr %7, align 8, !tbaa !26    ; 4 uses
  %i.yf = load ptr, ptr %8, align 8, !tbaa !27
  %i.yg = load ptr, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #3
  store i64 0, ptr %i.ag, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %18, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %18, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %.noexc77 unwind label %bb.hr

.noexc77:                                         ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #3
  store i64 0, ptr %i.aj, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %19, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %19, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit375.i unwind label %bb.cf

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit375.i:      ; preds = %.noexc77
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #3
  store i64 0, ptr %i.am, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %20, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %20, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit373.i unwind label %bb.cg

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit373.i:      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit375.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #3
  store i64 0, ptr %i.ap, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %21, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %21, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i33 unwind label %bb.ch

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i33:       ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit373.i
  %i.yh = icmp sgt i32 %i.by, 0
  br i1 %i.yh, label %.lr.ph469.i, label %._crit_edge.i34

.lr.ph469.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i33
  %i.yi = load ptr, ptr %21, align 8, !tbaa !29
  %i.yj = load ptr, ptr %20, align 8, !tbaa !29
  %i.yk = load ptr, ptr %19, align 8, !tbaa !29
  %i.yl = load ptr, ptr %18, align 8, !tbaa !29
  %i.ym = icmp sgt i32 %i.bx, 0                   ; 4 uses
  %i.yn = shl i32 %i.bx, 3                        ; 7 uses
  %i.yo = icmp sgt i32 %i.bx, 1
  %i.yp = zext nneg i32 %i.yn to i64              ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.6:bb.a
  %i.akd = fpext fast <8 x bfloat> %i.akc to <8 x float>
  %i.ake = fmul fast <8 x float> %i.ahy, %i.ajv
  %i.akf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajx, <8 x float> nofpclass(nan inf) %i.aic, <8 x float> nofpclass(nan inf) %i.ake)
  %i.akg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aka, <8 x float> nofpclass(nan inf) %i.aig, <8 x float> nofpclass(nan inf) %i.akf)
  %i.akh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akd, <8 x float> nofpclass(nan inf) %i.aik, <8 x float> nofpclass(nan inf) %i.akg)
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %.0259465.i, i64 %i.ail
  store <8 x float> %i.akh, ptr %i.aki, align 32, !tbaa !53
  %gep.3.i73 = getelementptr i8, ptr %invariant.gep.i71, i64 %.v.v.3.i69 ; 4 uses
  %i.akj = getelementptr inbounds i8, ptr %gep.3.i73, i64 -16
  %i.akk = load <8 x bfloat>, ptr %i.akj, align 1, !tbaa !53
  %i.akl = fpext fast <8 x bfloat> %i.akk to <8 x float>
  %i.akm = load <8 x bfloat>, ptr %gep.3.i73, align 1, !tbaa !53
  %i.akn = fpext fast <8 x bfloat> %i.akm to <8 x float>
  %i.ako = getelementptr inbounds nuw i8, ptr %gep.3.i73, i64 16
  %i.akp = load <8 x bfloat>, ptr %i.ako, align 1, !tbaa !53
  %i.akq = fpext fast <8 x bfloat> %i.akp to <8 x float>
  %i.akr = getelementptr inbounds nuw i8, ptr %gep.3.i73, i64 32
  %i.aks = load <8 x bfloat>, ptr %i.akr, align 1, !tbaa !53
  %i.akt = fpext fast <8 x bfloat> %i.aks to <8 x float>
  %i.aku = fmul fast <8 x float> %i.ahy, %i.akl
  %i.akv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akn, <8 x float> nofpclass(nan inf) %i.aic, <8 x float> nofpclass(nan inf) %i.aku)
  %i.akw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akq, <8 x float> nofpclass(nan inf) %i.aig, <8 x float> nofpclass(nan inf) %i.akv)
  %i.akx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akt, <8 x float> nofpclass(nan inf) %i.aik, <8 x float> nofpclass(nan inf) %i.akw)
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %.0261464.i, i64 %i.ail
  store <8 x float> %i.akx, ptr %i.aky, align 32, !tbaa !53
  %i.akz = getelementptr inbounds nuw i8, ptr %.0269448.i, i64 16
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next.i74, %wide.trip.count.i37
  br i1 %exitcond.not.i75, label %.loopexit.i38, label %.thread442.3.i, !llvm.loop !165

.loopexit.i38:                                    ; preds = %.thread442.3.i, %bb.cp, %.lr.ph458.i, %.lr.ph461.i, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci
  %.1262.i = phi ptr [ %.0261464.i, %bb.ci ], [ %.0255467.i, %bb.ck ], [ %.0257466.i, %bb.cm ], [ %.0259465.i, %bb.co ], [ %.0261464.i, %bb.cq ], [ %.0259465.i, %bb.cp ], [ %.0255467.i, %.lr.ph461.i ], [ %.0257466.i, %.lr.ph458.i ], [ %.0261464.i, %.thread442.3.i ] ; 7 uses
  %.1260.i = phi ptr [ %.0259465.i, %bb.ci ], [ %.0261464.i, %bb.ck ], [ %.0255467.i, %bb.cm ], [ %.0257466.i, %bb.co ], [ %.0259465.i, %bb.cq ], [ %.0257466.i, %bb.cp ], [ %.0261464.i, %.lr.ph461.i ], [ %.0255467.i, %.lr.ph458.i ], [ %.0259465.i, %.thread442.3.i ] ; 7 uses
  %.1258.i = phi ptr [ %.0257466.i, %bb.ci ], [ %.0259465.i, %bb.ck ], [ %.0261464.i, %bb.cm ], [ %.0255467.i, %bb.co ], [ %.0257466.i, %bb.cq ], [ %.0255467.i, %bb.cp ], [ %.0259465.i, %.lr.ph461.i ], [ %.0261464.i, %.lr.ph458.i ], [ %.0257466.i, %.thread442.3.i ] ; 7 uses
  %.1256.i = phi ptr [ %.0255467.i, %bb.ci ], [ %.0257466.i, %bb.ck ], [ %.0259465.i, %bb.cm ], [ %.0261464.i, %bb.co ], [ %.0255467.i, %bb.cq ], [ %.0261464.i, %bb.cp ], [ %.0257466.i, %.lr.ph461.i ], [ %.0259465.i, %.lr.ph458.i ], [ %.0255467.i, %.thread442.3.i ] ; 7 uses
  %i.ala = mul i64 %i.yq, %indvars.iv490.i
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ala ; 6 uses
  %i.alc = load float, ptr %.0468.i, align 4, !tbaa !24 ; 6 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.0468.i, i64 4
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !24 ; 6 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.0468.i, i64 8
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !24 ; 6 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.0468.i, i64 12
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !24 ; 6 uses
  %i.alj = insertelement <16 x float> poison, float %i.alc, i64 0
  %i.alk = shufflevector <16 x float> %i.alj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.all = insertelement <16 x float> poison, float %i.ale, i64 0
  %i.alm = shufflevector <16 x float> %i.all, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aln = insertelement <16 x float> poison, float %i.alg, i64 0
  %i.alo = shufflevector <16 x float> %i.aln, <16 x float> poison, <16 x i32> zeroinitializer
  %i.alp = insertelement <16 x float> poison, float %i.ali, i64 0
  %i.alq = shufflevector <16 x float> %i.alp, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.yo, label %.lr.ph.i.i59, label %._crit_edge.i.i39

.lr.ph.i.i59:                                     ; preds = %.loopexit.i38, %.lr.ph.i.i59
  %indvars.iv.i.i60 = phi i64 [ %indvars.iv.next.i.i61, %.lr.ph.i.i59 ], [ 0, %.loopexit.i38 ] ; 6 uses
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv.i.i60
  %i.als = load <16 x float>, ptr %i.alr, align 1, !tbaa !53
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv.i.i60
  %i.alu = load <16 x float>, ptr %i.alt, align 1, !tbaa !53
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv.i.i60
  %i.alw = load <16 x float>, ptr %i.alv, align 1, !tbaa !53
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv.i.i60
  %i.aly = load <16 x float>, ptr %i.alx, align 1, !tbaa !53
  %i.alz = fmul fast <16 x float> %i.als, %i.alk
  %i.ama = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alu, <16 x float> nofpclass(nan inf) %i.alm, <16 x float> nofpclass(nan inf) %i.alz)
  %i.amb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alw, <16 x float> nofpclass(nan inf) %i.alo, <16 x float> nofpclass(nan inf) %i.ama)
  %i.amc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aly, <16 x float> nofpclass(nan inf) %i.alq, <16 x float> nofpclass(nan inf) %i.amb)
  %i.amd = getelementptr inbounds nuw [2 x i8], ptr %i.alb, i64 %indvars.iv.i.i60
  %i.ame = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.amc)
  store <16 x bfloat> %i.ame, ptr %i.amd, align 1, !tbaa !53
  %indvars.iv.next.i.i61 = add nuw nsw i64 %indvars.iv.i.i60, 16 ; 3 uses
  %i.amf = or disjoint i64 %indvars.iv.next.i.i61, 15
  %i.amg = icmp samesign ult i64 %i.amf, %i.yp
  br i1 %i.amg, label %.lr.ph.i.i59, label %._crit_edge.loopexit.i.i62, !llvm.loop !155

._crit_edge.loopexit.i.i62:                       ; preds = %.lr.ph.i.i59
  %i.amh = trunc nuw nsw i64 %indvars.iv.next.i.i61 to i32
  br label %._crit_edge.i.i39

._crit_edge.i.i39:                                ; preds = %._crit_edge.loopexit.i.i62, %.loopexit.i38
  %.0.lcssa.i.i40 = phi i32 [ 0, %.loopexit.i38 ], [ %i.amh, %._crit_edge.loopexit.i.i62 ] ; 3 uses
  %i.ami = insertelement <8 x float> poison, float %i.alc, i64 0
  %i.amj = shufflevector <8 x float> %i.ami, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amk = insertelement <8 x float> poison, float %i.ale, i64 0
  %i.aml = shufflevector <8 x float> %i.amk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amm = insertelement <8 x float> poison, float %i.alg, i64 0
  %i.amn = shufflevector <8 x float> %i.amm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amo = insertelement <8 x float> poison, float %i.ali, i64 0
  %i.amp = shufflevector <8 x float> %i.amo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amq = or disjoint i32 %.0.lcssa.i.i40, 7
  %i.amr = icmp slt i32 %i.amq, %i.yn
  br i1 %i.amr, label %.lr.ph104.preheader.i.i54, label %._crit_edge105.i.i41

.lr.ph104.preheader.i.i54:                        ; preds = %._crit_edge.i.i39
  %i.ams = zext nneg i32 %.0.lcssa.i.i40 to i64
  br label %.lr.ph104.i.i55

.lr.ph104.i.i55:                                  ; preds = %.lr.ph104.i.i55, %.lr.ph104.preheader.i.i54
  %indvars.iv117.i.i56 = phi i64 [ %i.ams, %.lr.ph104.preheader.i.i54 ], [ %indvars.iv.next118.i.i57, %.lr.ph104.i.i55 ] ; 6 uses
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv117.i.i56
  %i.amu = load <8 x float>, ptr %i.amt, align 1, !tbaa !53
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv117.i.i56
  %i.amw = load <8 x float>, ptr %i.amv, align 1, !tbaa !53
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv117.i.i56
  %i.amy = load <8 x float>, ptr %i.amx, align 1, !tbaa !53
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv117.i.i56
  %i.ana = load <8 x float>, ptr %i.amz, align 1, !tbaa !53
  %i.anb = fmul fast <8 x float> %i.amu, %i.amj
  %i.anc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amw, <8 x float> nofpclass(nan inf) %i.aml, <8 x float> nofpclass(nan inf) %i.anb)
  %i.and = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amy, <8 x float> nofpclass(nan inf) %i.amn, <8 x float> nofpclass(nan inf) %i.anc)
  %i.ane = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ana, <8 x float> nofpclass(nan inf) %i.amp, <8 x float> nofpclass(nan inf) %i.and)
  %i.anf = getelementptr inbounds nuw [2 x i8], ptr %i.alb, i64 %indvars.iv117.i.i56
  %i.ang = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ane)
  store <8 x bfloat> %i.ang, ptr %i.anf, align 1, !tbaa !53
  %indvars.iv.next118.i.i57 = add nuw nsw i64 %indvars.iv117.i.i56, 8 ; 3 uses
  %i.anh = icmp slt i64 %indvars.iv.next118.i.i57, %invariant.op.i.i36
  br i1 %i.anh, label %.lr.ph104.i.i55, label %._crit_edge105.loopexit.i.i58, !llvm.loop !156

._crit_edge105.loopexit.i.i58:                    ; preds = %.lr.ph104.i.i55
  %i.ani = trunc nuw nsw i64 %indvars.iv.next118.i.i57 to i32
  br label %._crit_edge105.i.i41

._crit_edge105.i.i41:                             ; preds = %._crit_edge105.loopexit.i.i58, %._crit_edge.i.i39
  %.1.lcssa.i.i42 = phi i32 [ %.0.lcssa.i.i40, %._crit_edge.i.i39 ], [ %i.ani, %._crit_edge105.loopexit.i.i58 ] ; 3 uses
  %i.anj = insertelement <4 x float> poison, float %i.alc, i64 0
  %i.ank = shufflevector <4 x float> %i.anj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anl = insertelement <4 x float> poison, float %i.ale, i64 0
  %i.anm = shufflevector <4 x float> %i.anl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ann = insertelement <4 x float> poison, float %i.alg, i64 0
  %i.ano = shufflevector <4 x float> %i.ann, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anp = insertelement <4 x float> poison, float %i.ali, i64 0
  %i.anq = shufflevector <4 x float> %i.anp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anr = or disjoint i32 %.1.lcssa.i.i42, 3
  %i.ans = icmp slt i32 %i.anr, %i.yn
  br i1 %i.ans, label %.lr.ph109.preheader.i.i50, label %.preheader.i.i43

.lr.ph109.preheader.i.i50:                        ; preds = %._crit_edge105.i.i41
  %i.ant = zext nneg i32 %.1.lcssa.i.i42 to i64
  br label %.lr.ph109.i.i51

.preheader.i.i43:                                 ; preds = %.lr.ph109.i.i51, %._crit_edge105.i.i41
  %.2.lcssa.i.i44 = phi i32 [ %.1.lcssa.i.i42, %._crit_edge105.i.i41 ], [ %i.arv, %.lr.ph109.i.i51 ] ; 3 uses
  %i.anu = icmp slt i32 %.2.lcssa.i.i44, %i.yn
  br i1 %i.anu, label %iter.check945, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i45

iter.check945:                                    ; preds = %.preheader.i.i43
  %i.anv = zext i32 %.2.lcssa.i.i44 to i64        ; 5 uses
  %i.anw = xor i32 %.2.lcssa.i.i44, -1
  %i.anx = add i32 %i.yn, %i.anw                  ; 3 uses
  %i.any = zext i32 %i.anx to i64
  %i.anz = add nuw nsw i64 %i.any, 1              ; 5 uses
  %min.iters.check910 = icmp ult i32 %i.anx, 7
  br i1 %min.iters.check910, label %.lr.ph112.i.i47.preheader, label %vector.main.loop.iter.check911

vector.main.loop.iter.check911:                   ; preds = %iter.check945
  %min.iters.check912 = icmp ult i32 %i.anx, 63
  br i1 %min.iters.check912, label %vec.epilog.ph949, label %vector.ph913

vector.ph913:                                     ; preds = %vector.main.loop.iter.check911
  %i.aoa = and i64 %i.anz, 56
  %n.vec914 = and i64 %i.anz, 8589934528          ; 4 uses
  %i.aob = add nuw nsw i64 %n.vec914, %i.anv
  %broadcast.splatinsert915 = insertelement <16 x float> poison, float %i.alc, i64 0
  %broadcast.splat916 = shufflevector <16 x float> %broadcast.splatinsert915, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert917 = insertelement <16 x float> poison, float %i.ale, i64 0
  %broadcast.splat918 = shufflevector <16 x float> %broadcast.splatinsert917, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert919 = insertelement <16 x float> poison, float %i.alg, i64 0
  %broadcast.splat920 = shufflevector <16 x float> %broadcast.splatinsert919, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert921 = insertelement <16 x float> poison, float %i.ali, i64 0
  %broadcast.splat922 = shufflevector <16 x float> %broadcast.splatinsert921, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph913
  %index924 = phi i64 [ 0, %vector.ph913 ], [ %index.next941, %vector.body923 ] ; 2 uses
  %i.aoc = add nuw i64 %index924, %i.anv          ; 5 uses
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.aoc ; 4 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 64
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aod, i64 128
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aod, i64 192
  %wide.load925 = load <16 x float>, ptr %i.aod, align 4, !tbaa !24
  %wide.load926 = load <16 x float>, ptr %i.aoe, align 4, !tbaa !24
  %wide.load927 = load <16 x float>, ptr %i.aof, align 4, !tbaa !24
  %wide.load928 = load <16 x float>, ptr %i.aog, align 4, !tbaa !24
  %i.aoh = fmul fast <16 x float> %wide.load925, %broadcast.splat916
  %i.aoi = fmul fast <16 x float> %wide.load926, %broadcast.splat916
  %i.aoj = fmul fast <16 x float> %wide.load927, %broadcast.splat916
  %i.aok = fmul fast <16 x float> %wide.load928, %broadcast.splat916
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %i.aoc ; 4 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 64
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aol, i64 128
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aol, i64 192
  %wide.load929 = load <16 x float>, ptr %i.aol, align 4, !tbaa !24
  %wide.load930 = load <16 x float>, ptr %i.aom, align 4, !tbaa !24
  %wide.load931 = load <16 x float>, ptr %i.aon, align 4, !tbaa !24
  %wide.load932 = load <16 x float>, ptr %i.aoo, align 4, !tbaa !24
  %i.aop = fmul fast <16 x float> %wide.load929, %broadcast.splat918
  %i.aoq = fmul fast <16 x float> %wide.load930, %broadcast.splat918
  %i.aor = fmul fast <16 x float> %wide.load931, %broadcast.splat918
  %i.aos = fmul fast <16 x float> %wide.load932, %broadcast.splat918
  %i.aot = fadd fast <16 x float> %i.aoh, %i.aop
  %i.aou = fadd fast <16 x float> %i.aoi, %i.aoq
  %i.aov = fadd fast <16 x float> %i.aoj, %i.aor
  %i.aow = fadd fast <16 x float> %i.aok, %i.aos
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %i.aoc ; 4 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 64
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aox, i64 128
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aox, i64 192
  %wide.load933 = load <16 x float>, ptr %i.aox, align 4, !tbaa !24
  %wide.load934 = load <16 x float>, ptr %i.aoy, align 4, !tbaa !24
  %wide.load935 = load <16 x float>, ptr %i.aoz, align 4, !tbaa !24
  %wide.load936 = load <16 x float>, ptr %i.apa, align 4, !tbaa !24
  %i.apb = fmul fast <16 x float> %wide.load933, %broadcast.splat920
  %i.apc = fmul fast <16 x float> %wide.load934, %broadcast.splat920
  %i.apd = fmul fast <16 x float> %wide.load935, %broadcast.splat920
  %i.ape = fmul fast <16 x float> %wide.load936, %broadcast.splat920
  %i.apf = fadd fast <16 x float> %i.aot, %i.apb
  %i.apg = fadd fast <16 x float> %i.aou, %i.apc
  %i.aph = fadd fast <16 x float> %i.aov, %i.apd
  %i.api = fadd fast <16 x float> %i.aow, %i.ape
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %i.aoc ; 4 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 64
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apj, i64 128
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apj, i64 192
  %wide.load937 = load <16 x float>, ptr %i.apj, align 4, !tbaa !24
  %wide.load938 = load <16 x float>, ptr %i.apk, align 4, !tbaa !24
  %wide.load939 = load <16 x float>, ptr %i.apl, align 4, !tbaa !24
  %wide.load940 = load <16 x float>, ptr %i.apm, align 4, !tbaa !24
  %i.apn = fmul fast <16 x float> %wide.load937, %broadcast.splat922
  %i.apo = fmul fast <16 x float> %wide.load938, %broadcast.splat922
  %i.app = fmul fast <16 x float> %wide.load939, %broadcast.splat922
  %i.apq = fmul fast <16 x float> %wide.load940, %broadcast.splat922
  %i.apr = fadd fast <16 x float> %i.apf, %i.apn
  %i.aps = fadd fast <16 x float> %i.apg, %i.apo
  %i.apt = fadd fast <16 x float> %i.aph, %i.app
  %i.apu = fadd fast <16 x float> %i.api, %i.apq
  %i.apv = bitcast <16 x float> %i.apr to <16 x i32>
  %i.apw = bitcast <16 x float> %i.aps to <16 x i32>
  %i.apx = bitcast <16 x float> %i.apt to <16 x i32>
  %i.apy = bitcast <16 x float> %i.apu to <16 x i32>
  %i.apz = lshr <16 x i32> %i.apv, splat (i32 16)
  %i.aqa = lshr <16 x i32> %i.apw, splat (i32 16)
  %i.aqb = lshr <16 x i32> %i.apx, splat (i32 16)
  %i.aqc = lshr <16 x i32> %i.apy, splat (i32 16)
  %i.aqd = trunc nuw <16 x i32> %i.apz to <16 x i16>
  %i.aqe = trunc nuw <16 x i32> %i.aqa to <16 x i16>
  %i.aqf = trunc nuw <16 x i32> %i.aqb to <16 x i16>
  %i.aqg = trunc nuw <16 x i32> %i.aqc to <16 x i16>
  %i.aqh = getelementptr inbounds nuw [2 x i8], ptr %i.alb, i64 %i.aoc ; 4 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 32
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 64
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqh, i64 96
  store <16 x i16> %i.aqd, ptr %i.aqh, align 2, !tbaa !56
  store <16 x i16> %i.aqe, ptr %i.aqi, align 2, !tbaa !56
  store <16 x i16> %i.aqf, ptr %i.aqj, align 2, !tbaa !56
  store <16 x i16> %i.aqg, ptr %i.aqk, align 2, !tbaa !56
  %index.next941 = add nuw i64 %index924, 64      ; 2 uses
  %i.aql = icmp eq i64 %index.next941, %n.vec914
  br i1 %i.aql, label %middle.block942, label %vector.body923, !llvm.loop !166

middle.block942:                                  ; preds = %vector.body923
  %cmp.n943 = icmp eq i64 %i.anz, %n.vec914
  br i1 %cmp.n943, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i45, label %vec.epilog.iter.check947

vec.epilog.iter.check947:                         ; preds = %middle.block942
  %min.epilog.iters.check948 = icmp eq i64 %i.aoa, 0
  br i1 %min.epilog.iters.check948, label %.lr.ph112.i.i47.preheader, label %vec.epilog.ph949, !prof !101

vec.epilog.ph949:                                 ; preds = %vector.main.loop.iter.check911, %vec.epilog.iter.check947
  %vec.epilog.resume.val944 = phi i64 [ %n.vec914, %vec.epilog.iter.check947 ], [ 0, %vector.main.loop.iter.check911 ]
  %n.vec950 = and i64 %i.anz, 8589934584          ; 3 uses
  %i.aqm = add nuw nsw i64 %n.vec950, %i.anv
  %broadcast.splatinsert951 = insertelement <8 x float> poison, float %i.alc, i64 0
  %broadcast.splat952 = shufflevector <8 x float> %broadcast.splatinsert951, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <8 x float> poison, float %i.ale, i64 0
  %broadcast.splat954 = shufflevector <8 x float> %broadcast.splatinsert953, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <8 x float> poison, float %i.alg, i64 0
  %broadcast.splat956 = shufflevector <8 x float> %broadcast.splatinsert955, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert957 = insertelement <8 x float> poison, float %i.ali, i64 0
  %broadcast.splat958 = shufflevector <8 x float> %broadcast.splatinsert957, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body959

vec.epilog.vector.body959:                        ; preds = %vec.epilog.vector.body959, %vec.epilog.ph949
  %index960 = phi i64 [ %vec.epilog.resume.val944, %vec.epilog.ph949 ], [ %index.next965, %vec.epilog.vector.body959 ] ; 2 uses
  %i.aqn = add nuw i64 %index960, %i.anv          ; 5 uses
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.aqn
  %wide.load961 = load <8 x float>, ptr %i.aqo, align 4, !tbaa !24
  %i.aqp = fmul fast <8 x float> %wide.load961, %broadcast.splat952
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %i.aqn
  %wide.load962 = load <8 x float>, ptr %i.aqq, align 4, !tbaa !24
  %i.aqr = fmul fast <8 x float> %wide.load962, %broadcast.splat954
  %i.aqs = fadd fast <8 x float> %i.aqp, %i.aqr
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %i.aqn
  %wide.load963 = load <8 x float>, ptr %i.aqt, align 4, !tbaa !24
  %i.aqu = fmul fast <8 x float> %wide.load963, %broadcast.splat956
  %i.aqv = fadd fast <8 x float> %i.aqs, %i.aqu
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %i.aqn
  %wide.load964 = load <8 x float>, ptr %i.aqw, align 4, !tbaa !24
  %i.aqx = fmul fast <8 x float> %wide.load964, %broadcast.splat958
  %i.aqy = fadd fast <8 x float> %i.aqv, %i.aqx
  %i.aqz = bitcast <8 x float> %i.aqy to <8 x i32>
  %i.ara = lshr <8 x i32> %i.aqz, splat (i32 16)
  %i.arb = trunc nuw <8 x i32> %i.ara to <8 x i16>
  %i.arc = getelementptr inbounds nuw [2 x i8], ptr %i.alb, i64 %i.aqn
  store <8 x i16> %i.arb, ptr %i.arc, align 2, !tbaa !56
  %index.next965 = add nuw i64 %index960, 8       ; 2 uses
  %i.ard = icmp eq i64 %index.next965, %n.vec950
  br i1 %i.ard, label %vec.epilog.middle.block966, label %vec.epilog.vector.body959, !llvm.loop !167

vec.epilog.middle.block966:                       ; preds = %vec.epilog.vector.body959
  %cmp.n967 = icmp eq i64 %i.anz, %n.vec950
  br i1 %cmp.n967, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i45, label %.lr.ph112.i.i47.preheader

.lr.ph112.i.i47.preheader:                        ; preds = %iter.check945, %vec.epilog.iter.check947, %vec.epilog.middle.block966
  %indvars.iv123.i.i48.ph = phi i64 [ %i.anv, %iter.check945 ], [ %i.aob, %vec.epilog.iter.check947 ], [ %i.aqm, %vec.epilog.middle.block966 ]
  br label %.lr.ph112.i.i47

.lr.ph109.i.i51:                                  ; preds = %.lr.ph109.i.i51, %.lr.ph109.preheader.i.i50
  %indvars.iv120.i.i52 = phi i64 [ %i.ant, %.lr.ph109.preheader.i.i50 ], [ %indvars.iv.next121.i.i53, %.lr.ph109.i.i51 ] ; 6 uses
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv120.i.i52
  %i.arf = load <4 x float>, ptr %i.are, align 1, !tbaa !53
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv120.i.i52
  %i.arh = load <4 x float>, ptr %i.arg, align 1, !tbaa !53
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv120.i.i52
  %i.arj = load <4 x float>, ptr %i.ari, align 1, !tbaa !53
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv120.i.i52
  %i.arl = load <4 x float>, ptr %i.ark, align 1, !tbaa !53
  %i.arm = fmul fast <4 x float> %i.arf, %i.ank
  %i.arn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.arh, <4 x float> nofpclass(nan inf) %i.anm, <4 x float> nofpclass(nan inf) %i.arm)
  %i.aro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.arj, <4 x float> nofpclass(nan inf) %i.ano, <4 x float> nofpclass(nan inf) %i.arn)
  %i.arp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.arl, <4 x float> nofpclass(nan inf) %i.anq, <4 x float> nofpclass(nan inf) %i.aro)
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.alb, i64 %indvars.iv120.i.i52
  %i.arr = shufflevector <4 x float> %i.arp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ars = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.arr)
  %i.art = bitcast <8 x bfloat> %i.ars to <2 x i64>
  %i.aru = extractelement <2 x i64> %i.art, i64 0
  store i64 %i.aru, ptr %i.arq, align 1, !tbaa !53
  %indvars.iv.next121.i.i53 = add nuw nsw i64 %indvars.iv120.i.i52, 4 ; 2 uses
  %i.arv = trunc i64 %indvars.iv.next121.i.i53 to i32 ; 2 uses
  %i.arw = or i32 %i.arv, 3
  %i.arx = icmp slt i32 %i.arw, %i.yn
  br i1 %i.arx, label %.lr.ph109.i.i51, label %.preheader.i.i43, !llvm.loop !159

.lr.ph112.i.i47:                                  ; preds = %.lr.ph112.i.i47.preheader, %.lr.ph112.i.i47
  %indvars.iv123.i.i48 = phi i64 [ %indvars.iv.next124.i.i49, %.lr.ph112.i.i47 ], [ %indvars.iv123.i.i48.ph, %.lr.ph112.i.i47.preheader ] ; 6 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv123.i.i48
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !24
  %i.asa = fmul fast float %i.arz, %i.alc
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv123.i.i48
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !24
  %i.asd = fmul fast float %i.asc, %i.ale
  %i.ase = fadd fast float %i.asa, %i.asd
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv123.i.i48
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !24
  %i.ash = fmul fast float %i.asg, %i.alg
  %i.asi = fadd fast float %i.ase, %i.ash
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv123.i.i48
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !24
  %i.asl = fmul fast float %i.ask, %i.ali
  %i.asm = fadd fast float %i.asi, %i.asl
  %i.asn = bitcast float %i.asm to i32
  %i.aso = lshr i32 %i.asn, 16
  %i.asp = trunc nuw i32 %i.aso to i16
  %i.asq = getelementptr inbounds nuw [2 x i8], ptr %i.alb, i64 %indvars.iv123.i.i48
  store i16 %i.asp, ptr %i.asq, align 2, !tbaa !56
  %indvars.iv.next124.i.i49 = add nuw nsw i64 %indvars.iv123.i.i48, 1 ; 2 uses
  %i.asr = trunc nuw i64 %indvars.iv.next124.i.i49 to i32
  %i.ass = icmp sgt i32 %i.yn, %i.asr
  br i1 %i.ass, label %.lr.ph112.i.i47, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i45, !llvm.loop !168

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i45: ; preds = %.lr.ph112.i.i47, %middle.block942, %vec.epilog.middle.block966, %.preheader.i.i43
  %i.ast = getelementptr inbounds nuw i8, ptr %.0468.i, i64 16
  %indvars.iv.next491.i = add nuw nsw i64 %indvars.iv490.i, 1 ; 2 uses
  %exitcond494.not.i = icmp eq i64 %indvars.iv.next491.i, %wide.trip.count493.i
  br i1 %exitcond494.not.i, label %._crit_edge.i34, label %bb.ci, !llvm.loop !169

bb.cr:                                            ; preds = %bb.ch
  %i.asu = atomicrmw add ptr %i.aaj, i32 -1 acq_rel, align 4
  %i.asv = icmp eq i32 %i.asu, 1
  br i1 %i.asv, label %bb.cs, label %_ZN4ncnn3MatD2Ev.exit322.i

bb.cs:                                            ; preds = %bb.cr
  %i.asw = load ptr, ptr %i.al, align 8, !tbaa !92 ; 3 uses
  %.not3.i345.i = icmp eq ptr %i.asw, null
  %i.asx = load ptr, ptr %20, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i345.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.asy = load ptr, ptr %i.asw, align 8, !tbaa !93
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 24
  %i.ata = load ptr, ptr %i.asz, align 8
  invoke void %i.ata(ptr noundef nonnull align 8 dereferenceable(8) %i.asw, ptr noundef %i.asx)
          to label %_ZN4ncnn3MatD2Ev.exit322.i unwind label %bb.cw, !inline_history !95

bb.cu:                                            ; preds = %bb.cs
  %.not.i359.i = icmp eq ptr %i.asx, null
  br i1 %.not.i359.i, label %_ZN4ncnn3MatD2Ev.exit322.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @free(ptr noundef nonnull %i.asx) #3
  br label %_ZN4ncnn3MatD2Ev.exit322.i

bb.cw:                                            ; preds = %bb.ct
  %i.atb = landingpad { ptr, i32 }
          catch ptr null
  %i.atc = extractvalue { ptr, i32 } %i.atb, 0
  call void @__clang_call_terminate(ptr %i.atc) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit322.i:                       ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.ch, %bb.cg
  %.pn316.pn.pn.i = phi { ptr, i32 } [ %i.aah, %bb.cg ], [ %i.aai, %bb.cr ], [ %i.aai, %bb.ch ], [ %i.aai, %bb.ct ], [ %i.aai, %bb.cu ], [ %i.aai, %bb.cv ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #3
  %i.atd = load ptr, ptr %i.ah, align 8, !tbaa !91 ; 2 uses
  %.not.i348.i = icmp eq ptr %i.atd, null
  br i1 %.not.i348.i, label %_ZN4ncnn3MatD2Ev.exit321.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit322.i
  %i.ate = atomicrmw add ptr %i.atd, i32 -1 acq_rel, align 4
  %i.atf = icmp eq i32 %i.ate, 1
  br i1 %i.atf, label %bb.cy, label %_ZN4ncnn3MatD2Ev.exit321.i

bb.cy:                                            ; preds = %bb.cx
  %i.atg = load ptr, ptr %i.ai, align 8, !tbaa !92 ; 3 uses
  %.not3.i349.i = icmp eq ptr %i.atg, null
  %i.ath = load ptr, ptr %19, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i349.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ati = load ptr, ptr %i.atg, align 8, !tbaa !93
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 24
  %i.atk = load ptr, ptr %i.atj, align 8
  invoke void %i.atk(ptr noundef nonnull align 8 dereferenceable(8) %i.atg, ptr noundef %i.ath)
          to label %_ZN4ncnn3MatD2Ev.exit321.i unwind label %bb.dc, !inline_history !95

bb.da:                                            ; preds = %bb.cy
  %.not.i357.i = icmp eq ptr %i.ath, null
  br i1 %.not.i357.i, label %_ZN4ncnn3MatD2Ev.exit321.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @free(ptr noundef nonnull %i.ath) #3
  br label %_ZN4ncnn3MatD2Ev.exit321.i

bb.dc:                                            ; preds = %bb.cz
  %i.atl = landingpad { ptr, i32 }
          catch ptr null
  %i.atm = extractvalue { ptr, i32 } %i.atl, 0
  call void @__clang_call_terminate(ptr %i.atm) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit321.i:                       ; preds = %bb.db, %bb.da, %bb.cz, %bb.cx, %_ZN4ncnn3MatD2Ev.exit322.i, %bb.cf
  %.pn316.pn.pn.pn.i = phi { ptr, i32 } [ %i.aag, %bb.cf ], [ %.pn316.pn.pn.i, %bb.cx ], [ %.pn316.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit322.i ], [ %.pn316.pn.pn.i, %bb.cz ], [ %.pn316.pn.pn.i, %bb.da ], [ %.pn316.pn.pn.i, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #3
  %i.atn = load ptr, ptr %i.ae, align 8, !tbaa !91 ; 2 uses
  %.not.i352.i = icmp eq ptr %i.atn, null
  br i1 %.not.i352.i, label %_ZN4ncnn3MatD2Ev.exit.i32, label %bb.dd

bb.dd:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit321.i
  %i.ato = atomicrmw add ptr %i.atn, i32 -1 acq_rel, align 4
  %i.atp = icmp eq i32 %i.ato, 1
  br i1 %i.atp, label %bb.de, label %_ZN4ncnn3MatD2Ev.exit.i32

bb.de:                                            ; preds = %bb.dd
  %i.atq = load ptr, ptr %i.af, align 8, !tbaa !92 ; 3 uses
  %.not3.i353.i = icmp eq ptr %i.atq, null
  %i.atr = load ptr, ptr %18, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i353.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ats = load ptr, ptr %i.atq, align 8, !tbaa !93
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 24
  %i.atu = load ptr, ptr %i.att, align 8
  invoke void %i.atu(ptr noundef nonnull align 8 dereferenceable(8) %i.atq, ptr noundef %i.atr)
          to label %_ZN4ncnn3MatD2Ev.exit.i32 unwind label %bb.di, !inline_history !95

bb.dg:                                            ; preds = %bb.de
  %.not.i356.i = icmp eq ptr %i.atr, null
  br i1 %.not.i356.i, label %_ZN4ncnn3MatD2Ev.exit.i32, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @free(ptr noundef nonnull %i.atr) #3
  br label %_ZN4ncnn3MatD2Ev.exit.i32

bb.di:                                            ; preds = %bb.df
  %i.atv = landingpad { ptr, i32 }
          catch ptr null
  %i.atw = extractvalue { ptr, i32 } %i.atv, 0
  call void @__clang_call_terminate(ptr %i.atw) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i32:                        ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dd, %_ZN4ncnn3MatD2Ev.exit321.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #3
  br label %.body

_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit324.i, %bb.bz, %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #3
  %.pre = load i32, ptr %5, align 4, !tbaa !18
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.bf
  %i.atx = phi i32 [ %.pre, %_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.yb, %bb.bf ] ; 2 uses
  %i.aty = icmp eq i32 %i.atx, 4
  br i1 %i.aty, label %bb.dk, label %bb.fn

bb.dk:                                            ; preds = %bb.dj
  %i.atz = load ptr, ptr %6, align 8, !tbaa !27   ; 4 uses
  %i.aua = load ptr, ptr %7, align 8, !tbaa !26   ; 4 uses
  %i.aub = load ptr, ptr %8, align 8, !tbaa !27
  %i.auc = load ptr, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #3
  store i64 0, ptr %i.as, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc136 unwind label %bb.hr

.noexc136:                                        ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  store i64 0, ptr %i.av, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i unwind label %bb.ej

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i:      ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  store i64 0, ptr %i.ay, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i unwind label %bb.ek

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i:      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  store i64 0, ptr %i.bb, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i81 unwind label %bb.el

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i81:       ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i
  %i.aud = icmp sgt i32 %i.by, 0
  br i1 %i.aud, label %.lr.ph437.i, label %._crit_edge.i82

.lr.ph437.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i81
  %i.aue = load ptr, ptr %17, align 8, !tbaa !29
  %i.auf = load ptr, ptr %16, align 8, !tbaa !29
  %i.aug = load ptr, ptr %15, align 8, !tbaa !29
  %i.auh = load ptr, ptr %14, align 8, !tbaa !29
  %i.aui = icmp sgt i32 %i.bx, 0                  ; 4 uses
  %i.auj = shl i32 %i.bx, 2                       ; 7 uses
  %i.auk = icmp sgt i32 %i.bx, 3
  %i.aul = zext nneg i32 %i.auj to i64            ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.6:bb.a
  %i.bkn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bkm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bko = bitcast <8 x i16> %i.bkn to <4 x float>
  %i.bkp = load i64, ptr %gep.3.i123, align 1, !tbaa !53
  %i.bkq = insertelement <2 x i64> poison, i64 %i.bkp, i64 0
  %i.bkr = bitcast <2 x i64> %i.bkq to <8 x i16>
  %i.bks = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bkr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bkt = bitcast <8 x i16> %i.bks to <4 x float>
  %i.bku = getelementptr inbounds nuw i8, ptr %gep.3.i123, i64 8
  %i.bkv = load i64, ptr %i.bku, align 1, !tbaa !53
  %i.bkw = insertelement <2 x i64> poison, i64 %i.bkv, i64 0
  %i.bkx = bitcast <2 x i64> %i.bkw to <8 x i16>
  %i.bky = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bkx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bkz = bitcast <8 x i16> %i.bky to <4 x float>
  %i.bla = getelementptr inbounds nuw i8, ptr %gep.3.i123, i64 16
  %i.blb = load i64, ptr %i.bla, align 1, !tbaa !53
  %i.blc = insertelement <2 x i64> poison, i64 %i.blb, i64 0
  %i.bld = bitcast <2 x i64> %i.blc to <8 x i16>
  %i.ble = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bld, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.blf = bitcast <8 x i16> %i.ble to <4 x float>
  %i.blg = fmul fast <4 x float> %i.bgo, %i.bko
  %i.blh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkt, <4 x float> nofpclass(nan inf) %i.bgs, <4 x float> nofpclass(nan inf) %i.blg)
  %i.bli = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkz, <4 x float> nofpclass(nan inf) %i.bgw, <4 x float> nofpclass(nan inf) %i.blh)
  %i.blj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.blf, <4 x float> nofpclass(nan inf) %i.bha, <4 x float> nofpclass(nan inf) %i.bli)
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %.0245432.i, i64 %i.bhb
  store <4 x float> %i.blj, ptr %i.blk, align 16, !tbaa !53
  %i.bll = getelementptr inbounds nuw i8, ptr %.0253416.i, i64 16
  %indvars.iv.next.i124 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %indvars.iv.next.i124, %wide.trip.count.i84
  br i1 %exitcond.not.i125, label %.loopexit.i88, label %.thread410.3.i, !llvm.loop !173

.loopexit.i88:                                    ; preds = %.thread410.3.i, %bb.et, %.lr.ph426.i, %.lr.ph429.i, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em
  %.1246.i = phi ptr [ %.0245432.i, %bb.em ], [ %.0239435.i, %bb.eo ], [ %.0241434.i, %bb.eq ], [ %.0243433.i, %bb.es ], [ %.0245432.i, %bb.eu ], [ %.0243433.i, %bb.et ], [ %.0239435.i, %.lr.ph429.i ], [ %.0241434.i, %.lr.ph426.i ], [ %.0245432.i, %.thread410.3.i ] ; 7 uses
  %.1244.i = phi ptr [ %.0243433.i, %bb.em ], [ %.0245432.i, %bb.eo ], [ %.0239435.i, %bb.eq ], [ %.0241434.i, %bb.es ], [ %.0243433.i, %bb.eu ], [ %.0241434.i, %bb.et ], [ %.0245432.i, %.lr.ph429.i ], [ %.0239435.i, %.lr.ph426.i ], [ %.0243433.i, %.thread410.3.i ] ; 7 uses
  %.1242.i = phi ptr [ %.0241434.i, %bb.em ], [ %.0243433.i, %bb.eo ], [ %.0245432.i, %bb.eq ], [ %.0239435.i, %bb.es ], [ %.0241434.i, %bb.eu ], [ %.0239435.i, %bb.et ], [ %.0243433.i, %.lr.ph429.i ], [ %.0245432.i, %.lr.ph426.i ], [ %.0241434.i, %.thread410.3.i ] ; 7 uses
  %.1240.i = phi ptr [ %.0239435.i, %bb.em ], [ %.0241434.i, %bb.eo ], [ %.0243433.i, %bb.eq ], [ %.0245432.i, %bb.es ], [ %.0239435.i, %bb.eu ], [ %.0245432.i, %bb.et ], [ %.0241434.i, %.lr.ph429.i ], [ %.0243433.i, %.lr.ph426.i ], [ %.0239435.i, %.thread410.3.i ] ; 7 uses
  %i.blm = mul i64 %i.aum, %indvars.iv458.i
  %i.bln = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.blm ; 6 uses
  %i.blo = load float, ptr %.0436.i, align 4, !tbaa !24 ; 6 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %.0436.i, i64 4
  %i.blq = load float, ptr %i.blp, align 4, !tbaa !24 ; 6 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %.0436.i, i64 8
  %i.bls = load float, ptr %i.blr, align 4, !tbaa !24 ; 6 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %.0436.i, i64 12
  %i.blu = load float, ptr %i.blt, align 4, !tbaa !24 ; 6 uses
  %i.blv = insertelement <16 x float> poison, float %i.blo, i64 0
  %i.blw = shufflevector <16 x float> %i.blv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.blx = insertelement <16 x float> poison, float %i.blq, i64 0
  %i.bly = shufflevector <16 x float> %i.blx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.blz = insertelement <16 x float> poison, float %i.bls, i64 0
  %i.bma = shufflevector <16 x float> %i.blz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bmb = insertelement <16 x float> poison, float %i.blu, i64 0
  %i.bmc = shufflevector <16 x float> %i.bmb, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.auk, label %.lr.ph.i.i109, label %._crit_edge.i.i89

.lr.ph.i.i109:                                    ; preds = %.loopexit.i88, %.lr.ph.i.i109
  %indvars.iv.i.i110 = phi i64 [ %indvars.iv.next.i.i111, %.lr.ph.i.i109 ], [ 0, %.loopexit.i88 ] ; 6 uses
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv.i.i110
  %i.bme = load <16 x float>, ptr %i.bmd, align 1, !tbaa !53
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv.i.i110
  %i.bmg = load <16 x float>, ptr %i.bmf, align 1, !tbaa !53
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv.i.i110
  %i.bmi = load <16 x float>, ptr %i.bmh, align 1, !tbaa !53
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv.i.i110
  %i.bmk = load <16 x float>, ptr %i.bmj, align 1, !tbaa !53
  %i.bml = fmul fast <16 x float> %i.bme, %i.blw
  %i.bmm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmg, <16 x float> nofpclass(nan inf) %i.bly, <16 x float> nofpclass(nan inf) %i.bml)
  %i.bmn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmi, <16 x float> nofpclass(nan inf) %i.bma, <16 x float> nofpclass(nan inf) %i.bmm)
  %i.bmo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmk, <16 x float> nofpclass(nan inf) %i.bmc, <16 x float> nofpclass(nan inf) %i.bmn)
  %i.bmp = getelementptr inbounds nuw [2 x i8], ptr %i.bln, i64 %indvars.iv.i.i110
  %i.bmq = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bmo)
  store <16 x bfloat> %i.bmq, ptr %i.bmp, align 1, !tbaa !53
  %indvars.iv.next.i.i111 = add nuw nsw i64 %indvars.iv.i.i110, 16 ; 3 uses
  %i.bmr = or disjoint i64 %indvars.iv.next.i.i111, 15
  %i.bms = icmp samesign ult i64 %i.bmr, %i.aul
  br i1 %i.bms, label %.lr.ph.i.i109, label %._crit_edge.loopexit.i.i112, !llvm.loop !155

._crit_edge.loopexit.i.i112:                      ; preds = %.lr.ph.i.i109
  %i.bmt = trunc nuw nsw i64 %indvars.iv.next.i.i111 to i32
  br label %._crit_edge.i.i89

._crit_edge.i.i89:                                ; preds = %._crit_edge.loopexit.i.i112, %.loopexit.i88
  %.0.lcssa.i.i90 = phi i32 [ 0, %.loopexit.i88 ], [ %i.bmt, %._crit_edge.loopexit.i.i112 ] ; 3 uses
  %i.bmu = insertelement <8 x float> poison, float %i.blo, i64 0
  %i.bmv = shufflevector <8 x float> %i.bmu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bmw = insertelement <8 x float> poison, float %i.blq, i64 0
  %i.bmx = shufflevector <8 x float> %i.bmw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bmy = insertelement <8 x float> poison, float %i.bls, i64 0
  %i.bmz = shufflevector <8 x float> %i.bmy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bna = insertelement <8 x float> poison, float %i.blu, i64 0
  %i.bnb = shufflevector <8 x float> %i.bna, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnc = or disjoint i32 %.0.lcssa.i.i90, 7
  %i.bnd = icmp slt i32 %i.bnc, %i.auj
  br i1 %i.bnd, label %.lr.ph104.preheader.i.i104, label %._crit_edge105.i.i91

.lr.ph104.preheader.i.i104:                       ; preds = %._crit_edge.i.i89
  %i.bne = zext nneg i32 %.0.lcssa.i.i90 to i64
  br label %.lr.ph104.i.i105

.lr.ph104.i.i105:                                 ; preds = %.lr.ph104.i.i105, %.lr.ph104.preheader.i.i104
  %indvars.iv117.i.i106 = phi i64 [ %i.bne, %.lr.ph104.preheader.i.i104 ], [ %indvars.iv.next118.i.i107, %.lr.ph104.i.i105 ] ; 6 uses
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv117.i.i106
  %i.bng = load <8 x float>, ptr %i.bnf, align 1, !tbaa !53
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv117.i.i106
  %i.bni = load <8 x float>, ptr %i.bnh, align 1, !tbaa !53
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv117.i.i106
  %i.bnk = load <8 x float>, ptr %i.bnj, align 1, !tbaa !53
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv117.i.i106
  %i.bnm = load <8 x float>, ptr %i.bnl, align 1, !tbaa !53
  %i.bnn = fmul fast <8 x float> %i.bng, %i.bmv
  %i.bno = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bni, <8 x float> nofpclass(nan inf) %i.bmx, <8 x float> nofpclass(nan inf) %i.bnn)
  %i.bnp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bnk, <8 x float> nofpclass(nan inf) %i.bmz, <8 x float> nofpclass(nan inf) %i.bno)
  %i.bnq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bnm, <8 x float> nofpclass(nan inf) %i.bnb, <8 x float> nofpclass(nan inf) %i.bnp)
  %i.bnr = getelementptr inbounds nuw [2 x i8], ptr %i.bln, i64 %indvars.iv117.i.i106
  %i.bns = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bnq)
  store <8 x bfloat> %i.bns, ptr %i.bnr, align 1, !tbaa !53
  %indvars.iv.next118.i.i107 = add nuw nsw i64 %indvars.iv117.i.i106, 8 ; 3 uses
  %i.bnt = icmp slt i64 %indvars.iv.next118.i.i107, %invariant.op.i.i83
  br i1 %i.bnt, label %.lr.ph104.i.i105, label %._crit_edge105.loopexit.i.i108, !llvm.loop !156

._crit_edge105.loopexit.i.i108:                   ; preds = %.lr.ph104.i.i105
  %i.bnu = trunc nuw nsw i64 %indvars.iv.next118.i.i107 to i32
  br label %._crit_edge105.i.i91

._crit_edge105.i.i91:                             ; preds = %._crit_edge105.loopexit.i.i108, %._crit_edge.i.i89
  %.1.lcssa.i.i92 = phi i32 [ %.0.lcssa.i.i90, %._crit_edge.i.i89 ], [ %i.bnu, %._crit_edge105.loopexit.i.i108 ] ; 3 uses
  %i.bnv = insertelement <4 x float> poison, float %i.blo, i64 0
  %i.bnw = shufflevector <4 x float> %i.bnv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bnx = insertelement <4 x float> poison, float %i.blq, i64 0
  %i.bny = shufflevector <4 x float> %i.bnx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bnz = insertelement <4 x float> poison, float %i.bls, i64 0
  %i.boa = shufflevector <4 x float> %i.bnz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bob = insertelement <4 x float> poison, float %i.blu, i64 0
  %i.boc = shufflevector <4 x float> %i.bob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bod = or disjoint i32 %.1.lcssa.i.i92, 3
  %i.boe = icmp slt i32 %i.bod, %i.auj
  br i1 %i.boe, label %.lr.ph109.preheader.i.i100, label %.preheader.i.i93

.lr.ph109.preheader.i.i100:                       ; preds = %._crit_edge105.i.i91
  %i.bof = zext nneg i32 %.1.lcssa.i.i92 to i64
  br label %.lr.ph109.i.i101

.preheader.i.i93:                                 ; preds = %.lr.ph109.i.i101, %._crit_edge105.i.i91
  %.2.lcssa.i.i94 = phi i32 [ %.1.lcssa.i.i92, %._crit_edge105.i.i91 ], [ %i.bsh, %.lr.ph109.i.i101 ] ; 3 uses
  %i.bog = icmp slt i32 %.2.lcssa.i.i94, %i.auj
  br i1 %i.bog, label %iter.check886, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i95

iter.check886:                                    ; preds = %.preheader.i.i93
  %i.boh = zext i32 %.2.lcssa.i.i94 to i64        ; 5 uses
  %i.boi = xor i32 %.2.lcssa.i.i94, -1
  %i.boj = add i32 %i.auj, %i.boi                 ; 3 uses
  %i.bok = zext i32 %i.boj to i64
  %i.bol = add nuw nsw i64 %i.bok, 1              ; 5 uses
  %min.iters.check851 = icmp ult i32 %i.boj, 7
  br i1 %min.iters.check851, label %.lr.ph112.i.i97.preheader, label %vector.main.loop.iter.check852

vector.main.loop.iter.check852:                   ; preds = %iter.check886
  %min.iters.check853 = icmp ult i32 %i.boj, 63
  br i1 %min.iters.check853, label %vec.epilog.ph890, label %vector.ph854

vector.ph854:                                     ; preds = %vector.main.loop.iter.check852
  %i.bom = and i64 %i.bol, 56
  %n.vec855 = and i64 %i.bol, 8589934528          ; 4 uses
  %i.bon = add nuw nsw i64 %n.vec855, %i.boh
  %broadcast.splatinsert856 = insertelement <16 x float> poison, float %i.blo, i64 0
  %broadcast.splat857 = shufflevector <16 x float> %broadcast.splatinsert856, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert858 = insertelement <16 x float> poison, float %i.blq, i64 0
  %broadcast.splat859 = shufflevector <16 x float> %broadcast.splatinsert858, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert860 = insertelement <16 x float> poison, float %i.bls, i64 0
  %broadcast.splat861 = shufflevector <16 x float> %broadcast.splatinsert860, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert862 = insertelement <16 x float> poison, float %i.blu, i64 0
  %broadcast.splat863 = shufflevector <16 x float> %broadcast.splatinsert862, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body864

vector.body864:                                   ; preds = %vector.body864, %vector.ph854
  %index865 = phi i64 [ 0, %vector.ph854 ], [ %index.next882, %vector.body864 ] ; 2 uses
  %i.boo = add nuw i64 %index865, %i.boh          ; 5 uses
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %i.boo ; 4 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 64
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bop, i64 128
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bop, i64 192
  %wide.load866 = load <16 x float>, ptr %i.bop, align 4, !tbaa !24
  %wide.load867 = load <16 x float>, ptr %i.boq, align 4, !tbaa !24
  %wide.load868 = load <16 x float>, ptr %i.bor, align 4, !tbaa !24
  %wide.load869 = load <16 x float>, ptr %i.bos, align 4, !tbaa !24
  %i.bot = fmul fast <16 x float> %wide.load866, %broadcast.splat857
  %i.bou = fmul fast <16 x float> %wide.load867, %broadcast.splat857
  %i.bov = fmul fast <16 x float> %wide.load868, %broadcast.splat857
  %i.bow = fmul fast <16 x float> %wide.load869, %broadcast.splat857
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %i.boo ; 4 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 64
  %i.boz = getelementptr inbounds nuw i8, ptr %i.box, i64 128
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.box, i64 192
  %wide.load870 = load <16 x float>, ptr %i.box, align 4, !tbaa !24
  %wide.load871 = load <16 x float>, ptr %i.boy, align 4, !tbaa !24
  %wide.load872 = load <16 x float>, ptr %i.boz, align 4, !tbaa !24
  %wide.load873 = load <16 x float>, ptr %i.bpa, align 4, !tbaa !24
  %i.bpb = fmul fast <16 x float> %wide.load870, %broadcast.splat859
  %i.bpc = fmul fast <16 x float> %wide.load871, %broadcast.splat859
  %i.bpd = fmul fast <16 x float> %wide.load872, %broadcast.splat859
  %i.bpe = fmul fast <16 x float> %wide.load873, %broadcast.splat859
  %i.bpf = fadd fast <16 x float> %i.bot, %i.bpb
  %i.bpg = fadd fast <16 x float> %i.bou, %i.bpc
  %i.bph = fadd fast <16 x float> %i.bov, %i.bpd
  %i.bpi = fadd fast <16 x float> %i.bow, %i.bpe
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %i.boo ; 4 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 64
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpj, i64 128
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpj, i64 192
  %wide.load874 = load <16 x float>, ptr %i.bpj, align 4, !tbaa !24
  %wide.load875 = load <16 x float>, ptr %i.bpk, align 4, !tbaa !24
  %wide.load876 = load <16 x float>, ptr %i.bpl, align 4, !tbaa !24
  %wide.load877 = load <16 x float>, ptr %i.bpm, align 4, !tbaa !24
  %i.bpn = fmul fast <16 x float> %wide.load874, %broadcast.splat861
  %i.bpo = fmul fast <16 x float> %wide.load875, %broadcast.splat861
  %i.bpp = fmul fast <16 x float> %wide.load876, %broadcast.splat861
  %i.bpq = fmul fast <16 x float> %wide.load877, %broadcast.splat861
  %i.bpr = fadd fast <16 x float> %i.bpf, %i.bpn
  %i.bps = fadd fast <16 x float> %i.bpg, %i.bpo
  %i.bpt = fadd fast <16 x float> %i.bph, %i.bpp
  %i.bpu = fadd fast <16 x float> %i.bpi, %i.bpq
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %i.boo ; 4 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpv, i64 64
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpv, i64 128
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpv, i64 192
  %wide.load878 = load <16 x float>, ptr %i.bpv, align 4, !tbaa !24
  %wide.load879 = load <16 x float>, ptr %i.bpw, align 4, !tbaa !24
  %wide.load880 = load <16 x float>, ptr %i.bpx, align 4, !tbaa !24
  %wide.load881 = load <16 x float>, ptr %i.bpy, align 4, !tbaa !24
  %i.bpz = fmul fast <16 x float> %wide.load878, %broadcast.splat863
  %i.bqa = fmul fast <16 x float> %wide.load879, %broadcast.splat863
  %i.bqb = fmul fast <16 x float> %wide.load880, %broadcast.splat863
  %i.bqc = fmul fast <16 x float> %wide.load881, %broadcast.splat863
  %i.bqd = fadd fast <16 x float> %i.bpr, %i.bpz
  %i.bqe = fadd fast <16 x float> %i.bps, %i.bqa
  %i.bqf = fadd fast <16 x float> %i.bpt, %i.bqb
  %i.bqg = fadd fast <16 x float> %i.bpu, %i.bqc
  %i.bqh = bitcast <16 x float> %i.bqd to <16 x i32>
  %i.bqi = bitcast <16 x float> %i.bqe to <16 x i32>
  %i.bqj = bitcast <16 x float> %i.bqf to <16 x i32>
  %i.bqk = bitcast <16 x float> %i.bqg to <16 x i32>
  %i.bql = lshr <16 x i32> %i.bqh, splat (i32 16)
  %i.bqm = lshr <16 x i32> %i.bqi, splat (i32 16)
  %i.bqn = lshr <16 x i32> %i.bqj, splat (i32 16)
  %i.bqo = lshr <16 x i32> %i.bqk, splat (i32 16)
  %i.bqp = trunc nuw <16 x i32> %i.bql to <16 x i16>
  %i.bqq = trunc nuw <16 x i32> %i.bqm to <16 x i16>
  %i.bqr = trunc nuw <16 x i32> %i.bqn to <16 x i16>
  %i.bqs = trunc nuw <16 x i32> %i.bqo to <16 x i16>
  %i.bqt = getelementptr inbounds nuw [2 x i8], ptr %i.bln, i64 %i.boo ; 4 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqt, i64 64
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqt, i64 96
  store <16 x i16> %i.bqp, ptr %i.bqt, align 2, !tbaa !56
  store <16 x i16> %i.bqq, ptr %i.bqu, align 2, !tbaa !56
  store <16 x i16> %i.bqr, ptr %i.bqv, align 2, !tbaa !56
  store <16 x i16> %i.bqs, ptr %i.bqw, align 2, !tbaa !56
  %index.next882 = add nuw i64 %index865, 64      ; 2 uses
  %i.bqx = icmp eq i64 %index.next882, %n.vec855
  br i1 %i.bqx, label %middle.block883, label %vector.body864, !llvm.loop !174

middle.block883:                                  ; preds = %vector.body864
  %cmp.n884 = icmp eq i64 %i.bol, %n.vec855
  br i1 %cmp.n884, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i95, label %vec.epilog.iter.check888

vec.epilog.iter.check888:                         ; preds = %middle.block883
  %min.epilog.iters.check889 = icmp eq i64 %i.bom, 0
  br i1 %min.epilog.iters.check889, label %.lr.ph112.i.i97.preheader, label %vec.epilog.ph890, !prof !101

vec.epilog.ph890:                                 ; preds = %vector.main.loop.iter.check852, %vec.epilog.iter.check888
  %vec.epilog.resume.val885 = phi i64 [ %n.vec855, %vec.epilog.iter.check888 ], [ 0, %vector.main.loop.iter.check852 ]
  %n.vec891 = and i64 %i.bol, 8589934584          ; 3 uses
  %i.bqy = add nuw nsw i64 %n.vec891, %i.boh
  %broadcast.splatinsert892 = insertelement <8 x float> poison, float %i.blo, i64 0
  %broadcast.splat893 = shufflevector <8 x float> %broadcast.splatinsert892, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert894 = insertelement <8 x float> poison, float %i.blq, i64 0
  %broadcast.splat895 = shufflevector <8 x float> %broadcast.splatinsert894, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert896 = insertelement <8 x float> poison, float %i.bls, i64 0
  %broadcast.splat897 = shufflevector <8 x float> %broadcast.splatinsert896, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert898 = insertelement <8 x float> poison, float %i.blu, i64 0
  %broadcast.splat899 = shufflevector <8 x float> %broadcast.splatinsert898, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body900

vec.epilog.vector.body900:                        ; preds = %vec.epilog.vector.body900, %vec.epilog.ph890
  %index901 = phi i64 [ %vec.epilog.resume.val885, %vec.epilog.ph890 ], [ %index.next906, %vec.epilog.vector.body900 ] ; 2 uses
  %i.bqz = add nuw i64 %index901, %i.boh          ; 5 uses
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %i.bqz
  %wide.load902 = load <8 x float>, ptr %i.bra, align 4, !tbaa !24
  %i.brb = fmul fast <8 x float> %wide.load902, %broadcast.splat893
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %i.bqz
  %wide.load903 = load <8 x float>, ptr %i.brc, align 4, !tbaa !24
  %i.brd = fmul fast <8 x float> %wide.load903, %broadcast.splat895
  %i.bre = fadd fast <8 x float> %i.brb, %i.brd
  %i.brf = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %i.bqz
  %wide.load904 = load <8 x float>, ptr %i.brf, align 4, !tbaa !24
  %i.brg = fmul fast <8 x float> %wide.load904, %broadcast.splat897
  %i.brh = fadd fast <8 x float> %i.bre, %i.brg
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %i.bqz
  %wide.load905 = load <8 x float>, ptr %i.bri, align 4, !tbaa !24
  %i.brj = fmul fast <8 x float> %wide.load905, %broadcast.splat899
  %i.brk = fadd fast <8 x float> %i.brh, %i.brj
  %i.brl = bitcast <8 x float> %i.brk to <8 x i32>
  %i.brm = lshr <8 x i32> %i.brl, splat (i32 16)
  %i.brn = trunc nuw <8 x i32> %i.brm to <8 x i16>
  %i.bro = getelementptr inbounds nuw [2 x i8], ptr %i.bln, i64 %i.bqz
  store <8 x i16> %i.brn, ptr %i.bro, align 2, !tbaa !56
  %index.next906 = add nuw i64 %index901, 8       ; 2 uses
  %i.brp = icmp eq i64 %index.next906, %n.vec891
  br i1 %i.brp, label %vec.epilog.middle.block907, label %vec.epilog.vector.body900, !llvm.loop !175

vec.epilog.middle.block907:                       ; preds = %vec.epilog.vector.body900
  %cmp.n908 = icmp eq i64 %i.bol, %n.vec891
  br i1 %cmp.n908, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i95, label %.lr.ph112.i.i97.preheader

.lr.ph112.i.i97.preheader:                        ; preds = %iter.check886, %vec.epilog.iter.check888, %vec.epilog.middle.block907
  %indvars.iv123.i.i98.ph = phi i64 [ %i.boh, %iter.check886 ], [ %i.bon, %vec.epilog.iter.check888 ], [ %i.bqy, %vec.epilog.middle.block907 ]
  br label %.lr.ph112.i.i97

.lr.ph109.i.i101:                                 ; preds = %.lr.ph109.i.i101, %.lr.ph109.preheader.i.i100
  %indvars.iv120.i.i102 = phi i64 [ %i.bof, %.lr.ph109.preheader.i.i100 ], [ %indvars.iv.next121.i.i103, %.lr.ph109.i.i101 ] ; 6 uses
  %i.brq = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv120.i.i102
  %i.brr = load <4 x float>, ptr %i.brq, align 1, !tbaa !53
  %i.brs = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv120.i.i102
  %i.brt = load <4 x float>, ptr %i.brs, align 1, !tbaa !53
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv120.i.i102
  %i.brv = load <4 x float>, ptr %i.bru, align 1, !tbaa !53
  %i.brw = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv120.i.i102
  %i.brx = load <4 x float>, ptr %i.brw, align 1, !tbaa !53
  %i.bry = fmul fast <4 x float> %i.brr, %i.bnw
  %i.brz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.brt, <4 x float> nofpclass(nan inf) %i.bny, <4 x float> nofpclass(nan inf) %i.bry)
  %i.bsa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.brv, <4 x float> nofpclass(nan inf) %i.boa, <4 x float> nofpclass(nan inf) %i.brz)
  %i.bsb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.brx, <4 x float> nofpclass(nan inf) %i.boc, <4 x float> nofpclass(nan inf) %i.bsa)
  %i.bsc = getelementptr inbounds nuw [2 x i8], ptr %i.bln, i64 %indvars.iv120.i.i102
  %i.bsd = shufflevector <4 x float> %i.bsb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bse = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bsd)
  %i.bsf = bitcast <8 x bfloat> %i.bse to <2 x i64>
  %i.bsg = extractelement <2 x i64> %i.bsf, i64 0
  store i64 %i.bsg, ptr %i.bsc, align 1, !tbaa !53
  %indvars.iv.next121.i.i103 = add nuw nsw i64 %indvars.iv120.i.i102, 4 ; 2 uses
  %i.bsh = trunc i64 %indvars.iv.next121.i.i103 to i32 ; 2 uses
  %i.bsi = or i32 %i.bsh, 3
  %i.bsj = icmp slt i32 %i.bsi, %i.auj
  br i1 %i.bsj, label %.lr.ph109.i.i101, label %.preheader.i.i93, !llvm.loop !159

.lr.ph112.i.i97:                                  ; preds = %.lr.ph112.i.i97.preheader, %.lr.ph112.i.i97
  %indvars.iv123.i.i98 = phi i64 [ %indvars.iv.next124.i.i99, %.lr.ph112.i.i97 ], [ %indvars.iv123.i.i98.ph, %.lr.ph112.i.i97.preheader ] ; 6 uses
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv123.i.i98
  %i.bsl = load float, ptr %i.bsk, align 4, !tbaa !24
  %i.bsm = fmul fast float %i.bsl, %i.blo
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv123.i.i98
  %i.bso = load float, ptr %i.bsn, align 4, !tbaa !24
  %i.bsp = fmul fast float %i.bso, %i.blq
  %i.bsq = fadd fast float %i.bsm, %i.bsp
  %i.bsr = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv123.i.i98
  %i.bss = load float, ptr %i.bsr, align 4, !tbaa !24
  %i.bst = fmul fast float %i.bss, %i.bls
  %i.bsu = fadd fast float %i.bsq, %i.bst
  %i.bsv = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv123.i.i98
  %i.bsw = load float, ptr %i.bsv, align 4, !tbaa !24
  %i.bsx = fmul fast float %i.bsw, %i.blu
  %i.bsy = fadd fast float %i.bsu, %i.bsx
  %i.bsz = bitcast float %i.bsy to i32
  %i.bta = lshr i32 %i.bsz, 16
  %i.btb = trunc nuw i32 %i.bta to i16
  %i.btc = getelementptr inbounds nuw [2 x i8], ptr %i.bln, i64 %indvars.iv123.i.i98
  store i16 %i.btb, ptr %i.btc, align 2, !tbaa !56
  %indvars.iv.next124.i.i99 = add nuw nsw i64 %indvars.iv123.i.i98, 1 ; 2 uses
  %i.btd = trunc nuw i64 %indvars.iv.next124.i.i99 to i32
  %i.bte = icmp sgt i32 %i.auj, %i.btd
  br i1 %i.bte, label %.lr.ph112.i.i97, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i95, !llvm.loop !176

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i95: ; preds = %.lr.ph112.i.i97, %middle.block883, %vec.epilog.middle.block907, %.preheader.i.i93
  %i.btf = getelementptr inbounds nuw i8, ptr %.0436.i, i64 16
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %wide.trip.count461.i
  br i1 %exitcond462.not.i, label %._crit_edge.i82, label %bb.em, !llvm.loop !177

bb.ev:                                            ; preds = %bb.el
  %i.btg = atomicrmw add ptr %i.awf, i32 -1 acq_rel, align 4
  %i.bth = icmp eq i32 %i.btg, 1
  br i1 %i.bth, label %bb.ew, label %_ZN4ncnn3MatD2Ev.exit290.i

bb.ew:                                            ; preds = %bb.ev
  %i.bti = load ptr, ptr %i.ax, align 8, !tbaa !92 ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.bti, null
  %i.btj = load ptr, ptr %16, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i313.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.btk = load ptr, ptr %i.bti, align 8, !tbaa !93
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btk, i64 24
  %i.btm = load ptr, ptr %i.btl, align 8
  invoke void %i.btm(ptr noundef nonnull align 8 dereferenceable(8) %i.bti, ptr noundef %i.btj)
          to label %_ZN4ncnn3MatD2Ev.exit290.i unwind label %bb.fa, !inline_history !95

bb.ey:                                            ; preds = %bb.ew
  %.not.i327.i = icmp eq ptr %i.btj, null
  br i1 %.not.i327.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @free(ptr noundef nonnull %i.btj) #3
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.fa:                                            ; preds = %bb.ex
  %i.btn = landingpad { ptr, i32 }
          catch ptr null
  %i.bto = extractvalue { ptr, i32 } %i.btn, 0
  call void @__clang_call_terminate(ptr %i.bto) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit290.i:                       ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ev, %bb.el, %bb.ek
  %.pn284.pn.pn.i = phi { ptr, i32 } [ %i.awd, %bb.ek ], [ %i.awe, %bb.ev ], [ %i.awe, %bb.el ], [ %i.awe, %bb.ex ], [ %i.awe, %bb.ey ], [ %i.awe, %bb.ez ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  %i.btp = load ptr, ptr %i.at, align 8, !tbaa !91 ; 2 uses
  %.not.i316.i = icmp eq ptr %i.btp, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.fb

bb.fb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit290.i
  %i.btq = atomicrmw add ptr %i.btp, i32 -1 acq_rel, align 4
  %i.btr = icmp eq i32 %i.btq, 1
  br i1 %i.btr, label %bb.fc, label %_ZN4ncnn3MatD2Ev.exit289.i

bb.fc:                                            ; preds = %bb.fb
  %i.bts = load ptr, ptr %i.au, align 8, !tbaa !92 ; 3 uses
  %.not3.i317.i = icmp eq ptr %i.bts, null
  %i.btt = load ptr, ptr %15, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i317.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.btu = load ptr, ptr %i.bts, align 8, !tbaa !93
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 24
  %i.btw = load ptr, ptr %i.btv, align 8
  invoke void %i.btw(ptr noundef nonnull align 8 dereferenceable(8) %i.bts, ptr noundef %i.btt)
          to label %_ZN4ncnn3MatD2Ev.exit289.i unwind label %bb.fg, !inline_history !95

bb.fe:                                            ; preds = %bb.fc
  %.not.i325.i = icmp eq ptr %i.btt, null
  br i1 %.not.i325.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @free(ptr noundef nonnull %i.btt) #3
  br label %_ZN4ncnn3MatD2Ev.exit289.i

bb.fg:                                            ; preds = %bb.fd
  %i.btx = landingpad { ptr, i32 }
          catch ptr null
  %i.bty = extractvalue { ptr, i32 } %i.btx, 0
  call void @__clang_call_terminate(ptr %i.bty) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit289.i:                       ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fb, %_ZN4ncnn3MatD2Ev.exit290.i, %bb.ej
  %.pn284.pn.pn.pn.i = phi { ptr, i32 } [ %i.awc, %bb.ej ], [ %.pn284.pn.pn.i, %bb.fb ], [ %.pn284.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit290.i ], [ %.pn284.pn.pn.i, %bb.fd ], [ %.pn284.pn.pn.i, %bb.fe ], [ %.pn284.pn.pn.i, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  %i.btz = load ptr, ptr %i.aq, align 8, !tbaa !91 ; 2 uses
  %.not.i320.i = icmp eq ptr %i.btz, null
  br i1 %.not.i320.i, label %_ZN4ncnn3MatD2Ev.exit.i80, label %bb.fh

bb.fh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit289.i
  %i.bua = atomicrmw add ptr %i.btz, i32 -1 acq_rel, align 4
  %i.bub = icmp eq i32 %i.bua, 1
  br i1 %i.bub, label %bb.fi, label %_ZN4ncnn3MatD2Ev.exit.i80

bb.fi:                                            ; preds = %bb.fh
  %i.buc = load ptr, ptr %i.ar, align 8, !tbaa !92 ; 3 uses
  %.not3.i321.i = icmp eq ptr %i.buc, null
  %i.bud = load ptr, ptr %14, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i321.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bue = load ptr, ptr %i.buc, align 8, !tbaa !93
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 24
  %i.bug = load ptr, ptr %i.buf, align 8
  invoke void %i.bug(ptr noundef nonnull align 8 dereferenceable(8) %i.buc, ptr noundef %i.bud)
          to label %_ZN4ncnn3MatD2Ev.exit.i80 unwind label %bb.fm, !inline_history !95

bb.fk:                                            ; preds = %bb.fi
  %.not.i324.i = icmp eq ptr %i.bud, null
  br i1 %.not.i324.i, label %_ZN4ncnn3MatD2Ev.exit.i80, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @free(ptr noundef nonnull %i.bud) #3
  br label %_ZN4ncnn3MatD2Ev.exit.i80

bb.fm:                                            ; preds = %bb.fj
  %i.buh = landingpad { ptr, i32 }
          catch ptr null
  %i.bui = extractvalue { ptr, i32 } %i.buh, 0
  call void @__clang_call_terminate(ptr %i.bui) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i80:                        ; preds = %bb.fl, %bb.fk, %bb.fj, %bb.fh, %_ZN4ncnn3MatD2Ev.exit289.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  br label %.body

_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit292.i, %bb.ed, %bb.ef, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  %.pr253 = load i32, ptr %5, align 4, !tbaa !18
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.dj
  %i.buj = phi i32 [ %.pr253, %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.atx, %bb.dj ]
  %i.buk = icmp eq i32 %i.buj, 1
  br i1 %i.buk, label %bb.fo, label %_ZN4ncnn3MatD2Ev.exit

bb.fo:                                            ; preds = %bb.fn
  %i.bul = load ptr, ptr %6, align 8, !tbaa !27   ; 35 uses
  %i.bum = load ptr, ptr %7, align 8, !tbaa !26   ; 14 uses
  %i.bun = load ptr, ptr %8, align 8, !tbaa !27
  %i.buo = load ptr, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #3
  store i64 0, ptr %i.be, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %.noexc172 unwind label %bb.hr

.noexc172:                                        ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #3
  store i64 0, ptr %i.bh, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bg, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i unwind label %bb.gn

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i:       ; preds = %.noexc172
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #3
  store i64 0, ptr %i.bk, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i unwind label %bb.go

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i:       ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #3
  store i64 0, ptr %i.bn, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bm, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.gp

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i
  %i.bup = icmp sgt i32 %i.by, 0
  br i1 %i.bup, label %.lr.ph347.i, label %._crit_edge.i140

.lr.ph347.i:                                      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.buq = load ptr, ptr %13, align 8, !tbaa !29
  %i.bur = load ptr, ptr %12, align 8, !tbaa !29
  %i.bus = load ptr, ptr %11, align 8, !tbaa !29
  %i.but = load ptr, ptr %10, align 8, !tbaa !29
  %i.buu = icmp sgt i32 %i.bx, 0                  ; 4 uses
  %i.buv = icmp sgt i32 %i.bx, 15
  %i.buw = zext i32 %i.bx to i64                  ; 30 uses
  %invariant.op.i.i141 = add nsw i64 %i.buw, -7
end_hunk_3
begin_hunk_4_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.6:bb.a

bb.gl:                                            ; preds = %bb.gk
  call void @free(ptr noundef nonnull %i.bxe) #3
  br label %_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.gm:                                            ; preds = %bb.gj
  %i.bxi = landingpad { ptr, i32 }
          catch ptr null
  %i.bxj = extractvalue { ptr, i32 } %i.bxi, 0
  call void @__clang_call_terminate(ptr %i.bxj) #20
  unreachable

bb.gn:                                            ; preds = %.noexc172
  %i.bxk = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.go:                                            ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
  %i.bxl = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.gp:                                            ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i
  %i.bxm = landingpad { ptr, i32 }
          catch ptr null                          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #3
  %i.bxn = load ptr, ptr %i.bi, align 8, !tbaa !91 ; 2 uses
  %.not.i294.i = icmp eq ptr %i.bxn, null
  br i1 %.not.i294.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.gy

bb.gq:                                            ; preds = %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150, %.lr.ph347.i
  %indvars.iv367.i = phi i64 [ 0, %.lr.ph347.i ], [ %indvars.iv.next368.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150 ] ; 3 uses
  %.0346.i = phi ptr [ %i.bun, %.lr.ph347.i ], [ %i.gul, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150 ] ; 5 uses
  %.0249345.i = phi ptr [ %i.but, %.lr.ph347.i ], [ %.1250.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150 ] ; 46 uses
  %.0251344.i = phi ptr [ %i.bus, %.lr.ph347.i ], [ %.1252.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150 ] ; 39 uses
  %.0253343.i = phi ptr [ %i.bur, %.lr.ph347.i ], [ %.1254.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150 ] ; 33 uses
  %.0255342.i = phi ptr [ %i.buq, %.lr.ph347.i ], [ %.1256.i143, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150 ] ; 26 uses
  %.0257341.i = phi i32 [ -3, %.lr.ph347.i ], [ %i.bxp, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150 ] ; 4 uses
  %i.bxo = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %indvars.iv367.i
  %i.bxp = load i32, ptr %i.bxo, align 4, !tbaa !18 ; 15 uses
  %i.bxq = icmp eq i32 %i.bxp, %.0257341.i
  br i1 %i.bxq, label %.loopexit.i142, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.bxr = add nsw i32 %.0257341.i, 1
  %i.bxs = icmp eq i32 %i.bxp, %i.bxr
  br i1 %i.bxs, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bxt = add nsw i32 %i.bxp, 2
  %i.bxu = sext i32 %i.bxt to i64
  %i.bxv = mul i64 %i.buy, %i.bxu
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bxv ; 23 uses
  br i1 %i.buu, label %iter.check633, label %.loopexit.i142

iter.check633:                                    ; preds = %bb.gs
  br i1 %min.iters.check618, label %.lr.ph339.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check633
  %scevgep = getelementptr i8, ptr %.0249345.i, i64 %i.buz
  %bound0 = icmp ult ptr %.0249345.i, %scevgep617
  %bound1 = icmp ult ptr %i.bul, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph339.i.preheader, label %vector.main.loop.iter.check619

vector.main.loop.iter.check619:                   ; preds = %vector.memcheck
  br i1 %min.iters.check620, label %vec.epilog.ph637, label %vector.body623

vector.body623:                                   ; preds = %vector.main.loop.iter.check619, %vector.body623
  %index624 = phi i64 [ %index.next629, %vector.body623 ], [ 0, %vector.main.loop.iter.check619 ] ; 4 uses
  %i.bxx = shl i64 %index624, 4
  %next.gep = getelementptr i8, ptr %i.bul, i64 %i.bxx
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %index624
  %wide.load625 = load <16 x i32>, ptr %i.bxy, align 4, !tbaa !18
  %i.bxz = sext <16 x i32> %wide.load625 to <16 x i64> ; 16 uses
  %i.bya = extractelement <16 x i64> %i.bxz, i64 0
  %i.byb = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.bya ; 4 uses
  %i.byc = extractelement <16 x i64> %i.bxz, i64 1
  %i.byd = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byc ; 4 uses
  %i.bye = extractelement <16 x i64> %i.bxz, i64 2
  %i.byf = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.bye ; 4 uses
  %i.byg = extractelement <16 x i64> %i.bxz, i64 3
  %i.byh = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byg ; 4 uses
  %i.byi = extractelement <16 x i64> %i.bxz, i64 4
  %i.byj = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byi ; 4 uses
  %i.byk = extractelement <16 x i64> %i.bxz, i64 5
  %i.byl = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byk ; 4 uses
  %i.bym = extractelement <16 x i64> %i.bxz, i64 6
  %i.byn = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.bym ; 4 uses
  %i.byo = extractelement <16 x i64> %i.bxz, i64 7
  %i.byp = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byo ; 4 uses
  %i.byq = extractelement <16 x i64> %i.bxz, i64 8
  %i.byr = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byq ; 4 uses
  %i.bys = extractelement <16 x i64> %i.bxz, i64 9
  %i.byt = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.bys ; 4 uses
  %i.byu = extractelement <16 x i64> %i.bxz, i64 10
  %i.byv = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byu ; 4 uses
  %i.byw = extractelement <16 x i64> %i.bxz, i64 11
  %i.byx = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byw ; 4 uses
  %i.byy = extractelement <16 x i64> %i.bxz, i64 12
  %i.byz = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.byy ; 4 uses
  %i.bza = extractelement <16 x i64> %i.bxz, i64 13
  %i.bzb = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.bza ; 4 uses
  %i.bzc = extractelement <16 x i64> %i.bxz, i64 14
  %i.bzd = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.bzc ; 4 uses
  %i.bze = extractelement <16 x i64> %i.bxz, i64 15
  %i.bzf = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.bze ; 4 uses
  %wide.vec = load <64 x float>, ptr %next.gep, align 4, !tbaa !24, !alias.scope !178 ; 4 uses
  %strided.vec = shufflevector <64 x float> %wide.vec, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec626 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec627 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec628 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.bzg = getelementptr inbounds i8, ptr %i.byb, i64 -2
  %i.bzh = getelementptr inbounds i8, ptr %i.byd, i64 -2
  %i.bzi = getelementptr inbounds i8, ptr %i.byf, i64 -2
  %i.bzj = getelementptr inbounds i8, ptr %i.byh, i64 -2
  %i.bzk = getelementptr inbounds i8, ptr %i.byj, i64 -2
  %i.bzl = getelementptr inbounds i8, ptr %i.byl, i64 -2
  %i.bzm = getelementptr inbounds i8, ptr %i.byn, i64 -2
  %i.bzn = getelementptr inbounds i8, ptr %i.byp, i64 -2
  %i.bzo = getelementptr inbounds i8, ptr %i.byr, i64 -2
  %i.bzp = getelementptr inbounds i8, ptr %i.byt, i64 -2
  %i.bzq = getelementptr inbounds i8, ptr %i.byv, i64 -2
  %i.bzr = getelementptr inbounds i8, ptr %i.byx, i64 -2
  %i.bzs = getelementptr inbounds i8, ptr %i.byz, i64 -2
  %i.bzt = getelementptr inbounds i8, ptr %i.bzb, i64 -2
  %i.bzu = getelementptr inbounds i8, ptr %i.bzd, i64 -2
  %i.bzv = getelementptr inbounds i8, ptr %i.bzf, i64 -2
  %i.bzw = load i16, ptr %i.bzg, align 2, !tbaa !56
  %i.bzx = load i16, ptr %i.bzh, align 2, !tbaa !56
  %i.bzy = load i16, ptr %i.bzi, align 2, !tbaa !56
  %i.bzz = load i16, ptr %i.bzj, align 2, !tbaa !56
  %i.caa = load i16, ptr %i.bzk, align 2, !tbaa !56
  %i.cab = load i16, ptr %i.bzl, align 2, !tbaa !56
  %i.cac = load i16, ptr %i.bzm, align 2, !tbaa !56
  %i.cad = load i16, ptr %i.bzn, align 2, !tbaa !56
  %i.cae = load i16, ptr %i.bzo, align 2, !tbaa !56
  %i.caf = load i16, ptr %i.bzp, align 2, !tbaa !56
  %i.cag = load i16, ptr %i.bzq, align 2, !tbaa !56
  %i.cah = load i16, ptr %i.bzr, align 2, !tbaa !56
  %i.cai = load i16, ptr %i.bzs, align 2, !tbaa !56
  %i.caj = load i16, ptr %i.bzt, align 2, !tbaa !56
  %i.cak = load i16, ptr %i.bzu, align 2, !tbaa !56
  %i.cal = load i16, ptr %i.bzv, align 2, !tbaa !56
  %i.cam = insertelement <16 x i16> poison, i16 %i.bzw, i64 0
  %i.can = insertelement <16 x i16> %i.cam, i16 %i.bzx, i64 1
  %i.cao = insertelement <16 x i16> %i.can, i16 %i.bzy, i64 2
  %i.cap = insertelement <16 x i16> %i.cao, i16 %i.bzz, i64 3
  %i.caq = insertelement <16 x i16> %i.cap, i16 %i.caa, i64 4
  %i.car = insertelement <16 x i16> %i.caq, i16 %i.cab, i64 5
  %i.cas = insertelement <16 x i16> %i.car, i16 %i.cac, i64 6
  %i.cat = insertelement <16 x i16> %i.cas, i16 %i.cad, i64 7
  %i.cau = insertelement <16 x i16> %i.cat, i16 %i.cae, i64 8
  %i.cav = insertelement <16 x i16> %i.cau, i16 %i.caf, i64 9
  %i.caw = insertelement <16 x i16> %i.cav, i16 %i.cag, i64 10
  %i.cax = insertelement <16 x i16> %i.caw, i16 %i.cah, i64 11
  %i.cay = insertelement <16 x i16> %i.cax, i16 %i.cai, i64 12
  %i.caz = insertelement <16 x i16> %i.cay, i16 %i.caj, i64 13
  %i.cba = insertelement <16 x i16> %i.caz, i16 %i.cak, i64 14
  %i.cbb = insertelement <16 x i16> %i.cba, i16 %i.cal, i64 15
  %i.cbc = zext <16 x i16> %i.cbb to <16 x i32>
  %i.cbd = shl nuw <16 x i32> %i.cbc, splat (i32 16)
  %i.cbe = bitcast <16 x i32> %i.cbd to <16 x float>
  %i.cbf = fmul fast <16 x float> %strided.vec, %i.cbe
  %i.cbg = load i16, ptr %i.byb, align 2, !tbaa !56
  %i.cbh = load i16, ptr %i.byd, align 2, !tbaa !56
  %i.cbi = load i16, ptr %i.byf, align 2, !tbaa !56
  %i.cbj = load i16, ptr %i.byh, align 2, !tbaa !56
  %i.cbk = load i16, ptr %i.byj, align 2, !tbaa !56
  %i.cbl = load i16, ptr %i.byl, align 2, !tbaa !56
  %i.cbm = load i16, ptr %i.byn, align 2, !tbaa !56
  %i.cbn = load i16, ptr %i.byp, align 2, !tbaa !56
  %i.cbo = load i16, ptr %i.byr, align 2, !tbaa !56
  %i.cbp = load i16, ptr %i.byt, align 2, !tbaa !56
  %i.cbq = load i16, ptr %i.byv, align 2, !tbaa !56
  %i.cbr = load i16, ptr %i.byx, align 2, !tbaa !56
  %i.cbs = load i16, ptr %i.byz, align 2, !tbaa !56
  %i.cbt = load i16, ptr %i.bzb, align 2, !tbaa !56
  %i.cbu = load i16, ptr %i.bzd, align 2, !tbaa !56
  %i.cbv = load i16, ptr %i.bzf, align 2, !tbaa !56
  %i.cbw = insertelement <16 x i16> poison, i16 %i.cbg, i64 0
  %i.cbx = insertelement <16 x i16> %i.cbw, i16 %i.cbh, i64 1
  %i.cby = insertelement <16 x i16> %i.cbx, i16 %i.cbi, i64 2
  %i.cbz = insertelement <16 x i16> %i.cby, i16 %i.cbj, i64 3
  %i.cca = insertelement <16 x i16> %i.cbz, i16 %i.cbk, i64 4
  %i.ccb = insertelement <16 x i16> %i.cca, i16 %i.cbl, i64 5
  %i.ccc = insertelement <16 x i16> %i.ccb, i16 %i.cbm, i64 6
  %i.ccd = insertelement <16 x i16> %i.ccc, i16 %i.cbn, i64 7
  %i.cce = insertelement <16 x i16> %i.ccd, i16 %i.cbo, i64 8
  %i.ccf = insertelement <16 x i16> %i.cce, i16 %i.cbp, i64 9
  %i.ccg = insertelement <16 x i16> %i.ccf, i16 %i.cbq, i64 10
  %i.cch = insertelement <16 x i16> %i.ccg, i16 %i.cbr, i64 11
  %i.cci = insertelement <16 x i16> %i.cch, i16 %i.cbs, i64 12
  %i.ccj = insertelement <16 x i16> %i.cci, i16 %i.cbt, i64 13
  %i.cck = insertelement <16 x i16> %i.ccj, i16 %i.cbu, i64 14
  %i.ccl = insertelement <16 x i16> %i.cck, i16 %i.cbv, i64 15
  %i.ccm = zext <16 x i16> %i.ccl to <16 x i32>
  %i.ccn = shl nuw <16 x i32> %i.ccm, splat (i32 16)
  %i.cco = bitcast <16 x i32> %i.ccn to <16 x float>
  %i.ccp = fmul fast <16 x float> %strided.vec626, %i.cco
  %i.ccq = fadd fast <16 x float> %i.cbf, %i.ccp
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.byb, i64 2
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.byd, i64 2
  %i.cct = getelementptr inbounds nuw i8, ptr %i.byf, i64 2
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.byh, i64 2
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.byj, i64 2
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.byl, i64 2
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.byn, i64 2
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.byp, i64 2
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.byr, i64 2
  %i.cda = getelementptr inbounds nuw i8, ptr %i.byt, i64 2
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.byv, i64 2
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.byx, i64 2
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.byz, i64 2
  %i.cde = getelementptr inbounds nuw i8, ptr %i.bzb, i64 2
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.bzd, i64 2
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 2
  %i.cdh = load i16, ptr %i.ccr, align 2, !tbaa !56
  %i.cdi = load i16, ptr %i.ccs, align 2, !tbaa !56
  %i.cdj = load i16, ptr %i.cct, align 2, !tbaa !56
  %i.cdk = load i16, ptr %i.ccu, align 2, !tbaa !56
  %i.cdl = load i16, ptr %i.ccv, align 2, !tbaa !56
  %i.cdm = load i16, ptr %i.ccw, align 2, !tbaa !56
  %i.cdn = load i16, ptr %i.ccx, align 2, !tbaa !56
  %i.cdo = load i16, ptr %i.ccy, align 2, !tbaa !56
  %i.cdp = load i16, ptr %i.ccz, align 2, !tbaa !56
  %i.cdq = load i16, ptr %i.cda, align 2, !tbaa !56
  %i.cdr = load i16, ptr %i.cdb, align 2, !tbaa !56
  %i.cds = load i16, ptr %i.cdc, align 2, !tbaa !56
  %i.cdt = load i16, ptr %i.cdd, align 2, !tbaa !56
  %i.cdu = load i16, ptr %i.cde, align 2, !tbaa !56
  %i.cdv = load i16, ptr %i.cdf, align 2, !tbaa !56
  %i.cdw = load i16, ptr %i.cdg, align 2, !tbaa !56
  %i.cdx = insertelement <16 x i16> poison, i16 %i.cdh, i64 0
  %i.cdy = insertelement <16 x i16> %i.cdx, i16 %i.cdi, i64 1
  %i.cdz = insertelement <16 x i16> %i.cdy, i16 %i.cdj, i64 2
  %i.cea = insertelement <16 x i16> %i.cdz, i16 %i.cdk, i64 3
  %i.ceb = insertelement <16 x i16> %i.cea, i16 %i.cdl, i64 4
  %i.cec = insertelement <16 x i16> %i.ceb, i16 %i.cdm, i64 5
  %i.ced = insertelement <16 x i16> %i.cec, i16 %i.cdn, i64 6
  %i.cee = insertelement <16 x i16> %i.ced, i16 %i.cdo, i64 7
  %i.cef = insertelement <16 x i16> %i.cee, i16 %i.cdp, i64 8
  %i.ceg = insertelement <16 x i16> %i.cef, i16 %i.cdq, i64 9
  %i.ceh = insertelement <16 x i16> %i.ceg, i16 %i.cdr, i64 10
  %i.cei = insertelement <16 x i16> %i.ceh, i16 %i.cds, i64 11
  %i.cej = insertelement <16 x i16> %i.cei, i16 %i.cdt, i64 12
  %i.cek = insertelement <16 x i16> %i.cej, i16 %i.cdu, i64 13
  %i.cel = insertelement <16 x i16> %i.cek, i16 %i.cdv, i64 14
  %i.cem = insertelement <16 x i16> %i.cel, i16 %i.cdw, i64 15
  %i.cen = zext <16 x i16> %i.cem to <16 x i32>
  %i.ceo = shl nuw <16 x i32> %i.cen, splat (i32 16)
  %i.cep = bitcast <16 x i32> %i.ceo to <16 x float>
  %i.ceq = fmul fast <16 x float> %strided.vec627, %i.cep
  %i.cer = fadd fast <16 x float> %i.ccq, %i.ceq
  %i.ces = getelementptr inbounds nuw i8, ptr %i.byb, i64 4
  %i.cet = getelementptr inbounds nuw i8, ptr %i.byd, i64 4
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.byf, i64 4
  %i.cev = getelementptr inbounds nuw i8, ptr %i.byh, i64 4
  %i.cew = getelementptr inbounds nuw i8, ptr %i.byj, i64 4
  %i.cex = getelementptr inbounds nuw i8, ptr %i.byl, i64 4
  %i.cey = getelementptr inbounds nuw i8, ptr %i.byn, i64 4
  %i.cez = getelementptr inbounds nuw i8, ptr %i.byp, i64 4
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.byr, i64 4
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.byt, i64 4
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.byv, i64 4
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.byx, i64 4
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.byz, i64 4
  %i.cff = getelementptr inbounds nuw i8, ptr %i.bzb, i64 4
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.bzd, i64 4
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.bzf, i64 4
  %i.cfi = load i16, ptr %i.ces, align 2, !tbaa !56
  %i.cfj = load i16, ptr %i.cet, align 2, !tbaa !56
  %i.cfk = load i16, ptr %i.ceu, align 2, !tbaa !56
  %i.cfl = load i16, ptr %i.cev, align 2, !tbaa !56
  %i.cfm = load i16, ptr %i.cew, align 2, !tbaa !56
  %i.cfn = load i16, ptr %i.cex, align 2, !tbaa !56
  %i.cfo = load i16, ptr %i.cey, align 2, !tbaa !56
  %i.cfp = load i16, ptr %i.cez, align 2, !tbaa !56
  %i.cfq = load i16, ptr %i.cfa, align 2, !tbaa !56
  %i.cfr = load i16, ptr %i.cfb, align 2, !tbaa !56
  %i.cfs = load i16, ptr %i.cfc, align 2, !tbaa !56
  %i.cft = load i16, ptr %i.cfd, align 2, !tbaa !56
  %i.cfu = load i16, ptr %i.cfe, align 2, !tbaa !56
  %i.cfv = load i16, ptr %i.cff, align 2, !tbaa !56
  %i.cfw = load i16, ptr %i.cfg, align 2, !tbaa !56
  %i.cfx = load i16, ptr %i.cfh, align 2, !tbaa !56
  %i.cfy = insertelement <16 x i16> poison, i16 %i.cfi, i64 0
  %i.cfz = insertelement <16 x i16> %i.cfy, i16 %i.cfj, i64 1
  %i.cga = insertelement <16 x i16> %i.cfz, i16 %i.cfk, i64 2
  %i.cgb = insertelement <16 x i16> %i.cga, i16 %i.cfl, i64 3
  %i.cgc = insertelement <16 x i16> %i.cgb, i16 %i.cfm, i64 4
  %i.cgd = insertelement <16 x i16> %i.cgc, i16 %i.cfn, i64 5
  %i.cge = insertelement <16 x i16> %i.cgd, i16 %i.cfo, i64 6
  %i.cgf = insertelement <16 x i16> %i.cge, i16 %i.cfp, i64 7
  %i.cgg = insertelement <16 x i16> %i.cgf, i16 %i.cfq, i64 8
  %i.cgh = insertelement <16 x i16> %i.cgg, i16 %i.cfr, i64 9
  %i.cgi = insertelement <16 x i16> %i.cgh, i16 %i.cfs, i64 10
  %i.cgj = insertelement <16 x i16> %i.cgi, i16 %i.cft, i64 11
  %i.cgk = insertelement <16 x i16> %i.cgj, i16 %i.cfu, i64 12
  %i.cgl = insertelement <16 x i16> %i.cgk, i16 %i.cfv, i64 13
  %i.cgm = insertelement <16 x i16> %i.cgl, i16 %i.cfw, i64 14
  %i.cgn = insertelement <16 x i16> %i.cgm, i16 %i.cfx, i64 15
  %i.cgo = zext <16 x i16> %i.cgn to <16 x i32>
  %i.cgp = shl nuw <16 x i32> %i.cgo, splat (i32 16)
  %i.cgq = bitcast <16 x i32> %i.cgp to <16 x float>
  %i.cgr = fmul fast <16 x float> %strided.vec628, %i.cgq
  %i.cgs = fadd fast <16 x float> %i.cer, %i.cgr
  %i.cgt = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index624
  store <16 x float> %i.cgs, ptr %i.cgt, align 4, !tbaa !24, !alias.scope !181, !noalias !178
  %index.next629 = add nuw i64 %index624, 16      ; 2 uses
  %i.cgu = icmp eq i64 %index.next629, %n.vec622
  br i1 %i.cgu, label %middle.block630, label %vector.body623, !llvm.loop !183

middle.block630:                                  ; preds = %vector.body623
  br i1 %cmp.n631, label %.loopexit.i142, label %vec.epilog.iter.check635

vec.epilog.iter.check635:                         ; preds = %middle.block630
  br i1 %min.epilog.iters.check636, label %.lr.ph339.i.preheader, label %vec.epilog.ph637, !prof !46

vec.epilog.ph637:                                 ; preds = %vector.main.loop.iter.check619, %vec.epilog.iter.check635
  %vec.epilog.resume.val632 = phi i64 [ %n.vec622, %vec.epilog.iter.check635 ], [ 0, %vector.main.loop.iter.check619 ]
  br label %vec.epilog.vector.body639

vec.epilog.vector.body639:                        ; preds = %vec.epilog.vector.body639, %vec.epilog.ph637
  %index640 = phi i64 [ %vec.epilog.resume.val632, %vec.epilog.ph637 ], [ %index.next648, %vec.epilog.vector.body639 ] ; 4 uses
  %i.cgv = shl i64 %index640, 4
  %next.gep641 = getelementptr i8, ptr %i.bul, i64 %i.cgv
  %i.cgw = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %index640
  %wide.load642 = load <4 x i32>, ptr %i.cgw, align 4, !tbaa !18
  %i.cgx = sext <4 x i32> %wide.load642 to <4 x i64> ; 4 uses
  %i.cgy = extractelement <4 x i64> %i.cgx, i64 0
  %i.cgz = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.cgy ; 4 uses
  %i.cha = extractelement <4 x i64> %i.cgx, i64 1
  %i.chb = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.cha ; 4 uses
  %i.chc = extractelement <4 x i64> %i.cgx, i64 2
  %i.chd = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.chc ; 4 uses
  %i.che = extractelement <4 x i64> %i.cgx, i64 3
  %i.chf = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.che ; 4 uses
  %wide.vec643 = load <16 x float>, ptr %next.gep641, align 4, !tbaa !24, !alias.scope !178 ; 4 uses
  %strided.vec644 = shufflevector <16 x float> %wide.vec643, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec645 = shufflevector <16 x float> %wide.vec643, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec646 = shufflevector <16 x float> %wide.vec643, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec647 = shufflevector <16 x float> %wide.vec643, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.chg = getelementptr inbounds i8, ptr %i.cgz, i64 -2
  %i.chh = getelementptr inbounds i8, ptr %i.chb, i64 -2
  %i.chi = getelementptr inbounds i8, ptr %i.chd, i64 -2
  %i.chj = getelementptr inbounds i8, ptr %i.chf, i64 -2
  %i.chk = load i16, ptr %i.chg, align 2, !tbaa !56
  %i.chl = load i16, ptr %i.chh, align 2, !tbaa !56
  %i.chm = load i16, ptr %i.chi, align 2, !tbaa !56
  %i.chn = load i16, ptr %i.chj, align 2, !tbaa !56
  %i.cho = insertelement <4 x i16> poison, i16 %i.chk, i64 0
  %i.chp = insertelement <4 x i16> %i.cho, i16 %i.chl, i64 1
  %i.chq = insertelement <4 x i16> %i.chp, i16 %i.chm, i64 2
  %i.chr = insertelement <4 x i16> %i.chq, i16 %i.chn, i64 3
  %i.chs = zext <4 x i16> %i.chr to <4 x i32>
  %i.cht = shl nuw <4 x i32> %i.chs, splat (i32 16)
  %i.chu = bitcast <4 x i32> %i.cht to <4 x float>
  %i.chv = fmul fast <4 x float> %strided.vec644, %i.chu
  %i.chw = load i16, ptr %i.cgz, align 2, !tbaa !56
  %i.chx = load i16, ptr %i.chb, align 2, !tbaa !56
  %i.chy = load i16, ptr %i.chd, align 2, !tbaa !56
  %i.chz = load i16, ptr %i.chf, align 2, !tbaa !56
  %i.cia = insertelement <4 x i16> poison, i16 %i.chw, i64 0
  %i.cib = insertelement <4 x i16> %i.cia, i16 %i.chx, i64 1
  %i.cic = insertelement <4 x i16> %i.cib, i16 %i.chy, i64 2
  %i.cid = insertelement <4 x i16> %i.cic, i16 %i.chz, i64 3
  %i.cie = zext <4 x i16> %i.cid to <4 x i32>
  %i.cif = shl nuw <4 x i32> %i.cie, splat (i32 16)
  %i.cig = bitcast <4 x i32> %i.cif to <4 x float>
  %i.cih = fmul fast <4 x float> %strided.vec645, %i.cig
  %i.cii = fadd fast <4 x float> %i.chv, %i.cih
  %i.cij = getelementptr inbounds nuw i8, ptr %i.cgz, i64 2
  %i.cik = getelementptr inbounds nuw i8, ptr %i.chb, i64 2
  %i.cil = getelementptr inbounds nuw i8, ptr %i.chd, i64 2
  %i.cim = getelementptr inbounds nuw i8, ptr %i.chf, i64 2
  %i.cin = load i16, ptr %i.cij, align 2, !tbaa !56
  %i.cio = load i16, ptr %i.cik, align 2, !tbaa !56
  %i.cip = load i16, ptr %i.cil, align 2, !tbaa !56
  %i.ciq = load i16, ptr %i.cim, align 2, !tbaa !56
  %i.cir = insertelement <4 x i16> poison, i16 %i.cin, i64 0
  %i.cis = insertelement <4 x i16> %i.cir, i16 %i.cio, i64 1
  %i.cit = insertelement <4 x i16> %i.cis, i16 %i.cip, i64 2
  %i.ciu = insertelement <4 x i16> %i.cit, i16 %i.ciq, i64 3
  %i.civ = zext <4 x i16> %i.ciu to <4 x i32>
  %i.ciw = shl nuw <4 x i32> %i.civ, splat (i32 16)
  %i.cix = bitcast <4 x i32> %i.ciw to <4 x float>
  %i.ciy = fmul fast <4 x float> %strided.vec646, %i.cix
  %i.ciz = fadd fast <4 x float> %i.cii, %i.ciy
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cgz, i64 4
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.chb, i64 4
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.chd, i64 4
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.chf, i64 4
  %i.cje = load i16, ptr %i.cja, align 2, !tbaa !56
  %i.cjf = load i16, ptr %i.cjb, align 2, !tbaa !56
  %i.cjg = load i16, ptr %i.cjc, align 2, !tbaa !56
  %i.cjh = load i16, ptr %i.cjd, align 2, !tbaa !56
  %i.cji = insertelement <4 x i16> poison, i16 %i.cje, i64 0
  %i.cjj = insertelement <4 x i16> %i.cji, i16 %i.cjf, i64 1
  %i.cjk = insertelement <4 x i16> %i.cjj, i16 %i.cjg, i64 2
  %i.cjl = insertelement <4 x i16> %i.cjk, i16 %i.cjh, i64 3
  %i.cjm = zext <4 x i16> %i.cjl to <4 x i32>
  %i.cjn = shl nuw <4 x i32> %i.cjm, splat (i32 16)
  %i.cjo = bitcast <4 x i32> %i.cjn to <4 x float>
  %i.cjp = fmul fast <4 x float> %strided.vec647, %i.cjo
  %i.cjq = fadd fast <4 x float> %i.ciz, %i.cjp
  %i.cjr = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index640
  store <4 x float> %i.cjq, ptr %i.cjr, align 4, !tbaa !24, !alias.scope !181, !noalias !178
  %index.next648 = add nuw i64 %index640, 4       ; 2 uses
  %i.cjs = icmp eq i64 %index.next648, %n.vec638
  br i1 %i.cjs, label %vec.epilog.middle.block649, label %vec.epilog.vector.body639, !llvm.loop !184

vec.epilog.middle.block649:                       ; preds = %vec.epilog.vector.body639
  br i1 %cmp.n650, label %.loopexit.i142, label %.lr.ph339.i.preheader

.lr.ph339.i.preheader:                            ; preds = %vector.memcheck, %iter.check633, %vec.epilog.iter.check635, %vec.epilog.middle.block649
  %indvars.iv362.i.ph = phi i64 [ 0, %iter.check633 ], [ 0, %vector.memcheck ], [ %n.vec622, %vec.epilog.iter.check635 ], [ %n.vec638, %vec.epilog.middle.block649 ] ; 5 uses
  %.0260338.i.ph = phi ptr [ %i.bul, %iter.check633 ], [ %i.bul, %vector.memcheck ], [ %i.bvs, %vec.epilog.iter.check635 ], [ %i.bvu, %vec.epilog.middle.block649 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph339.i.prol.loopexit, label %.lr.ph339.i.prol

.lr.ph339.i.prol:                                 ; preds = %.lr.ph339.i.preheader
  %i.cjt = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %indvars.iv362.i.ph
  %i.cju = load i32, ptr %i.cjt, align 4, !tbaa !18
  %i.cjv = sext i32 %i.cju to i64
  %i.cjw = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.cjv
  %i.cjx = getelementptr inbounds i8, ptr %i.cjw, i64 -2
  %i.cjy = load <4 x float>, ptr %.0260338.i.ph, align 4, !tbaa !24
  %i.cjz = load <4 x i16>, ptr %i.cjx, align 2, !tbaa !56
  %i.cka = zext <4 x i16> %i.cjz to <4 x i32>
  %i.ckb = shl nuw <4 x i32> %i.cka, splat (i32 16)
  %i.ckc = bitcast <4 x i32> %i.ckb to <4 x float>
  %i.ckd = fmul fast <4 x float> %i.cjy, %i.ckc
  %i.cke = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ckd)
  %i.ckf = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i.ph
  store float %i.cke, ptr %i.ckf, align 4, !tbaa !24
  %i.ckg = getelementptr inbounds nuw i8, ptr %.0260338.i.ph, i64 16
  %indvars.iv.next363.i.prol = or disjoint i64 %indvars.iv362.i.ph, 1
  br label %.lr.ph339.i.prol.loopexit

.lr.ph339.i.prol.loopexit:                        ; preds = %.lr.ph339.i.prol, %.lr.ph339.i.preheader
  %indvars.iv362.i.unr = phi i64 [ %indvars.iv362.i.ph, %.lr.ph339.i.preheader ], [ %indvars.iv.next363.i.prol, %.lr.ph339.i.prol ]
  %.0260338.i.unr = phi ptr [ %.0260338.i.ph, %.lr.ph339.i.preheader ], [ %i.ckg, %.lr.ph339.i.prol ]
  %i.ckh = icmp eq i64 %indvars.iv362.i.ph, %i.bvv
  br i1 %i.ckh, label %.loopexit.i142, label %.lr.ph339.i

.lr.ph339.i:                                      ; preds = %.lr.ph339.i.prol.loopexit, %.lr.ph339.i
  %indvars.iv362.i = phi i64 [ %indvars.iv.next363.i.1, %.lr.ph339.i ], [ %indvars.iv362.i.unr, %.lr.ph339.i.prol.loopexit ] ; 4 uses
  %.0260338.i = phi ptr [ %i.clj, %.lr.ph339.i ], [ %.0260338.i.unr, %.lr.ph339.i.prol.loopexit ] ; 3 uses
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %indvars.iv362.i
  %i.ckj = load i32, ptr %i.cki, align 4, !tbaa !18
  %i.ckk = sext i32 %i.ckj to i64
  %i.ckl = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.ckk
  %i.ckm = getelementptr inbounds i8, ptr %i.ckl, i64 -2
  %i.ckn = load <4 x float>, ptr %.0260338.i, align 4, !tbaa !24
  %i.cko = load <4 x i16>, ptr %i.ckm, align 2, !tbaa !56
  %i.ckp = zext <4 x i16> %i.cko to <4 x i32>
  %i.ckq = shl nuw <4 x i32> %i.ckp, splat (i32 16)
  %i.ckr = bitcast <4 x i32> %i.ckq to <4 x float>
  %i.cks = fmul fast <4 x float> %i.ckn, %i.ckr
  %i.ckt = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cks)
  %i.cku = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i
  store float %i.ckt, ptr %i.cku, align 4, !tbaa !24
  %i.ckv = getelementptr inbounds nuw i8, ptr %.0260338.i, i64 16
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1 ; 2 uses
  %i.ckw = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %indvars.iv.next363.i
  %i.ckx = load i32, ptr %i.ckw, align 4, !tbaa !18
  %i.cky = sext i32 %i.ckx to i64
  %i.ckz = getelementptr inbounds [2 x i8], ptr %i.bxw, i64 %i.cky
  %i.cla = getelementptr inbounds i8, ptr %i.ckz, i64 -2
  %i.clb = load <4 x float>, ptr %i.ckv, align 4, !tbaa !24
  %i.clc = load <4 x i16>, ptr %i.cla, align 2, !tbaa !56
  %i.cld = zext <4 x i16> %i.clc to <4 x i32>
  %i.cle = shl nuw <4 x i32> %i.cld, splat (i32 16)
  %i.clf = bitcast <4 x i32> %i.cle to <4 x float>
  %i.clg = fmul fast <4 x float> %i.clb, %i.clf
  %i.clh = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.clg)
  %i.cli = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.next363.i
  store float %i.clh, ptr %i.cli, align 4, !tbaa !24
  %i.clj = getelementptr inbounds nuw i8, ptr %.0260338.i, i64 32
  %indvars.iv.next363.i.1 = add nuw nsw i64 %indvars.iv362.i, 2 ; 2 uses
  %exitcond366.not.i.1 = icmp eq i64 %indvars.iv.next363.i.1, %i.buw
  br i1 %exitcond366.not.i.1, label %.loopexit.i142, label %.lr.ph339.i, !llvm.loop !185

bb.gt:                                            ; preds = %bb.gr
  %i.clk = add nsw i32 %.0257341.i, 2
  %i.cll = icmp eq i32 %i.bxp, %i.clk
  br i1 %i.cll, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.clm = add nsw i32 %i.bxp, 1
  %i.cln = sext i32 %i.clm to i64
  %i.clo = mul i64 %i.buy, %i.cln
  %i.clp = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.clo ; 21 uses
  %i.clq = add nsw i32 %i.bxp, 2
  %i.clr = sext i32 %i.clq to i64
  %i.cls = mul i64 %i.buy, %i.clr
  %i.clt = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cls ; 21 uses
  br i1 %i.buu, label %iter.check684, label %.loopexit.i142

iter.check684:                                    ; preds = %bb.gu
  br i1 %min.iters.check666, label %.lr.ph336.i.preheader, label %vector.memcheck653

vector.memcheck653:                               ; preds = %iter.check684
  %scevgep654 = getelementptr i8, ptr %.0249345.i, i64 %i.buz ; 2 uses
  %scevgep655 = getelementptr i8, ptr %.0251344.i, i64 %i.buz ; 2 uses
  %bound0656 = icmp ult ptr %.0249345.i, %scevgep655
  %bound1657 = icmp ult ptr %.0251344.i, %scevgep654
  %found.conflict658 = and i1 %bound0656, %bound1657
  %bound0659 = icmp ult ptr %.0249345.i, %scevgep617
  %bound1660 = icmp ult ptr %i.bul, %scevgep654
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx = or i1 %found.conflict658, %found.conflict661
  %bound0662 = icmp ult ptr %.0251344.i, %scevgep617
  %bound1663 = icmp ult ptr %i.bul, %scevgep655
  %found.conflict664 = and i1 %bound0662, %bound1663
  %conflict.rdx665 = or i1 %conflict.rdx, %found.conflict664
  br i1 %conflict.rdx665, label %.lr.ph336.i.preheader, label %vector.main.loop.iter.check667

vector.main.loop.iter.check667:                   ; preds = %vector.memcheck653
  br i1 %min.iters.check668, label %vec.epilog.ph688, label %vector.body671

vector.body671:                                   ; preds = %vector.main.loop.iter.check667, %vector.body671
  %index672 = phi i64 [ %index.next680, %vector.body671 ], [ 0, %vector.main.loop.iter.check667 ] ; 5 uses
  %i.clu = shl i64 %index672, 4
  %next.gep673 = getelementptr i8, ptr %i.bul, i64 %i.clu
  %i.clv = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %index672
  %wide.load674 = load <16 x i32>, ptr %i.clv, align 4, !tbaa !18
  %i.clw = sext <16 x i32> %wide.load674 to <16 x i64> ; 16 uses
  %i.clx = extractelement <16 x i64> %i.clw, i64 0 ; 2 uses
  %i.cly = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.clx ; 4 uses
  %i.clz = extractelement <16 x i64> %i.clw, i64 1 ; 2 uses
  %i.cma = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.clz ; 4 uses
  %i.cmb = extractelement <16 x i64> %i.clw, i64 2 ; 2 uses
  %i.cmc = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmb ; 4 uses
  %i.cmd = extractelement <16 x i64> %i.clw, i64 3 ; 2 uses
  %i.cme = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmd ; 4 uses
  %i.cmf = extractelement <16 x i64> %i.clw, i64 4 ; 2 uses
  %i.cmg = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmf ; 4 uses
  %i.cmh = extractelement <16 x i64> %i.clw, i64 5 ; 2 uses
  %i.cmi = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmh ; 4 uses
  %i.cmj = extractelement <16 x i64> %i.clw, i64 6 ; 2 uses
  %i.cmk = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmj ; 4 uses
  %i.cml = extractelement <16 x i64> %i.clw, i64 7 ; 2 uses
  %i.cmm = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cml ; 4 uses
  %i.cmn = extractelement <16 x i64> %i.clw, i64 8 ; 2 uses
  %i.cmo = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmn ; 4 uses
  %i.cmp = extractelement <16 x i64> %i.clw, i64 9 ; 2 uses
  %i.cmq = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmp ; 4 uses
  %i.cmr = extractelement <16 x i64> %i.clw, i64 10 ; 2 uses
  %i.cms = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmr ; 4 uses
  %i.cmt = extractelement <16 x i64> %i.clw, i64 11 ; 2 uses
  %i.cmu = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmt ; 4 uses
  %i.cmv = extractelement <16 x i64> %i.clw, i64 12 ; 2 uses
  %i.cmw = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmv ; 4 uses
  %i.cmx = extractelement <16 x i64> %i.clw, i64 13 ; 2 uses
  %i.cmy = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmx ; 4 uses
  %i.cmz = extractelement <16 x i64> %i.clw, i64 14 ; 2 uses
  %i.cna = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cmz ; 4 uses
  %i.cnb = extractelement <16 x i64> %i.clw, i64 15 ; 2 uses
  %i.cnc = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.cnb ; 4 uses
  %i.cnd = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.clx ; 4 uses
  %i.cne = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.clz ; 4 uses
  %i.cnf = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmb ; 4 uses
  %i.cng = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmd ; 4 uses
  %i.cnh = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmf ; 4 uses
  %i.cni = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmh ; 4 uses
  %i.cnj = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmj ; 4 uses
  %i.cnk = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cml ; 4 uses
  %i.cnl = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmn ; 4 uses
  %i.cnm = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmp ; 4 uses
  %i.cnn = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmr ; 4 uses
  %i.cno = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmt ; 4 uses
  %i.cnp = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmv ; 4 uses
  %i.cnq = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmx ; 4 uses
  %i.cnr = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cmz ; 4 uses
  %i.cns = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.cnb ; 4 uses
  %wide.vec675 = load <64 x float>, ptr %next.gep673, align 4, !tbaa !24, !alias.scope !186 ; 4 uses
  %strided.vec676 = shufflevector <64 x float> %wide.vec675, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 2 uses
  %strided.vec677 = shufflevector <64 x float> %wide.vec675, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %strided.vec678 = shufflevector <64 x float> %wide.vec675, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 2 uses
  %strided.vec679 = shufflevector <64 x float> %wide.vec675, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.cnt = getelementptr inbounds i8, ptr %i.cly, i64 -2
  %i.cnu = getelementptr inbounds i8, ptr %i.cma, i64 -2
  %i.cnv = getelementptr inbounds i8, ptr %i.cmc, i64 -2
  %i.cnw = getelementptr inbounds i8, ptr %i.cme, i64 -2
  %i.cnx = getelementptr inbounds i8, ptr %i.cmg, i64 -2
  %i.cny = getelementptr inbounds i8, ptr %i.cmi, i64 -2
  %i.cnz = getelementptr inbounds i8, ptr %i.cmk, i64 -2
  %i.coa = getelementptr inbounds i8, ptr %i.cmm, i64 -2
  %i.cob = getelementptr inbounds i8, ptr %i.cmo, i64 -2
  %i.coc = getelementptr inbounds i8, ptr %i.cmq, i64 -2
  %i.cod = getelementptr inbounds i8, ptr %i.cms, i64 -2
  %i.coe = getelementptr inbounds i8, ptr %i.cmu, i64 -2
  %i.cof = getelementptr inbounds i8, ptr %i.cmw, i64 -2
  %i.cog = getelementptr inbounds i8, ptr %i.cmy, i64 -2
  %i.coh = getelementptr inbounds i8, ptr %i.cna, i64 -2
  %i.coi = getelementptr inbounds i8, ptr %i.cnc, i64 -2
  %i.coj = load i16, ptr %i.cnt, align 2, !tbaa !56
  %i.cok = load i16, ptr %i.cnu, align 2, !tbaa !56
  %i.col = load i16, ptr %i.cnv, align 2, !tbaa !56
  %i.com = load i16, ptr %i.cnw, align 2, !tbaa !56
  %i.con = load i16, ptr %i.cnx, align 2, !tbaa !56
  %i.coo = load i16, ptr %i.cny, align 2, !tbaa !56
  %i.cop = load i16, ptr %i.cnz, align 2, !tbaa !56
  %i.coq = load i16, ptr %i.coa, align 2, !tbaa !56
  %i.cor = load i16, ptr %i.cob, align 2, !tbaa !56
  %i.cos = load i16, ptr %i.coc, align 2, !tbaa !56
  %i.cot = load i16, ptr %i.cod, align 2, !tbaa !56
  %i.cou = load i16, ptr %i.coe, align 2, !tbaa !56
  %i.cov = load i16, ptr %i.cof, align 2, !tbaa !56
  %i.cow = load i16, ptr %i.cog, align 2, !tbaa !56
  %i.cox = load i16, ptr %i.coh, align 2, !tbaa !56
  %i.coy = load i16, ptr %i.coi, align 2, !tbaa !56
  %i.coz = insertelement <16 x i16> poison, i16 %i.coj, i64 0
  %i.cpa = insertelement <16 x i16> %i.coz, i16 %i.cok, i64 1
  %i.cpb = insertelement <16 x i16> %i.cpa, i16 %i.col, i64 2
  %i.cpc = insertelement <16 x i16> %i.cpb, i16 %i.com, i64 3
  %i.cpd = insertelement <16 x i16> %i.cpc, i16 %i.con, i64 4
  %i.cpe = insertelement <16 x i16> %i.cpd, i16 %i.coo, i64 5
  %i.cpf = insertelement <16 x i16> %i.cpe, i16 %i.cop, i64 6
  %i.cpg = insertelement <16 x i16> %i.cpf, i16 %i.coq, i64 7
  %i.cph = insertelement <16 x i16> %i.cpg, i16 %i.cor, i64 8
  %i.cpi = insertelement <16 x i16> %i.cph, i16 %i.cos, i64 9
  %i.cpj = insertelement <16 x i16> %i.cpi, i16 %i.cot, i64 10
  %i.cpk = insertelement <16 x i16> %i.cpj, i16 %i.cou, i64 11
  %i.cpl = insertelement <16 x i16> %i.cpk, i16 %i.cov, i64 12
  %i.cpm = insertelement <16 x i16> %i.cpl, i16 %i.cow, i64 13
  %i.cpn = insertelement <16 x i16> %i.cpm, i16 %i.cox, i64 14
  %i.cpo = insertelement <16 x i16> %i.cpn, i16 %i.coy, i64 15
  %i.cpp = zext <16 x i16> %i.cpo to <16 x i32>
  %i.cpq = shl nuw <16 x i32> %i.cpp, splat (i32 16)
  %i.cpr = bitcast <16 x i32> %i.cpq to <16 x float>
  %i.cps = fmul fast <16 x float> %strided.vec676, %i.cpr
  %i.cpt = load i16, ptr %i.cly, align 2, !tbaa !56
  %i.cpu = load i16, ptr %i.cma, align 2, !tbaa !56
  %i.cpv = load i16, ptr %i.cmc, align 2, !tbaa !56
  %i.cpw = load i16, ptr %i.cme, align 2, !tbaa !56
  %i.cpx = load i16, ptr %i.cmg, align 2, !tbaa !56
  %i.cpy = load i16, ptr %i.cmi, align 2, !tbaa !56
  %i.cpz = load i16, ptr %i.cmk, align 2, !tbaa !56
  %i.cqa = load i16, ptr %i.cmm, align 2, !tbaa !56
  %i.cqb = load i16, ptr %i.cmo, align 2, !tbaa !56
  %i.cqc = load i16, ptr %i.cmq, align 2, !tbaa !56
  %i.cqd = load i16, ptr %i.cms, align 2, !tbaa !56
  %i.cqe = load i16, ptr %i.cmu, align 2, !tbaa !56
  %i.cqf = load i16, ptr %i.cmw, align 2, !tbaa !56
  %i.cqg = load i16, ptr %i.cmy, align 2, !tbaa !56
  %i.cqh = load i16, ptr %i.cna, align 2, !tbaa !56
  %i.cqi = load i16, ptr %i.cnc, align 2, !tbaa !56
  %i.cqj = insertelement <16 x i16> poison, i16 %i.cpt, i64 0
  %i.cqk = insertelement <16 x i16> %i.cqj, i16 %i.cpu, i64 1
  %i.cql = insertelement <16 x i16> %i.cqk, i16 %i.cpv, i64 2
  %i.cqm = insertelement <16 x i16> %i.cql, i16 %i.cpw, i64 3
  %i.cqn = insertelement <16 x i16> %i.cqm, i16 %i.cpx, i64 4
  %i.cqo = insertelement <16 x i16> %i.cqn, i16 %i.cpy, i64 5
  %i.cqp = insertelement <16 x i16> %i.cqo, i16 %i.cpz, i64 6
  %i.cqq = insertelement <16 x i16> %i.cqp, i16 %i.cqa, i64 7
  %i.cqr = insertelement <16 x i16> %i.cqq, i16 %i.cqb, i64 8
  %i.cqs = insertelement <16 x i16> %i.cqr, i16 %i.cqc, i64 9
  %i.cqt = insertelement <16 x i16> %i.cqs, i16 %i.cqd, i64 10
  %i.cqu = insertelement <16 x i16> %i.cqt, i16 %i.cqe, i64 11
  %i.cqv = insertelement <16 x i16> %i.cqu, i16 %i.cqf, i64 12
  %i.cqw = insertelement <16 x i16> %i.cqv, i16 %i.cqg, i64 13
  %i.cqx = insertelement <16 x i16> %i.cqw, i16 %i.cqh, i64 14
  %i.cqy = insertelement <16 x i16> %i.cqx, i16 %i.cqi, i64 15
  %i.cqz = zext <16 x i16> %i.cqy to <16 x i32>
  %i.cra = shl nuw <16 x i32> %i.cqz, splat (i32 16)
  %i.crb = bitcast <16 x i32> %i.cra to <16 x float>
  %i.crc = fmul fast <16 x float> %strided.vec677, %i.crb
  %i.crd = fadd fast <16 x float> %i.cps, %i.crc
  %i.cre = getelementptr inbounds nuw i8, ptr %i.cly, i64 2
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cma, i64 2
  %i.crg = getelementptr inbounds nuw i8, ptr %i.cmc, i64 2
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cme, i64 2
  %i.cri = getelementptr inbounds nuw i8, ptr %i.cmg, i64 2
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cmi, i64 2
  %i.crk = getelementptr inbounds nuw i8, ptr %i.cmk, i64 2
  %i.crl = getelementptr inbounds nuw i8, ptr %i.cmm, i64 2
  %i.crm = getelementptr inbounds nuw i8, ptr %i.cmo, i64 2
  %i.crn = getelementptr inbounds nuw i8, ptr %i.cmq, i64 2
  %i.cro = getelementptr inbounds nuw i8, ptr %i.cms, i64 2
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cmu, i64 2
  %i.crq = getelementptr inbounds nuw i8, ptr %i.cmw, i64 2
  %i.crr = getelementptr inbounds nuw i8, ptr %i.cmy, i64 2
  %i.crs = getelementptr inbounds nuw i8, ptr %i.cna, i64 2
  %i.crt = getelementptr inbounds nuw i8, ptr %i.cnc, i64 2
  %i.cru = load i16, ptr %i.cre, align 2, !tbaa !56
  %i.crv = load i16, ptr %i.crf, align 2, !tbaa !56
  %i.crw = load i16, ptr %i.crg, align 2, !tbaa !56
  %i.crx = load i16, ptr %i.crh, align 2, !tbaa !56
  %i.cry = load i16, ptr %i.cri, align 2, !tbaa !56
  %i.crz = load i16, ptr %i.crj, align 2, !tbaa !56
  %i.csa = load i16, ptr %i.crk, align 2, !tbaa !56
  %i.csb = load i16, ptr %i.crl, align 2, !tbaa !56
  %i.csc = load i16, ptr %i.crm, align 2, !tbaa !56
  %i.csd = load i16, ptr %i.crn, align 2, !tbaa !56
  %i.cse = load i16, ptr %i.cro, align 2, !tbaa !56
  %i.csf = load i16, ptr %i.crp, align 2, !tbaa !56
  %i.csg = load i16, ptr %i.crq, align 2, !tbaa !56
  %i.csh = load i16, ptr %i.crr, align 2, !tbaa !56
  %i.csi = load i16, ptr %i.crs, align 2, !tbaa !56
  %i.csj = load i16, ptr %i.crt, align 2, !tbaa !56
  %i.csk = insertelement <16 x i16> poison, i16 %i.cru, i64 0
  %i.csl = insertelement <16 x i16> %i.csk, i16 %i.crv, i64 1
  %i.csm = insertelement <16 x i16> %i.csl, i16 %i.crw, i64 2
  %i.csn = insertelement <16 x i16> %i.csm, i16 %i.crx, i64 3
  %i.cso = insertelement <16 x i16> %i.csn, i16 %i.cry, i64 4
  %i.csp = insertelement <16 x i16> %i.cso, i16 %i.crz, i64 5
  %i.csq = insertelement <16 x i16> %i.csp, i16 %i.csa, i64 6
  %i.csr = insertelement <16 x i16> %i.csq, i16 %i.csb, i64 7
  %i.css = insertelement <16 x i16> %i.csr, i16 %i.csc, i64 8
  %i.cst = insertelement <16 x i16> %i.css, i16 %i.csd, i64 9
  %i.csu = insertelement <16 x i16> %i.cst, i16 %i.cse, i64 10
  %i.csv = insertelement <16 x i16> %i.csu, i16 %i.csf, i64 11
  %i.csw = insertelement <16 x i16> %i.csv, i16 %i.csg, i64 12
  %i.csx = insertelement <16 x i16> %i.csw, i16 %i.csh, i64 13
  %i.csy = insertelement <16 x i16> %i.csx, i16 %i.csi, i64 14
  %i.csz = insertelement <16 x i16> %i.csy, i16 %i.csj, i64 15
  %i.cta = zext <16 x i16> %i.csz to <16 x i32>
  %i.ctb = shl nuw <16 x i32> %i.cta, splat (i32 16)
  %i.ctc = bitcast <16 x i32> %i.ctb to <16 x float>
  %i.ctd = fmul fast <16 x float> %strided.vec678, %i.ctc
  %i.cte = fadd fast <16 x float> %i.crd, %i.ctd
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cly, i64 4
  %i.ctg = getelementptr inbounds nuw i8, ptr %i.cma, i64 4
  %i.cth = getelementptr inbounds nuw i8, ptr %i.cmc, i64 4
  %i.cti = getelementptr inbounds nuw i8, ptr %i.cme, i64 4
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.cmg, i64 4
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.cmi, i64 4
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.cmk, i64 4
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.cmm, i64 4
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.cmo, i64 4
  %i.cto = getelementptr inbounds nuw i8, ptr %i.cmq, i64 4
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cms, i64 4
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.cmu, i64 4
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.cmw, i64 4
  %i.cts = getelementptr inbounds nuw i8, ptr %i.cmy, i64 4
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.cna, i64 4
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.cnc, i64 4
  %i.ctv = load i16, ptr %i.ctf, align 2, !tbaa !56
  %i.ctw = load i16, ptr %i.ctg, align 2, !tbaa !56
  %i.ctx = load i16, ptr %i.cth, align 2, !tbaa !56
  %i.cty = load i16, ptr %i.cti, align 2, !tbaa !56
  %i.ctz = load i16, ptr %i.ctj, align 2, !tbaa !56
  %i.cua = load i16, ptr %i.ctk, align 2, !tbaa !56
  %i.cub = load i16, ptr %i.ctl, align 2, !tbaa !56
  %i.cuc = load i16, ptr %i.ctm, align 2, !tbaa !56
  %i.cud = load i16, ptr %i.ctn, align 2, !tbaa !56
  %i.cue = load i16, ptr %i.cto, align 2, !tbaa !56
  %i.cuf = load i16, ptr %i.ctp, align 2, !tbaa !56
  %i.cug = load i16, ptr %i.ctq, align 2, !tbaa !56
  %i.cuh = load i16, ptr %i.ctr, align 2, !tbaa !56
  %i.cui = load i16, ptr %i.cts, align 2, !tbaa !56
  %i.cuj = load i16, ptr %i.ctt, align 2, !tbaa !56
  %i.cuk = load i16, ptr %i.ctu, align 2, !tbaa !56
  %i.cul = insertelement <16 x i16> poison, i16 %i.ctv, i64 0
  %i.cum = insertelement <16 x i16> %i.cul, i16 %i.ctw, i64 1
  %i.cun = insertelement <16 x i16> %i.cum, i16 %i.ctx, i64 2
  %i.cuo = insertelement <16 x i16> %i.cun, i16 %i.cty, i64 3
  %i.cup = insertelement <16 x i16> %i.cuo, i16 %i.ctz, i64 4
  %i.cuq = insertelement <16 x i16> %i.cup, i16 %i.cua, i64 5
  %i.cur = insertelement <16 x i16> %i.cuq, i16 %i.cub, i64 6
  %i.cus = insertelement <16 x i16> %i.cur, i16 %i.cuc, i64 7
  %i.cut = insertelement <16 x i16> %i.cus, i16 %i.cud, i64 8
  %i.cuu = insertelement <16 x i16> %i.cut, i16 %i.cue, i64 9
  %i.cuv = insertelement <16 x i16> %i.cuu, i16 %i.cuf, i64 10
  %i.cuw = insertelement <16 x i16> %i.cuv, i16 %i.cug, i64 11
  %i.cux = insertelement <16 x i16> %i.cuw, i16 %i.cuh, i64 12
  %i.cuy = insertelement <16 x i16> %i.cux, i16 %i.cui, i64 13
  %i.cuz = insertelement <16 x i16> %i.cuy, i16 %i.cuj, i64 14
  %i.cva = insertelement <16 x i16> %i.cuz, i16 %i.cuk, i64 15
  %i.cvb = zext <16 x i16> %i.cva to <16 x i32>
  %i.cvc = shl nuw <16 x i32> %i.cvb, splat (i32 16)
  %i.cvd = bitcast <16 x i32> %i.cvc to <16 x float>
  %i.cve = fmul fast <16 x float> %strided.vec679, %i.cvd
  %i.cvf = fadd fast <16 x float> %i.cte, %i.cve
  %i.cvg = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index672
  store <16 x float> %i.cvf, ptr %i.cvg, align 4, !tbaa !24, !alias.scope !189, !noalias !191
  %i.cvh = getelementptr inbounds i8, ptr %i.cnd, i64 -2
  %i.cvi = getelementptr inbounds i8, ptr %i.cne, i64 -2
  %i.cvj = getelementptr inbounds i8, ptr %i.cnf, i64 -2
  %i.cvk = getelementptr inbounds i8, ptr %i.cng, i64 -2
  %i.cvl = getelementptr inbounds i8, ptr %i.cnh, i64 -2
  %i.cvm = getelementptr inbounds i8, ptr %i.cni, i64 -2
  %i.cvn = getelementptr inbounds i8, ptr %i.cnj, i64 -2
  %i.cvo = getelementptr inbounds i8, ptr %i.cnk, i64 -2
  %i.cvp = getelementptr inbounds i8, ptr %i.cnl, i64 -2
  %i.cvq = getelementptr inbounds i8, ptr %i.cnm, i64 -2
  %i.cvr = getelementptr inbounds i8, ptr %i.cnn, i64 -2
  %i.cvs = getelementptr inbounds i8, ptr %i.cno, i64 -2
  %i.cvt = getelementptr inbounds i8, ptr %i.cnp, i64 -2
  %i.cvu = getelementptr inbounds i8, ptr %i.cnq, i64 -2
  %i.cvv = getelementptr inbounds i8, ptr %i.cnr, i64 -2
  %i.cvw = getelementptr inbounds i8, ptr %i.cns, i64 -2
  %i.cvx = load i16, ptr %i.cvh, align 2, !tbaa !56
  %i.cvy = load i16, ptr %i.cvi, align 2, !tbaa !56
  %i.cvz = load i16, ptr %i.cvj, align 2, !tbaa !56
  %i.cwa = load i16, ptr %i.cvk, align 2, !tbaa !56
  %i.cwb = load i16, ptr %i.cvl, align 2, !tbaa !56
  %i.cwc = load i16, ptr %i.cvm, align 2, !tbaa !56
  %i.cwd = load i16, ptr %i.cvn, align 2, !tbaa !56
  %i.cwe = load i16, ptr %i.cvo, align 2, !tbaa !56
  %i.cwf = load i16, ptr %i.cvp, align 2, !tbaa !56
  %i.cwg = load i16, ptr %i.cvq, align 2, !tbaa !56
  %i.cwh = load i16, ptr %i.cvr, align 2, !tbaa !56
  %i.cwi = load i16, ptr %i.cvs, align 2, !tbaa !56
  %i.cwj = load i16, ptr %i.cvt, align 2, !tbaa !56
  %i.cwk = load i16, ptr %i.cvu, align 2, !tbaa !56
  %i.cwl = load i16, ptr %i.cvv, align 2, !tbaa !56
  %i.cwm = load i16, ptr %i.cvw, align 2, !tbaa !56
  %i.cwn = insertelement <16 x i16> poison, i16 %i.cvx, i64 0
  %i.cwo = insertelement <16 x i16> %i.cwn, i16 %i.cvy, i64 1
  %i.cwp = insertelement <16 x i16> %i.cwo, i16 %i.cvz, i64 2
  %i.cwq = insertelement <16 x i16> %i.cwp, i16 %i.cwa, i64 3
  %i.cwr = insertelement <16 x i16> %i.cwq, i16 %i.cwb, i64 4
  %i.cws = insertelement <16 x i16> %i.cwr, i16 %i.cwc, i64 5
  %i.cwt = insertelement <16 x i16> %i.cws, i16 %i.cwd, i64 6
  %i.cwu = insertelement <16 x i16> %i.cwt, i16 %i.cwe, i64 7
  %i.cwv = insertelement <16 x i16> %i.cwu, i16 %i.cwf, i64 8
  %i.cww = insertelement <16 x i16> %i.cwv, i16 %i.cwg, i64 9
  %i.cwx = insertelement <16 x i16> %i.cww, i16 %i.cwh, i64 10
  %i.cwy = insertelement <16 x i16> %i.cwx, i16 %i.cwi, i64 11
  %i.cwz = insertelement <16 x i16> %i.cwy, i16 %i.cwj, i64 12
  %i.cxa = insertelement <16 x i16> %i.cwz, i16 %i.cwk, i64 13
  %i.cxb = insertelement <16 x i16> %i.cxa, i16 %i.cwl, i64 14
  %i.cxc = insertelement <16 x i16> %i.cxb, i16 %i.cwm, i64 15
  %i.cxd = zext <16 x i16> %i.cxc to <16 x i32>
  %i.cxe = shl nuw <16 x i32> %i.cxd, splat (i32 16)
  %i.cxf = bitcast <16 x i32> %i.cxe to <16 x float>
  %i.cxg = fmul fast <16 x float> %strided.vec676, %i.cxf
  %i.cxh = load i16, ptr %i.cnd, align 2, !tbaa !56
  %i.cxi = load i16, ptr %i.cne, align 2, !tbaa !56
  %i.cxj = load i16, ptr %i.cnf, align 2, !tbaa !56
  %i.cxk = load i16, ptr %i.cng, align 2, !tbaa !56
  %i.cxl = load i16, ptr %i.cnh, align 2, !tbaa !56
  %i.cxm = load i16, ptr %i.cni, align 2, !tbaa !56
  %i.cxn = load i16, ptr %i.cnj, align 2, !tbaa !56
  %i.cxo = load i16, ptr %i.cnk, align 2, !tbaa !56
  %i.cxp = load i16, ptr %i.cnl, align 2, !tbaa !56
  %i.cxq = load i16, ptr %i.cnm, align 2, !tbaa !56
  %i.cxr = load i16, ptr %i.cnn, align 2, !tbaa !56
  %i.cxs = load i16, ptr %i.cno, align 2, !tbaa !56
  %i.cxt = load i16, ptr %i.cnp, align 2, !tbaa !56
  %i.cxu = load i16, ptr %i.cnq, align 2, !tbaa !56
  %i.cxv = load i16, ptr %i.cnr, align 2, !tbaa !56
  %i.cxw = load i16, ptr %i.cns, align 2, !tbaa !56
  %i.cxx = insertelement <16 x i16> poison, i16 %i.cxh, i64 0
  %i.cxy = insertelement <16 x i16> %i.cxx, i16 %i.cxi, i64 1
  %i.cxz = insertelement <16 x i16> %i.cxy, i16 %i.cxj, i64 2
  %i.cya = insertelement <16 x i16> %i.cxz, i16 %i.cxk, i64 3
  %i.cyb = insertelement <16 x i16> %i.cya, i16 %i.cxl, i64 4
  %i.cyc = insertelement <16 x i16> %i.cyb, i16 %i.cxm, i64 5
  %i.cyd = insertelement <16 x i16> %i.cyc, i16 %i.cxn, i64 6
  %i.cye = insertelement <16 x i16> %i.cyd, i16 %i.cxo, i64 7
  %i.cyf = insertelement <16 x i16> %i.cye, i16 %i.cxp, i64 8
  %i.cyg = insertelement <16 x i16> %i.cyf, i16 %i.cxq, i64 9
  %i.cyh = insertelement <16 x i16> %i.cyg, i16 %i.cxr, i64 10
  %i.cyi = insertelement <16 x i16> %i.cyh, i16 %i.cxs, i64 11
  %i.cyj = insertelement <16 x i16> %i.cyi, i16 %i.cxt, i64 12
  %i.cyk = insertelement <16 x i16> %i.cyj, i16 %i.cxu, i64 13
  %i.cyl = insertelement <16 x i16> %i.cyk, i16 %i.cxv, i64 14
  %i.cym = insertelement <16 x i16> %i.cyl, i16 %i.cxw, i64 15
  %i.cyn = zext <16 x i16> %i.cym to <16 x i32>
  %i.cyo = shl nuw <16 x i32> %i.cyn, splat (i32 16)
  %i.cyp = bitcast <16 x i32> %i.cyo to <16 x float>
  %i.cyq = fmul fast <16 x float> %strided.vec677, %i.cyp
  %i.cyr = fadd fast <16 x float> %i.cxg, %i.cyq
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cnd, i64 2
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cne, i64 2
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cnf, i64 2
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cng, i64 2
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cnh, i64 2
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cni, i64 2
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cnj, i64 2
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cnk, i64 2
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cnl, i64 2
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cnm, i64 2
  %i.czc = getelementptr inbounds nuw i8, ptr %i.cnn, i64 2
  %i.czd = getelementptr inbounds nuw i8, ptr %i.cno, i64 2
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cnp, i64 2
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cnq, i64 2
  %i.czg = getelementptr inbounds nuw i8, ptr %i.cnr, i64 2
  %i.czh = getelementptr inbounds nuw i8, ptr %i.cns, i64 2
  %i.czi = load i16, ptr %i.cys, align 2, !tbaa !56
  %i.czj = load i16, ptr %i.cyt, align 2, !tbaa !56
  %i.czk = load i16, ptr %i.cyu, align 2, !tbaa !56
  %i.czl = load i16, ptr %i.cyv, align 2, !tbaa !56
  %i.czm = load i16, ptr %i.cyw, align 2, !tbaa !56
  %i.czn = load i16, ptr %i.cyx, align 2, !tbaa !56
  %i.czo = load i16, ptr %i.cyy, align 2, !tbaa !56
  %i.czp = load i16, ptr %i.cyz, align 2, !tbaa !56
  %i.czq = load i16, ptr %i.cza, align 2, !tbaa !56
  %i.czr = load i16, ptr %i.czb, align 2, !tbaa !56
  %i.czs = load i16, ptr %i.czc, align 2, !tbaa !56
  %i.czt = load i16, ptr %i.czd, align 2, !tbaa !56
  %i.czu = load i16, ptr %i.cze, align 2, !tbaa !56
  %i.czv = load i16, ptr %i.czf, align 2, !tbaa !56
  %i.czw = load i16, ptr %i.czg, align 2, !tbaa !56
  %i.czx = load i16, ptr %i.czh, align 2, !tbaa !56
  %i.czy = insertelement <16 x i16> poison, i16 %i.czi, i64 0
  %i.czz = insertelement <16 x i16> %i.czy, i16 %i.czj, i64 1
  %i.daa = insertelement <16 x i16> %i.czz, i16 %i.czk, i64 2
  %i.dab = insertelement <16 x i16> %i.daa, i16 %i.czl, i64 3
  %i.dac = insertelement <16 x i16> %i.dab, i16 %i.czm, i64 4
  %i.dad = insertelement <16 x i16> %i.dac, i16 %i.czn, i64 5
  %i.dae = insertelement <16 x i16> %i.dad, i16 %i.czo, i64 6
  %i.daf = insertelement <16 x i16> %i.dae, i16 %i.czp, i64 7
  %i.dag = insertelement <16 x i16> %i.daf, i16 %i.czq, i64 8
  %i.dah = insertelement <16 x i16> %i.dag, i16 %i.czr, i64 9
  %i.dai = insertelement <16 x i16> %i.dah, i16 %i.czs, i64 10
  %i.daj = insertelement <16 x i16> %i.dai, i16 %i.czt, i64 11
  %i.dak = insertelement <16 x i16> %i.daj, i16 %i.czu, i64 12
  %i.dal = insertelement <16 x i16> %i.dak, i16 %i.czv, i64 13
  %i.dam = insertelement <16 x i16> %i.dal, i16 %i.czw, i64 14
  %i.dan = insertelement <16 x i16> %i.dam, i16 %i.czx, i64 15
  %i.dao = zext <16 x i16> %i.dan to <16 x i32>
  %i.dap = shl nuw <16 x i32> %i.dao, splat (i32 16)
  %i.daq = bitcast <16 x i32> %i.dap to <16 x float>
  %i.dar = fmul fast <16 x float> %strided.vec678, %i.daq
  %i.das = fadd fast <16 x float> %i.cyr, %i.dar
  %i.dat = getelementptr inbounds nuw i8, ptr %i.cnd, i64 4
  %i.dau = getelementptr inbounds nuw i8, ptr %i.cne, i64 4
  %i.dav = getelementptr inbounds nuw i8, ptr %i.cnf, i64 4
  %i.daw = getelementptr inbounds nuw i8, ptr %i.cng, i64 4
  %i.dax = getelementptr inbounds nuw i8, ptr %i.cnh, i64 4
  %i.day = getelementptr inbounds nuw i8, ptr %i.cni, i64 4
  %i.daz = getelementptr inbounds nuw i8, ptr %i.cnj, i64 4
  %i.dba = getelementptr inbounds nuw i8, ptr %i.cnk, i64 4
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.cnl, i64 4
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.cnm, i64 4
  %i.dbd = getelementptr inbounds nuw i8, ptr %i.cnn, i64 4
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.cno, i64 4
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.cnp, i64 4
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.cnq, i64 4
  %i.dbh = getelementptr inbounds nuw i8, ptr %i.cnr, i64 4
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.cns, i64 4
  %i.dbj = load i16, ptr %i.dat, align 2, !tbaa !56
  %i.dbk = load i16, ptr %i.dau, align 2, !tbaa !56
  %i.dbl = load i16, ptr %i.dav, align 2, !tbaa !56
  %i.dbm = load i16, ptr %i.daw, align 2, !tbaa !56
  %i.dbn = load i16, ptr %i.dax, align 2, !tbaa !56
  %i.dbo = load i16, ptr %i.day, align 2, !tbaa !56
  %i.dbp = load i16, ptr %i.daz, align 2, !tbaa !56
  %i.dbq = load i16, ptr %i.dba, align 2, !tbaa !56
  %i.dbr = load i16, ptr %i.dbb, align 2, !tbaa !56
  %i.dbs = load i16, ptr %i.dbc, align 2, !tbaa !56
  %i.dbt = load i16, ptr %i.dbd, align 2, !tbaa !56
  %i.dbu = load i16, ptr %i.dbe, align 2, !tbaa !56
  %i.dbv = load i16, ptr %i.dbf, align 2, !tbaa !56
  %i.dbw = load i16, ptr %i.dbg, align 2, !tbaa !56
  %i.dbx = load i16, ptr %i.dbh, align 2, !tbaa !56
  %i.dby = load i16, ptr %i.dbi, align 2, !tbaa !56
  %i.dbz = insertelement <16 x i16> poison, i16 %i.dbj, i64 0
  %i.dca = insertelement <16 x i16> %i.dbz, i16 %i.dbk, i64 1
  %i.dcb = insertelement <16 x i16> %i.dca, i16 %i.dbl, i64 2
  %i.dcc = insertelement <16 x i16> %i.dcb, i16 %i.dbm, i64 3
  %i.dcd = insertelement <16 x i16> %i.dcc, i16 %i.dbn, i64 4
  %i.dce = insertelement <16 x i16> %i.dcd, i16 %i.dbo, i64 5
  %i.dcf = insertelement <16 x i16> %i.dce, i16 %i.dbp, i64 6
  %i.dcg = insertelement <16 x i16> %i.dcf, i16 %i.dbq, i64 7
  %i.dch = insertelement <16 x i16> %i.dcg, i16 %i.dbr, i64 8
  %i.dci = insertelement <16 x i16> %i.dch, i16 %i.dbs, i64 9
  %i.dcj = insertelement <16 x i16> %i.dci, i16 %i.dbt, i64 10
  %i.dck = insertelement <16 x i16> %i.dcj, i16 %i.dbu, i64 11
  %i.dcl = insertelement <16 x i16> %i.dck, i16 %i.dbv, i64 12
  %i.dcm = insertelement <16 x i16> %i.dcl, i16 %i.dbw, i64 13
  %i.dcn = insertelement <16 x i16> %i.dcm, i16 %i.dbx, i64 14
  %i.dco = insertelement <16 x i16> %i.dcn, i16 %i.dby, i64 15
  %i.dcp = zext <16 x i16> %i.dco to <16 x i32>
  %i.dcq = shl nuw <16 x i32> %i.dcp, splat (i32 16)
  %i.dcr = bitcast <16 x i32> %i.dcq to <16 x float>
  %i.dcs = fmul fast <16 x float> %strided.vec679, %i.dcr
  %i.dct = fadd fast <16 x float> %i.das, %i.dcs
  %i.dcu = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index672
  store <16 x float> %i.dct, ptr %i.dcu, align 4, !tbaa !24, !alias.scope !193, !noalias !186
  %index.next680 = add nuw i64 %index672, 16      ; 2 uses
  %i.dcv = icmp eq i64 %index.next680, %n.vec670
  br i1 %i.dcv, label %middle.block681, label %vector.body671, !llvm.loop !194

middle.block681:                                  ; preds = %vector.body671
  br i1 %cmp.n682, label %.loopexit.i142, label %vec.epilog.iter.check686

vec.epilog.iter.check686:                         ; preds = %middle.block681
  br i1 %min.epilog.iters.check687, label %.lr.ph336.i.preheader, label %vec.epilog.ph688, !prof !46

vec.epilog.ph688:                                 ; preds = %vector.main.loop.iter.check667, %vec.epilog.iter.check686
  %vec.epilog.resume.val683 = phi i64 [ %n.vec670, %vec.epilog.iter.check686 ], [ 0, %vector.main.loop.iter.check667 ]
  br label %vec.epilog.vector.body690

vec.epilog.vector.body690:                        ; preds = %vec.epilog.vector.body690, %vec.epilog.ph688
  %index691 = phi i64 [ %vec.epilog.resume.val683, %vec.epilog.ph688 ], [ %index.next699, %vec.epilog.vector.body690 ] ; 5 uses
  %i.dcw = shl i64 %index691, 4
  %next.gep692 = getelementptr i8, ptr %i.bul, i64 %i.dcw
  %i.dcx = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %index691
  %wide.load693 = load <4 x i32>, ptr %i.dcx, align 4, !tbaa !18
  %i.dcy = sext <4 x i32> %wide.load693 to <4 x i64> ; 4 uses
  %i.dcz = extractelement <4 x i64> %i.dcy, i64 0 ; 2 uses
  %i.dda = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.dcz ; 4 uses
  %i.ddb = extractelement <4 x i64> %i.dcy, i64 1 ; 2 uses
  %i.ddc = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.ddb ; 4 uses
  %i.ddd = extractelement <4 x i64> %i.dcy, i64 2 ; 2 uses
  %i.dde = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.ddd ; 4 uses
  %i.ddf = extractelement <4 x i64> %i.dcy, i64 3 ; 2 uses
  %i.ddg = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.ddf ; 4 uses
  %i.ddh = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.dcz ; 4 uses
  %i.ddi = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.ddb ; 4 uses
  %i.ddj = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.ddd ; 4 uses
  %i.ddk = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.ddf ; 4 uses
  %wide.vec694 = load <16 x float>, ptr %next.gep692, align 4, !tbaa !24, !alias.scope !186 ; 4 uses
  %strided.vec695 = shufflevector <16 x float> %wide.vec694, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec696 = shufflevector <16 x float> %wide.vec694, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec697 = shufflevector <16 x float> %wide.vec694, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %strided.vec698 = shufflevector <16 x float> %wide.vec694, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.ddl = getelementptr inbounds i8, ptr %i.dda, i64 -2
  %i.ddm = getelementptr inbounds i8, ptr %i.ddc, i64 -2
  %i.ddn = getelementptr inbounds i8, ptr %i.dde, i64 -2
  %i.ddo = getelementptr inbounds i8, ptr %i.ddg, i64 -2
  %i.ddp = load i16, ptr %i.ddl, align 2, !tbaa !56
  %i.ddq = load i16, ptr %i.ddm, align 2, !tbaa !56
  %i.ddr = load i16, ptr %i.ddn, align 2, !tbaa !56
  %i.dds = load i16, ptr %i.ddo, align 2, !tbaa !56
  %i.ddt = insertelement <4 x i16> poison, i16 %i.ddp, i64 0
  %i.ddu = insertelement <4 x i16> %i.ddt, i16 %i.ddq, i64 1
  %i.ddv = insertelement <4 x i16> %i.ddu, i16 %i.ddr, i64 2
  %i.ddw = insertelement <4 x i16> %i.ddv, i16 %i.dds, i64 3
  %i.ddx = zext <4 x i16> %i.ddw to <4 x i32>
  %i.ddy = shl nuw <4 x i32> %i.ddx, splat (i32 16)
  %i.ddz = bitcast <4 x i32> %i.ddy to <4 x float>
  %i.dea = fmul fast <4 x float> %strided.vec695, %i.ddz
  %i.deb = load i16, ptr %i.dda, align 2, !tbaa !56
  %i.dec = load i16, ptr %i.ddc, align 2, !tbaa !56
  %i.ded = load i16, ptr %i.dde, align 2, !tbaa !56
  %i.dee = load i16, ptr %i.ddg, align 2, !tbaa !56
  %i.def = insertelement <4 x i16> poison, i16 %i.deb, i64 0
  %i.deg = insertelement <4 x i16> %i.def, i16 %i.dec, i64 1
  %i.deh = insertelement <4 x i16> %i.deg, i16 %i.ded, i64 2
  %i.dei = insertelement <4 x i16> %i.deh, i16 %i.dee, i64 3
  %i.dej = zext <4 x i16> %i.dei to <4 x i32>
  %i.dek = shl nuw <4 x i32> %i.dej, splat (i32 16)
  %i.del = bitcast <4 x i32> %i.dek to <4 x float>
  %i.dem = fmul fast <4 x float> %strided.vec696, %i.del
  %i.den = fadd fast <4 x float> %i.dea, %i.dem
  %i.deo = getelementptr inbounds nuw i8, ptr %i.dda, i64 2
  %i.dep = getelementptr inbounds nuw i8, ptr %i.ddc, i64 2
  %i.deq = getelementptr inbounds nuw i8, ptr %i.dde, i64 2
  %i.der = getelementptr inbounds nuw i8, ptr %i.ddg, i64 2
  %i.des = load i16, ptr %i.deo, align 2, !tbaa !56
  %i.det = load i16, ptr %i.dep, align 2, !tbaa !56
  %i.deu = load i16, ptr %i.deq, align 2, !tbaa !56
  %i.dev = load i16, ptr %i.der, align 2, !tbaa !56
  %i.dew = insertelement <4 x i16> poison, i16 %i.des, i64 0
  %i.dex = insertelement <4 x i16> %i.dew, i16 %i.det, i64 1
  %i.dey = insertelement <4 x i16> %i.dex, i16 %i.deu, i64 2
  %i.dez = insertelement <4 x i16> %i.dey, i16 %i.dev, i64 3
  %i.dfa = zext <4 x i16> %i.dez to <4 x i32>
  %i.dfb = shl nuw <4 x i32> %i.dfa, splat (i32 16)
  %i.dfc = bitcast <4 x i32> %i.dfb to <4 x float>
  %i.dfd = fmul fast <4 x float> %strided.vec697, %i.dfc
  %i.dfe = fadd fast <4 x float> %i.den, %i.dfd
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dda, i64 4
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.ddc, i64 4
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.dde, i64 4
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.ddg, i64 4
  %i.dfj = load i16, ptr %i.dff, align 2, !tbaa !56
  %i.dfk = load i16, ptr %i.dfg, align 2, !tbaa !56
  %i.dfl = load i16, ptr %i.dfh, align 2, !tbaa !56
  %i.dfm = load i16, ptr %i.dfi, align 2, !tbaa !56
  %i.dfn = insertelement <4 x i16> poison, i16 %i.dfj, i64 0
  %i.dfo = insertelement <4 x i16> %i.dfn, i16 %i.dfk, i64 1
  %i.dfp = insertelement <4 x i16> %i.dfo, i16 %i.dfl, i64 2
  %i.dfq = insertelement <4 x i16> %i.dfp, i16 %i.dfm, i64 3
  %i.dfr = zext <4 x i16> %i.dfq to <4 x i32>
  %i.dfs = shl nuw <4 x i32> %i.dfr, splat (i32 16)
  %i.dft = bitcast <4 x i32> %i.dfs to <4 x float>
  %i.dfu = fmul fast <4 x float> %strided.vec698, %i.dft
  %i.dfv = fadd fast <4 x float> %i.dfe, %i.dfu
  %i.dfw = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index691
  store <4 x float> %i.dfv, ptr %i.dfw, align 4, !tbaa !24, !alias.scope !189, !noalias !191
  %i.dfx = getelementptr inbounds i8, ptr %i.ddh, i64 -2
  %i.dfy = getelementptr inbounds i8, ptr %i.ddi, i64 -2
  %i.dfz = getelementptr inbounds i8, ptr %i.ddj, i64 -2
  %i.dga = getelementptr inbounds i8, ptr %i.ddk, i64 -2
  %i.dgb = load i16, ptr %i.dfx, align 2, !tbaa !56
  %i.dgc = load i16, ptr %i.dfy, align 2, !tbaa !56
  %i.dgd = load i16, ptr %i.dfz, align 2, !tbaa !56
  %i.dge = load i16, ptr %i.dga, align 2, !tbaa !56
  %i.dgf = insertelement <4 x i16> poison, i16 %i.dgb, i64 0
  %i.dgg = insertelement <4 x i16> %i.dgf, i16 %i.dgc, i64 1
  %i.dgh = insertelement <4 x i16> %i.dgg, i16 %i.dgd, i64 2
  %i.dgi = insertelement <4 x i16> %i.dgh, i16 %i.dge, i64 3
  %i.dgj = zext <4 x i16> %i.dgi to <4 x i32>
  %i.dgk = shl nuw <4 x i32> %i.dgj, splat (i32 16)
  %i.dgl = bitcast <4 x i32> %i.dgk to <4 x float>
  %i.dgm = fmul fast <4 x float> %strided.vec695, %i.dgl
  %i.dgn = load i16, ptr %i.ddh, align 2, !tbaa !56
  %i.dgo = load i16, ptr %i.ddi, align 2, !tbaa !56
  %i.dgp = load i16, ptr %i.ddj, align 2, !tbaa !56
  %i.dgq = load i16, ptr %i.ddk, align 2, !tbaa !56
  %i.dgr = insertelement <4 x i16> poison, i16 %i.dgn, i64 0
  %i.dgs = insertelement <4 x i16> %i.dgr, i16 %i.dgo, i64 1
  %i.dgt = insertelement <4 x i16> %i.dgs, i16 %i.dgp, i64 2
  %i.dgu = insertelement <4 x i16> %i.dgt, i16 %i.dgq, i64 3
  %i.dgv = zext <4 x i16> %i.dgu to <4 x i32>
  %i.dgw = shl nuw <4 x i32> %i.dgv, splat (i32 16)
  %i.dgx = bitcast <4 x i32> %i.dgw to <4 x float>
  %i.dgy = fmul fast <4 x float> %strided.vec696, %i.dgx
  %i.dgz = fadd fast <4 x float> %i.dgm, %i.dgy
  %i.dha = getelementptr inbounds nuw i8, ptr %i.ddh, i64 2
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.ddi, i64 2
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.ddj, i64 2
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.ddk, i64 2
  %i.dhe = load i16, ptr %i.dha, align 2, !tbaa !56
  %i.dhf = load i16, ptr %i.dhb, align 2, !tbaa !56
  %i.dhg = load i16, ptr %i.dhc, align 2, !tbaa !56
  %i.dhh = load i16, ptr %i.dhd, align 2, !tbaa !56
  %i.dhi = insertelement <4 x i16> poison, i16 %i.dhe, i64 0
  %i.dhj = insertelement <4 x i16> %i.dhi, i16 %i.dhf, i64 1
  %i.dhk = insertelement <4 x i16> %i.dhj, i16 %i.dhg, i64 2
  %i.dhl = insertelement <4 x i16> %i.dhk, i16 %i.dhh, i64 3
  %i.dhm = zext <4 x i16> %i.dhl to <4 x i32>
  %i.dhn = shl nuw <4 x i32> %i.dhm, splat (i32 16)
  %i.dho = bitcast <4 x i32> %i.dhn to <4 x float>
  %i.dhp = fmul fast <4 x float> %strided.vec697, %i.dho
  %i.dhq = fadd fast <4 x float> %i.dgz, %i.dhp
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.ddh, i64 4
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.ddi, i64 4
  %i.dht = getelementptr inbounds nuw i8, ptr %i.ddj, i64 4
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.ddk, i64 4
  %i.dhv = load i16, ptr %i.dhr, align 2, !tbaa !56
  %i.dhw = load i16, ptr %i.dhs, align 2, !tbaa !56
  %i.dhx = load i16, ptr %i.dht, align 2, !tbaa !56
  %i.dhy = load i16, ptr %i.dhu, align 2, !tbaa !56
  %i.dhz = insertelement <4 x i16> poison, i16 %i.dhv, i64 0
  %i.dia = insertelement <4 x i16> %i.dhz, i16 %i.dhw, i64 1
  %i.dib = insertelement <4 x i16> %i.dia, i16 %i.dhx, i64 2
  %i.dic = insertelement <4 x i16> %i.dib, i16 %i.dhy, i64 3
  %i.did = zext <4 x i16> %i.dic to <4 x i32>
  %i.die = shl nuw <4 x i32> %i.did, splat (i32 16)
  %i.dif = bitcast <4 x i32> %i.die to <4 x float>
  %i.dig = fmul fast <4 x float> %strided.vec698, %i.dif
  %i.dih = fadd fast <4 x float> %i.dhq, %i.dig
  %i.dii = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index691
  store <4 x float> %i.dih, ptr %i.dii, align 4, !tbaa !24, !alias.scope !193, !noalias !186
  %index.next699 = add nuw i64 %index691, 4       ; 2 uses
  %i.dij = icmp eq i64 %index.next699, %n.vec689
  br i1 %i.dij, label %vec.epilog.middle.block700, label %vec.epilog.vector.body690, !llvm.loop !195

vec.epilog.middle.block700:                       ; preds = %vec.epilog.vector.body690
  br i1 %cmp.n701, label %.loopexit.i142, label %.lr.ph336.i.preheader

.lr.ph336.i.preheader:                            ; preds = %vector.memcheck653, %iter.check684, %vec.epilog.iter.check686, %vec.epilog.middle.block700
  %indvars.iv357.i.ph = phi i64 [ 0, %iter.check684 ], [ 0, %vector.memcheck653 ], [ %n.vec670, %vec.epilog.iter.check686 ], [ %n.vec689, %vec.epilog.middle.block700 ]
  %.0262335.i.ph = phi ptr [ %i.bul, %iter.check684 ], [ %i.bul, %vector.memcheck653 ], [ %i.bvn, %vec.epilog.iter.check686 ], [ %i.bvp, %vec.epilog.middle.block700 ]
  br label %.lr.ph336.i

.lr.ph336.i:                                      ; preds = %.lr.ph336.i.preheader, %.lr.ph336.i
  %indvars.iv357.i = phi i64 [ %indvars.iv.next358.i, %.lr.ph336.i ], [ %indvars.iv357.i.ph, %.lr.ph336.i.preheader ] ; 4 uses
  %.0262335.i = phi ptr [ %i.djg, %.lr.ph336.i ], [ %.0262335.i.ph, %.lr.ph336.i.preheader ] ; 2 uses
  %i.dik = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %indvars.iv357.i
  %i.dil = load i32, ptr %i.dik, align 4, !tbaa !18
  %i.dim = sext i32 %i.dil to i64                 ; 2 uses
  %i.din = getelementptr inbounds [2 x i8], ptr %i.clp, i64 %i.dim
  %i.dio = getelementptr inbounds [2 x i8], ptr %i.clt, i64 %i.dim
  %i.dip = getelementptr inbounds i8, ptr %i.din, i64 -2
  %i.diq = load <4 x float>, ptr %.0262335.i, align 4, !tbaa !24 ; 2 uses
  %i.dir = load <4 x i16>, ptr %i.dip, align 2, !tbaa !56
  %i.dis = zext <4 x i16> %i.dir to <4 x i32>
  %i.dit = shl nuw <4 x i32> %i.dis, splat (i32 16)
  %i.diu = bitcast <4 x i32> %i.dit to <4 x float>
  %i.div = fmul fast <4 x float> %i.diq, %i.diu
  %i.diw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.div)
  %i.dix = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv357.i
  store float %i.diw, ptr %i.dix, align 4, !tbaa !24
  %i.diy = getelementptr inbounds i8, ptr %i.dio, i64 -2
  %i.diz = load <4 x i16>, ptr %i.diy, align 2, !tbaa !56
  %i.dja = zext <4 x i16> %i.diz to <4 x i32>
  %i.djb = shl nuw <4 x i32> %i.dja, splat (i32 16)
  %i.djc = bitcast <4 x i32> %i.djb to <4 x float>
  %i.djd = fmul fast <4 x float> %i.diq, %i.djc
  %i.dje = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.djd)
  %i.djf = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv357.i
  store float %i.dje, ptr %i.djf, align 4, !tbaa !24
  %i.djg = getelementptr inbounds nuw i8, ptr %.0262335.i, i64 16
  %indvars.iv.next358.i = add nuw nsw i64 %indvars.iv357.i, 1 ; 2 uses
  %exitcond361.not.i = icmp eq i64 %indvars.iv.next358.i, %i.buw
  br i1 %exitcond361.not.i, label %.loopexit.i142, label %.lr.ph336.i, !llvm.loop !196

bb.gv:                                            ; preds = %bb.gt
  %i.djh = add nsw i32 %.0257341.i, 3
  %i.dji = icmp eq i32 %i.bxp, %i.djh
  br i1 %i.dji, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.djj = sext i32 %i.bxp to i64
  %i.djk = mul i64 %i.buy, %i.djj
  %i.djl = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.djk ; 21 uses
  %i.djm = add nsw i32 %i.bxp, 1
  %i.djn = sext i32 %i.djm to i64
  %i.djo = mul i64 %i.buy, %i.djn
  %i.djp = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.djo ; 21 uses
  %i.djq = add nsw i32 %i.bxp, 2
  %i.djr = sext i32 %i.djq to i64
  %i.djs = mul i64 %i.buy, %i.djr
  %i.djt = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.djs ; 21 uses
  br i1 %i.buu, label %iter.check749, label %.loopexit.i142

iter.check749:                                    ; preds = %bb.gw
  br i1 %min.iters.check731, label %.lr.ph333.i.preheader, label %vector.memcheck704

vector.memcheck704:                               ; preds = %iter.check749
  %scevgep705 = getelementptr i8, ptr %.0249345.i, i64 %i.buz ; 3 uses
  %scevgep706 = getelementptr i8, ptr %.0251344.i, i64 %i.buz ; 3 uses
  %scevgep707 = getelementptr i8, ptr %.0253343.i, i64 %i.buz ; 3 uses
  %bound0708 = icmp ult ptr %.0249345.i, %scevgep706
  %bound1709 = icmp ult ptr %.0251344.i, %scevgep705
  %found.conflict710 = and i1 %bound0708, %bound1709
  %bound0711 = icmp ult ptr %.0249345.i, %scevgep707
  %bound1712 = icmp ult ptr %.0253343.i, %scevgep705
  %found.conflict713 = and i1 %bound0711, %bound1712
  %conflict.rdx714 = or i1 %found.conflict710, %found.conflict713
  %bound0715 = icmp ult ptr %.0249345.i, %scevgep617
  %bound1716 = icmp ult ptr %i.bul, %scevgep705
  %found.conflict717 = and i1 %bound0715, %bound1716
  %conflict.rdx718 = or i1 %conflict.rdx714, %found.conflict717
  %bound0719 = icmp ult ptr %.0251344.i, %scevgep707
  %bound1720 = icmp ult ptr %.0253343.i, %scevgep706
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %conflict.rdx718, %found.conflict721
  %bound0723 = icmp ult ptr %.0251344.i, %scevgep617
  %bound1724 = icmp ult ptr %i.bul, %scevgep706
  %found.conflict725 = and i1 %bound0723, %bound1724
  %conflict.rdx726 = or i1 %conflict.rdx722, %found.conflict725
  %bound0727 = icmp ult ptr %.0253343.i, %scevgep617
  %bound1728 = icmp ult ptr %i.bul, %scevgep707
  %found.conflict729 = and i1 %bound0727, %bound1728
  %conflict.rdx730 = or i1 %conflict.rdx726, %found.conflict729
  br i1 %conflict.rdx730, label %.lr.ph333.i.preheader, label %vector.main.loop.iter.check732

vector.main.loop.iter.check732:                   ; preds = %vector.memcheck704
  br i1 %min.iters.check733, label %vec.epilog.ph753, label %vector.body736

vector.body736:                                   ; preds = %vector.main.loop.iter.check732, %vector.body736
  %index737 = phi i64 [ %index.next745, %vector.body736 ], [ 0, %vector.main.loop.iter.check732 ] ; 6 uses
  %i.dju = shl i64 %index737, 4
  %next.gep738 = getelementptr i8, ptr %i.bul, i64 %i.dju
  %i.djv = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %index737
  %wide.load739 = load <16 x i32>, ptr %i.djv, align 4, !tbaa !18
  %i.djw = sext <16 x i32> %wide.load739 to <16 x i64> ; 16 uses
  %i.djx = extractelement <16 x i64> %i.djw, i64 0 ; 3 uses
  %i.djy = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.djx ; 4 uses
  %i.djz = extractelement <16 x i64> %i.djw, i64 1 ; 3 uses
  %i.dka = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.djz ; 4 uses
  %i.dkb = extractelement <16 x i64> %i.djw, i64 2 ; 3 uses
  %i.dkc = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkb ; 4 uses
  %i.dkd = extractelement <16 x i64> %i.djw, i64 3 ; 3 uses
  %i.dke = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkd ; 4 uses
  %i.dkf = extractelement <16 x i64> %i.djw, i64 4 ; 3 uses
  %i.dkg = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkf ; 4 uses
  %i.dkh = extractelement <16 x i64> %i.djw, i64 5 ; 3 uses
  %i.dki = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkh ; 4 uses
  %i.dkj = extractelement <16 x i64> %i.djw, i64 6 ; 3 uses
  %i.dkk = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkj ; 4 uses
  %i.dkl = extractelement <16 x i64> %i.djw, i64 7 ; 3 uses
  %i.dkm = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkl ; 4 uses
  %i.dkn = extractelement <16 x i64> %i.djw, i64 8 ; 3 uses
  %i.dko = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkn ; 4 uses
  %i.dkp = extractelement <16 x i64> %i.djw, i64 9 ; 3 uses
  %i.dkq = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkp ; 4 uses
  %i.dkr = extractelement <16 x i64> %i.djw, i64 10 ; 3 uses
  %i.dks = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkr ; 4 uses
  %i.dkt = extractelement <16 x i64> %i.djw, i64 11 ; 3 uses
  %i.dku = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkt ; 4 uses
  %i.dkv = extractelement <16 x i64> %i.djw, i64 12 ; 3 uses
  %i.dkw = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkv ; 4 uses
  %i.dkx = extractelement <16 x i64> %i.djw, i64 13 ; 3 uses
  %i.dky = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkx ; 4 uses
  %i.dkz = extractelement <16 x i64> %i.djw, i64 14 ; 3 uses
  %i.dla = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dkz ; 4 uses
  %i.dlb = extractelement <16 x i64> %i.djw, i64 15 ; 3 uses
  %i.dlc = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.dlb ; 4 uses
  %i.dld = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.djx ; 4 uses
  %i.dle = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.djz ; 4 uses
  %i.dlf = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkb ; 4 uses
  %i.dlg = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkd ; 4 uses
  %i.dlh = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkf ; 4 uses
  %i.dli = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkh ; 4 uses
  %i.dlj = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkj ; 4 uses
  %i.dlk = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkl ; 4 uses
  %i.dll = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkn ; 4 uses
  %i.dlm = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkp ; 4 uses
  %i.dln = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkr ; 4 uses
  %i.dlo = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkt ; 4 uses
  %i.dlp = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkv ; 4 uses
  %i.dlq = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkx ; 4 uses
  %i.dlr = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dkz ; 4 uses
  %i.dls = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dlb ; 4 uses
  %i.dlt = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.djx ; 4 uses
  %i.dlu = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.djz ; 4 uses
  %i.dlv = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkb ; 4 uses
  %i.dlw = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkd ; 4 uses
  %i.dlx = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkf ; 4 uses
  %i.dly = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkh ; 4 uses
  %i.dlz = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkj ; 4 uses
  %i.dma = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkl ; 4 uses
  %i.dmb = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkn ; 4 uses
  %i.dmc = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkp ; 4 uses
  %i.dmd = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkr ; 4 uses
  %i.dme = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkt ; 4 uses
  %i.dmf = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkv ; 4 uses
  %i.dmg = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkx ; 4 uses
  %i.dmh = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dkz ; 4 uses
  %i.dmi = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.dlb ; 4 uses
  %wide.vec740 = load <64 x float>, ptr %next.gep738, align 4, !tbaa !24, !alias.scope !197 ; 4 uses
  %strided.vec741 = shufflevector <64 x float> %wide.vec740, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 3 uses
  %strided.vec742 = shufflevector <64 x float> %wide.vec740, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 3 uses
  %strided.vec743 = shufflevector <64 x float> %wide.vec740, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 3 uses
  %strided.vec744 = shufflevector <64 x float> %wide.vec740, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 3 uses
  %i.dmj = getelementptr inbounds i8, ptr %i.djy, i64 -2
  %i.dmk = getelementptr inbounds i8, ptr %i.dka, i64 -2
  %i.dml = getelementptr inbounds i8, ptr %i.dkc, i64 -2
  %i.dmm = getelementptr inbounds i8, ptr %i.dke, i64 -2
  %i.dmn = getelementptr inbounds i8, ptr %i.dkg, i64 -2
  %i.dmo = getelementptr inbounds i8, ptr %i.dki, i64 -2
  %i.dmp = getelementptr inbounds i8, ptr %i.dkk, i64 -2
  %i.dmq = getelementptr inbounds i8, ptr %i.dkm, i64 -2
  %i.dmr = getelementptr inbounds i8, ptr %i.dko, i64 -2
  %i.dms = getelementptr inbounds i8, ptr %i.dkq, i64 -2
  %i.dmt = getelementptr inbounds i8, ptr %i.dks, i64 -2
  %i.dmu = getelementptr inbounds i8, ptr %i.dku, i64 -2
  %i.dmv = getelementptr inbounds i8, ptr %i.dkw, i64 -2
  %i.dmw = getelementptr inbounds i8, ptr %i.dky, i64 -2
  %i.dmx = getelementptr inbounds i8, ptr %i.dla, i64 -2
  %i.dmy = getelementptr inbounds i8, ptr %i.dlc, i64 -2
  %i.dmz = load i16, ptr %i.dmj, align 2, !tbaa !56
  %i.dna = load i16, ptr %i.dmk, align 2, !tbaa !56
  %i.dnb = load i16, ptr %i.dml, align 2, !tbaa !56
  %i.dnc = load i16, ptr %i.dmm, align 2, !tbaa !56
  %i.dnd = load i16, ptr %i.dmn, align 2, !tbaa !56
  %i.dne = load i16, ptr %i.dmo, align 2, !tbaa !56
  %i.dnf = load i16, ptr %i.dmp, align 2, !tbaa !56
  %i.dng = load i16, ptr %i.dmq, align 2, !tbaa !56
  %i.dnh = load i16, ptr %i.dmr, align 2, !tbaa !56
  %i.dni = load i16, ptr %i.dms, align 2, !tbaa !56
  %i.dnj = load i16, ptr %i.dmt, align 2, !tbaa !56
  %i.dnk = load i16, ptr %i.dmu, align 2, !tbaa !56
  %i.dnl = load i16, ptr %i.dmv, align 2, !tbaa !56
  %i.dnm = load i16, ptr %i.dmw, align 2, !tbaa !56
  %i.dnn = load i16, ptr %i.dmx, align 2, !tbaa !56
  %i.dno = load i16, ptr %i.dmy, align 2, !tbaa !56
  %i.dnp = insertelement <16 x i16> poison, i16 %i.dmz, i64 0
  %i.dnq = insertelement <16 x i16> %i.dnp, i16 %i.dna, i64 1
  %i.dnr = insertelement <16 x i16> %i.dnq, i16 %i.dnb, i64 2
  %i.dns = insertelement <16 x i16> %i.dnr, i16 %i.dnc, i64 3
  %i.dnt = insertelement <16 x i16> %i.dns, i16 %i.dnd, i64 4
  %i.dnu = insertelement <16 x i16> %i.dnt, i16 %i.dne, i64 5
  %i.dnv = insertelement <16 x i16> %i.dnu, i16 %i.dnf, i64 6
  %i.dnw = insertelement <16 x i16> %i.dnv, i16 %i.dng, i64 7
  %i.dnx = insertelement <16 x i16> %i.dnw, i16 %i.dnh, i64 8
  %i.dny = insertelement <16 x i16> %i.dnx, i16 %i.dni, i64 9
  %i.dnz = insertelement <16 x i16> %i.dny, i16 %i.dnj, i64 10
  %i.doa = insertelement <16 x i16> %i.dnz, i16 %i.dnk, i64 11
  %i.dob = insertelement <16 x i16> %i.doa, i16 %i.dnl, i64 12
  %i.doc = insertelement <16 x i16> %i.dob, i16 %i.dnm, i64 13
  %i.dod = insertelement <16 x i16> %i.doc, i16 %i.dnn, i64 14
  %i.doe = insertelement <16 x i16> %i.dod, i16 %i.dno, i64 15
  %i.dof = zext <16 x i16> %i.doe to <16 x i32>
  %i.dog = shl nuw <16 x i32> %i.dof, splat (i32 16)
  %i.doh = bitcast <16 x i32> %i.dog to <16 x float>
  %i.doi = fmul fast <16 x float> %strided.vec741, %i.doh
  %i.doj = load i16, ptr %i.djy, align 2, !tbaa !56
  %i.dok = load i16, ptr %i.dka, align 2, !tbaa !56
  %i.dol = load i16, ptr %i.dkc, align 2, !tbaa !56
  %i.dom = load i16, ptr %i.dke, align 2, !tbaa !56
  %i.don = load i16, ptr %i.dkg, align 2, !tbaa !56
  %i.doo = load i16, ptr %i.dki, align 2, !tbaa !56
  %i.dop = load i16, ptr %i.dkk, align 2, !tbaa !56
  %i.doq = load i16, ptr %i.dkm, align 2, !tbaa !56
  %i.dor = load i16, ptr %i.dko, align 2, !tbaa !56
  %i.dos = load i16, ptr %i.dkq, align 2, !tbaa !56
  %i.dot = load i16, ptr %i.dks, align 2, !tbaa !56
  %i.dou = load i16, ptr %i.dku, align 2, !tbaa !56
  %i.dov = load i16, ptr %i.dkw, align 2, !tbaa !56
  %i.dow = load i16, ptr %i.dky, align 2, !tbaa !56
  %i.dox = load i16, ptr %i.dla, align 2, !tbaa !56
  %i.doy = load i16, ptr %i.dlc, align 2, !tbaa !56
  %i.doz = insertelement <16 x i16> poison, i16 %i.doj, i64 0
  %i.dpa = insertelement <16 x i16> %i.doz, i16 %i.dok, i64 1
  %i.dpb = insertelement <16 x i16> %i.dpa, i16 %i.dol, i64 2
  %i.dpc = insertelement <16 x i16> %i.dpb, i16 %i.dom, i64 3
  %i.dpd = insertelement <16 x i16> %i.dpc, i16 %i.don, i64 4
  %i.dpe = insertelement <16 x i16> %i.dpd, i16 %i.doo, i64 5
  %i.dpf = insertelement <16 x i16> %i.dpe, i16 %i.dop, i64 6
  %i.dpg = insertelement <16 x i16> %i.dpf, i16 %i.doq, i64 7
  %i.dph = insertelement <16 x i16> %i.dpg, i16 %i.dor, i64 8
  %i.dpi = insertelement <16 x i16> %i.dph, i16 %i.dos, i64 9
  %i.dpj = insertelement <16 x i16> %i.dpi, i16 %i.dot, i64 10
  %i.dpk = insertelement <16 x i16> %i.dpj, i16 %i.dou, i64 11
  %i.dpl = insertelement <16 x i16> %i.dpk, i16 %i.dov, i64 12
  %i.dpm = insertelement <16 x i16> %i.dpl, i16 %i.dow, i64 13
  %i.dpn = insertelement <16 x i16> %i.dpm, i16 %i.dox, i64 14
  %i.dpo = insertelement <16 x i16> %i.dpn, i16 %i.doy, i64 15
  %i.dpp = zext <16 x i16> %i.dpo to <16 x i32>
  %i.dpq = shl nuw <16 x i32> %i.dpp, splat (i32 16)
  %i.dpr = bitcast <16 x i32> %i.dpq to <16 x float>
  %i.dps = fmul fast <16 x float> %strided.vec742, %i.dpr
  %i.dpt = fadd fast <16 x float> %i.doi, %i.dps
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.djy, i64 2
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dka, i64 2
  %i.dpw = getelementptr inbounds nuw i8, ptr %i.dkc, i64 2
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dke, i64 2
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.dkg, i64 2
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dki, i64 2
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.dkk, i64 2
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dkm, i64 2
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.dko, i64 2
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.dkq, i64 2
  %i.dqe = getelementptr inbounds nuw i8, ptr %i.dks, i64 2
  %i.dqf = getelementptr inbounds nuw i8, ptr %i.dku, i64 2
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dkw, i64 2
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.dky, i64 2
  %i.dqi = getelementptr inbounds nuw i8, ptr %i.dla, i64 2
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dlc, i64 2
  %i.dqk = load i16, ptr %i.dpu, align 2, !tbaa !56
  %i.dql = load i16, ptr %i.dpv, align 2, !tbaa !56
  %i.dqm = load i16, ptr %i.dpw, align 2, !tbaa !56
  %i.dqn = load i16, ptr %i.dpx, align 2, !tbaa !56
  %i.dqo = load i16, ptr %i.dpy, align 2, !tbaa !56
  %i.dqp = load i16, ptr %i.dpz, align 2, !tbaa !56
  %i.dqq = load i16, ptr %i.dqa, align 2, !tbaa !56
  %i.dqr = load i16, ptr %i.dqb, align 2, !tbaa !56
  %i.dqs = load i16, ptr %i.dqc, align 2, !tbaa !56
  %i.dqt = load i16, ptr %i.dqd, align 2, !tbaa !56
  %i.dqu = load i16, ptr %i.dqe, align 2, !tbaa !56
  %i.dqv = load i16, ptr %i.dqf, align 2, !tbaa !56
  %i.dqw = load i16, ptr %i.dqg, align 2, !tbaa !56
  %i.dqx = load i16, ptr %i.dqh, align 2, !tbaa !56
  %i.dqy = load i16, ptr %i.dqi, align 2, !tbaa !56
  %i.dqz = load i16, ptr %i.dqj, align 2, !tbaa !56
  %i.dra = insertelement <16 x i16> poison, i16 %i.dqk, i64 0
  %i.drb = insertelement <16 x i16> %i.dra, i16 %i.dql, i64 1
  %i.drc = insertelement <16 x i16> %i.drb, i16 %i.dqm, i64 2
  %i.drd = insertelement <16 x i16> %i.drc, i16 %i.dqn, i64 3
  %i.dre = insertelement <16 x i16> %i.drd, i16 %i.dqo, i64 4
  %i.drf = insertelement <16 x i16> %i.dre, i16 %i.dqp, i64 5
  %i.drg = insertelement <16 x i16> %i.drf, i16 %i.dqq, i64 6
  %i.drh = insertelement <16 x i16> %i.drg, i16 %i.dqr, i64 7
  %i.dri = insertelement <16 x i16> %i.drh, i16 %i.dqs, i64 8
  %i.drj = insertelement <16 x i16> %i.dri, i16 %i.dqt, i64 9
  %i.drk = insertelement <16 x i16> %i.drj, i16 %i.dqu, i64 10
  %i.drl = insertelement <16 x i16> %i.drk, i16 %i.dqv, i64 11
  %i.drm = insertelement <16 x i16> %i.drl, i16 %i.dqw, i64 12
  %i.drn = insertelement <16 x i16> %i.drm, i16 %i.dqx, i64 13
  %i.dro = insertelement <16 x i16> %i.drn, i16 %i.dqy, i64 14
  %i.drp = insertelement <16 x i16> %i.dro, i16 %i.dqz, i64 15
  %i.drq = zext <16 x i16> %i.drp to <16 x i32>
  %i.drr = shl nuw <16 x i32> %i.drq, splat (i32 16)
  %i.drs = bitcast <16 x i32> %i.drr to <16 x float>
  %i.drt = fmul fast <16 x float> %strided.vec743, %i.drs
  %i.dru = fadd fast <16 x float> %i.dpt, %i.drt
  %i.drv = getelementptr inbounds nuw i8, ptr %i.djy, i64 4
  %i.drw = getelementptr inbounds nuw i8, ptr %i.dka, i64 4
  %i.drx = getelementptr inbounds nuw i8, ptr %i.dkc, i64 4
  %i.dry = getelementptr inbounds nuw i8, ptr %i.dke, i64 4
  %i.drz = getelementptr inbounds nuw i8, ptr %i.dkg, i64 4
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.dki, i64 4
  %i.dsb = getelementptr inbounds nuw i8, ptr %i.dkk, i64 4
  %i.dsc = getelementptr inbounds nuw i8, ptr %i.dkm, i64 4
  %i.dsd = getelementptr inbounds nuw i8, ptr %i.dko, i64 4
  %i.dse = getelementptr inbounds nuw i8, ptr %i.dkq, i64 4
  %i.dsf = getelementptr inbounds nuw i8, ptr %i.dks, i64 4
  %i.dsg = getelementptr inbounds nuw i8, ptr %i.dku, i64 4
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.dkw, i64 4
  %i.dsi = getelementptr inbounds nuw i8, ptr %i.dky, i64 4
  %i.dsj = getelementptr inbounds nuw i8, ptr %i.dla, i64 4
  %i.dsk = getelementptr inbounds nuw i8, ptr %i.dlc, i64 4
  %i.dsl = load i16, ptr %i.drv, align 2, !tbaa !56
  %i.dsm = load i16, ptr %i.drw, align 2, !tbaa !56
  %i.dsn = load i16, ptr %i.drx, align 2, !tbaa !56
  %i.dso = load i16, ptr %i.dry, align 2, !tbaa !56
  %i.dsp = load i16, ptr %i.drz, align 2, !tbaa !56
  %i.dsq = load i16, ptr %i.dsa, align 2, !tbaa !56
  %i.dsr = load i16, ptr %i.dsb, align 2, !tbaa !56
  %i.dss = load i16, ptr %i.dsc, align 2, !tbaa !56
  %i.dst = load i16, ptr %i.dsd, align 2, !tbaa !56
  %i.dsu = load i16, ptr %i.dse, align 2, !tbaa !56
  %i.dsv = load i16, ptr %i.dsf, align 2, !tbaa !56
  %i.dsw = load i16, ptr %i.dsg, align 2, !tbaa !56
  %i.dsx = load i16, ptr %i.dsh, align 2, !tbaa !56
  %i.dsy = load i16, ptr %i.dsi, align 2, !tbaa !56
  %i.dsz = load i16, ptr %i.dsj, align 2, !tbaa !56
  %i.dta = load i16, ptr %i.dsk, align 2, !tbaa !56
  %i.dtb = insertelement <16 x i16> poison, i16 %i.dsl, i64 0
  %i.dtc = insertelement <16 x i16> %i.dtb, i16 %i.dsm, i64 1
  %i.dtd = insertelement <16 x i16> %i.dtc, i16 %i.dsn, i64 2
  %i.dte = insertelement <16 x i16> %i.dtd, i16 %i.dso, i64 3
  %i.dtf = insertelement <16 x i16> %i.dte, i16 %i.dsp, i64 4
  %i.dtg = insertelement <16 x i16> %i.dtf, i16 %i.dsq, i64 5
  %i.dth = insertelement <16 x i16> %i.dtg, i16 %i.dsr, i64 6
  %i.dti = insertelement <16 x i16> %i.dth, i16 %i.dss, i64 7
  %i.dtj = insertelement <16 x i16> %i.dti, i16 %i.dst, i64 8
  %i.dtk = insertelement <16 x i16> %i.dtj, i16 %i.dsu, i64 9
  %i.dtl = insertelement <16 x i16> %i.dtk, i16 %i.dsv, i64 10
  %i.dtm = insertelement <16 x i16> %i.dtl, i16 %i.dsw, i64 11
  %i.dtn = insertelement <16 x i16> %i.dtm, i16 %i.dsx, i64 12
  %i.dto = insertelement <16 x i16> %i.dtn, i16 %i.dsy, i64 13
  %i.dtp = insertelement <16 x i16> %i.dto, i16 %i.dsz, i64 14
  %i.dtq = insertelement <16 x i16> %i.dtp, i16 %i.dta, i64 15
  %i.dtr = zext <16 x i16> %i.dtq to <16 x i32>
  %i.dts = shl nuw <16 x i32> %i.dtr, splat (i32 16)
  %i.dtt = bitcast <16 x i32> %i.dts to <16 x float>
  %i.dtu = fmul fast <16 x float> %strided.vec744, %i.dtt
  %i.dtv = fadd fast <16 x float> %i.dru, %i.dtu
  %i.dtw = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index737
  store <16 x float> %i.dtv, ptr %i.dtw, align 4, !tbaa !24, !alias.scope !200, !noalias !202
  %i.dtx = getelementptr inbounds i8, ptr %i.dld, i64 -2
  %i.dty = getelementptr inbounds i8, ptr %i.dle, i64 -2
  %i.dtz = getelementptr inbounds i8, ptr %i.dlf, i64 -2
  %i.dua = getelementptr inbounds i8, ptr %i.dlg, i64 -2
  %i.dub = getelementptr inbounds i8, ptr %i.dlh, i64 -2
  %i.duc = getelementptr inbounds i8, ptr %i.dli, i64 -2
  %i.dud = getelementptr inbounds i8, ptr %i.dlj, i64 -2
  %i.due = getelementptr inbounds i8, ptr %i.dlk, i64 -2
  %i.duf = getelementptr inbounds i8, ptr %i.dll, i64 -2
  %i.dug = getelementptr inbounds i8, ptr %i.dlm, i64 -2
  %i.duh = getelementptr inbounds i8, ptr %i.dln, i64 -2
  %i.dui = getelementptr inbounds i8, ptr %i.dlo, i64 -2
  %i.duj = getelementptr inbounds i8, ptr %i.dlp, i64 -2
  %i.duk = getelementptr inbounds i8, ptr %i.dlq, i64 -2
  %i.dul = getelementptr inbounds i8, ptr %i.dlr, i64 -2
  %i.dum = getelementptr inbounds i8, ptr %i.dls, i64 -2
  %i.dun = load i16, ptr %i.dtx, align 2, !tbaa !56
  %i.duo = load i16, ptr %i.dty, align 2, !tbaa !56
  %i.dup = load i16, ptr %i.dtz, align 2, !tbaa !56
  %i.duq = load i16, ptr %i.dua, align 2, !tbaa !56
  %i.dur = load i16, ptr %i.dub, align 2, !tbaa !56
  %i.dus = load i16, ptr %i.duc, align 2, !tbaa !56
  %i.dut = load i16, ptr %i.dud, align 2, !tbaa !56
  %i.duu = load i16, ptr %i.due, align 2, !tbaa !56
  %i.duv = load i16, ptr %i.duf, align 2, !tbaa !56
  %i.duw = load i16, ptr %i.dug, align 2, !tbaa !56
  %i.dux = load i16, ptr %i.duh, align 2, !tbaa !56
  %i.duy = load i16, ptr %i.dui, align 2, !tbaa !56
  %i.duz = load i16, ptr %i.duj, align 2, !tbaa !56
  %i.dva = load i16, ptr %i.duk, align 2, !tbaa !56
  %i.dvb = load i16, ptr %i.dul, align 2, !tbaa !56
  %i.dvc = load i16, ptr %i.dum, align 2, !tbaa !56
  %i.dvd = insertelement <16 x i16> poison, i16 %i.dun, i64 0
  %i.dve = insertelement <16 x i16> %i.dvd, i16 %i.duo, i64 1
  %i.dvf = insertelement <16 x i16> %i.dve, i16 %i.dup, i64 2
  %i.dvg = insertelement <16 x i16> %i.dvf, i16 %i.duq, i64 3
  %i.dvh = insertelement <16 x i16> %i.dvg, i16 %i.dur, i64 4
  %i.dvi = insertelement <16 x i16> %i.dvh, i16 %i.dus, i64 5
  %i.dvj = insertelement <16 x i16> %i.dvi, i16 %i.dut, i64 6
  %i.dvk = insertelement <16 x i16> %i.dvj, i16 %i.duu, i64 7
  %i.dvl = insertelement <16 x i16> %i.dvk, i16 %i.duv, i64 8
  %i.dvm = insertelement <16 x i16> %i.dvl, i16 %i.duw, i64 9
  %i.dvn = insertelement <16 x i16> %i.dvm, i16 %i.dux, i64 10
  %i.dvo = insertelement <16 x i16> %i.dvn, i16 %i.duy, i64 11
  %i.dvp = insertelement <16 x i16> %i.dvo, i16 %i.duz, i64 12
  %i.dvq = insertelement <16 x i16> %i.dvp, i16 %i.dva, i64 13
  %i.dvr = insertelement <16 x i16> %i.dvq, i16 %i.dvb, i64 14
  %i.dvs = insertelement <16 x i16> %i.dvr, i16 %i.dvc, i64 15
  %i.dvt = zext <16 x i16> %i.dvs to <16 x i32>
  %i.dvu = shl nuw <16 x i32> %i.dvt, splat (i32 16)
  %i.dvv = bitcast <16 x i32> %i.dvu to <16 x float>
  %i.dvw = fmul fast <16 x float> %strided.vec741, %i.dvv
  %i.dvx = load i16, ptr %i.dld, align 2, !tbaa !56
  %i.dvy = load i16, ptr %i.dle, align 2, !tbaa !56
  %i.dvz = load i16, ptr %i.dlf, align 2, !tbaa !56
  %i.dwa = load i16, ptr %i.dlg, align 2, !tbaa !56
  %i.dwb = load i16, ptr %i.dlh, align 2, !tbaa !56
  %i.dwc = load i16, ptr %i.dli, align 2, !tbaa !56
  %i.dwd = load i16, ptr %i.dlj, align 2, !tbaa !56
  %i.dwe = load i16, ptr %i.dlk, align 2, !tbaa !56
  %i.dwf = load i16, ptr %i.dll, align 2, !tbaa !56
  %i.dwg = load i16, ptr %i.dlm, align 2, !tbaa !56
  %i.dwh = load i16, ptr %i.dln, align 2, !tbaa !56
  %i.dwi = load i16, ptr %i.dlo, align 2, !tbaa !56
  %i.dwj = load i16, ptr %i.dlp, align 2, !tbaa !56
  %i.dwk = load i16, ptr %i.dlq, align 2, !tbaa !56
  %i.dwl = load i16, ptr %i.dlr, align 2, !tbaa !56
  %i.dwm = load i16, ptr %i.dls, align 2, !tbaa !56
  %i.dwn = insertelement <16 x i16> poison, i16 %i.dvx, i64 0
  %i.dwo = insertelement <16 x i16> %i.dwn, i16 %i.dvy, i64 1
  %i.dwp = insertelement <16 x i16> %i.dwo, i16 %i.dvz, i64 2
  %i.dwq = insertelement <16 x i16> %i.dwp, i16 %i.dwa, i64 3
  %i.dwr = insertelement <16 x i16> %i.dwq, i16 %i.dwb, i64 4
  %i.dws = insertelement <16 x i16> %i.dwr, i16 %i.dwc, i64 5
  %i.dwt = insertelement <16 x i16> %i.dws, i16 %i.dwd, i64 6
  %i.dwu = insertelement <16 x i16> %i.dwt, i16 %i.dwe, i64 7
  %i.dwv = insertelement <16 x i16> %i.dwu, i16 %i.dwf, i64 8
  %i.dww = insertelement <16 x i16> %i.dwv, i16 %i.dwg, i64 9
  %i.dwx = insertelement <16 x i16> %i.dww, i16 %i.dwh, i64 10
  %i.dwy = insertelement <16 x i16> %i.dwx, i16 %i.dwi, i64 11
  %i.dwz = insertelement <16 x i16> %i.dwy, i16 %i.dwj, i64 12
  %i.dxa = insertelement <16 x i16> %i.dwz, i16 %i.dwk, i64 13
  %i.dxb = insertelement <16 x i16> %i.dxa, i16 %i.dwl, i64 14
  %i.dxc = insertelement <16 x i16> %i.dxb, i16 %i.dwm, i64 15
  %i.dxd = zext <16 x i16> %i.dxc to <16 x i32>
  %i.dxe = shl nuw <16 x i32> %i.dxd, splat (i32 16)
  %i.dxf = bitcast <16 x i32> %i.dxe to <16 x float>
  %i.dxg = fmul fast <16 x float> %strided.vec742, %i.dxf
  %i.dxh = fadd fast <16 x float> %i.dvw, %i.dxg
  %i.dxi = getelementptr inbounds nuw i8, ptr %i.dld, i64 2
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.dle, i64 2
  %i.dxk = getelementptr inbounds nuw i8, ptr %i.dlf, i64 2
  %i.dxl = getelementptr inbounds nuw i8, ptr %i.dlg, i64 2
  %i.dxm = getelementptr inbounds nuw i8, ptr %i.dlh, i64 2
  %i.dxn = getelementptr inbounds nuw i8, ptr %i.dli, i64 2
  %i.dxo = getelementptr inbounds nuw i8, ptr %i.dlj, i64 2
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dlk, i64 2
  %i.dxq = getelementptr inbounds nuw i8, ptr %i.dll, i64 2
  %i.dxr = getelementptr inbounds nuw i8, ptr %i.dlm, i64 2
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dln, i64 2
  %i.dxt = getelementptr inbounds nuw i8, ptr %i.dlo, i64 2
  %i.dxu = getelementptr inbounds nuw i8, ptr %i.dlp, i64 2
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dlq, i64 2
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dlr, i64 2
  %i.dxx = getelementptr inbounds nuw i8, ptr %i.dls, i64 2
  %i.dxy = load i16, ptr %i.dxi, align 2, !tbaa !56
  %i.dxz = load i16, ptr %i.dxj, align 2, !tbaa !56
  %i.dya = load i16, ptr %i.dxk, align 2, !tbaa !56
  %i.dyb = load i16, ptr %i.dxl, align 2, !tbaa !56
  %i.dyc = load i16, ptr %i.dxm, align 2, !tbaa !56
  %i.dyd = load i16, ptr %i.dxn, align 2, !tbaa !56
  %i.dye = load i16, ptr %i.dxo, align 2, !tbaa !56
  %i.dyf = load i16, ptr %i.dxp, align 2, !tbaa !56
  %i.dyg = load i16, ptr %i.dxq, align 2, !tbaa !56
  %i.dyh = load i16, ptr %i.dxr, align 2, !tbaa !56
  %i.dyi = load i16, ptr %i.dxs, align 2, !tbaa !56
  %i.dyj = load i16, ptr %i.dxt, align 2, !tbaa !56
  %i.dyk = load i16, ptr %i.dxu, align 2, !tbaa !56
  %i.dyl = load i16, ptr %i.dxv, align 2, !tbaa !56
  %i.dym = load i16, ptr %i.dxw, align 2, !tbaa !56
  %i.dyn = load i16, ptr %i.dxx, align 2, !tbaa !56
  %i.dyo = insertelement <16 x i16> poison, i16 %i.dxy, i64 0
  %i.dyp = insertelement <16 x i16> %i.dyo, i16 %i.dxz, i64 1
  %i.dyq = insertelement <16 x i16> %i.dyp, i16 %i.dya, i64 2
  %i.dyr = insertelement <16 x i16> %i.dyq, i16 %i.dyb, i64 3
  %i.dys = insertelement <16 x i16> %i.dyr, i16 %i.dyc, i64 4
  %i.dyt = insertelement <16 x i16> %i.dys, i16 %i.dyd, i64 5
  %i.dyu = insertelement <16 x i16> %i.dyt, i16 %i.dye, i64 6
  %i.dyv = insertelement <16 x i16> %i.dyu, i16 %i.dyf, i64 7
  %i.dyw = insertelement <16 x i16> %i.dyv, i16 %i.dyg, i64 8
  %i.dyx = insertelement <16 x i16> %i.dyw, i16 %i.dyh, i64 9
  %i.dyy = insertelement <16 x i16> %i.dyx, i16 %i.dyi, i64 10
  %i.dyz = insertelement <16 x i16> %i.dyy, i16 %i.dyj, i64 11
  %i.dza = insertelement <16 x i16> %i.dyz, i16 %i.dyk, i64 12
  %i.dzb = insertelement <16 x i16> %i.dza, i16 %i.dyl, i64 13
  %i.dzc = insertelement <16 x i16> %i.dzb, i16 %i.dym, i64 14
  %i.dzd = insertelement <16 x i16> %i.dzc, i16 %i.dyn, i64 15
  %i.dze = zext <16 x i16> %i.dzd to <16 x i32>
  %i.dzf = shl nuw <16 x i32> %i.dze, splat (i32 16)
  %i.dzg = bitcast <16 x i32> %i.dzf to <16 x float>
  %i.dzh = fmul fast <16 x float> %strided.vec743, %i.dzg
  %i.dzi = fadd fast <16 x float> %i.dxh, %i.dzh
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.dld, i64 4
  %i.dzk = getelementptr inbounds nuw i8, ptr %i.dle, i64 4
  %i.dzl = getelementptr inbounds nuw i8, ptr %i.dlf, i64 4
  %i.dzm = getelementptr inbounds nuw i8, ptr %i.dlg, i64 4
  %i.dzn = getelementptr inbounds nuw i8, ptr %i.dlh, i64 4
  %i.dzo = getelementptr inbounds nuw i8, ptr %i.dli, i64 4
  %i.dzp = getelementptr inbounds nuw i8, ptr %i.dlj, i64 4
  %i.dzq = getelementptr inbounds nuw i8, ptr %i.dlk, i64 4
  %i.dzr = getelementptr inbounds nuw i8, ptr %i.dll, i64 4
  %i.dzs = getelementptr inbounds nuw i8, ptr %i.dlm, i64 4
  %i.dzt = getelementptr inbounds nuw i8, ptr %i.dln, i64 4
  %i.dzu = getelementptr inbounds nuw i8, ptr %i.dlo, i64 4
  %i.dzv = getelementptr inbounds nuw i8, ptr %i.dlp, i64 4
  %i.dzw = getelementptr inbounds nuw i8, ptr %i.dlq, i64 4
  %i.dzx = getelementptr inbounds nuw i8, ptr %i.dlr, i64 4
  %i.dzy = getelementptr inbounds nuw i8, ptr %i.dls, i64 4
  %i.dzz = load i16, ptr %i.dzj, align 2, !tbaa !56
  %i.eaa = load i16, ptr %i.dzk, align 2, !tbaa !56
  %i.eab = load i16, ptr %i.dzl, align 2, !tbaa !56
  %i.eac = load i16, ptr %i.dzm, align 2, !tbaa !56
  %i.ead = load i16, ptr %i.dzn, align 2, !tbaa !56
  %i.eae = load i16, ptr %i.dzo, align 2, !tbaa !56
  %i.eaf = load i16, ptr %i.dzp, align 2, !tbaa !56
  %i.eag = load i16, ptr %i.dzq, align 2, !tbaa !56
  %i.eah = load i16, ptr %i.dzr, align 2, !tbaa !56
  %i.eai = load i16, ptr %i.dzs, align 2, !tbaa !56
  %i.eaj = load i16, ptr %i.dzt, align 2, !tbaa !56
  %i.eak = load i16, ptr %i.dzu, align 2, !tbaa !56
  %i.eal = load i16, ptr %i.dzv, align 2, !tbaa !56
  %i.eam = load i16, ptr %i.dzw, align 2, !tbaa !56
  %i.ean = load i16, ptr %i.dzx, align 2, !tbaa !56
  %i.eao = load i16, ptr %i.dzy, align 2, !tbaa !56
  %i.eap = insertelement <16 x i16> poison, i16 %i.dzz, i64 0
  %i.eaq = insertelement <16 x i16> %i.eap, i16 %i.eaa, i64 1
  %i.ear = insertelement <16 x i16> %i.eaq, i16 %i.eab, i64 2
  %i.eas = insertelement <16 x i16> %i.ear, i16 %i.eac, i64 3
  %i.eat = insertelement <16 x i16> %i.eas, i16 %i.ead, i64 4
  %i.eau = insertelement <16 x i16> %i.eat, i16 %i.eae, i64 5
  %i.eav = insertelement <16 x i16> %i.eau, i16 %i.eaf, i64 6
  %i.eaw = insertelement <16 x i16> %i.eav, i16 %i.eag, i64 7
  %i.eax = insertelement <16 x i16> %i.eaw, i16 %i.eah, i64 8
  %i.eay = insertelement <16 x i16> %i.eax, i16 %i.eai, i64 9
  %i.eaz = insertelement <16 x i16> %i.eay, i16 %i.eaj, i64 10
  %i.eba = insertelement <16 x i16> %i.eaz, i16 %i.eak, i64 11
  %i.ebb = insertelement <16 x i16> %i.eba, i16 %i.eal, i64 12
  %i.ebc = insertelement <16 x i16> %i.ebb, i16 %i.eam, i64 13
  %i.ebd = insertelement <16 x i16> %i.ebc, i16 %i.ean, i64 14
  %i.ebe = insertelement <16 x i16> %i.ebd, i16 %i.eao, i64 15
  %i.ebf = zext <16 x i16> %i.ebe to <16 x i32>
  %i.ebg = shl nuw <16 x i32> %i.ebf, splat (i32 16)
  %i.ebh = bitcast <16 x i32> %i.ebg to <16 x float>
  %i.ebi = fmul fast <16 x float> %strided.vec744, %i.ebh
  %i.ebj = fadd fast <16 x float> %i.dzi, %i.ebi
  %i.ebk = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index737
  store <16 x float> %i.ebj, ptr %i.ebk, align 4, !tbaa !24, !alias.scope !205, !noalias !206
  %i.ebl = getelementptr inbounds i8, ptr %i.dlt, i64 -2
  %i.ebm = getelementptr inbounds i8, ptr %i.dlu, i64 -2
  %i.ebn = getelementptr inbounds i8, ptr %i.dlv, i64 -2
  %i.ebo = getelementptr inbounds i8, ptr %i.dlw, i64 -2
  %i.ebp = getelementptr inbounds i8, ptr %i.dlx, i64 -2
  %i.ebq = getelementptr inbounds i8, ptr %i.dly, i64 -2
  %i.ebr = getelementptr inbounds i8, ptr %i.dlz, i64 -2
  %i.ebs = getelementptr inbounds i8, ptr %i.dma, i64 -2
  %i.ebt = getelementptr inbounds i8, ptr %i.dmb, i64 -2
  %i.ebu = getelementptr inbounds i8, ptr %i.dmc, i64 -2
  %i.ebv = getelementptr inbounds i8, ptr %i.dmd, i64 -2
  %i.ebw = getelementptr inbounds i8, ptr %i.dme, i64 -2
  %i.ebx = getelementptr inbounds i8, ptr %i.dmf, i64 -2
  %i.eby = getelementptr inbounds i8, ptr %i.dmg, i64 -2
  %i.ebz = getelementptr inbounds i8, ptr %i.dmh, i64 -2
  %i.eca = getelementptr inbounds i8, ptr %i.dmi, i64 -2
  %i.ecb = load i16, ptr %i.ebl, align 2, !tbaa !56
  %i.ecc = load i16, ptr %i.ebm, align 2, !tbaa !56
  %i.ecd = load i16, ptr %i.ebn, align 2, !tbaa !56
  %i.ece = load i16, ptr %i.ebo, align 2, !tbaa !56
  %i.ecf = load i16, ptr %i.ebp, align 2, !tbaa !56
  %i.ecg = load i16, ptr %i.ebq, align 2, !tbaa !56
  %i.ech = load i16, ptr %i.ebr, align 2, !tbaa !56
  %i.eci = load i16, ptr %i.ebs, align 2, !tbaa !56
  %i.ecj = load i16, ptr %i.ebt, align 2, !tbaa !56
  %i.eck = load i16, ptr %i.ebu, align 2, !tbaa !56
  %i.ecl = load i16, ptr %i.ebv, align 2, !tbaa !56
  %i.ecm = load i16, ptr %i.ebw, align 2, !tbaa !56
  %i.ecn = load i16, ptr %i.ebx, align 2, !tbaa !56
  %i.eco = load i16, ptr %i.eby, align 2, !tbaa !56
  %i.ecp = load i16, ptr %i.ebz, align 2, !tbaa !56
  %i.ecq = load i16, ptr %i.eca, align 2, !tbaa !56
  %i.ecr = insertelement <16 x i16> poison, i16 %i.ecb, i64 0
  %i.ecs = insertelement <16 x i16> %i.ecr, i16 %i.ecc, i64 1
  %i.ect = insertelement <16 x i16> %i.ecs, i16 %i.ecd, i64 2
  %i.ecu = insertelement <16 x i16> %i.ect, i16 %i.ece, i64 3
  %i.ecv = insertelement <16 x i16> %i.ecu, i16 %i.ecf, i64 4
  %i.ecw = insertelement <16 x i16> %i.ecv, i16 %i.ecg, i64 5
  %i.ecx = insertelement <16 x i16> %i.ecw, i16 %i.ech, i64 6
  %i.ecy = insertelement <16 x i16> %i.ecx, i16 %i.eci, i64 7
  %i.ecz = insertelement <16 x i16> %i.ecy, i16 %i.ecj, i64 8
  %i.eda = insertelement <16 x i16> %i.ecz, i16 %i.eck, i64 9
  %i.edb = insertelement <16 x i16> %i.eda, i16 %i.ecl, i64 10
  %i.edc = insertelement <16 x i16> %i.edb, i16 %i.ecm, i64 11
  %i.edd = insertelement <16 x i16> %i.edc, i16 %i.ecn, i64 12
  %i.ede = insertelement <16 x i16> %i.edd, i16 %i.eco, i64 13
  %i.edf = insertelement <16 x i16> %i.ede, i16 %i.ecp, i64 14
  %i.edg = insertelement <16 x i16> %i.edf, i16 %i.ecq, i64 15
  %i.edh = zext <16 x i16> %i.edg to <16 x i32>
  %i.edi = shl nuw <16 x i32> %i.edh, splat (i32 16)
  %i.edj = bitcast <16 x i32> %i.edi to <16 x float>
  %i.edk = fmul fast <16 x float> %strided.vec741, %i.edj
  %i.edl = load i16, ptr %i.dlt, align 2, !tbaa !56
  %i.edm = load i16, ptr %i.dlu, align 2, !tbaa !56
  %i.edn = load i16, ptr %i.dlv, align 2, !tbaa !56
  %i.edo = load i16, ptr %i.dlw, align 2, !tbaa !56
  %i.edp = load i16, ptr %i.dlx, align 2, !tbaa !56
  %i.edq = load i16, ptr %i.dly, align 2, !tbaa !56
  %i.edr = load i16, ptr %i.dlz, align 2, !tbaa !56
  %i.eds = load i16, ptr %i.dma, align 2, !tbaa !56
  %i.edt = load i16, ptr %i.dmb, align 2, !tbaa !56
  %i.edu = load i16, ptr %i.dmc, align 2, !tbaa !56
  %i.edv = load i16, ptr %i.dmd, align 2, !tbaa !56
  %i.edw = load i16, ptr %i.dme, align 2, !tbaa !56
  %i.edx = load i16, ptr %i.dmf, align 2, !tbaa !56
  %i.edy = load i16, ptr %i.dmg, align 2, !tbaa !56
  %i.edz = load i16, ptr %i.dmh, align 2, !tbaa !56
  %i.eea = load i16, ptr %i.dmi, align 2, !tbaa !56
  %i.eeb = insertelement <16 x i16> poison, i16 %i.edl, i64 0
  %i.eec = insertelement <16 x i16> %i.eeb, i16 %i.edm, i64 1
  %i.eed = insertelement <16 x i16> %i.eec, i16 %i.edn, i64 2
  %i.eee = insertelement <16 x i16> %i.eed, i16 %i.edo, i64 3
  %i.eef = insertelement <16 x i16> %i.eee, i16 %i.edp, i64 4
  %i.eeg = insertelement <16 x i16> %i.eef, i16 %i.edq, i64 5
  %i.eeh = insertelement <16 x i16> %i.eeg, i16 %i.edr, i64 6
  %i.eei = insertelement <16 x i16> %i.eeh, i16 %i.eds, i64 7
  %i.eej = insertelement <16 x i16> %i.eei, i16 %i.edt, i64 8
  %i.eek = insertelement <16 x i16> %i.eej, i16 %i.edu, i64 9
  %i.eel = insertelement <16 x i16> %i.eek, i16 %i.edv, i64 10
  %i.eem = insertelement <16 x i16> %i.eel, i16 %i.edw, i64 11
  %i.een = insertelement <16 x i16> %i.eem, i16 %i.edx, i64 12
  %i.eeo = insertelement <16 x i16> %i.een, i16 %i.edy, i64 13
  %i.eep = insertelement <16 x i16> %i.eeo, i16 %i.edz, i64 14
  %i.eeq = insertelement <16 x i16> %i.eep, i16 %i.eea, i64 15
  %i.eer = zext <16 x i16> %i.eeq to <16 x i32>
  %i.ees = shl nuw <16 x i32> %i.eer, splat (i32 16)
  %i.eet = bitcast <16 x i32> %i.ees to <16 x float>
  %i.eeu = fmul fast <16 x float> %strided.vec742, %i.eet
  %i.eev = fadd fast <16 x float> %i.edk, %i.eeu
  %i.eew = getelementptr inbounds nuw i8, ptr %i.dlt, i64 2
  %i.eex = getelementptr inbounds nuw i8, ptr %i.dlu, i64 2
  %i.eey = getelementptr inbounds nuw i8, ptr %i.dlv, i64 2
  %i.eez = getelementptr inbounds nuw i8, ptr %i.dlw, i64 2
  %i.efa = getelementptr inbounds nuw i8, ptr %i.dlx, i64 2
  %i.efb = getelementptr inbounds nuw i8, ptr %i.dly, i64 2
  %i.efc = getelementptr inbounds nuw i8, ptr %i.dlz, i64 2
  %i.efd = getelementptr inbounds nuw i8, ptr %i.dma, i64 2
  %i.efe = getelementptr inbounds nuw i8, ptr %i.dmb, i64 2
  %i.eff = getelementptr inbounds nuw i8, ptr %i.dmc, i64 2
  %i.efg = getelementptr inbounds nuw i8, ptr %i.dmd, i64 2
  %i.efh = getelementptr inbounds nuw i8, ptr %i.dme, i64 2
  %i.efi = getelementptr inbounds nuw i8, ptr %i.dmf, i64 2
  %i.efj = getelementptr inbounds nuw i8, ptr %i.dmg, i64 2
  %i.efk = getelementptr inbounds nuw i8, ptr %i.dmh, i64 2
  %i.efl = getelementptr inbounds nuw i8, ptr %i.dmi, i64 2
  %i.efm = load i16, ptr %i.eew, align 2, !tbaa !56
  %i.efn = load i16, ptr %i.eex, align 2, !tbaa !56
  %i.efo = load i16, ptr %i.eey, align 2, !tbaa !56
  %i.efp = load i16, ptr %i.eez, align 2, !tbaa !56
  %i.efq = load i16, ptr %i.efa, align 2, !tbaa !56
  %i.efr = load i16, ptr %i.efb, align 2, !tbaa !56
  %i.efs = load i16, ptr %i.efc, align 2, !tbaa !56
  %i.eft = load i16, ptr %i.efd, align 2, !tbaa !56
  %i.efu = load i16, ptr %i.efe, align 2, !tbaa !56
  %i.efv = load i16, ptr %i.eff, align 2, !tbaa !56
  %i.efw = load i16, ptr %i.efg, align 2, !tbaa !56
  %i.efx = load i16, ptr %i.efh, align 2, !tbaa !56
  %i.efy = load i16, ptr %i.efi, align 2, !tbaa !56
  %i.efz = load i16, ptr %i.efj, align 2, !tbaa !56
  %i.ega = load i16, ptr %i.efk, align 2, !tbaa !56
  %i.egb = load i16, ptr %i.efl, align 2, !tbaa !56
  %i.egc = insertelement <16 x i16> poison, i16 %i.efm, i64 0
  %i.egd = insertelement <16 x i16> %i.egc, i16 %i.efn, i64 1
  %i.ege = insertelement <16 x i16> %i.egd, i16 %i.efo, i64 2
  %i.egf = insertelement <16 x i16> %i.ege, i16 %i.efp, i64 3
  %i.egg = insertelement <16 x i16> %i.egf, i16 %i.efq, i64 4
  %i.egh = insertelement <16 x i16> %i.egg, i16 %i.efr, i64 5
  %i.egi = insertelement <16 x i16> %i.egh, i16 %i.efs, i64 6
  %i.egj = insertelement <16 x i16> %i.egi, i16 %i.eft, i64 7
  %i.egk = insertelement <16 x i16> %i.egj, i16 %i.efu, i64 8
  %i.egl = insertelement <16 x i16> %i.egk, i16 %i.efv, i64 9
  %i.egm = insertelement <16 x i16> %i.egl, i16 %i.efw, i64 10
  %i.egn = insertelement <16 x i16> %i.egm, i16 %i.efx, i64 11
  %i.ego = insertelement <16 x i16> %i.egn, i16 %i.efy, i64 12
  %i.egp = insertelement <16 x i16> %i.ego, i16 %i.efz, i64 13
  %i.egq = insertelement <16 x i16> %i.egp, i16 %i.ega, i64 14
  %i.egr = insertelement <16 x i16> %i.egq, i16 %i.egb, i64 15
  %i.egs = zext <16 x i16> %i.egr to <16 x i32>
  %i.egt = shl nuw <16 x i32> %i.egs, splat (i32 16)
  %i.egu = bitcast <16 x i32> %i.egt to <16 x float>
  %i.egv = fmul fast <16 x float> %strided.vec743, %i.egu
  %i.egw = fadd fast <16 x float> %i.eev, %i.egv
  %i.egx = getelementptr inbounds nuw i8, ptr %i.dlt, i64 4
  %i.egy = getelementptr inbounds nuw i8, ptr %i.dlu, i64 4
  %i.egz = getelementptr inbounds nuw i8, ptr %i.dlv, i64 4
  %i.eha = getelementptr inbounds nuw i8, ptr %i.dlw, i64 4
  %i.ehb = getelementptr inbounds nuw i8, ptr %i.dlx, i64 4
  %i.ehc = getelementptr inbounds nuw i8, ptr %i.dly, i64 4
  %i.ehd = getelementptr inbounds nuw i8, ptr %i.dlz, i64 4
  %i.ehe = getelementptr inbounds nuw i8, ptr %i.dma, i64 4
  %i.ehf = getelementptr inbounds nuw i8, ptr %i.dmb, i64 4
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.dmc, i64 4
  %i.ehh = getelementptr inbounds nuw i8, ptr %i.dmd, i64 4
  %i.ehi = getelementptr inbounds nuw i8, ptr %i.dme, i64 4
  %i.ehj = getelementptr inbounds nuw i8, ptr %i.dmf, i64 4
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.dmg, i64 4
  %i.ehl = getelementptr inbounds nuw i8, ptr %i.dmh, i64 4
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.dmi, i64 4
  %i.ehn = load i16, ptr %i.egx, align 2, !tbaa !56
  %i.eho = load i16, ptr %i.egy, align 2, !tbaa !56
  %i.ehp = load i16, ptr %i.egz, align 2, !tbaa !56
  %i.ehq = load i16, ptr %i.eha, align 2, !tbaa !56
  %i.ehr = load i16, ptr %i.ehb, align 2, !tbaa !56
  %i.ehs = load i16, ptr %i.ehc, align 2, !tbaa !56
  %i.eht = load i16, ptr %i.ehd, align 2, !tbaa !56
  %i.ehu = load i16, ptr %i.ehe, align 2, !tbaa !56
  %i.ehv = load i16, ptr %i.ehf, align 2, !tbaa !56
  %i.ehw = load i16, ptr %i.ehg, align 2, !tbaa !56
  %i.ehx = load i16, ptr %i.ehh, align 2, !tbaa !56
  %i.ehy = load i16, ptr %i.ehi, align 2, !tbaa !56
  %i.ehz = load i16, ptr %i.ehj, align 2, !tbaa !56
  %i.eia = load i16, ptr %i.ehk, align 2, !tbaa !56
  %i.eib = load i16, ptr %i.ehl, align 2, !tbaa !56
  %i.eic = load i16, ptr %i.ehm, align 2, !tbaa !56
  %i.eid = insertelement <16 x i16> poison, i16 %i.ehn, i64 0
  %i.eie = insertelement <16 x i16> %i.eid, i16 %i.eho, i64 1
  %i.eif = insertelement <16 x i16> %i.eie, i16 %i.ehp, i64 2
  %i.eig = insertelement <16 x i16> %i.eif, i16 %i.ehq, i64 3
  %i.eih = insertelement <16 x i16> %i.eig, i16 %i.ehr, i64 4
  %i.eii = insertelement <16 x i16> %i.eih, i16 %i.ehs, i64 5
  %i.eij = insertelement <16 x i16> %i.eii, i16 %i.eht, i64 6
  %i.eik = insertelement <16 x i16> %i.eij, i16 %i.ehu, i64 7
  %i.eil = insertelement <16 x i16> %i.eik, i16 %i.ehv, i64 8
  %i.eim = insertelement <16 x i16> %i.eil, i16 %i.ehw, i64 9
  %i.ein = insertelement <16 x i16> %i.eim, i16 %i.ehx, i64 10
  %i.eio = insertelement <16 x i16> %i.ein, i16 %i.ehy, i64 11
  %i.eip = insertelement <16 x i16> %i.eio, i16 %i.ehz, i64 12
  %i.eiq = insertelement <16 x i16> %i.eip, i16 %i.eia, i64 13
  %i.eir = insertelement <16 x i16> %i.eiq, i16 %i.eib, i64 14
  %i.eis = insertelement <16 x i16> %i.eir, i16 %i.eic, i64 15
  %i.eit = zext <16 x i16> %i.eis to <16 x i32>
  %i.eiu = shl nuw <16 x i32> %i.eit, splat (i32 16)
  %i.eiv = bitcast <16 x i32> %i.eiu to <16 x float>
  %i.eiw = fmul fast <16 x float> %strided.vec744, %i.eiv
  %i.eix = fadd fast <16 x float> %i.egw, %i.eiw
  %i.eiy = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %index737
  store <16 x float> %i.eix, ptr %i.eiy, align 4, !tbaa !24, !alias.scope !207, !noalias !197
  %index.next745 = add nuw i64 %index737, 16      ; 2 uses
  %i.eiz = icmp eq i64 %index.next745, %n.vec735
  br i1 %i.eiz, label %middle.block746, label %vector.body736, !llvm.loop !208

middle.block746:                                  ; preds = %vector.body736
  br i1 %cmp.n747, label %.loopexit.i142, label %vec.epilog.iter.check751

vec.epilog.iter.check751:                         ; preds = %middle.block746
  br i1 %min.epilog.iters.check752, label %.lr.ph333.i.preheader, label %vec.epilog.ph753, !prof !46

vec.epilog.ph753:                                 ; preds = %vector.main.loop.iter.check732, %vec.epilog.iter.check751
  %vec.epilog.resume.val748 = phi i64 [ %n.vec735, %vec.epilog.iter.check751 ], [ 0, %vector.main.loop.iter.check732 ]
  br label %vec.epilog.vector.body755

vec.epilog.vector.body755:                        ; preds = %vec.epilog.vector.body755, %vec.epilog.ph753
  %index756 = phi i64 [ %vec.epilog.resume.val748, %vec.epilog.ph753 ], [ %index.next764, %vec.epilog.vector.body755 ] ; 6 uses
  %i.eja = shl i64 %index756, 4
  %next.gep757 = getelementptr i8, ptr %i.bul, i64 %i.eja
  %i.ejb = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %index756
  %wide.load758 = load <4 x i32>, ptr %i.ejb, align 4, !tbaa !18
  %i.ejc = sext <4 x i32> %wide.load758 to <4 x i64> ; 4 uses
  %i.ejd = extractelement <4 x i64> %i.ejc, i64 0 ; 3 uses
  %i.eje = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.ejd ; 4 uses
  %i.ejf = extractelement <4 x i64> %i.ejc, i64 1 ; 3 uses
  %i.ejg = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.ejf ; 4 uses
  %i.ejh = extractelement <4 x i64> %i.ejc, i64 2 ; 3 uses
  %i.eji = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.ejh ; 4 uses
  %i.ejj = extractelement <4 x i64> %i.ejc, i64 3 ; 3 uses
  %i.ejk = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.ejj ; 4 uses
  %i.ejl = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.ejd ; 4 uses
  %i.ejm = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.ejf ; 4 uses
  %i.ejn = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.ejh ; 4 uses
  %i.ejo = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.ejj ; 4 uses
  %i.ejp = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.ejd ; 4 uses
  %i.ejq = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.ejf ; 4 uses
  %i.ejr = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.ejh ; 4 uses
  %i.ejs = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.ejj ; 4 uses
  %wide.vec759 = load <16 x float>, ptr %next.gep757, align 4, !tbaa !24, !alias.scope !197 ; 4 uses
  %strided.vec760 = shufflevector <16 x float> %wide.vec759, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 3 uses
  %strided.vec761 = shufflevector <16 x float> %wide.vec759, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 3 uses
  %strided.vec762 = shufflevector <16 x float> %wide.vec759, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 3 uses
  %strided.vec763 = shufflevector <16 x float> %wide.vec759, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 3 uses
  %i.ejt = getelementptr inbounds i8, ptr %i.eje, i64 -2
  %i.eju = getelementptr inbounds i8, ptr %i.ejg, i64 -2
  %i.ejv = getelementptr inbounds i8, ptr %i.eji, i64 -2
  %i.ejw = getelementptr inbounds i8, ptr %i.ejk, i64 -2
  %i.ejx = load i16, ptr %i.ejt, align 2, !tbaa !56
  %i.ejy = load i16, ptr %i.eju, align 2, !tbaa !56
  %i.ejz = load i16, ptr %i.ejv, align 2, !tbaa !56
  %i.eka = load i16, ptr %i.ejw, align 2, !tbaa !56
  %i.ekb = insertelement <4 x i16> poison, i16 %i.ejx, i64 0
  %i.ekc = insertelement <4 x i16> %i.ekb, i16 %i.ejy, i64 1
  %i.ekd = insertelement <4 x i16> %i.ekc, i16 %i.ejz, i64 2
  %i.eke = insertelement <4 x i16> %i.ekd, i16 %i.eka, i64 3
  %i.ekf = zext <4 x i16> %i.eke to <4 x i32>
  %i.ekg = shl nuw <4 x i32> %i.ekf, splat (i32 16)
  %i.ekh = bitcast <4 x i32> %i.ekg to <4 x float>
  %i.eki = fmul fast <4 x float> %strided.vec760, %i.ekh
  %i.ekj = load i16, ptr %i.eje, align 2, !tbaa !56
  %i.ekk = load i16, ptr %i.ejg, align 2, !tbaa !56
  %i.ekl = load i16, ptr %i.eji, align 2, !tbaa !56
  %i.ekm = load i16, ptr %i.ejk, align 2, !tbaa !56
  %i.ekn = insertelement <4 x i16> poison, i16 %i.ekj, i64 0
  %i.eko = insertelement <4 x i16> %i.ekn, i16 %i.ekk, i64 1
  %i.ekp = insertelement <4 x i16> %i.eko, i16 %i.ekl, i64 2
  %i.ekq = insertelement <4 x i16> %i.ekp, i16 %i.ekm, i64 3
  %i.ekr = zext <4 x i16> %i.ekq to <4 x i32>
  %i.eks = shl nuw <4 x i32> %i.ekr, splat (i32 16)
  %i.ekt = bitcast <4 x i32> %i.eks to <4 x float>
  %i.eku = fmul fast <4 x float> %strided.vec761, %i.ekt
  %i.ekv = fadd fast <4 x float> %i.eki, %i.eku
  %i.ekw = getelementptr inbounds nuw i8, ptr %i.eje, i64 2
  %i.ekx = getelementptr inbounds nuw i8, ptr %i.ejg, i64 2
  %i.eky = getelementptr inbounds nuw i8, ptr %i.eji, i64 2
  %i.ekz = getelementptr inbounds nuw i8, ptr %i.ejk, i64 2
  %i.ela = load i16, ptr %i.ekw, align 2, !tbaa !56
  %i.elb = load i16, ptr %i.ekx, align 2, !tbaa !56
  %i.elc = load i16, ptr %i.eky, align 2, !tbaa !56
  %i.eld = load i16, ptr %i.ekz, align 2, !tbaa !56
  %i.ele = insertelement <4 x i16> poison, i16 %i.ela, i64 0
  %i.elf = insertelement <4 x i16> %i.ele, i16 %i.elb, i64 1
  %i.elg = insertelement <4 x i16> %i.elf, i16 %i.elc, i64 2
  %i.elh = insertelement <4 x i16> %i.elg, i16 %i.eld, i64 3
  %i.eli = zext <4 x i16> %i.elh to <4 x i32>
  %i.elj = shl nuw <4 x i32> %i.eli, splat (i32 16)
  %i.elk = bitcast <4 x i32> %i.elj to <4 x float>
  %i.ell = fmul fast <4 x float> %strided.vec762, %i.elk
  %i.elm = fadd fast <4 x float> %i.ekv, %i.ell
  %i.eln = getelementptr inbounds nuw i8, ptr %i.eje, i64 4
  %i.elo = getelementptr inbounds nuw i8, ptr %i.ejg, i64 4
  %i.elp = getelementptr inbounds nuw i8, ptr %i.eji, i64 4
  %i.elq = getelementptr inbounds nuw i8, ptr %i.ejk, i64 4
  %i.elr = load i16, ptr %i.eln, align 2, !tbaa !56
  %i.els = load i16, ptr %i.elo, align 2, !tbaa !56
  %i.elt = load i16, ptr %i.elp, align 2, !tbaa !56
  %i.elu = load i16, ptr %i.elq, align 2, !tbaa !56
  %i.elv = insertelement <4 x i16> poison, i16 %i.elr, i64 0
  %i.elw = insertelement <4 x i16> %i.elv, i16 %i.els, i64 1
  %i.elx = insertelement <4 x i16> %i.elw, i16 %i.elt, i64 2
  %i.ely = insertelement <4 x i16> %i.elx, i16 %i.elu, i64 3
  %i.elz = zext <4 x i16> %i.ely to <4 x i32>
  %i.ema = shl nuw <4 x i32> %i.elz, splat (i32 16)
  %i.emb = bitcast <4 x i32> %i.ema to <4 x float>
  %i.emc = fmul fast <4 x float> %strided.vec763, %i.emb
  %i.emd = fadd fast <4 x float> %i.elm, %i.emc
  %i.eme = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index756
  store <4 x float> %i.emd, ptr %i.eme, align 4, !tbaa !24, !alias.scope !200, !noalias !202
  %i.emf = getelementptr inbounds i8, ptr %i.ejl, i64 -2
  %i.emg = getelementptr inbounds i8, ptr %i.ejm, i64 -2
  %i.emh = getelementptr inbounds i8, ptr %i.ejn, i64 -2
  %i.emi = getelementptr inbounds i8, ptr %i.ejo, i64 -2
  %i.emj = load i16, ptr %i.emf, align 2, !tbaa !56
  %i.emk = load i16, ptr %i.emg, align 2, !tbaa !56
  %i.eml = load i16, ptr %i.emh, align 2, !tbaa !56
  %i.emm = load i16, ptr %i.emi, align 2, !tbaa !56
  %i.emn = insertelement <4 x i16> poison, i16 %i.emj, i64 0
  %i.emo = insertelement <4 x i16> %i.emn, i16 %i.emk, i64 1
  %i.emp = insertelement <4 x i16> %i.emo, i16 %i.eml, i64 2
  %i.emq = insertelement <4 x i16> %i.emp, i16 %i.emm, i64 3
  %i.emr = zext <4 x i16> %i.emq to <4 x i32>
  %i.ems = shl nuw <4 x i32> %i.emr, splat (i32 16)
  %i.emt = bitcast <4 x i32> %i.ems to <4 x float>
  %i.emu = fmul fast <4 x float> %strided.vec760, %i.emt
  %i.emv = load i16, ptr %i.ejl, align 2, !tbaa !56
  %i.emw = load i16, ptr %i.ejm, align 2, !tbaa !56
  %i.emx = load i16, ptr %i.ejn, align 2, !tbaa !56
  %i.emy = load i16, ptr %i.ejo, align 2, !tbaa !56
  %i.emz = insertelement <4 x i16> poison, i16 %i.emv, i64 0
  %i.ena = insertelement <4 x i16> %i.emz, i16 %i.emw, i64 1
  %i.enb = insertelement <4 x i16> %i.ena, i16 %i.emx, i64 2
  %i.enc = insertelement <4 x i16> %i.enb, i16 %i.emy, i64 3
  %i.end = zext <4 x i16> %i.enc to <4 x i32>
  %i.ene = shl nuw <4 x i32> %i.end, splat (i32 16)
  %i.enf = bitcast <4 x i32> %i.ene to <4 x float>
  %i.eng = fmul fast <4 x float> %strided.vec761, %i.enf
  %i.enh = fadd fast <4 x float> %i.emu, %i.eng
  %i.eni = getelementptr inbounds nuw i8, ptr %i.ejl, i64 2
  %i.enj = getelementptr inbounds nuw i8, ptr %i.ejm, i64 2
  %i.enk = getelementptr inbounds nuw i8, ptr %i.ejn, i64 2
  %i.enl = getelementptr inbounds nuw i8, ptr %i.ejo, i64 2
  %i.enm = load i16, ptr %i.eni, align 2, !tbaa !56
  %i.enn = load i16, ptr %i.enj, align 2, !tbaa !56
  %i.eno = load i16, ptr %i.enk, align 2, !tbaa !56
  %i.enp = load i16, ptr %i.enl, align 2, !tbaa !56
  %i.enq = insertelement <4 x i16> poison, i16 %i.enm, i64 0
  %i.enr = insertelement <4 x i16> %i.enq, i16 %i.enn, i64 1
  %i.ens = insertelement <4 x i16> %i.enr, i16 %i.eno, i64 2
  %i.ent = insertelement <4 x i16> %i.ens, i16 %i.enp, i64 3
  %i.enu = zext <4 x i16> %i.ent to <4 x i32>
  %i.env = shl nuw <4 x i32> %i.enu, splat (i32 16)
  %i.enw = bitcast <4 x i32> %i.env to <4 x float>
  %i.enx = fmul fast <4 x float> %strided.vec762, %i.enw
  %i.eny = fadd fast <4 x float> %i.enh, %i.enx
  %i.enz = getelementptr inbounds nuw i8, ptr %i.ejl, i64 4
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.ejm, i64 4
  %i.eob = getelementptr inbounds nuw i8, ptr %i.ejn, i64 4
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.ejo, i64 4
  %i.eod = load i16, ptr %i.enz, align 2, !tbaa !56
  %i.eoe = load i16, ptr %i.eoa, align 2, !tbaa !56
  %i.eof = load i16, ptr %i.eob, align 2, !tbaa !56
  %i.eog = load i16, ptr %i.eoc, align 2, !tbaa !56
  %i.eoh = insertelement <4 x i16> poison, i16 %i.eod, i64 0
  %i.eoi = insertelement <4 x i16> %i.eoh, i16 %i.eoe, i64 1
  %i.eoj = insertelement <4 x i16> %i.eoi, i16 %i.eof, i64 2
  %i.eok = insertelement <4 x i16> %i.eoj, i16 %i.eog, i64 3
  %i.eol = zext <4 x i16> %i.eok to <4 x i32>
  %i.eom = shl nuw <4 x i32> %i.eol, splat (i32 16)
  %i.eon = bitcast <4 x i32> %i.eom to <4 x float>
  %i.eoo = fmul fast <4 x float> %strided.vec763, %i.eon
  %i.eop = fadd fast <4 x float> %i.eny, %i.eoo
  %i.eoq = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index756
  store <4 x float> %i.eop, ptr %i.eoq, align 4, !tbaa !24, !alias.scope !205, !noalias !206
  %i.eor = getelementptr inbounds i8, ptr %i.ejp, i64 -2
  %i.eos = getelementptr inbounds i8, ptr %i.ejq, i64 -2
  %i.eot = getelementptr inbounds i8, ptr %i.ejr, i64 -2
  %i.eou = getelementptr inbounds i8, ptr %i.ejs, i64 -2
  %i.eov = load i16, ptr %i.eor, align 2, !tbaa !56
  %i.eow = load i16, ptr %i.eos, align 2, !tbaa !56
  %i.eox = load i16, ptr %i.eot, align 2, !tbaa !56
  %i.eoy = load i16, ptr %i.eou, align 2, !tbaa !56
  %i.eoz = insertelement <4 x i16> poison, i16 %i.eov, i64 0
  %i.epa = insertelement <4 x i16> %i.eoz, i16 %i.eow, i64 1
  %i.epb = insertelement <4 x i16> %i.epa, i16 %i.eox, i64 2
  %i.epc = insertelement <4 x i16> %i.epb, i16 %i.eoy, i64 3
  %i.epd = zext <4 x i16> %i.epc to <4 x i32>
  %i.epe = shl nuw <4 x i32> %i.epd, splat (i32 16)
  %i.epf = bitcast <4 x i32> %i.epe to <4 x float>
  %i.epg = fmul fast <4 x float> %strided.vec760, %i.epf
  %i.eph = load i16, ptr %i.ejp, align 2, !tbaa !56
  %i.epi = load i16, ptr %i.ejq, align 2, !tbaa !56
  %i.epj = load i16, ptr %i.ejr, align 2, !tbaa !56
  %i.epk = load i16, ptr %i.ejs, align 2, !tbaa !56
  %i.epl = insertelement <4 x i16> poison, i16 %i.eph, i64 0
  %i.epm = insertelement <4 x i16> %i.epl, i16 %i.epi, i64 1
  %i.epn = insertelement <4 x i16> %i.epm, i16 %i.epj, i64 2
  %i.epo = insertelement <4 x i16> %i.epn, i16 %i.epk, i64 3
  %i.epp = zext <4 x i16> %i.epo to <4 x i32>
  %i.epq = shl nuw <4 x i32> %i.epp, splat (i32 16)
  %i.epr = bitcast <4 x i32> %i.epq to <4 x float>
  %i.eps = fmul fast <4 x float> %strided.vec761, %i.epr
  %i.ept = fadd fast <4 x float> %i.epg, %i.eps
  %i.epu = getelementptr inbounds nuw i8, ptr %i.ejp, i64 2
  %i.epv = getelementptr inbounds nuw i8, ptr %i.ejq, i64 2
  %i.epw = getelementptr inbounds nuw i8, ptr %i.ejr, i64 2
  %i.epx = getelementptr inbounds nuw i8, ptr %i.ejs, i64 2
  %i.epy = load i16, ptr %i.epu, align 2, !tbaa !56
  %i.epz = load i16, ptr %i.epv, align 2, !tbaa !56
  %i.eqa = load i16, ptr %i.epw, align 2, !tbaa !56
  %i.eqb = load i16, ptr %i.epx, align 2, !tbaa !56
  %i.eqc = insertelement <4 x i16> poison, i16 %i.epy, i64 0
  %i.eqd = insertelement <4 x i16> %i.eqc, i16 %i.epz, i64 1
  %i.eqe = insertelement <4 x i16> %i.eqd, i16 %i.eqa, i64 2
  %i.eqf = insertelement <4 x i16> %i.eqe, i16 %i.eqb, i64 3
  %i.eqg = zext <4 x i16> %i.eqf to <4 x i32>
  %i.eqh = shl nuw <4 x i32> %i.eqg, splat (i32 16)
  %i.eqi = bitcast <4 x i32> %i.eqh to <4 x float>
  %i.eqj = fmul fast <4 x float> %strided.vec762, %i.eqi
  %i.eqk = fadd fast <4 x float> %i.ept, %i.eqj
  %i.eql = getelementptr inbounds nuw i8, ptr %i.ejp, i64 4
  %i.eqm = getelementptr inbounds nuw i8, ptr %i.ejq, i64 4
  %i.eqn = getelementptr inbounds nuw i8, ptr %i.ejr, i64 4
  %i.eqo = getelementptr inbounds nuw i8, ptr %i.ejs, i64 4
  %i.eqp = load i16, ptr %i.eql, align 2, !tbaa !56
  %i.eqq = load i16, ptr %i.eqm, align 2, !tbaa !56
  %i.eqr = load i16, ptr %i.eqn, align 2, !tbaa !56
  %i.eqs = load i16, ptr %i.eqo, align 2, !tbaa !56
  %i.eqt = insertelement <4 x i16> poison, i16 %i.eqp, i64 0
  %i.equ = insertelement <4 x i16> %i.eqt, i16 %i.eqq, i64 1
  %i.eqv = insertelement <4 x i16> %i.equ, i16 %i.eqr, i64 2
  %i.eqw = insertelement <4 x i16> %i.eqv, i16 %i.eqs, i64 3
  %i.eqx = zext <4 x i16> %i.eqw to <4 x i32>
  %i.eqy = shl nuw <4 x i32> %i.eqx, splat (i32 16)
  %i.eqz = bitcast <4 x i32> %i.eqy to <4 x float>
  %i.era = fmul fast <4 x float> %strided.vec763, %i.eqz
  %i.erb = fadd fast <4 x float> %i.eqk, %i.era
  %i.erc = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %index756
  store <4 x float> %i.erb, ptr %i.erc, align 4, !tbaa !24, !alias.scope !207, !noalias !197
  %index.next764 = add nuw i64 %index756, 4       ; 2 uses
  %i.erd = icmp eq i64 %index.next764, %n.vec754
  br i1 %i.erd, label %vec.epilog.middle.block765, label %vec.epilog.vector.body755, !llvm.loop !209

vec.epilog.middle.block765:                       ; preds = %vec.epilog.vector.body755
  br i1 %cmp.n766, label %.loopexit.i142, label %.lr.ph333.i.preheader

.lr.ph333.i.preheader:                            ; preds = %vector.memcheck704, %iter.check749, %vec.epilog.iter.check751, %vec.epilog.middle.block765
  %indvars.iv352.i.ph = phi i64 [ 0, %iter.check749 ], [ 0, %vector.memcheck704 ], [ %n.vec735, %vec.epilog.iter.check751 ], [ %n.vec754, %vec.epilog.middle.block765 ]
  %.0265332.i.ph = phi ptr [ %i.bul, %iter.check749 ], [ %i.bul, %vector.memcheck704 ], [ %i.bvi, %vec.epilog.iter.check751 ], [ %i.bvk, %vec.epilog.middle.block765 ]
  br label %.lr.ph333.i

.lr.ph333.i:                                      ; preds = %.lr.ph333.i.preheader, %.lr.ph333.i
  %indvars.iv352.i = phi i64 [ %indvars.iv.next353.i, %.lr.ph333.i ], [ %indvars.iv352.i.ph, %.lr.ph333.i.preheader ] ; 5 uses
  %.0265332.i = phi ptr [ %i.esj, %.lr.ph333.i ], [ %.0265332.i.ph, %.lr.ph333.i.preheader ] ; 2 uses
  %i.ere = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %indvars.iv352.i
  %i.erf = load i32, ptr %i.ere, align 4, !tbaa !18
  %i.erg = sext i32 %i.erf to i64                 ; 3 uses
  %i.erh = getelementptr inbounds [2 x i8], ptr %i.djl, i64 %i.erg
  %i.eri = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.erg
  %i.erj = getelementptr inbounds [2 x i8], ptr %i.djt, i64 %i.erg
  %i.erk = getelementptr inbounds i8, ptr %i.erh, i64 -2
  %i.erl = load <4 x float>, ptr %.0265332.i, align 4, !tbaa !24 ; 3 uses
  %i.erm = load <4 x i16>, ptr %i.erk, align 2, !tbaa !56
  %i.ern = zext <4 x i16> %i.erm to <4 x i32>
  %i.ero = shl nuw <4 x i32> %i.ern, splat (i32 16)
  %i.erp = bitcast <4 x i32> %i.ero to <4 x float>
  %i.erq = fmul fast <4 x float> %i.erl, %i.erp
  %i.err = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.erq)
  %i.ers = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv352.i
  store float %i.err, ptr %i.ers, align 4, !tbaa !24
  %i.ert = getelementptr inbounds i8, ptr %i.eri, i64 -2
  %i.eru = load <4 x i16>, ptr %i.ert, align 2, !tbaa !56
  %i.erv = zext <4 x i16> %i.eru to <4 x i32>
  %i.erw = shl nuw <4 x i32> %i.erv, splat (i32 16)
  %i.erx = bitcast <4 x i32> %i.erw to <4 x float>
  %i.ery = fmul fast <4 x float> %i.erl, %i.erx
  %i.erz = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ery)
  %i.esa = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv352.i
  store float %i.erz, ptr %i.esa, align 4, !tbaa !24
  %i.esb = getelementptr inbounds i8, ptr %i.erj, i64 -2
  %i.esc = load <4 x i16>, ptr %i.esb, align 2, !tbaa !56
  %i.esd = zext <4 x i16> %i.esc to <4 x i32>
  %i.ese = shl nuw <4 x i32> %i.esd, splat (i32 16)
  %i.esf = bitcast <4 x i32> %i.ese to <4 x float>
  %i.esg = fmul fast <4 x float> %i.erl, %i.esf
  %i.esh = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.esg)
  %i.esi = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv352.i
  store float %i.esh, ptr %i.esi, align 4, !tbaa !24
  %i.esj = getelementptr inbounds nuw i8, ptr %.0265332.i, i64 16
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %i.buw
  br i1 %exitcond356.not.i, label %.loopexit.i142, label %.lr.ph333.i, !llvm.loop !210

bb.gx:                                            ; preds = %bb.gv
  %i.esk = add nsw i32 %i.bxp, -1
  %i.esl = sext i32 %i.esk to i64
  %i.esm = mul i64 %i.buy, %i.esl
  %i.esn = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.esm ; 21 uses
  %i.eso = sext i32 %i.bxp to i64
  %i.esp = mul i64 %i.buy, %i.eso
  %i.esq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.esp ; 21 uses
  %i.esr = add nsw i32 %i.bxp, 1
  %i.ess = sext i32 %i.esr to i64
  %i.est = mul i64 %i.buy, %i.ess
  %i.esu = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.est ; 21 uses
  %i.esv = add nsw i32 %i.bxp, 2
  %i.esw = sext i32 %i.esv to i64
  %i.esx = mul i64 %i.buy, %i.esw
  %i.esy = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.esx ; 21 uses
  br i1 %i.buu, label %iter.check831, label %.loopexit.i142

iter.check831:                                    ; preds = %bb.gx
  br i1 %min.iters.check813, label %.lr.ph.i168.preheader, label %vector.memcheck769

vector.memcheck769:                               ; preds = %iter.check831
  %scevgep770 = getelementptr i8, ptr %.0249345.i, i64 %i.buz ; 4 uses
  %scevgep771 = getelementptr i8, ptr %.0251344.i, i64 %i.buz ; 4 uses
  %scevgep772 = getelementptr i8, ptr %.0253343.i, i64 %i.buz ; 4 uses
  %scevgep773 = getelementptr i8, ptr %.0255342.i, i64 %i.buz ; 4 uses
  %bound0774 = icmp ult ptr %.0249345.i, %scevgep771
  %bound1775 = icmp ult ptr %.0251344.i, %scevgep770
  %found.conflict776 = and i1 %bound0774, %bound1775
  %bound0777 = icmp ult ptr %.0249345.i, %scevgep772
  %bound1778 = icmp ult ptr %.0253343.i, %scevgep770
  %found.conflict779 = and i1 %bound0777, %bound1778
  %conflict.rdx780 = or i1 %found.conflict776, %found.conflict779
  %bound0781 = icmp ult ptr %.0249345.i, %scevgep773
  %bound1782 = icmp ult ptr %.0255342.i, %scevgep770
  %found.conflict783 = and i1 %bound0781, %bound1782
  %conflict.rdx784 = or i1 %conflict.rdx780, %found.conflict783
  %bound0785 = icmp ult ptr %.0249345.i, %scevgep617
  %bound1786 = icmp ult ptr %i.bul, %scevgep770
  %found.conflict787 = and i1 %bound0785, %bound1786
  %conflict.rdx788 = or i1 %conflict.rdx784, %found.conflict787
  %bound0789 = icmp ult ptr %.0251344.i, %scevgep772
  %bound1790 = icmp ult ptr %.0253343.i, %scevgep771
  %found.conflict791 = and i1 %bound0789, %bound1790
  %conflict.rdx792 = or i1 %conflict.rdx788, %found.conflict791
  %bound0793 = icmp ult ptr %.0251344.i, %scevgep773
  %bound1794 = icmp ult ptr %.0255342.i, %scevgep771
  %found.conflict795 = and i1 %bound0793, %bound1794
  %conflict.rdx796 = or i1 %conflict.rdx792, %found.conflict795
  %bound0797 = icmp ult ptr %.0251344.i, %scevgep617
  %bound1798 = icmp ult ptr %i.bul, %scevgep771
  %found.conflict799 = and i1 %bound0797, %bound1798
  %conflict.rdx800 = or i1 %conflict.rdx796, %found.conflict799
  %bound0801 = icmp ult ptr %.0253343.i, %scevgep773
  %bound1802 = icmp ult ptr %.0255342.i, %scevgep772
  %found.conflict803 = and i1 %bound0801, %bound1802
  %conflict.rdx804 = or i1 %conflict.rdx800, %found.conflict803
  %bound0805 = icmp ult ptr %.0253343.i, %scevgep617
  %bound1806 = icmp ult ptr %i.bul, %scevgep772
  %found.conflict807 = and i1 %bound0805, %bound1806
  %conflict.rdx808 = or i1 %conflict.rdx804, %found.conflict807
  %bound0809 = icmp ult ptr %.0255342.i, %scevgep617
  %bound1810 = icmp ult ptr %i.bul, %scevgep773
  %found.conflict811 = and i1 %bound0809, %bound1810
  %conflict.rdx812 = or i1 %conflict.rdx808, %found.conflict811
  br i1 %conflict.rdx812, label %.lr.ph.i168.preheader, label %vector.main.loop.iter.check814

vector.main.loop.iter.check814:                   ; preds = %vector.memcheck769
  br i1 %min.iters.check815, label %vec.epilog.ph835, label %vector.body818

vector.body818:                                   ; preds = %vector.main.loop.iter.check814, %vector.body818
  %index819 = phi i64 [ %index.next827, %vector.body818 ], [ 0, %vector.main.loop.iter.check814 ] ; 7 uses
  %i.esz = shl i64 %index819, 4
  %next.gep820 = getelementptr i8, ptr %i.bul, i64 %i.esz
  %i.eta = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %index819
  %wide.load821 = load <16 x i32>, ptr %i.eta, align 4, !tbaa !18
  %i.etb = sext <16 x i32> %wide.load821 to <16 x i64> ; 16 uses
  %i.etc = extractelement <16 x i64> %i.etb, i64 0 ; 4 uses
  %i.etd = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.etc ; 4 uses
  %i.ete = extractelement <16 x i64> %i.etb, i64 1 ; 4 uses
  %i.etf = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.ete ; 4 uses
  %i.etg = extractelement <16 x i64> %i.etb, i64 2 ; 4 uses
  %i.eth = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.etg ; 4 uses
  %i.eti = extractelement <16 x i64> %i.etb, i64 3 ; 4 uses
  %i.etj = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.eti ; 4 uses
  %i.etk = extractelement <16 x i64> %i.etb, i64 4 ; 4 uses
  %i.etl = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.etk ; 4 uses
  %i.etm = extractelement <16 x i64> %i.etb, i64 5 ; 4 uses
  %i.etn = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.etm ; 4 uses
  %i.eto = extractelement <16 x i64> %i.etb, i64 6 ; 4 uses
  %i.etp = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.eto ; 4 uses
  %i.etq = extractelement <16 x i64> %i.etb, i64 7 ; 4 uses
  %i.etr = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.etq ; 4 uses
  %i.ets = extractelement <16 x i64> %i.etb, i64 8 ; 4 uses
  %i.ett = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.ets ; 4 uses
  %i.etu = extractelement <16 x i64> %i.etb, i64 9 ; 4 uses
  %i.etv = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.etu ; 4 uses
  %i.etw = extractelement <16 x i64> %i.etb, i64 10 ; 4 uses
  %i.etx = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.etw ; 4 uses
  %i.ety = extractelement <16 x i64> %i.etb, i64 11 ; 4 uses
  %i.etz = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.ety ; 4 uses
  %i.eua = extractelement <16 x i64> %i.etb, i64 12 ; 4 uses
  %i.eub = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.eua ; 4 uses
  %i.euc = extractelement <16 x i64> %i.etb, i64 13 ; 4 uses
  %i.eud = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.euc ; 4 uses
  %i.eue = extractelement <16 x i64> %i.etb, i64 14 ; 4 uses
  %i.euf = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.eue ; 4 uses
  %i.eug = extractelement <16 x i64> %i.etb, i64 15 ; 4 uses
  %i.euh = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.eug ; 4 uses
  %i.eui = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.etc ; 4 uses
  %i.euj = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.ete ; 4 uses
  %i.euk = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.etg ; 4 uses
  %i.eul = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.eti ; 4 uses
  %i.eum = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.etk ; 4 uses
  %i.eun = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.etm ; 4 uses
  %i.euo = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.eto ; 4 uses
  %i.eup = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.etq ; 4 uses
  %i.euq = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.ets ; 4 uses
  %i.eur = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.etu ; 4 uses
  %i.eus = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.etw ; 4 uses
  %i.eut = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.ety ; 4 uses
  %i.euu = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.eua ; 4 uses
  %i.euv = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.euc ; 4 uses
  %i.euw = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.eue ; 4 uses
  %i.eux = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.eug ; 4 uses
  %i.euy = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.etc ; 4 uses
  %i.euz = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.ete ; 4 uses
  %i.eva = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.etg ; 4 uses
  %i.evb = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.eti ; 4 uses
  %i.evc = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.etk ; 4 uses
  %i.evd = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.etm ; 4 uses
  %i.eve = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.eto ; 4 uses
  %i.evf = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.etq ; 4 uses
  %i.evg = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.ets ; 4 uses
  %i.evh = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.etu ; 4 uses
  %i.evi = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.etw ; 4 uses
  %i.evj = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.ety ; 4 uses
  %i.evk = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.eua ; 4 uses
  %i.evl = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.euc ; 4 uses
  %i.evm = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.eue ; 4 uses
  %i.evn = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.eug ; 4 uses
  %i.evo = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.etc ; 4 uses
  %i.evp = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.ete ; 4 uses
  %i.evq = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.etg ; 4 uses
  %i.evr = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.eti ; 4 uses
  %i.evs = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.etk ; 4 uses
  %i.evt = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.etm ; 4 uses
  %i.evu = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.eto ; 4 uses
  %i.evv = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.etq ; 4 uses
  %i.evw = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.ets ; 4 uses
  %i.evx = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.etu ; 4 uses
  %i.evy = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.etw ; 4 uses
  %i.evz = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.ety ; 4 uses
  %i.ewa = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.eua ; 4 uses
  %i.ewb = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.euc ; 4 uses
  %i.ewc = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.eue ; 4 uses
  %i.ewd = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.eug ; 4 uses
  %wide.vec822 = load <64 x float>, ptr %next.gep820, align 4, !tbaa !24, !alias.scope !211 ; 4 uses
  %strided.vec823 = shufflevector <64 x float> %wide.vec822, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 4 uses
  %strided.vec824 = shufflevector <64 x float> %wide.vec822, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 4 uses
  %strided.vec825 = shufflevector <64 x float> %wide.vec822, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 4 uses
  %strided.vec826 = shufflevector <64 x float> %wide.vec822, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 4 uses
  %i.ewe = getelementptr inbounds i8, ptr %i.etd, i64 -2
  %i.ewf = getelementptr inbounds i8, ptr %i.etf, i64 -2
  %i.ewg = getelementptr inbounds i8, ptr %i.eth, i64 -2
  %i.ewh = getelementptr inbounds i8, ptr %i.etj, i64 -2
  %i.ewi = getelementptr inbounds i8, ptr %i.etl, i64 -2
  %i.ewj = getelementptr inbounds i8, ptr %i.etn, i64 -2
  %i.ewk = getelementptr inbounds i8, ptr %i.etp, i64 -2
  %i.ewl = getelementptr inbounds i8, ptr %i.etr, i64 -2
  %i.ewm = getelementptr inbounds i8, ptr %i.ett, i64 -2
  %i.ewn = getelementptr inbounds i8, ptr %i.etv, i64 -2
  %i.ewo = getelementptr inbounds i8, ptr %i.etx, i64 -2
  %i.ewp = getelementptr inbounds i8, ptr %i.etz, i64 -2
  %i.ewq = getelementptr inbounds i8, ptr %i.eub, i64 -2
  %i.ewr = getelementptr inbounds i8, ptr %i.eud, i64 -2
  %i.ews = getelementptr inbounds i8, ptr %i.euf, i64 -2
  %i.ewt = getelementptr inbounds i8, ptr %i.euh, i64 -2
  %i.ewu = load i16, ptr %i.ewe, align 2, !tbaa !56
  %i.ewv = load i16, ptr %i.ewf, align 2, !tbaa !56
  %i.eww = load i16, ptr %i.ewg, align 2, !tbaa !56
  %i.ewx = load i16, ptr %i.ewh, align 2, !tbaa !56
  %i.ewy = load i16, ptr %i.ewi, align 2, !tbaa !56
  %i.ewz = load i16, ptr %i.ewj, align 2, !tbaa !56
  %i.exa = load i16, ptr %i.ewk, align 2, !tbaa !56
  %i.exb = load i16, ptr %i.ewl, align 2, !tbaa !56
  %i.exc = load i16, ptr %i.ewm, align 2, !tbaa !56
  %i.exd = load i16, ptr %i.ewn, align 2, !tbaa !56
  %i.exe = load i16, ptr %i.ewo, align 2, !tbaa !56
  %i.exf = load i16, ptr %i.ewp, align 2, !tbaa !56
  %i.exg = load i16, ptr %i.ewq, align 2, !tbaa !56
  %i.exh = load i16, ptr %i.ewr, align 2, !tbaa !56
  %i.exi = load i16, ptr %i.ews, align 2, !tbaa !56
  %i.exj = load i16, ptr %i.ewt, align 2, !tbaa !56
  %i.exk = insertelement <16 x i16> poison, i16 %i.ewu, i64 0
  %i.exl = insertelement <16 x i16> %i.exk, i16 %i.ewv, i64 1
  %i.exm = insertelement <16 x i16> %i.exl, i16 %i.eww, i64 2
  %i.exn = insertelement <16 x i16> %i.exm, i16 %i.ewx, i64 3
  %i.exo = insertelement <16 x i16> %i.exn, i16 %i.ewy, i64 4
  %i.exp = insertelement <16 x i16> %i.exo, i16 %i.ewz, i64 5
  %i.exq = insertelement <16 x i16> %i.exp, i16 %i.exa, i64 6
  %i.exr = insertelement <16 x i16> %i.exq, i16 %i.exb, i64 7
  %i.exs = insertelement <16 x i16> %i.exr, i16 %i.exc, i64 8
  %i.ext = insertelement <16 x i16> %i.exs, i16 %i.exd, i64 9
  %i.exu = insertelement <16 x i16> %i.ext, i16 %i.exe, i64 10
  %i.exv = insertelement <16 x i16> %i.exu, i16 %i.exf, i64 11
  %i.exw = insertelement <16 x i16> %i.exv, i16 %i.exg, i64 12
  %i.exx = insertelement <16 x i16> %i.exw, i16 %i.exh, i64 13
  %i.exy = insertelement <16 x i16> %i.exx, i16 %i.exi, i64 14
  %i.exz = insertelement <16 x i16> %i.exy, i16 %i.exj, i64 15
  %i.eya = zext <16 x i16> %i.exz to <16 x i32>
  %i.eyb = shl nuw <16 x i32> %i.eya, splat (i32 16)
  %i.eyc = bitcast <16 x i32> %i.eyb to <16 x float>
  %i.eyd = fmul fast <16 x float> %strided.vec823, %i.eyc
  %i.eye = load i16, ptr %i.etd, align 2, !tbaa !56
  %i.eyf = load i16, ptr %i.etf, align 2, !tbaa !56
  %i.eyg = load i16, ptr %i.eth, align 2, !tbaa !56
  %i.eyh = load i16, ptr %i.etj, align 2, !tbaa !56
  %i.eyi = load i16, ptr %i.etl, align 2, !tbaa !56
  %i.eyj = load i16, ptr %i.etn, align 2, !tbaa !56
  %i.eyk = load i16, ptr %i.etp, align 2, !tbaa !56
  %i.eyl = load i16, ptr %i.etr, align 2, !tbaa !56
  %i.eym = load i16, ptr %i.ett, align 2, !tbaa !56
  %i.eyn = load i16, ptr %i.etv, align 2, !tbaa !56
  %i.eyo = load i16, ptr %i.etx, align 2, !tbaa !56
  %i.eyp = load i16, ptr %i.etz, align 2, !tbaa !56
  %i.eyq = load i16, ptr %i.eub, align 2, !tbaa !56
  %i.eyr = load i16, ptr %i.eud, align 2, !tbaa !56
  %i.eys = load i16, ptr %i.euf, align 2, !tbaa !56
  %i.eyt = load i16, ptr %i.euh, align 2, !tbaa !56
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
  %i.ezn = fmul fast <16 x float> %strided.vec824, %i.ezm
  %i.ezo = fadd fast <16 x float> %i.eyd, %i.ezn
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.etd, i64 2
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.etf, i64 2
  %i.ezr = getelementptr inbounds nuw i8, ptr %i.eth, i64 2
  %i.ezs = getelementptr inbounds nuw i8, ptr %i.etj, i64 2
  %i.ezt = getelementptr inbounds nuw i8, ptr %i.etl, i64 2
  %i.ezu = getelementptr inbounds nuw i8, ptr %i.etn, i64 2
  %i.ezv = getelementptr inbounds nuw i8, ptr %i.etp, i64 2
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.etr, i64 2
  %i.ezx = getelementptr inbounds nuw i8, ptr %i.ett, i64 2
  %i.ezy = getelementptr inbounds nuw i8, ptr %i.etv, i64 2
  %i.ezz = getelementptr inbounds nuw i8, ptr %i.etx, i64 2
  %i.faa = getelementptr inbounds nuw i8, ptr %i.etz, i64 2
  %i.fab = getelementptr inbounds nuw i8, ptr %i.eub, i64 2
  %i.fac = getelementptr inbounds nuw i8, ptr %i.eud, i64 2
  %i.fad = getelementptr inbounds nuw i8, ptr %i.euf, i64 2
  %i.fae = getelementptr inbounds nuw i8, ptr %i.euh, i64 2
  %i.faf = load i16, ptr %i.ezp, align 2, !tbaa !56
  %i.fag = load i16, ptr %i.ezq, align 2, !tbaa !56
  %i.fah = load i16, ptr %i.ezr, align 2, !tbaa !56
  %i.fai = load i16, ptr %i.ezs, align 2, !tbaa !56
  %i.faj = load i16, ptr %i.ezt, align 2, !tbaa !56
  %i.fak = load i16, ptr %i.ezu, align 2, !tbaa !56
  %i.fal = load i16, ptr %i.ezv, align 2, !tbaa !56
  %i.fam = load i16, ptr %i.ezw, align 2, !tbaa !56
  %i.fan = load i16, ptr %i.ezx, align 2, !tbaa !56
  %i.fao = load i16, ptr %i.ezy, align 2, !tbaa !56
  %i.fap = load i16, ptr %i.ezz, align 2, !tbaa !56
  %i.faq = load i16, ptr %i.faa, align 2, !tbaa !56
  %i.far = load i16, ptr %i.fab, align 2, !tbaa !56
  %i.fas = load i16, ptr %i.fac, align 2, !tbaa !56
  %i.fat = load i16, ptr %i.fad, align 2, !tbaa !56
  %i.fau = load i16, ptr %i.fae, align 2, !tbaa !56
  %i.fav = insertelement <16 x i16> poison, i16 %i.faf, i64 0
  %i.faw = insertelement <16 x i16> %i.fav, i16 %i.fag, i64 1
  %i.fax = insertelement <16 x i16> %i.faw, i16 %i.fah, i64 2
  %i.fay = insertelement <16 x i16> %i.fax, i16 %i.fai, i64 3
  %i.faz = insertelement <16 x i16> %i.fay, i16 %i.faj, i64 4
  %i.fba = insertelement <16 x i16> %i.faz, i16 %i.fak, i64 5
  %i.fbb = insertelement <16 x i16> %i.fba, i16 %i.fal, i64 6
  %i.fbc = insertelement <16 x i16> %i.fbb, i16 %i.fam, i64 7
  %i.fbd = insertelement <16 x i16> %i.fbc, i16 %i.fan, i64 8
  %i.fbe = insertelement <16 x i16> %i.fbd, i16 %i.fao, i64 9
  %i.fbf = insertelement <16 x i16> %i.fbe, i16 %i.fap, i64 10
  %i.fbg = insertelement <16 x i16> %i.fbf, i16 %i.faq, i64 11
  %i.fbh = insertelement <16 x i16> %i.fbg, i16 %i.far, i64 12
  %i.fbi = insertelement <16 x i16> %i.fbh, i16 %i.fas, i64 13
  %i.fbj = insertelement <16 x i16> %i.fbi, i16 %i.fat, i64 14
  %i.fbk = insertelement <16 x i16> %i.fbj, i16 %i.fau, i64 15
  %i.fbl = zext <16 x i16> %i.fbk to <16 x i32>
  %i.fbm = shl nuw <16 x i32> %i.fbl, splat (i32 16)
  %i.fbn = bitcast <16 x i32> %i.fbm to <16 x float>
  %i.fbo = fmul fast <16 x float> %strided.vec825, %i.fbn
  %i.fbp = fadd fast <16 x float> %i.ezo, %i.fbo
  %i.fbq = getelementptr inbounds nuw i8, ptr %i.etd, i64 4
  %i.fbr = getelementptr inbounds nuw i8, ptr %i.etf, i64 4
  %i.fbs = getelementptr inbounds nuw i8, ptr %i.eth, i64 4
  %i.fbt = getelementptr inbounds nuw i8, ptr %i.etj, i64 4
  %i.fbu = getelementptr inbounds nuw i8, ptr %i.etl, i64 4
  %i.fbv = getelementptr inbounds nuw i8, ptr %i.etn, i64 4
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.etp, i64 4
  %i.fbx = getelementptr inbounds nuw i8, ptr %i.etr, i64 4
  %i.fby = getelementptr inbounds nuw i8, ptr %i.ett, i64 4
  %i.fbz = getelementptr inbounds nuw i8, ptr %i.etv, i64 4
  %i.fca = getelementptr inbounds nuw i8, ptr %i.etx, i64 4
  %i.fcb = getelementptr inbounds nuw i8, ptr %i.etz, i64 4
  %i.fcc = getelementptr inbounds nuw i8, ptr %i.eub, i64 4
  %i.fcd = getelementptr inbounds nuw i8, ptr %i.eud, i64 4
  %i.fce = getelementptr inbounds nuw i8, ptr %i.euf, i64 4
  %i.fcf = getelementptr inbounds nuw i8, ptr %i.euh, i64 4
  %i.fcg = load i16, ptr %i.fbq, align 2, !tbaa !56
  %i.fch = load i16, ptr %i.fbr, align 2, !tbaa !56
  %i.fci = load i16, ptr %i.fbs, align 2, !tbaa !56
  %i.fcj = load i16, ptr %i.fbt, align 2, !tbaa !56
  %i.fck = load i16, ptr %i.fbu, align 2, !tbaa !56
  %i.fcl = load i16, ptr %i.fbv, align 2, !tbaa !56
  %i.fcm = load i16, ptr %i.fbw, align 2, !tbaa !56
  %i.fcn = load i16, ptr %i.fbx, align 2, !tbaa !56
  %i.fco = load i16, ptr %i.fby, align 2, !tbaa !56
  %i.fcp = load i16, ptr %i.fbz, align 2, !tbaa !56
  %i.fcq = load i16, ptr %i.fca, align 2, !tbaa !56
  %i.fcr = load i16, ptr %i.fcb, align 2, !tbaa !56
  %i.fcs = load i16, ptr %i.fcc, align 2, !tbaa !56
  %i.fct = load i16, ptr %i.fcd, align 2, !tbaa !56
  %i.fcu = load i16, ptr %i.fce, align 2, !tbaa !56
  %i.fcv = load i16, ptr %i.fcf, align 2, !tbaa !56
  %i.fcw = insertelement <16 x i16> poison, i16 %i.fcg, i64 0
  %i.fcx = insertelement <16 x i16> %i.fcw, i16 %i.fch, i64 1
  %i.fcy = insertelement <16 x i16> %i.fcx, i16 %i.fci, i64 2
  %i.fcz = insertelement <16 x i16> %i.fcy, i16 %i.fcj, i64 3
  %i.fda = insertelement <16 x i16> %i.fcz, i16 %i.fck, i64 4
  %i.fdb = insertelement <16 x i16> %i.fda, i16 %i.fcl, i64 5
  %i.fdc = insertelement <16 x i16> %i.fdb, i16 %i.fcm, i64 6
  %i.fdd = insertelement <16 x i16> %i.fdc, i16 %i.fcn, i64 7
  %i.fde = insertelement <16 x i16> %i.fdd, i16 %i.fco, i64 8
  %i.fdf = insertelement <16 x i16> %i.fde, i16 %i.fcp, i64 9
  %i.fdg = insertelement <16 x i16> %i.fdf, i16 %i.fcq, i64 10
  %i.fdh = insertelement <16 x i16> %i.fdg, i16 %i.fcr, i64 11
  %i.fdi = insertelement <16 x i16> %i.fdh, i16 %i.fcs, i64 12
  %i.fdj = insertelement <16 x i16> %i.fdi, i16 %i.fct, i64 13
  %i.fdk = insertelement <16 x i16> %i.fdj, i16 %i.fcu, i64 14
  %i.fdl = insertelement <16 x i16> %i.fdk, i16 %i.fcv, i64 15
  %i.fdm = zext <16 x i16> %i.fdl to <16 x i32>
  %i.fdn = shl nuw <16 x i32> %i.fdm, splat (i32 16)
  %i.fdo = bitcast <16 x i32> %i.fdn to <16 x float>
  %i.fdp = fmul fast <16 x float> %strided.vec826, %i.fdo
  %i.fdq = fadd fast <16 x float> %i.fbp, %i.fdp
  %i.fdr = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index819
  store <16 x float> %i.fdq, ptr %i.fdr, align 4, !tbaa !24, !alias.scope !214, !noalias !216
  %i.fds = getelementptr inbounds i8, ptr %i.eui, i64 -2
  %i.fdt = getelementptr inbounds i8, ptr %i.euj, i64 -2
  %i.fdu = getelementptr inbounds i8, ptr %i.euk, i64 -2
  %i.fdv = getelementptr inbounds i8, ptr %i.eul, i64 -2
  %i.fdw = getelementptr inbounds i8, ptr %i.eum, i64 -2
  %i.fdx = getelementptr inbounds i8, ptr %i.eun, i64 -2
  %i.fdy = getelementptr inbounds i8, ptr %i.euo, i64 -2
  %i.fdz = getelementptr inbounds i8, ptr %i.eup, i64 -2
  %i.fea = getelementptr inbounds i8, ptr %i.euq, i64 -2
  %i.feb = getelementptr inbounds i8, ptr %i.eur, i64 -2
  %i.fec = getelementptr inbounds i8, ptr %i.eus, i64 -2
  %i.fed = getelementptr inbounds i8, ptr %i.eut, i64 -2
  %i.fee = getelementptr inbounds i8, ptr %i.euu, i64 -2
  %i.fef = getelementptr inbounds i8, ptr %i.euv, i64 -2
  %i.feg = getelementptr inbounds i8, ptr %i.euw, i64 -2
  %i.feh = getelementptr inbounds i8, ptr %i.eux, i64 -2
  %i.fei = load i16, ptr %i.fds, align 2, !tbaa !56
  %i.fej = load i16, ptr %i.fdt, align 2, !tbaa !56
  %i.fek = load i16, ptr %i.fdu, align 2, !tbaa !56
  %i.fel = load i16, ptr %i.fdv, align 2, !tbaa !56
  %i.fem = load i16, ptr %i.fdw, align 2, !tbaa !56
  %i.fen = load i16, ptr %i.fdx, align 2, !tbaa !56
  %i.feo = load i16, ptr %i.fdy, align 2, !tbaa !56
  %i.fep = load i16, ptr %i.fdz, align 2, !tbaa !56
  %i.feq = load i16, ptr %i.fea, align 2, !tbaa !56
  %i.fer = load i16, ptr %i.feb, align 2, !tbaa !56
  %i.fes = load i16, ptr %i.fec, align 2, !tbaa !56
  %i.fet = load i16, ptr %i.fed, align 2, !tbaa !56
  %i.feu = load i16, ptr %i.fee, align 2, !tbaa !56
  %i.fev = load i16, ptr %i.fef, align 2, !tbaa !56
  %i.few = load i16, ptr %i.feg, align 2, !tbaa !56
  %i.fex = load i16, ptr %i.feh, align 2, !tbaa !56
  %i.fey = insertelement <16 x i16> poison, i16 %i.fei, i64 0
  %i.fez = insertelement <16 x i16> %i.fey, i16 %i.fej, i64 1
  %i.ffa = insertelement <16 x i16> %i.fez, i16 %i.fek, i64 2
  %i.ffb = insertelement <16 x i16> %i.ffa, i16 %i.fel, i64 3
  %i.ffc = insertelement <16 x i16> %i.ffb, i16 %i.fem, i64 4
  %i.ffd = insertelement <16 x i16> %i.ffc, i16 %i.fen, i64 5
  %i.ffe = insertelement <16 x i16> %i.ffd, i16 %i.feo, i64 6
  %i.fff = insertelement <16 x i16> %i.ffe, i16 %i.fep, i64 7
  %i.ffg = insertelement <16 x i16> %i.fff, i16 %i.feq, i64 8
  %i.ffh = insertelement <16 x i16> %i.ffg, i16 %i.fer, i64 9
  %i.ffi = insertelement <16 x i16> %i.ffh, i16 %i.fes, i64 10
  %i.ffj = insertelement <16 x i16> %i.ffi, i16 %i.fet, i64 11
  %i.ffk = insertelement <16 x i16> %i.ffj, i16 %i.feu, i64 12
  %i.ffl = insertelement <16 x i16> %i.ffk, i16 %i.fev, i64 13
  %i.ffm = insertelement <16 x i16> %i.ffl, i16 %i.few, i64 14
  %i.ffn = insertelement <16 x i16> %i.ffm, i16 %i.fex, i64 15
  %i.ffo = zext <16 x i16> %i.ffn to <16 x i32>
  %i.ffp = shl nuw <16 x i32> %i.ffo, splat (i32 16)
  %i.ffq = bitcast <16 x i32> %i.ffp to <16 x float>
  %i.ffr = fmul fast <16 x float> %strided.vec823, %i.ffq
  %i.ffs = load i16, ptr %i.eui, align 2, !tbaa !56
  %i.fft = load i16, ptr %i.euj, align 2, !tbaa !56
  %i.ffu = load i16, ptr %i.euk, align 2, !tbaa !56
  %i.ffv = load i16, ptr %i.eul, align 2, !tbaa !56
  %i.ffw = load i16, ptr %i.eum, align 2, !tbaa !56
  %i.ffx = load i16, ptr %i.eun, align 2, !tbaa !56
  %i.ffy = load i16, ptr %i.euo, align 2, !tbaa !56
  %i.ffz = load i16, ptr %i.eup, align 2, !tbaa !56
  %i.fga = load i16, ptr %i.euq, align 2, !tbaa !56
  %i.fgb = load i16, ptr %i.eur, align 2, !tbaa !56
  %i.fgc = load i16, ptr %i.eus, align 2, !tbaa !56
  %i.fgd = load i16, ptr %i.eut, align 2, !tbaa !56
  %i.fge = load i16, ptr %i.euu, align 2, !tbaa !56
  %i.fgf = load i16, ptr %i.euv, align 2, !tbaa !56
  %i.fgg = load i16, ptr %i.euw, align 2, !tbaa !56
  %i.fgh = load i16, ptr %i.eux, align 2, !tbaa !56
  %i.fgi = insertelement <16 x i16> poison, i16 %i.ffs, i64 0
  %i.fgj = insertelement <16 x i16> %i.fgi, i16 %i.fft, i64 1
  %i.fgk = insertelement <16 x i16> %i.fgj, i16 %i.ffu, i64 2
  %i.fgl = insertelement <16 x i16> %i.fgk, i16 %i.ffv, i64 3
  %i.fgm = insertelement <16 x i16> %i.fgl, i16 %i.ffw, i64 4
  %i.fgn = insertelement <16 x i16> %i.fgm, i16 %i.ffx, i64 5
  %i.fgo = insertelement <16 x i16> %i.fgn, i16 %i.ffy, i64 6
  %i.fgp = insertelement <16 x i16> %i.fgo, i16 %i.ffz, i64 7
  %i.fgq = insertelement <16 x i16> %i.fgp, i16 %i.fga, i64 8
  %i.fgr = insertelement <16 x i16> %i.fgq, i16 %i.fgb, i64 9
  %i.fgs = insertelement <16 x i16> %i.fgr, i16 %i.fgc, i64 10
  %i.fgt = insertelement <16 x i16> %i.fgs, i16 %i.fgd, i64 11
  %i.fgu = insertelement <16 x i16> %i.fgt, i16 %i.fge, i64 12
  %i.fgv = insertelement <16 x i16> %i.fgu, i16 %i.fgf, i64 13
  %i.fgw = insertelement <16 x i16> %i.fgv, i16 %i.fgg, i64 14
  %i.fgx = insertelement <16 x i16> %i.fgw, i16 %i.fgh, i64 15
  %i.fgy = zext <16 x i16> %i.fgx to <16 x i32>
  %i.fgz = shl nuw <16 x i32> %i.fgy, splat (i32 16)
  %i.fha = bitcast <16 x i32> %i.fgz to <16 x float>
  %i.fhb = fmul fast <16 x float> %strided.vec824, %i.fha
  %i.fhc = fadd fast <16 x float> %i.ffr, %i.fhb
  %i.fhd = getelementptr inbounds nuw i8, ptr %i.eui, i64 2
  %i.fhe = getelementptr inbounds nuw i8, ptr %i.euj, i64 2
  %i.fhf = getelementptr inbounds nuw i8, ptr %i.euk, i64 2
  %i.fhg = getelementptr inbounds nuw i8, ptr %i.eul, i64 2
  %i.fhh = getelementptr inbounds nuw i8, ptr %i.eum, i64 2
  %i.fhi = getelementptr inbounds nuw i8, ptr %i.eun, i64 2
  %i.fhj = getelementptr inbounds nuw i8, ptr %i.euo, i64 2
  %i.fhk = getelementptr inbounds nuw i8, ptr %i.eup, i64 2
  %i.fhl = getelementptr inbounds nuw i8, ptr %i.euq, i64 2
  %i.fhm = getelementptr inbounds nuw i8, ptr %i.eur, i64 2
  %i.fhn = getelementptr inbounds nuw i8, ptr %i.eus, i64 2
  %i.fho = getelementptr inbounds nuw i8, ptr %i.eut, i64 2
  %i.fhp = getelementptr inbounds nuw i8, ptr %i.euu, i64 2
  %i.fhq = getelementptr inbounds nuw i8, ptr %i.euv, i64 2
  %i.fhr = getelementptr inbounds nuw i8, ptr %i.euw, i64 2
  %i.fhs = getelementptr inbounds nuw i8, ptr %i.eux, i64 2
  %i.fht = load i16, ptr %i.fhd, align 2, !tbaa !56
  %i.fhu = load i16, ptr %i.fhe, align 2, !tbaa !56
  %i.fhv = load i16, ptr %i.fhf, align 2, !tbaa !56
  %i.fhw = load i16, ptr %i.fhg, align 2, !tbaa !56
  %i.fhx = load i16, ptr %i.fhh, align 2, !tbaa !56
  %i.fhy = load i16, ptr %i.fhi, align 2, !tbaa !56
  %i.fhz = load i16, ptr %i.fhj, align 2, !tbaa !56
  %i.fia = load i16, ptr %i.fhk, align 2, !tbaa !56
  %i.fib = load i16, ptr %i.fhl, align 2, !tbaa !56
  %i.fic = load i16, ptr %i.fhm, align 2, !tbaa !56
  %i.fid = load i16, ptr %i.fhn, align 2, !tbaa !56
  %i.fie = load i16, ptr %i.fho, align 2, !tbaa !56
  %i.fif = load i16, ptr %i.fhp, align 2, !tbaa !56
  %i.fig = load i16, ptr %i.fhq, align 2, !tbaa !56
  %i.fih = load i16, ptr %i.fhr, align 2, !tbaa !56
  %i.fii = load i16, ptr %i.fhs, align 2, !tbaa !56
  %i.fij = insertelement <16 x i16> poison, i16 %i.fht, i64 0
  %i.fik = insertelement <16 x i16> %i.fij, i16 %i.fhu, i64 1
  %i.fil = insertelement <16 x i16> %i.fik, i16 %i.fhv, i64 2
  %i.fim = insertelement <16 x i16> %i.fil, i16 %i.fhw, i64 3
  %i.fin = insertelement <16 x i16> %i.fim, i16 %i.fhx, i64 4
  %i.fio = insertelement <16 x i16> %i.fin, i16 %i.fhy, i64 5
  %i.fip = insertelement <16 x i16> %i.fio, i16 %i.fhz, i64 6
  %i.fiq = insertelement <16 x i16> %i.fip, i16 %i.fia, i64 7
  %i.fir = insertelement <16 x i16> %i.fiq, i16 %i.fib, i64 8
  %i.fis = insertelement <16 x i16> %i.fir, i16 %i.fic, i64 9
  %i.fit = insertelement <16 x i16> %i.fis, i16 %i.fid, i64 10
  %i.fiu = insertelement <16 x i16> %i.fit, i16 %i.fie, i64 11
  %i.fiv = insertelement <16 x i16> %i.fiu, i16 %i.fif, i64 12
  %i.fiw = insertelement <16 x i16> %i.fiv, i16 %i.fig, i64 13
  %i.fix = insertelement <16 x i16> %i.fiw, i16 %i.fih, i64 14
  %i.fiy = insertelement <16 x i16> %i.fix, i16 %i.fii, i64 15
  %i.fiz = zext <16 x i16> %i.fiy to <16 x i32>
  %i.fja = shl nuw <16 x i32> %i.fiz, splat (i32 16)
  %i.fjb = bitcast <16 x i32> %i.fja to <16 x float>
  %i.fjc = fmul fast <16 x float> %strided.vec825, %i.fjb
  %i.fjd = fadd fast <16 x float> %i.fhc, %i.fjc
  %i.fje = getelementptr inbounds nuw i8, ptr %i.eui, i64 4
  %i.fjf = getelementptr inbounds nuw i8, ptr %i.euj, i64 4
  %i.fjg = getelementptr inbounds nuw i8, ptr %i.euk, i64 4
  %i.fjh = getelementptr inbounds nuw i8, ptr %i.eul, i64 4
  %i.fji = getelementptr inbounds nuw i8, ptr %i.eum, i64 4
  %i.fjj = getelementptr inbounds nuw i8, ptr %i.eun, i64 4
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.euo, i64 4
  %i.fjl = getelementptr inbounds nuw i8, ptr %i.eup, i64 4
  %i.fjm = getelementptr inbounds nuw i8, ptr %i.euq, i64 4
  %i.fjn = getelementptr inbounds nuw i8, ptr %i.eur, i64 4
  %i.fjo = getelementptr inbounds nuw i8, ptr %i.eus, i64 4
  %i.fjp = getelementptr inbounds nuw i8, ptr %i.eut, i64 4
  %i.fjq = getelementptr inbounds nuw i8, ptr %i.euu, i64 4
  %i.fjr = getelementptr inbounds nuw i8, ptr %i.euv, i64 4
  %i.fjs = getelementptr inbounds nuw i8, ptr %i.euw, i64 4
  %i.fjt = getelementptr inbounds nuw i8, ptr %i.eux, i64 4
  %i.fju = load i16, ptr %i.fje, align 2, !tbaa !56
  %i.fjv = load i16, ptr %i.fjf, align 2, !tbaa !56
  %i.fjw = load i16, ptr %i.fjg, align 2, !tbaa !56
  %i.fjx = load i16, ptr %i.fjh, align 2, !tbaa !56
  %i.fjy = load i16, ptr %i.fji, align 2, !tbaa !56
  %i.fjz = load i16, ptr %i.fjj, align 2, !tbaa !56
  %i.fka = load i16, ptr %i.fjk, align 2, !tbaa !56
  %i.fkb = load i16, ptr %i.fjl, align 2, !tbaa !56
  %i.fkc = load i16, ptr %i.fjm, align 2, !tbaa !56
  %i.fkd = load i16, ptr %i.fjn, align 2, !tbaa !56
  %i.fke = load i16, ptr %i.fjo, align 2, !tbaa !56
  %i.fkf = load i16, ptr %i.fjp, align 2, !tbaa !56
  %i.fkg = load i16, ptr %i.fjq, align 2, !tbaa !56
  %i.fkh = load i16, ptr %i.fjr, align 2, !tbaa !56
  %i.fki = load i16, ptr %i.fjs, align 2, !tbaa !56
  %i.fkj = load i16, ptr %i.fjt, align 2, !tbaa !56
  %i.fkk = insertelement <16 x i16> poison, i16 %i.fju, i64 0
  %i.fkl = insertelement <16 x i16> %i.fkk, i16 %i.fjv, i64 1
  %i.fkm = insertelement <16 x i16> %i.fkl, i16 %i.fjw, i64 2
  %i.fkn = insertelement <16 x i16> %i.fkm, i16 %i.fjx, i64 3
  %i.fko = insertelement <16 x i16> %i.fkn, i16 %i.fjy, i64 4
  %i.fkp = insertelement <16 x i16> %i.fko, i16 %i.fjz, i64 5
  %i.fkq = insertelement <16 x i16> %i.fkp, i16 %i.fka, i64 6
  %i.fkr = insertelement <16 x i16> %i.fkq, i16 %i.fkb, i64 7
  %i.fks = insertelement <16 x i16> %i.fkr, i16 %i.fkc, i64 8
  %i.fkt = insertelement <16 x i16> %i.fks, i16 %i.fkd, i64 9
  %i.fku = insertelement <16 x i16> %i.fkt, i16 %i.fke, i64 10
  %i.fkv = insertelement <16 x i16> %i.fku, i16 %i.fkf, i64 11
  %i.fkw = insertelement <16 x i16> %i.fkv, i16 %i.fkg, i64 12
  %i.fkx = insertelement <16 x i16> %i.fkw, i16 %i.fkh, i64 13
  %i.fky = insertelement <16 x i16> %i.fkx, i16 %i.fki, i64 14
  %i.fkz = insertelement <16 x i16> %i.fky, i16 %i.fkj, i64 15
  %i.fla = zext <16 x i16> %i.fkz to <16 x i32>
  %i.flb = shl nuw <16 x i32> %i.fla, splat (i32 16)
  %i.flc = bitcast <16 x i32> %i.flb to <16 x float>
  %i.fld = fmul fast <16 x float> %strided.vec826, %i.flc
  %i.fle = fadd fast <16 x float> %i.fjd, %i.fld
  %i.flf = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index819
  store <16 x float> %i.fle, ptr %i.flf, align 4, !tbaa !24, !alias.scope !220, !noalias !221
  %i.flg = getelementptr inbounds i8, ptr %i.euy, i64 -2
  %i.flh = getelementptr inbounds i8, ptr %i.euz, i64 -2
  %i.fli = getelementptr inbounds i8, ptr %i.eva, i64 -2
  %i.flj = getelementptr inbounds i8, ptr %i.evb, i64 -2
  %i.flk = getelementptr inbounds i8, ptr %i.evc, i64 -2
  %i.fll = getelementptr inbounds i8, ptr %i.evd, i64 -2
  %i.flm = getelementptr inbounds i8, ptr %i.eve, i64 -2
  %i.fln = getelementptr inbounds i8, ptr %i.evf, i64 -2
  %i.flo = getelementptr inbounds i8, ptr %i.evg, i64 -2
  %i.flp = getelementptr inbounds i8, ptr %i.evh, i64 -2
  %i.flq = getelementptr inbounds i8, ptr %i.evi, i64 -2
  %i.flr = getelementptr inbounds i8, ptr %i.evj, i64 -2
  %i.fls = getelementptr inbounds i8, ptr %i.evk, i64 -2
  %i.flt = getelementptr inbounds i8, ptr %i.evl, i64 -2
  %i.flu = getelementptr inbounds i8, ptr %i.evm, i64 -2
  %i.flv = getelementptr inbounds i8, ptr %i.evn, i64 -2
  %i.flw = load i16, ptr %i.flg, align 2, !tbaa !56
  %i.flx = load i16, ptr %i.flh, align 2, !tbaa !56
  %i.fly = load i16, ptr %i.fli, align 2, !tbaa !56
  %i.flz = load i16, ptr %i.flj, align 2, !tbaa !56
  %i.fma = load i16, ptr %i.flk, align 2, !tbaa !56
  %i.fmb = load i16, ptr %i.fll, align 2, !tbaa !56
  %i.fmc = load i16, ptr %i.flm, align 2, !tbaa !56
  %i.fmd = load i16, ptr %i.fln, align 2, !tbaa !56
  %i.fme = load i16, ptr %i.flo, align 2, !tbaa !56
  %i.fmf = load i16, ptr %i.flp, align 2, !tbaa !56
  %i.fmg = load i16, ptr %i.flq, align 2, !tbaa !56
  %i.fmh = load i16, ptr %i.flr, align 2, !tbaa !56
  %i.fmi = load i16, ptr %i.fls, align 2, !tbaa !56
  %i.fmj = load i16, ptr %i.flt, align 2, !tbaa !56
  %i.fmk = load i16, ptr %i.flu, align 2, !tbaa !56
  %i.fml = load i16, ptr %i.flv, align 2, !tbaa !56
  %i.fmm = insertelement <16 x i16> poison, i16 %i.flw, i64 0
  %i.fmn = insertelement <16 x i16> %i.fmm, i16 %i.flx, i64 1
  %i.fmo = insertelement <16 x i16> %i.fmn, i16 %i.fly, i64 2
  %i.fmp = insertelement <16 x i16> %i.fmo, i16 %i.flz, i64 3
  %i.fmq = insertelement <16 x i16> %i.fmp, i16 %i.fma, i64 4
  %i.fmr = insertelement <16 x i16> %i.fmq, i16 %i.fmb, i64 5
  %i.fms = insertelement <16 x i16> %i.fmr, i16 %i.fmc, i64 6
  %i.fmt = insertelement <16 x i16> %i.fms, i16 %i.fmd, i64 7
  %i.fmu = insertelement <16 x i16> %i.fmt, i16 %i.fme, i64 8
  %i.fmv = insertelement <16 x i16> %i.fmu, i16 %i.fmf, i64 9
  %i.fmw = insertelement <16 x i16> %i.fmv, i16 %i.fmg, i64 10
  %i.fmx = insertelement <16 x i16> %i.fmw, i16 %i.fmh, i64 11
  %i.fmy = insertelement <16 x i16> %i.fmx, i16 %i.fmi, i64 12
  %i.fmz = insertelement <16 x i16> %i.fmy, i16 %i.fmj, i64 13
  %i.fna = insertelement <16 x i16> %i.fmz, i16 %i.fmk, i64 14
  %i.fnb = insertelement <16 x i16> %i.fna, i16 %i.fml, i64 15
  %i.fnc = zext <16 x i16> %i.fnb to <16 x i32>
  %i.fnd = shl nuw <16 x i32> %i.fnc, splat (i32 16)
  %i.fne = bitcast <16 x i32> %i.fnd to <16 x float>
  %i.fnf = fmul fast <16 x float> %strided.vec823, %i.fne
  %i.fng = load i16, ptr %i.euy, align 2, !tbaa !56
  %i.fnh = load i16, ptr %i.euz, align 2, !tbaa !56
  %i.fni = load i16, ptr %i.eva, align 2, !tbaa !56
  %i.fnj = load i16, ptr %i.evb, align 2, !tbaa !56
  %i.fnk = load i16, ptr %i.evc, align 2, !tbaa !56
  %i.fnl = load i16, ptr %i.evd, align 2, !tbaa !56
  %i.fnm = load i16, ptr %i.eve, align 2, !tbaa !56
  %i.fnn = load i16, ptr %i.evf, align 2, !tbaa !56
  %i.fno = load i16, ptr %i.evg, align 2, !tbaa !56
  %i.fnp = load i16, ptr %i.evh, align 2, !tbaa !56
  %i.fnq = load i16, ptr %i.evi, align 2, !tbaa !56
  %i.fnr = load i16, ptr %i.evj, align 2, !tbaa !56
  %i.fns = load i16, ptr %i.evk, align 2, !tbaa !56
  %i.fnt = load i16, ptr %i.evl, align 2, !tbaa !56
  %i.fnu = load i16, ptr %i.evm, align 2, !tbaa !56
  %i.fnv = load i16, ptr %i.evn, align 2, !tbaa !56
  %i.fnw = insertelement <16 x i16> poison, i16 %i.fng, i64 0
  %i.fnx = insertelement <16 x i16> %i.fnw, i16 %i.fnh, i64 1
  %i.fny = insertelement <16 x i16> %i.fnx, i16 %i.fni, i64 2
  %i.fnz = insertelement <16 x i16> %i.fny, i16 %i.fnj, i64 3
  %i.foa = insertelement <16 x i16> %i.fnz, i16 %i.fnk, i64 4
  %i.fob = insertelement <16 x i16> %i.foa, i16 %i.fnl, i64 5
  %i.foc = insertelement <16 x i16> %i.fob, i16 %i.fnm, i64 6
  %i.fod = insertelement <16 x i16> %i.foc, i16 %i.fnn, i64 7
  %i.foe = insertelement <16 x i16> %i.fod, i16 %i.fno, i64 8
  %i.fof = insertelement <16 x i16> %i.foe, i16 %i.fnp, i64 9
  %i.fog = insertelement <16 x i16> %i.fof, i16 %i.fnq, i64 10
  %i.foh = insertelement <16 x i16> %i.fog, i16 %i.fnr, i64 11
  %i.foi = insertelement <16 x i16> %i.foh, i16 %i.fns, i64 12
  %i.foj = insertelement <16 x i16> %i.foi, i16 %i.fnt, i64 13
  %i.fok = insertelement <16 x i16> %i.foj, i16 %i.fnu, i64 14
  %i.fol = insertelement <16 x i16> %i.fok, i16 %i.fnv, i64 15
  %i.fom = zext <16 x i16> %i.fol to <16 x i32>
  %i.fon = shl nuw <16 x i32> %i.fom, splat (i32 16)
  %i.foo = bitcast <16 x i32> %i.fon to <16 x float>
  %i.fop = fmul fast <16 x float> %strided.vec824, %i.foo
  %i.foq = fadd fast <16 x float> %i.fnf, %i.fop
  %i.for = getelementptr inbounds nuw i8, ptr %i.euy, i64 2
  %i.fos = getelementptr inbounds nuw i8, ptr %i.euz, i64 2
  %i.fot = getelementptr inbounds nuw i8, ptr %i.eva, i64 2
  %i.fou = getelementptr inbounds nuw i8, ptr %i.evb, i64 2
  %i.fov = getelementptr inbounds nuw i8, ptr %i.evc, i64 2
  %i.fow = getelementptr inbounds nuw i8, ptr %i.evd, i64 2
  %i.fox = getelementptr inbounds nuw i8, ptr %i.eve, i64 2
  %i.foy = getelementptr inbounds nuw i8, ptr %i.evf, i64 2
  %i.foz = getelementptr inbounds nuw i8, ptr %i.evg, i64 2
  %i.fpa = getelementptr inbounds nuw i8, ptr %i.evh, i64 2
  %i.fpb = getelementptr inbounds nuw i8, ptr %i.evi, i64 2
  %i.fpc = getelementptr inbounds nuw i8, ptr %i.evj, i64 2
  %i.fpd = getelementptr inbounds nuw i8, ptr %i.evk, i64 2
  %i.fpe = getelementptr inbounds nuw i8, ptr %i.evl, i64 2
  %i.fpf = getelementptr inbounds nuw i8, ptr %i.evm, i64 2
  %i.fpg = getelementptr inbounds nuw i8, ptr %i.evn, i64 2
  %i.fph = load i16, ptr %i.for, align 2, !tbaa !56
  %i.fpi = load i16, ptr %i.fos, align 2, !tbaa !56
  %i.fpj = load i16, ptr %i.fot, align 2, !tbaa !56
  %i.fpk = load i16, ptr %i.fou, align 2, !tbaa !56
  %i.fpl = load i16, ptr %i.fov, align 2, !tbaa !56
  %i.fpm = load i16, ptr %i.fow, align 2, !tbaa !56
  %i.fpn = load i16, ptr %i.fox, align 2, !tbaa !56
  %i.fpo = load i16, ptr %i.foy, align 2, !tbaa !56
  %i.fpp = load i16, ptr %i.foz, align 2, !tbaa !56
  %i.fpq = load i16, ptr %i.fpa, align 2, !tbaa !56
  %i.fpr = load i16, ptr %i.fpb, align 2, !tbaa !56
  %i.fps = load i16, ptr %i.fpc, align 2, !tbaa !56
  %i.fpt = load i16, ptr %i.fpd, align 2, !tbaa !56
  %i.fpu = load i16, ptr %i.fpe, align 2, !tbaa !56
  %i.fpv = load i16, ptr %i.fpf, align 2, !tbaa !56
  %i.fpw = load i16, ptr %i.fpg, align 2, !tbaa !56
  %i.fpx = insertelement <16 x i16> poison, i16 %i.fph, i64 0
  %i.fpy = insertelement <16 x i16> %i.fpx, i16 %i.fpi, i64 1
  %i.fpz = insertelement <16 x i16> %i.fpy, i16 %i.fpj, i64 2
  %i.fqa = insertelement <16 x i16> %i.fpz, i16 %i.fpk, i64 3
  %i.fqb = insertelement <16 x i16> %i.fqa, i16 %i.fpl, i64 4
  %i.fqc = insertelement <16 x i16> %i.fqb, i16 %i.fpm, i64 5
  %i.fqd = insertelement <16 x i16> %i.fqc, i16 %i.fpn, i64 6
  %i.fqe = insertelement <16 x i16> %i.fqd, i16 %i.fpo, i64 7
  %i.fqf = insertelement <16 x i16> %i.fqe, i16 %i.fpp, i64 8
  %i.fqg = insertelement <16 x i16> %i.fqf, i16 %i.fpq, i64 9
  %i.fqh = insertelement <16 x i16> %i.fqg, i16 %i.fpr, i64 10
  %i.fqi = insertelement <16 x i16> %i.fqh, i16 %i.fps, i64 11
  %i.fqj = insertelement <16 x i16> %i.fqi, i16 %i.fpt, i64 12
  %i.fqk = insertelement <16 x i16> %i.fqj, i16 %i.fpu, i64 13
  %i.fql = insertelement <16 x i16> %i.fqk, i16 %i.fpv, i64 14
  %i.fqm = insertelement <16 x i16> %i.fql, i16 %i.fpw, i64 15
  %i.fqn = zext <16 x i16> %i.fqm to <16 x i32>
  %i.fqo = shl nuw <16 x i32> %i.fqn, splat (i32 16)
  %i.fqp = bitcast <16 x i32> %i.fqo to <16 x float>
  %i.fqq = fmul fast <16 x float> %strided.vec825, %i.fqp
  %i.fqr = fadd fast <16 x float> %i.foq, %i.fqq
  %i.fqs = getelementptr inbounds nuw i8, ptr %i.euy, i64 4
  %i.fqt = getelementptr inbounds nuw i8, ptr %i.euz, i64 4
  %i.fqu = getelementptr inbounds nuw i8, ptr %i.eva, i64 4
  %i.fqv = getelementptr inbounds nuw i8, ptr %i.evb, i64 4
  %i.fqw = getelementptr inbounds nuw i8, ptr %i.evc, i64 4
  %i.fqx = getelementptr inbounds nuw i8, ptr %i.evd, i64 4
  %i.fqy = getelementptr inbounds nuw i8, ptr %i.eve, i64 4
  %i.fqz = getelementptr inbounds nuw i8, ptr %i.evf, i64 4
  %i.fra = getelementptr inbounds nuw i8, ptr %i.evg, i64 4
  %i.frb = getelementptr inbounds nuw i8, ptr %i.evh, i64 4
  %i.frc = getelementptr inbounds nuw i8, ptr %i.evi, i64 4
  %i.frd = getelementptr inbounds nuw i8, ptr %i.evj, i64 4
  %i.fre = getelementptr inbounds nuw i8, ptr %i.evk, i64 4
  %i.frf = getelementptr inbounds nuw i8, ptr %i.evl, i64 4
  %i.frg = getelementptr inbounds nuw i8, ptr %i.evm, i64 4
  %i.frh = getelementptr inbounds nuw i8, ptr %i.evn, i64 4
  %i.fri = load i16, ptr %i.fqs, align 2, !tbaa !56
  %i.frj = load i16, ptr %i.fqt, align 2, !tbaa !56
  %i.frk = load i16, ptr %i.fqu, align 2, !tbaa !56
  %i.frl = load i16, ptr %i.fqv, align 2, !tbaa !56
  %i.frm = load i16, ptr %i.fqw, align 2, !tbaa !56
  %i.frn = load i16, ptr %i.fqx, align 2, !tbaa !56
  %i.fro = load i16, ptr %i.fqy, align 2, !tbaa !56
  %i.frp = load i16, ptr %i.fqz, align 2, !tbaa !56
  %i.frq = load i16, ptr %i.fra, align 2, !tbaa !56
  %i.frr = load i16, ptr %i.frb, align 2, !tbaa !56
  %i.frs = load i16, ptr %i.frc, align 2, !tbaa !56
  %i.frt = load i16, ptr %i.frd, align 2, !tbaa !56
  %i.fru = load i16, ptr %i.fre, align 2, !tbaa !56
  %i.frv = load i16, ptr %i.frf, align 2, !tbaa !56
  %i.frw = load i16, ptr %i.frg, align 2, !tbaa !56
  %i.frx = load i16, ptr %i.frh, align 2, !tbaa !56
  %i.fry = insertelement <16 x i16> poison, i16 %i.fri, i64 0
  %i.frz = insertelement <16 x i16> %i.fry, i16 %i.frj, i64 1
  %i.fsa = insertelement <16 x i16> %i.frz, i16 %i.frk, i64 2
  %i.fsb = insertelement <16 x i16> %i.fsa, i16 %i.frl, i64 3
  %i.fsc = insertelement <16 x i16> %i.fsb, i16 %i.frm, i64 4
  %i.fsd = insertelement <16 x i16> %i.fsc, i16 %i.frn, i64 5
  %i.fse = insertelement <16 x i16> %i.fsd, i16 %i.fro, i64 6
  %i.fsf = insertelement <16 x i16> %i.fse, i16 %i.frp, i64 7
  %i.fsg = insertelement <16 x i16> %i.fsf, i16 %i.frq, i64 8
  %i.fsh = insertelement <16 x i16> %i.fsg, i16 %i.frr, i64 9
  %i.fsi = insertelement <16 x i16> %i.fsh, i16 %i.frs, i64 10
  %i.fsj = insertelement <16 x i16> %i.fsi, i16 %i.frt, i64 11
  %i.fsk = insertelement <16 x i16> %i.fsj, i16 %i.fru, i64 12
  %i.fsl = insertelement <16 x i16> %i.fsk, i16 %i.frv, i64 13
  %i.fsm = insertelement <16 x i16> %i.fsl, i16 %i.frw, i64 14
  %i.fsn = insertelement <16 x i16> %i.fsm, i16 %i.frx, i64 15
  %i.fso = zext <16 x i16> %i.fsn to <16 x i32>
  %i.fsp = shl nuw <16 x i32> %i.fso, splat (i32 16)
  %i.fsq = bitcast <16 x i32> %i.fsp to <16 x float>
  %i.fsr = fmul fast <16 x float> %strided.vec826, %i.fsq
  %i.fss = fadd fast <16 x float> %i.fqr, %i.fsr
  %i.fst = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %index819
  store <16 x float> %i.fss, ptr %i.fst, align 4, !tbaa !24, !alias.scope !222, !noalias !223
  %i.fsu = getelementptr inbounds i8, ptr %i.evo, i64 -2
  %i.fsv = getelementptr inbounds i8, ptr %i.evp, i64 -2
  %i.fsw = getelementptr inbounds i8, ptr %i.evq, i64 -2
  %i.fsx = getelementptr inbounds i8, ptr %i.evr, i64 -2
  %i.fsy = getelementptr inbounds i8, ptr %i.evs, i64 -2
  %i.fsz = getelementptr inbounds i8, ptr %i.evt, i64 -2
  %i.fta = getelementptr inbounds i8, ptr %i.evu, i64 -2
  %i.ftb = getelementptr inbounds i8, ptr %i.evv, i64 -2
  %i.ftc = getelementptr inbounds i8, ptr %i.evw, i64 -2
  %i.ftd = getelementptr inbounds i8, ptr %i.evx, i64 -2
  %i.fte = getelementptr inbounds i8, ptr %i.evy, i64 -2
  %i.ftf = getelementptr inbounds i8, ptr %i.evz, i64 -2
  %i.ftg = getelementptr inbounds i8, ptr %i.ewa, i64 -2
  %i.fth = getelementptr inbounds i8, ptr %i.ewb, i64 -2
  %i.fti = getelementptr inbounds i8, ptr %i.ewc, i64 -2
  %i.ftj = getelementptr inbounds i8, ptr %i.ewd, i64 -2
  %i.ftk = load i16, ptr %i.fsu, align 2, !tbaa !56
  %i.ftl = load i16, ptr %i.fsv, align 2, !tbaa !56
  %i.ftm = load i16, ptr %i.fsw, align 2, !tbaa !56
  %i.ftn = load i16, ptr %i.fsx, align 2, !tbaa !56
  %i.fto = load i16, ptr %i.fsy, align 2, !tbaa !56
  %i.ftp = load i16, ptr %i.fsz, align 2, !tbaa !56
  %i.ftq = load i16, ptr %i.fta, align 2, !tbaa !56
  %i.ftr = load i16, ptr %i.ftb, align 2, !tbaa !56
  %i.fts = load i16, ptr %i.ftc, align 2, !tbaa !56
  %i.ftt = load i16, ptr %i.ftd, align 2, !tbaa !56
  %i.ftu = load i16, ptr %i.fte, align 2, !tbaa !56
  %i.ftv = load i16, ptr %i.ftf, align 2, !tbaa !56
  %i.ftw = load i16, ptr %i.ftg, align 2, !tbaa !56
  %i.ftx = load i16, ptr %i.fth, align 2, !tbaa !56
  %i.fty = load i16, ptr %i.fti, align 2, !tbaa !56
  %i.ftz = load i16, ptr %i.ftj, align 2, !tbaa !56
  %i.fua = insertelement <16 x i16> poison, i16 %i.ftk, i64 0
  %i.fub = insertelement <16 x i16> %i.fua, i16 %i.ftl, i64 1
  %i.fuc = insertelement <16 x i16> %i.fub, i16 %i.ftm, i64 2
  %i.fud = insertelement <16 x i16> %i.fuc, i16 %i.ftn, i64 3
  %i.fue = insertelement <16 x i16> %i.fud, i16 %i.fto, i64 4
  %i.fuf = insertelement <16 x i16> %i.fue, i16 %i.ftp, i64 5
  %i.fug = insertelement <16 x i16> %i.fuf, i16 %i.ftq, i64 6
  %i.fuh = insertelement <16 x i16> %i.fug, i16 %i.ftr, i64 7
  %i.fui = insertelement <16 x i16> %i.fuh, i16 %i.fts, i64 8
  %i.fuj = insertelement <16 x i16> %i.fui, i16 %i.ftt, i64 9
  %i.fuk = insertelement <16 x i16> %i.fuj, i16 %i.ftu, i64 10
  %i.ful = insertelement <16 x i16> %i.fuk, i16 %i.ftv, i64 11
  %i.fum = insertelement <16 x i16> %i.ful, i16 %i.ftw, i64 12
  %i.fun = insertelement <16 x i16> %i.fum, i16 %i.ftx, i64 13
  %i.fuo = insertelement <16 x i16> %i.fun, i16 %i.fty, i64 14
  %i.fup = insertelement <16 x i16> %i.fuo, i16 %i.ftz, i64 15
  %i.fuq = zext <16 x i16> %i.fup to <16 x i32>
  %i.fur = shl nuw <16 x i32> %i.fuq, splat (i32 16)
  %i.fus = bitcast <16 x i32> %i.fur to <16 x float>
  %i.fut = fmul fast <16 x float> %strided.vec823, %i.fus
  %i.fuu = load i16, ptr %i.evo, align 2, !tbaa !56
  %i.fuv = load i16, ptr %i.evp, align 2, !tbaa !56
  %i.fuw = load i16, ptr %i.evq, align 2, !tbaa !56
  %i.fux = load i16, ptr %i.evr, align 2, !tbaa !56
  %i.fuy = load i16, ptr %i.evs, align 2, !tbaa !56
  %i.fuz = load i16, ptr %i.evt, align 2, !tbaa !56
  %i.fva = load i16, ptr %i.evu, align 2, !tbaa !56
  %i.fvb = load i16, ptr %i.evv, align 2, !tbaa !56
  %i.fvc = load i16, ptr %i.evw, align 2, !tbaa !56
  %i.fvd = load i16, ptr %i.evx, align 2, !tbaa !56
  %i.fve = load i16, ptr %i.evy, align 2, !tbaa !56
  %i.fvf = load i16, ptr %i.evz, align 2, !tbaa !56
  %i.fvg = load i16, ptr %i.ewa, align 2, !tbaa !56
  %i.fvh = load i16, ptr %i.ewb, align 2, !tbaa !56
  %i.fvi = load i16, ptr %i.ewc, align 2, !tbaa !56
  %i.fvj = load i16, ptr %i.ewd, align 2, !tbaa !56
  %i.fvk = insertelement <16 x i16> poison, i16 %i.fuu, i64 0
  %i.fvl = insertelement <16 x i16> %i.fvk, i16 %i.fuv, i64 1
  %i.fvm = insertelement <16 x i16> %i.fvl, i16 %i.fuw, i64 2
  %i.fvn = insertelement <16 x i16> %i.fvm, i16 %i.fux, i64 3
  %i.fvo = insertelement <16 x i16> %i.fvn, i16 %i.fuy, i64 4
  %i.fvp = insertelement <16 x i16> %i.fvo, i16 %i.fuz, i64 5
  %i.fvq = insertelement <16 x i16> %i.fvp, i16 %i.fva, i64 6
  %i.fvr = insertelement <16 x i16> %i.fvq, i16 %i.fvb, i64 7
  %i.fvs = insertelement <16 x i16> %i.fvr, i16 %i.fvc, i64 8
  %i.fvt = insertelement <16 x i16> %i.fvs, i16 %i.fvd, i64 9
  %i.fvu = insertelement <16 x i16> %i.fvt, i16 %i.fve, i64 10
  %i.fvv = insertelement <16 x i16> %i.fvu, i16 %i.fvf, i64 11
  %i.fvw = insertelement <16 x i16> %i.fvv, i16 %i.fvg, i64 12
  %i.fvx = insertelement <16 x i16> %i.fvw, i16 %i.fvh, i64 13
  %i.fvy = insertelement <16 x i16> %i.fvx, i16 %i.fvi, i64 14
  %i.fvz = insertelement <16 x i16> %i.fvy, i16 %i.fvj, i64 15
  %i.fwa = zext <16 x i16> %i.fvz to <16 x i32>
  %i.fwb = shl nuw <16 x i32> %i.fwa, splat (i32 16)
  %i.fwc = bitcast <16 x i32> %i.fwb to <16 x float>
  %i.fwd = fmul fast <16 x float> %strided.vec824, %i.fwc
  %i.fwe = fadd fast <16 x float> %i.fut, %i.fwd
  %i.fwf = getelementptr inbounds nuw i8, ptr %i.evo, i64 2
  %i.fwg = getelementptr inbounds nuw i8, ptr %i.evp, i64 2
  %i.fwh = getelementptr inbounds nuw i8, ptr %i.evq, i64 2
  %i.fwi = getelementptr inbounds nuw i8, ptr %i.evr, i64 2
  %i.fwj = getelementptr inbounds nuw i8, ptr %i.evs, i64 2
  %i.fwk = getelementptr inbounds nuw i8, ptr %i.evt, i64 2
  %i.fwl = getelementptr inbounds nuw i8, ptr %i.evu, i64 2
  %i.fwm = getelementptr inbounds nuw i8, ptr %i.evv, i64 2
  %i.fwn = getelementptr inbounds nuw i8, ptr %i.evw, i64 2
  %i.fwo = getelementptr inbounds nuw i8, ptr %i.evx, i64 2
  %i.fwp = getelementptr inbounds nuw i8, ptr %i.evy, i64 2
  %i.fwq = getelementptr inbounds nuw i8, ptr %i.evz, i64 2
  %i.fwr = getelementptr inbounds nuw i8, ptr %i.ewa, i64 2
  %i.fws = getelementptr inbounds nuw i8, ptr %i.ewb, i64 2
  %i.fwt = getelementptr inbounds nuw i8, ptr %i.ewc, i64 2
  %i.fwu = getelementptr inbounds nuw i8, ptr %i.ewd, i64 2
  %i.fwv = load i16, ptr %i.fwf, align 2, !tbaa !56
  %i.fww = load i16, ptr %i.fwg, align 2, !tbaa !56
  %i.fwx = load i16, ptr %i.fwh, align 2, !tbaa !56
  %i.fwy = load i16, ptr %i.fwi, align 2, !tbaa !56
  %i.fwz = load i16, ptr %i.fwj, align 2, !tbaa !56
  %i.fxa = load i16, ptr %i.fwk, align 2, !tbaa !56
  %i.fxb = load i16, ptr %i.fwl, align 2, !tbaa !56
  %i.fxc = load i16, ptr %i.fwm, align 2, !tbaa !56
  %i.fxd = load i16, ptr %i.fwn, align 2, !tbaa !56
  %i.fxe = load i16, ptr %i.fwo, align 2, !tbaa !56
  %i.fxf = load i16, ptr %i.fwp, align 2, !tbaa !56
  %i.fxg = load i16, ptr %i.fwq, align 2, !tbaa !56
  %i.fxh = load i16, ptr %i.fwr, align 2, !tbaa !56
  %i.fxi = load i16, ptr %i.fws, align 2, !tbaa !56
  %i.fxj = load i16, ptr %i.fwt, align 2, !tbaa !56
  %i.fxk = load i16, ptr %i.fwu, align 2, !tbaa !56
  %i.fxl = insertelement <16 x i16> poison, i16 %i.fwv, i64 0
  %i.fxm = insertelement <16 x i16> %i.fxl, i16 %i.fww, i64 1
  %i.fxn = insertelement <16 x i16> %i.fxm, i16 %i.fwx, i64 2
  %i.fxo = insertelement <16 x i16> %i.fxn, i16 %i.fwy, i64 3
  %i.fxp = insertelement <16 x i16> %i.fxo, i16 %i.fwz, i64 4
  %i.fxq = insertelement <16 x i16> %i.fxp, i16 %i.fxa, i64 5
  %i.fxr = insertelement <16 x i16> %i.fxq, i16 %i.fxb, i64 6
  %i.fxs = insertelement <16 x i16> %i.fxr, i16 %i.fxc, i64 7
  %i.fxt = insertelement <16 x i16> %i.fxs, i16 %i.fxd, i64 8
  %i.fxu = insertelement <16 x i16> %i.fxt, i16 %i.fxe, i64 9
  %i.fxv = insertelement <16 x i16> %i.fxu, i16 %i.fxf, i64 10
  %i.fxw = insertelement <16 x i16> %i.fxv, i16 %i.fxg, i64 11
  %i.fxx = insertelement <16 x i16> %i.fxw, i16 %i.fxh, i64 12
  %i.fxy = insertelement <16 x i16> %i.fxx, i16 %i.fxi, i64 13
  %i.fxz = insertelement <16 x i16> %i.fxy, i16 %i.fxj, i64 14
  %i.fya = insertelement <16 x i16> %i.fxz, i16 %i.fxk, i64 15
  %i.fyb = zext <16 x i16> %i.fya to <16 x i32>
  %i.fyc = shl nuw <16 x i32> %i.fyb, splat (i32 16)
  %i.fyd = bitcast <16 x i32> %i.fyc to <16 x float>
  %i.fye = fmul fast <16 x float> %strided.vec825, %i.fyd
  %i.fyf = fadd fast <16 x float> %i.fwe, %i.fye
  %i.fyg = getelementptr inbounds nuw i8, ptr %i.evo, i64 4
  %i.fyh = getelementptr inbounds nuw i8, ptr %i.evp, i64 4
  %i.fyi = getelementptr inbounds nuw i8, ptr %i.evq, i64 4
  %i.fyj = getelementptr inbounds nuw i8, ptr %i.evr, i64 4
  %i.fyk = getelementptr inbounds nuw i8, ptr %i.evs, i64 4
  %i.fyl = getelementptr inbounds nuw i8, ptr %i.evt, i64 4
  %i.fym = getelementptr inbounds nuw i8, ptr %i.evu, i64 4
  %i.fyn = getelementptr inbounds nuw i8, ptr %i.evv, i64 4
  %i.fyo = getelementptr inbounds nuw i8, ptr %i.evw, i64 4
  %i.fyp = getelementptr inbounds nuw i8, ptr %i.evx, i64 4
  %i.fyq = getelementptr inbounds nuw i8, ptr %i.evy, i64 4
  %i.fyr = getelementptr inbounds nuw i8, ptr %i.evz, i64 4
  %i.fys = getelementptr inbounds nuw i8, ptr %i.ewa, i64 4
  %i.fyt = getelementptr inbounds nuw i8, ptr %i.ewb, i64 4
  %i.fyu = getelementptr inbounds nuw i8, ptr %i.ewc, i64 4
  %i.fyv = getelementptr inbounds nuw i8, ptr %i.ewd, i64 4
  %i.fyw = load i16, ptr %i.fyg, align 2, !tbaa !56
  %i.fyx = load i16, ptr %i.fyh, align 2, !tbaa !56
  %i.fyy = load i16, ptr %i.fyi, align 2, !tbaa !56
  %i.fyz = load i16, ptr %i.fyj, align 2, !tbaa !56
  %i.fza = load i16, ptr %i.fyk, align 2, !tbaa !56
  %i.fzb = load i16, ptr %i.fyl, align 2, !tbaa !56
  %i.fzc = load i16, ptr %i.fym, align 2, !tbaa !56
  %i.fzd = load i16, ptr %i.fyn, align 2, !tbaa !56
  %i.fze = load i16, ptr %i.fyo, align 2, !tbaa !56
  %i.fzf = load i16, ptr %i.fyp, align 2, !tbaa !56
  %i.fzg = load i16, ptr %i.fyq, align 2, !tbaa !56
  %i.fzh = load i16, ptr %i.fyr, align 2, !tbaa !56
  %i.fzi = load i16, ptr %i.fys, align 2, !tbaa !56
  %i.fzj = load i16, ptr %i.fyt, align 2, !tbaa !56
  %i.fzk = load i16, ptr %i.fyu, align 2, !tbaa !56
  %i.fzl = load i16, ptr %i.fyv, align 2, !tbaa !56
  %i.fzm = insertelement <16 x i16> poison, i16 %i.fyw, i64 0
  %i.fzn = insertelement <16 x i16> %i.fzm, i16 %i.fyx, i64 1
  %i.fzo = insertelement <16 x i16> %i.fzn, i16 %i.fyy, i64 2
  %i.fzp = insertelement <16 x i16> %i.fzo, i16 %i.fyz, i64 3
  %i.fzq = insertelement <16 x i16> %i.fzp, i16 %i.fza, i64 4
  %i.fzr = insertelement <16 x i16> %i.fzq, i16 %i.fzb, i64 5
  %i.fzs = insertelement <16 x i16> %i.fzr, i16 %i.fzc, i64 6
  %i.fzt = insertelement <16 x i16> %i.fzs, i16 %i.fzd, i64 7
  %i.fzu = insertelement <16 x i16> %i.fzt, i16 %i.fze, i64 8
  %i.fzv = insertelement <16 x i16> %i.fzu, i16 %i.fzf, i64 9
  %i.fzw = insertelement <16 x i16> %i.fzv, i16 %i.fzg, i64 10
  %i.fzx = insertelement <16 x i16> %i.fzw, i16 %i.fzh, i64 11
  %i.fzy = insertelement <16 x i16> %i.fzx, i16 %i.fzi, i64 12
  %i.fzz = insertelement <16 x i16> %i.fzy, i16 %i.fzj, i64 13
  %i.gaa = insertelement <16 x i16> %i.fzz, i16 %i.fzk, i64 14
  %i.gab = insertelement <16 x i16> %i.gaa, i16 %i.fzl, i64 15
  %i.gac = zext <16 x i16> %i.gab to <16 x i32>
  %i.gad = shl nuw <16 x i32> %i.gac, splat (i32 16)
  %i.gae = bitcast <16 x i32> %i.gad to <16 x float>
  %i.gaf = fmul fast <16 x float> %strided.vec826, %i.gae
  %i.gag = fadd fast <16 x float> %i.fyf, %i.gaf
  %i.gah = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %index819
  store <16 x float> %i.gag, ptr %i.gah, align 4, !tbaa !24, !alias.scope !224, !noalias !211
  %index.next827 = add nuw i64 %index819, 16      ; 2 uses
  %i.gai = icmp eq i64 %index.next827, %n.vec817
  br i1 %i.gai, label %middle.block828, label %vector.body818, !llvm.loop !225

middle.block828:                                  ; preds = %vector.body818
  br i1 %cmp.n829, label %.loopexit.i142, label %vec.epilog.iter.check833

vec.epilog.iter.check833:                         ; preds = %middle.block828
  br i1 %min.epilog.iters.check834, label %.lr.ph.i168.preheader, label %vec.epilog.ph835, !prof !46

vec.epilog.ph835:                                 ; preds = %vector.main.loop.iter.check814, %vec.epilog.iter.check833
  %vec.epilog.resume.val830 = phi i64 [ %n.vec817, %vec.epilog.iter.check833 ], [ 0, %vector.main.loop.iter.check814 ]
  br label %vec.epilog.vector.body837

vec.epilog.vector.body837:                        ; preds = %vec.epilog.vector.body837, %vec.epilog.ph835
  %index838 = phi i64 [ %vec.epilog.resume.val830, %vec.epilog.ph835 ], [ %index.next846, %vec.epilog.vector.body837 ] ; 7 uses
  %i.gaj = shl i64 %index838, 4
  %next.gep839 = getelementptr i8, ptr %i.bul, i64 %i.gaj
  %i.gak = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %index838
  %wide.load840 = load <4 x i32>, ptr %i.gak, align 4, !tbaa !18
  %i.gal = sext <4 x i32> %wide.load840 to <4 x i64> ; 4 uses
  %i.gam = extractelement <4 x i64> %i.gal, i64 0 ; 4 uses
  %i.gan = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.gam ; 4 uses
  %i.gao = extractelement <4 x i64> %i.gal, i64 1 ; 4 uses
  %i.gap = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.gao ; 4 uses
  %i.gaq = extractelement <4 x i64> %i.gal, i64 2 ; 4 uses
  %i.gar = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.gaq ; 4 uses
  %i.gas = extractelement <4 x i64> %i.gal, i64 3 ; 4 uses
  %i.gat = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.gas ; 4 uses
  %i.gau = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.gam ; 4 uses
  %i.gav = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.gao ; 4 uses
  %i.gaw = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.gaq ; 4 uses
  %i.gax = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.gas ; 4 uses
  %i.gay = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.gam ; 4 uses
  %i.gaz = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.gao ; 4 uses
  %i.gba = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.gaq ; 4 uses
  %i.gbb = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.gas ; 4 uses
  %i.gbc = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.gam ; 4 uses
  %i.gbd = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.gao ; 4 uses
  %i.gbe = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.gaq ; 4 uses
  %i.gbf = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.gas ; 4 uses
  %wide.vec841 = load <16 x float>, ptr %next.gep839, align 4, !tbaa !24, !alias.scope !211 ; 4 uses
  %strided.vec842 = shufflevector <16 x float> %wide.vec841, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 4 uses
  %strided.vec843 = shufflevector <16 x float> %wide.vec841, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 4 uses
  %strided.vec844 = shufflevector <16 x float> %wide.vec841, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 4 uses
  %strided.vec845 = shufflevector <16 x float> %wide.vec841, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 4 uses
  %i.gbg = getelementptr inbounds i8, ptr %i.gan, i64 -2
  %i.gbh = getelementptr inbounds i8, ptr %i.gap, i64 -2
  %i.gbi = getelementptr inbounds i8, ptr %i.gar, i64 -2
  %i.gbj = getelementptr inbounds i8, ptr %i.gat, i64 -2
  %i.gbk = load i16, ptr %i.gbg, align 2, !tbaa !56
  %i.gbl = load i16, ptr %i.gbh, align 2, !tbaa !56
  %i.gbm = load i16, ptr %i.gbi, align 2, !tbaa !56
  %i.gbn = load i16, ptr %i.gbj, align 2, !tbaa !56
  %i.gbo = insertelement <4 x i16> poison, i16 %i.gbk, i64 0
  %i.gbp = insertelement <4 x i16> %i.gbo, i16 %i.gbl, i64 1
  %i.gbq = insertelement <4 x i16> %i.gbp, i16 %i.gbm, i64 2
  %i.gbr = insertelement <4 x i16> %i.gbq, i16 %i.gbn, i64 3
  %i.gbs = zext <4 x i16> %i.gbr to <4 x i32>
  %i.gbt = shl nuw <4 x i32> %i.gbs, splat (i32 16)
  %i.gbu = bitcast <4 x i32> %i.gbt to <4 x float>
  %i.gbv = fmul fast <4 x float> %strided.vec842, %i.gbu
  %i.gbw = load i16, ptr %i.gan, align 2, !tbaa !56
  %i.gbx = load i16, ptr %i.gap, align 2, !tbaa !56
  %i.gby = load i16, ptr %i.gar, align 2, !tbaa !56
  %i.gbz = load i16, ptr %i.gat, align 2, !tbaa !56
  %i.gca = insertelement <4 x i16> poison, i16 %i.gbw, i64 0
  %i.gcb = insertelement <4 x i16> %i.gca, i16 %i.gbx, i64 1
  %i.gcc = insertelement <4 x i16> %i.gcb, i16 %i.gby, i64 2
  %i.gcd = insertelement <4 x i16> %i.gcc, i16 %i.gbz, i64 3
  %i.gce = zext <4 x i16> %i.gcd to <4 x i32>
  %i.gcf = shl nuw <4 x i32> %i.gce, splat (i32 16)
  %i.gcg = bitcast <4 x i32> %i.gcf to <4 x float>
  %i.gch = fmul fast <4 x float> %strided.vec843, %i.gcg
  %i.gci = fadd fast <4 x float> %i.gbv, %i.gch
  %i.gcj = getelementptr inbounds nuw i8, ptr %i.gan, i64 2
  %i.gck = getelementptr inbounds nuw i8, ptr %i.gap, i64 2
  %i.gcl = getelementptr inbounds nuw i8, ptr %i.gar, i64 2
  %i.gcm = getelementptr inbounds nuw i8, ptr %i.gat, i64 2
  %i.gcn = load i16, ptr %i.gcj, align 2, !tbaa !56
  %i.gco = load i16, ptr %i.gck, align 2, !tbaa !56
  %i.gcp = load i16, ptr %i.gcl, align 2, !tbaa !56
  %i.gcq = load i16, ptr %i.gcm, align 2, !tbaa !56
  %i.gcr = insertelement <4 x i16> poison, i16 %i.gcn, i64 0
  %i.gcs = insertelement <4 x i16> %i.gcr, i16 %i.gco, i64 1
  %i.gct = insertelement <4 x i16> %i.gcs, i16 %i.gcp, i64 2
  %i.gcu = insertelement <4 x i16> %i.gct, i16 %i.gcq, i64 3
  %i.gcv = zext <4 x i16> %i.gcu to <4 x i32>
  %i.gcw = shl nuw <4 x i32> %i.gcv, splat (i32 16)
  %i.gcx = bitcast <4 x i32> %i.gcw to <4 x float>
  %i.gcy = fmul fast <4 x float> %strided.vec844, %i.gcx
  %i.gcz = fadd fast <4 x float> %i.gci, %i.gcy
  %i.gda = getelementptr inbounds nuw i8, ptr %i.gan, i64 4
  %i.gdb = getelementptr inbounds nuw i8, ptr %i.gap, i64 4
  %i.gdc = getelementptr inbounds nuw i8, ptr %i.gar, i64 4
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.gat, i64 4
  %i.gde = load i16, ptr %i.gda, align 2, !tbaa !56
  %i.gdf = load i16, ptr %i.gdb, align 2, !tbaa !56
  %i.gdg = load i16, ptr %i.gdc, align 2, !tbaa !56
  %i.gdh = load i16, ptr %i.gdd, align 2, !tbaa !56
  %i.gdi = insertelement <4 x i16> poison, i16 %i.gde, i64 0
  %i.gdj = insertelement <4 x i16> %i.gdi, i16 %i.gdf, i64 1
  %i.gdk = insertelement <4 x i16> %i.gdj, i16 %i.gdg, i64 2
  %i.gdl = insertelement <4 x i16> %i.gdk, i16 %i.gdh, i64 3
  %i.gdm = zext <4 x i16> %i.gdl to <4 x i32>
  %i.gdn = shl nuw <4 x i32> %i.gdm, splat (i32 16)
  %i.gdo = bitcast <4 x i32> %i.gdn to <4 x float>
  %i.gdp = fmul fast <4 x float> %strided.vec845, %i.gdo
  %i.gdq = fadd fast <4 x float> %i.gcz, %i.gdp
  %i.gdr = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index838
  store <4 x float> %i.gdq, ptr %i.gdr, align 4, !tbaa !24, !alias.scope !214, !noalias !216
  %i.gds = getelementptr inbounds i8, ptr %i.gau, i64 -2
  %i.gdt = getelementptr inbounds i8, ptr %i.gav, i64 -2
  %i.gdu = getelementptr inbounds i8, ptr %i.gaw, i64 -2
  %i.gdv = getelementptr inbounds i8, ptr %i.gax, i64 -2
  %i.gdw = load i16, ptr %i.gds, align 2, !tbaa !56
  %i.gdx = load i16, ptr %i.gdt, align 2, !tbaa !56
  %i.gdy = load i16, ptr %i.gdu, align 2, !tbaa !56
  %i.gdz = load i16, ptr %i.gdv, align 2, !tbaa !56
  %i.gea = insertelement <4 x i16> poison, i16 %i.gdw, i64 0
  %i.geb = insertelement <4 x i16> %i.gea, i16 %i.gdx, i64 1
  %i.gec = insertelement <4 x i16> %i.geb, i16 %i.gdy, i64 2
  %i.ged = insertelement <4 x i16> %i.gec, i16 %i.gdz, i64 3
  %i.gee = zext <4 x i16> %i.ged to <4 x i32>
  %i.gef = shl nuw <4 x i32> %i.gee, splat (i32 16)
  %i.geg = bitcast <4 x i32> %i.gef to <4 x float>
  %i.geh = fmul fast <4 x float> %strided.vec842, %i.geg
  %i.gei = load i16, ptr %i.gau, align 2, !tbaa !56
  %i.gej = load i16, ptr %i.gav, align 2, !tbaa !56
  %i.gek = load i16, ptr %i.gaw, align 2, !tbaa !56
  %i.gel = load i16, ptr %i.gax, align 2, !tbaa !56
  %i.gem = insertelement <4 x i16> poison, i16 %i.gei, i64 0
  %i.gen = insertelement <4 x i16> %i.gem, i16 %i.gej, i64 1
  %i.geo = insertelement <4 x i16> %i.gen, i16 %i.gek, i64 2
  %i.gep = insertelement <4 x i16> %i.geo, i16 %i.gel, i64 3
  %i.geq = zext <4 x i16> %i.gep to <4 x i32>
  %i.ger = shl nuw <4 x i32> %i.geq, splat (i32 16)
  %i.ges = bitcast <4 x i32> %i.ger to <4 x float>
  %i.get = fmul fast <4 x float> %strided.vec843, %i.ges
  %i.geu = fadd fast <4 x float> %i.geh, %i.get
  %i.gev = getelementptr inbounds nuw i8, ptr %i.gau, i64 2
  %i.gew = getelementptr inbounds nuw i8, ptr %i.gav, i64 2
  %i.gex = getelementptr inbounds nuw i8, ptr %i.gaw, i64 2
  %i.gey = getelementptr inbounds nuw i8, ptr %i.gax, i64 2
  %i.gez = load i16, ptr %i.gev, align 2, !tbaa !56
  %i.gfa = load i16, ptr %i.gew, align 2, !tbaa !56
  %i.gfb = load i16, ptr %i.gex, align 2, !tbaa !56
  %i.gfc = load i16, ptr %i.gey, align 2, !tbaa !56
  %i.gfd = insertelement <4 x i16> poison, i16 %i.gez, i64 0
  %i.gfe = insertelement <4 x i16> %i.gfd, i16 %i.gfa, i64 1
  %i.gff = insertelement <4 x i16> %i.gfe, i16 %i.gfb, i64 2
  %i.gfg = insertelement <4 x i16> %i.gff, i16 %i.gfc, i64 3
  %i.gfh = zext <4 x i16> %i.gfg to <4 x i32>
  %i.gfi = shl nuw <4 x i32> %i.gfh, splat (i32 16)
  %i.gfj = bitcast <4 x i32> %i.gfi to <4 x float>
  %i.gfk = fmul fast <4 x float> %strided.vec844, %i.gfj
  %i.gfl = fadd fast <4 x float> %i.geu, %i.gfk
  %i.gfm = getelementptr inbounds nuw i8, ptr %i.gau, i64 4
  %i.gfn = getelementptr inbounds nuw i8, ptr %i.gav, i64 4
  %i.gfo = getelementptr inbounds nuw i8, ptr %i.gaw, i64 4
  %i.gfp = getelementptr inbounds nuw i8, ptr %i.gax, i64 4
  %i.gfq = load i16, ptr %i.gfm, align 2, !tbaa !56
  %i.gfr = load i16, ptr %i.gfn, align 2, !tbaa !56
  %i.gfs = load i16, ptr %i.gfo, align 2, !tbaa !56
  %i.gft = load i16, ptr %i.gfp, align 2, !tbaa !56
  %i.gfu = insertelement <4 x i16> poison, i16 %i.gfq, i64 0
  %i.gfv = insertelement <4 x i16> %i.gfu, i16 %i.gfr, i64 1
  %i.gfw = insertelement <4 x i16> %i.gfv, i16 %i.gfs, i64 2
  %i.gfx = insertelement <4 x i16> %i.gfw, i16 %i.gft, i64 3
  %i.gfy = zext <4 x i16> %i.gfx to <4 x i32>
  %i.gfz = shl nuw <4 x i32> %i.gfy, splat (i32 16)
  %i.gga = bitcast <4 x i32> %i.gfz to <4 x float>
  %i.ggb = fmul fast <4 x float> %strided.vec845, %i.gga
  %i.ggc = fadd fast <4 x float> %i.gfl, %i.ggb
  %i.ggd = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index838
  store <4 x float> %i.ggc, ptr %i.ggd, align 4, !tbaa !24, !alias.scope !220, !noalias !221
  %i.gge = getelementptr inbounds i8, ptr %i.gay, i64 -2
  %i.ggf = getelementptr inbounds i8, ptr %i.gaz, i64 -2
  %i.ggg = getelementptr inbounds i8, ptr %i.gba, i64 -2
  %i.ggh = getelementptr inbounds i8, ptr %i.gbb, i64 -2
  %i.ggi = load i16, ptr %i.gge, align 2, !tbaa !56
  %i.ggj = load i16, ptr %i.ggf, align 2, !tbaa !56
  %i.ggk = load i16, ptr %i.ggg, align 2, !tbaa !56
  %i.ggl = load i16, ptr %i.ggh, align 2, !tbaa !56
  %i.ggm = insertelement <4 x i16> poison, i16 %i.ggi, i64 0
  %i.ggn = insertelement <4 x i16> %i.ggm, i16 %i.ggj, i64 1
  %i.ggo = insertelement <4 x i16> %i.ggn, i16 %i.ggk, i64 2
  %i.ggp = insertelement <4 x i16> %i.ggo, i16 %i.ggl, i64 3
  %i.ggq = zext <4 x i16> %i.ggp to <4 x i32>
  %i.ggr = shl nuw <4 x i32> %i.ggq, splat (i32 16)
  %i.ggs = bitcast <4 x i32> %i.ggr to <4 x float>
  %i.ggt = fmul fast <4 x float> %strided.vec842, %i.ggs
  %i.ggu = load i16, ptr %i.gay, align 2, !tbaa !56
  %i.ggv = load i16, ptr %i.gaz, align 2, !tbaa !56
  %i.ggw = load i16, ptr %i.gba, align 2, !tbaa !56
  %i.ggx = load i16, ptr %i.gbb, align 2, !tbaa !56
  %i.ggy = insertelement <4 x i16> poison, i16 %i.ggu, i64 0
  %i.ggz = insertelement <4 x i16> %i.ggy, i16 %i.ggv, i64 1
  %i.gha = insertelement <4 x i16> %i.ggz, i16 %i.ggw, i64 2
  %i.ghb = insertelement <4 x i16> %i.gha, i16 %i.ggx, i64 3
  %i.ghc = zext <4 x i16> %i.ghb to <4 x i32>
  %i.ghd = shl nuw <4 x i32> %i.ghc, splat (i32 16)
  %i.ghe = bitcast <4 x i32> %i.ghd to <4 x float>
  %i.ghf = fmul fast <4 x float> %strided.vec843, %i.ghe
  %i.ghg = fadd fast <4 x float> %i.ggt, %i.ghf
  %i.ghh = getelementptr inbounds nuw i8, ptr %i.gay, i64 2
  %i.ghi = getelementptr inbounds nuw i8, ptr %i.gaz, i64 2
  %i.ghj = getelementptr inbounds nuw i8, ptr %i.gba, i64 2
  %i.ghk = getelementptr inbounds nuw i8, ptr %i.gbb, i64 2
  %i.ghl = load i16, ptr %i.ghh, align 2, !tbaa !56
  %i.ghm = load i16, ptr %i.ghi, align 2, !tbaa !56
  %i.ghn = load i16, ptr %i.ghj, align 2, !tbaa !56
  %i.gho = load i16, ptr %i.ghk, align 2, !tbaa !56
  %i.ghp = insertelement <4 x i16> poison, i16 %i.ghl, i64 0
  %i.ghq = insertelement <4 x i16> %i.ghp, i16 %i.ghm, i64 1
  %i.ghr = insertelement <4 x i16> %i.ghq, i16 %i.ghn, i64 2
  %i.ghs = insertelement <4 x i16> %i.ghr, i16 %i.gho, i64 3
  %i.ght = zext <4 x i16> %i.ghs to <4 x i32>
  %i.ghu = shl nuw <4 x i32> %i.ght, splat (i32 16)
  %i.ghv = bitcast <4 x i32> %i.ghu to <4 x float>
  %i.ghw = fmul fast <4 x float> %strided.vec844, %i.ghv
  %i.ghx = fadd fast <4 x float> %i.ghg, %i.ghw
  %i.ghy = getelementptr inbounds nuw i8, ptr %i.gay, i64 4
  %i.ghz = getelementptr inbounds nuw i8, ptr %i.gaz, i64 4
  %i.gia = getelementptr inbounds nuw i8, ptr %i.gba, i64 4
  %i.gib = getelementptr inbounds nuw i8, ptr %i.gbb, i64 4
  %i.gic = load i16, ptr %i.ghy, align 2, !tbaa !56
  %i.gid = load i16, ptr %i.ghz, align 2, !tbaa !56
  %i.gie = load i16, ptr %i.gia, align 2, !tbaa !56
  %i.gif = load i16, ptr %i.gib, align 2, !tbaa !56
  %i.gig = insertelement <4 x i16> poison, i16 %i.gic, i64 0
  %i.gih = insertelement <4 x i16> %i.gig, i16 %i.gid, i64 1
  %i.gii = insertelement <4 x i16> %i.gih, i16 %i.gie, i64 2
  %i.gij = insertelement <4 x i16> %i.gii, i16 %i.gif, i64 3
  %i.gik = zext <4 x i16> %i.gij to <4 x i32>
  %i.gil = shl nuw <4 x i32> %i.gik, splat (i32 16)
  %i.gim = bitcast <4 x i32> %i.gil to <4 x float>
  %i.gin = fmul fast <4 x float> %strided.vec845, %i.gim
  %i.gio = fadd fast <4 x float> %i.ghx, %i.gin
  %i.gip = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %index838
  store <4 x float> %i.gio, ptr %i.gip, align 4, !tbaa !24, !alias.scope !222, !noalias !223
  %i.giq = getelementptr inbounds i8, ptr %i.gbc, i64 -2
  %i.gir = getelementptr inbounds i8, ptr %i.gbd, i64 -2
  %i.gis = getelementptr inbounds i8, ptr %i.gbe, i64 -2
  %i.git = getelementptr inbounds i8, ptr %i.gbf, i64 -2
  %i.giu = load i16, ptr %i.giq, align 2, !tbaa !56
  %i.giv = load i16, ptr %i.gir, align 2, !tbaa !56
  %i.giw = load i16, ptr %i.gis, align 2, !tbaa !56
  %i.gix = load i16, ptr %i.git, align 2, !tbaa !56
  %i.giy = insertelement <4 x i16> poison, i16 %i.giu, i64 0
  %i.giz = insertelement <4 x i16> %i.giy, i16 %i.giv, i64 1
  %i.gja = insertelement <4 x i16> %i.giz, i16 %i.giw, i64 2
  %i.gjb = insertelement <4 x i16> %i.gja, i16 %i.gix, i64 3
  %i.gjc = zext <4 x i16> %i.gjb to <4 x i32>
  %i.gjd = shl nuw <4 x i32> %i.gjc, splat (i32 16)
  %i.gje = bitcast <4 x i32> %i.gjd to <4 x float>
  %i.gjf = fmul fast <4 x float> %strided.vec842, %i.gje
  %i.gjg = load i16, ptr %i.gbc, align 2, !tbaa !56
  %i.gjh = load i16, ptr %i.gbd, align 2, !tbaa !56
  %i.gji = load i16, ptr %i.gbe, align 2, !tbaa !56
  %i.gjj = load i16, ptr %i.gbf, align 2, !tbaa !56
  %i.gjk = insertelement <4 x i16> poison, i16 %i.gjg, i64 0
  %i.gjl = insertelement <4 x i16> %i.gjk, i16 %i.gjh, i64 1
  %i.gjm = insertelement <4 x i16> %i.gjl, i16 %i.gji, i64 2
  %i.gjn = insertelement <4 x i16> %i.gjm, i16 %i.gjj, i64 3
  %i.gjo = zext <4 x i16> %i.gjn to <4 x i32>
  %i.gjp = shl nuw <4 x i32> %i.gjo, splat (i32 16)
  %i.gjq = bitcast <4 x i32> %i.gjp to <4 x float>
  %i.gjr = fmul fast <4 x float> %strided.vec843, %i.gjq
  %i.gjs = fadd fast <4 x float> %i.gjf, %i.gjr
  %i.gjt = getelementptr inbounds nuw i8, ptr %i.gbc, i64 2
  %i.gju = getelementptr inbounds nuw i8, ptr %i.gbd, i64 2
  %i.gjv = getelementptr inbounds nuw i8, ptr %i.gbe, i64 2
  %i.gjw = getelementptr inbounds nuw i8, ptr %i.gbf, i64 2
  %i.gjx = load i16, ptr %i.gjt, align 2, !tbaa !56
  %i.gjy = load i16, ptr %i.gju, align 2, !tbaa !56
  %i.gjz = load i16, ptr %i.gjv, align 2, !tbaa !56
  %i.gka = load i16, ptr %i.gjw, align 2, !tbaa !56
  %i.gkb = insertelement <4 x i16> poison, i16 %i.gjx, i64 0
  %i.gkc = insertelement <4 x i16> %i.gkb, i16 %i.gjy, i64 1
  %i.gkd = insertelement <4 x i16> %i.gkc, i16 %i.gjz, i64 2
  %i.gke = insertelement <4 x i16> %i.gkd, i16 %i.gka, i64 3
  %i.gkf = zext <4 x i16> %i.gke to <4 x i32>
  %i.gkg = shl nuw <4 x i32> %i.gkf, splat (i32 16)
  %i.gkh = bitcast <4 x i32> %i.gkg to <4 x float>
  %i.gki = fmul fast <4 x float> %strided.vec844, %i.gkh
  %i.gkj = fadd fast <4 x float> %i.gjs, %i.gki
  %i.gkk = getelementptr inbounds nuw i8, ptr %i.gbc, i64 4
  %i.gkl = getelementptr inbounds nuw i8, ptr %i.gbd, i64 4
  %i.gkm = getelementptr inbounds nuw i8, ptr %i.gbe, i64 4
  %i.gkn = getelementptr inbounds nuw i8, ptr %i.gbf, i64 4
  %i.gko = load i16, ptr %i.gkk, align 2, !tbaa !56
  %i.gkp = load i16, ptr %i.gkl, align 2, !tbaa !56
  %i.gkq = load i16, ptr %i.gkm, align 2, !tbaa !56
  %i.gkr = load i16, ptr %i.gkn, align 2, !tbaa !56
  %i.gks = insertelement <4 x i16> poison, i16 %i.gko, i64 0
  %i.gkt = insertelement <4 x i16> %i.gks, i16 %i.gkp, i64 1
  %i.gku = insertelement <4 x i16> %i.gkt, i16 %i.gkq, i64 2
  %i.gkv = insertelement <4 x i16> %i.gku, i16 %i.gkr, i64 3
  %i.gkw = zext <4 x i16> %i.gkv to <4 x i32>
  %i.gkx = shl nuw <4 x i32> %i.gkw, splat (i32 16)
  %i.gky = bitcast <4 x i32> %i.gkx to <4 x float>
  %i.gkz = fmul fast <4 x float> %strided.vec845, %i.gky
  %i.gla = fadd fast <4 x float> %i.gkj, %i.gkz
  %i.glb = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %index838
  store <4 x float> %i.gla, ptr %i.glb, align 4, !tbaa !24, !alias.scope !224, !noalias !211
  %index.next846 = add nuw i64 %index838, 4       ; 2 uses
  %i.glc = icmp eq i64 %index.next846, %n.vec836
  br i1 %i.glc, label %vec.epilog.middle.block847, label %vec.epilog.vector.body837, !llvm.loop !226

vec.epilog.middle.block847:                       ; preds = %vec.epilog.vector.body837
  br i1 %cmp.n848, label %.loopexit.i142, label %.lr.ph.i168.preheader

.lr.ph.i168.preheader:                            ; preds = %vector.memcheck769, %iter.check831, %vec.epilog.iter.check833, %vec.epilog.middle.block847
  %indvars.iv.i169.ph = phi i64 [ 0, %iter.check831 ], [ 0, %vector.memcheck769 ], [ %n.vec817, %vec.epilog.iter.check833 ], [ %n.vec836, %vec.epilog.middle.block847 ]
  %.0264329.i.ph = phi ptr [ %i.bul, %iter.check831 ], [ %i.bul, %vector.memcheck769 ], [ %i.bvd, %vec.epilog.iter.check833 ], [ %i.bvf, %vec.epilog.middle.block847 ]
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.preheader, %.lr.ph.i168
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i170, %.lr.ph.i168 ], [ %indvars.iv.i169.ph, %.lr.ph.i168.preheader ] ; 6 uses
  %.0264329.i = phi ptr [ %i.gmr, %.lr.ph.i168 ], [ %.0264329.i.ph, %.lr.ph.i168.preheader ] ; 2 uses
  %i.gld = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %indvars.iv.i169
  %i.gle = load i32, ptr %i.gld, align 4, !tbaa !18
  %i.glf = sext i32 %i.gle to i64                 ; 4 uses
  %i.glg = getelementptr inbounds [2 x i8], ptr %i.esn, i64 %i.glf
  %i.glh = getelementptr inbounds [2 x i8], ptr %i.esq, i64 %i.glf
  %i.gli = getelementptr inbounds [2 x i8], ptr %i.esu, i64 %i.glf
  %i.glj = getelementptr inbounds [2 x i8], ptr %i.esy, i64 %i.glf
  %i.glk = getelementptr inbounds i8, ptr %i.glg, i64 -2
  %i.gll = load <4 x float>, ptr %.0264329.i, align 4, !tbaa !24 ; 4 uses
  %i.glm = load <4 x i16>, ptr %i.glk, align 2, !tbaa !56
  %i.gln = zext <4 x i16> %i.glm to <4 x i32>
  %i.glo = shl nuw <4 x i32> %i.gln, splat (i32 16)
  %i.glp = bitcast <4 x i32> %i.glo to <4 x float>
  %i.glq = fmul fast <4 x float> %i.gll, %i.glp
  %i.glr = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.glq)
  %i.gls = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.i169
  store float %i.glr, ptr %i.gls, align 4, !tbaa !24
  %i.glt = getelementptr inbounds i8, ptr %i.glh, i64 -2
  %i.glu = load <4 x i16>, ptr %i.glt, align 2, !tbaa !56
  %i.glv = zext <4 x i16> %i.glu to <4 x i32>
  %i.glw = shl nuw <4 x i32> %i.glv, splat (i32 16)
  %i.glx = bitcast <4 x i32> %i.glw to <4 x float>
  %i.gly = fmul fast <4 x float> %i.gll, %i.glx
  %i.glz = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gly)
  %i.gma = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv.i169
  store float %i.glz, ptr %i.gma, align 4, !tbaa !24
  %i.gmb = getelementptr inbounds i8, ptr %i.gli, i64 -2
  %i.gmc = load <4 x i16>, ptr %i.gmb, align 2, !tbaa !56
  %i.gmd = zext <4 x i16> %i.gmc to <4 x i32>
  %i.gme = shl nuw <4 x i32> %i.gmd, splat (i32 16)
  %i.gmf = bitcast <4 x i32> %i.gme to <4 x float>
  %i.gmg = fmul fast <4 x float> %i.gll, %i.gmf
  %i.gmh = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gmg)
  %i.gmi = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv.i169
  store float %i.gmh, ptr %i.gmi, align 4, !tbaa !24
  %i.gmj = getelementptr inbounds i8, ptr %i.glj, i64 -2
  %i.gmk = load <4 x i16>, ptr %i.gmj, align 2, !tbaa !56
  %i.gml = zext <4 x i16> %i.gmk to <4 x i32>
  %i.gmm = shl nuw <4 x i32> %i.gml, splat (i32 16)
  %i.gmn = bitcast <4 x i32> %i.gmm to <4 x float>
  %i.gmo = fmul fast <4 x float> %i.gll, %i.gmn
  %i.gmp = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gmo)
  %i.gmq = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %indvars.iv.i169
  store float %i.gmp, ptr %i.gmq, align 4, !tbaa !24
  %i.gmr = getelementptr inbounds nuw i8, ptr %.0264329.i, i64 16
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, %i.buw
  br i1 %exitcond.not.i171, label %.loopexit.i142, label %.lr.ph.i168, !llvm.loop !227

.loopexit.i142:                                   ; preds = %.lr.ph.i168, %.lr.ph333.i, %.lr.ph336.i, %.lr.ph339.i.prol.loopexit, %.lr.ph339.i, %middle.block828, %vec.epilog.middle.block847, %middle.block746, %vec.epilog.middle.block765, %middle.block681, %vec.epilog.middle.block700, %middle.block630, %vec.epilog.middle.block649, %bb.gx, %bb.gw, %bb.gu, %bb.gs, %bb.gq
  %.1256.i143 = phi ptr [ %.0255342.i, %bb.gq ], [ %.0249345.i, %bb.gs ], [ %.0251344.i, %bb.gu ], [ %.0253343.i, %bb.gw ], [ %.0255342.i, %bb.gx ], [ %.0251344.i, %middle.block681 ], [ %.0253343.i, %middle.block746 ], [ %.0249345.i, %middle.block630 ], [ %.0255342.i, %middle.block828 ], [ %.0249345.i, %vec.epilog.middle.block649 ], [ %.0253343.i, %.lr.ph333.i ], [ %.0251344.i, %vec.epilog.middle.block700 ], [ %.0249345.i, %.lr.ph339.i.prol.loopexit ], [ %.0253343.i, %vec.epilog.middle.block765 ], [ %.0251344.i, %.lr.ph336.i ], [ %.0255342.i, %vec.epilog.middle.block847 ], [ %.0249345.i, %.lr.ph339.i ], [ %.0255342.i, %.lr.ph.i168 ] ; 7 uses
  %.1254.i = phi ptr [ %.0253343.i, %bb.gq ], [ %.0255342.i, %bb.gs ], [ %.0249345.i, %bb.gu ], [ %.0251344.i, %bb.gw ], [ %.0253343.i, %bb.gx ], [ %.0249345.i, %middle.block681 ], [ %.0251344.i, %middle.block746 ], [ %.0255342.i, %middle.block630 ], [ %.0253343.i, %middle.block828 ], [ %.0255342.i, %vec.epilog.middle.block649 ], [ %.0251344.i, %.lr.ph333.i ], [ %.0249345.i, %vec.epilog.middle.block700 ], [ %.0255342.i, %.lr.ph339.i.prol.loopexit ], [ %.0251344.i, %vec.epilog.middle.block765 ], [ %.0249345.i, %.lr.ph336.i ], [ %.0253343.i, %vec.epilog.middle.block847 ], [ %.0255342.i, %.lr.ph339.i ], [ %.0253343.i, %.lr.ph.i168 ] ; 7 uses
  %.1252.i = phi ptr [ %.0251344.i, %bb.gq ], [ %.0253343.i, %bb.gs ], [ %.0255342.i, %bb.gu ], [ %.0249345.i, %bb.gw ], [ %.0251344.i, %bb.gx ], [ %.0255342.i, %middle.block681 ], [ %.0249345.i, %middle.block746 ], [ %.0253343.i, %middle.block630 ], [ %.0251344.i, %middle.block828 ], [ %.0253343.i, %vec.epilog.middle.block649 ], [ %.0249345.i, %.lr.ph333.i ], [ %.0255342.i, %vec.epilog.middle.block700 ], [ %.0253343.i, %.lr.ph339.i.prol.loopexit ], [ %.0249345.i, %vec.epilog.middle.block765 ], [ %.0255342.i, %.lr.ph336.i ], [ %.0251344.i, %vec.epilog.middle.block847 ], [ %.0253343.i, %.lr.ph339.i ], [ %.0251344.i, %.lr.ph.i168 ] ; 7 uses
  %.1250.i = phi ptr [ %.0249345.i, %bb.gq ], [ %.0251344.i, %bb.gs ], [ %.0253343.i, %bb.gu ], [ %.0255342.i, %bb.gw ], [ %.0249345.i, %bb.gx ], [ %.0253343.i, %middle.block681 ], [ %.0255342.i, %middle.block746 ], [ %.0251344.i, %middle.block630 ], [ %.0249345.i, %middle.block828 ], [ %.0251344.i, %vec.epilog.middle.block649 ], [ %.0255342.i, %.lr.ph333.i ], [ %.0253343.i, %vec.epilog.middle.block700 ], [ %.0251344.i, %.lr.ph339.i.prol.loopexit ], [ %.0255342.i, %vec.epilog.middle.block765 ], [ %.0253343.i, %.lr.ph336.i ], [ %.0249345.i, %vec.epilog.middle.block847 ], [ %.0251344.i, %.lr.ph339.i ], [ %.0249345.i, %.lr.ph.i168 ] ; 7 uses
  %i.gms = mul i64 %i.bux, %indvars.iv367.i
  %i.gmt = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.gms ; 6 uses
  %i.gmu = load float, ptr %.0346.i, align 4, !tbaa !24 ; 6 uses
  %i.gmv = getelementptr inbounds nuw i8, ptr %.0346.i, i64 4
  %i.gmw = load float, ptr %i.gmv, align 4, !tbaa !24 ; 6 uses
  %i.gmx = getelementptr inbounds nuw i8, ptr %.0346.i, i64 8
  %i.gmy = load float, ptr %i.gmx, align 4, !tbaa !24 ; 6 uses
  %i.gmz = getelementptr inbounds nuw i8, ptr %.0346.i, i64 12
  %i.gna = load float, ptr %i.gmz, align 4, !tbaa !24 ; 6 uses
  %i.gnb = insertelement <16 x float> poison, float %i.gmu, i64 0
  %i.gnc = shufflevector <16 x float> %i.gnb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gnd = insertelement <16 x float> poison, float %i.gmw, i64 0
  %i.gne = shufflevector <16 x float> %i.gnd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gnf = insertelement <16 x float> poison, float %i.gmy, i64 0
  %i.gng = shufflevector <16 x float> %i.gnf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gnh = insertelement <16 x float> poison, float %i.gna, i64 0
  %i.gni = shufflevector <16 x float> %i.gnh, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.buv, label %.lr.ph.i.i164, label %._crit_edge.i.i144

.lr.ph.i.i164:                                    ; preds = %.loopexit.i142, %.lr.ph.i.i164
  %indvars.iv.i.i165 = phi i64 [ %indvars.iv.next.i.i166, %.lr.ph.i.i164 ], [ 0, %.loopexit.i142 ] ; 6 uses
  %i.gnj = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv.i.i165
  %i.gnk = load <16 x float>, ptr %i.gnj, align 1, !tbaa !53
  %i.gnl = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv.i.i165
  %i.gnm = load <16 x float>, ptr %i.gnl, align 1, !tbaa !53
  %i.gnn = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv.i.i165
  %i.gno = load <16 x float>, ptr %i.gnn, align 1, !tbaa !53
  %i.gnp = getelementptr inbounds nuw [4 x i8], ptr %.1256.i143, i64 %indvars.iv.i.i165
  %i.gnq = load <16 x float>, ptr %i.gnp, align 1, !tbaa !53
  %i.gnr = fmul fast <16 x float> %i.gnk, %i.gnc
  %i.gns = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gnm, <16 x float> nofpclass(nan inf) %i.gne, <16 x float> nofpclass(nan inf) %i.gnr)
  %i.gnt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gno, <16 x float> nofpclass(nan inf) %i.gng, <16 x float> nofpclass(nan inf) %i.gns)
  %i.gnu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gnq, <16 x float> nofpclass(nan inf) %i.gni, <16 x float> nofpclass(nan inf) %i.gnt)
  %i.gnv = getelementptr inbounds nuw [2 x i8], ptr %i.gmt, i64 %indvars.iv.i.i165
  %i.gnw = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gnu)
  store <16 x bfloat> %i.gnw, ptr %i.gnv, align 1, !tbaa !53
  %indvars.iv.next.i.i166 = add nuw nsw i64 %indvars.iv.i.i165, 16 ; 3 uses
  %i.gnx = or disjoint i64 %indvars.iv.next.i.i166, 15
  %i.gny = icmp samesign ult i64 %i.gnx, %i.buw
  br i1 %i.gny, label %.lr.ph.i.i164, label %._crit_edge.loopexit.i.i167, !llvm.loop !155

._crit_edge.loopexit.i.i167:                      ; preds = %.lr.ph.i.i164
  %i.gnz = trunc nuw nsw i64 %indvars.iv.next.i.i166 to i32
  br label %._crit_edge.i.i144

._crit_edge.i.i144:                               ; preds = %._crit_edge.loopexit.i.i167, %.loopexit.i142
  %.0.lcssa.i.i145 = phi i32 [ 0, %.loopexit.i142 ], [ %i.gnz, %._crit_edge.loopexit.i.i167 ] ; 3 uses
  %i.goa = insertelement <8 x float> poison, float %i.gmu, i64 0
  %i.gob = shufflevector <8 x float> %i.goa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.goc = insertelement <8 x float> poison, float %i.gmw, i64 0
  %i.god = shufflevector <8 x float> %i.goc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.goe = insertelement <8 x float> poison, float %i.gmy, i64 0
  %i.gof = shufflevector <8 x float> %i.goe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gog = insertelement <8 x float> poison, float %i.gna, i64 0
  %i.goh = shufflevector <8 x float> %i.gog, <8 x float> poison, <8 x i32> zeroinitializer
  %i.goi = or disjoint i32 %.0.lcssa.i.i145, 7
  %i.goj = icmp slt i32 %i.goi, %i.bx
  br i1 %i.goj, label %.lr.ph104.preheader.i.i159, label %._crit_edge105.i.i146

.lr.ph104.preheader.i.i159:                       ; preds = %._crit_edge.i.i144
  %i.gok = zext nneg i32 %.0.lcssa.i.i145 to i64
  br label %.lr.ph104.i.i160

.lr.ph104.i.i160:                                 ; preds = %.lr.ph104.i.i160, %.lr.ph104.preheader.i.i159
  %indvars.iv117.i.i161 = phi i64 [ %i.gok, %.lr.ph104.preheader.i.i159 ], [ %indvars.iv.next118.i.i162, %.lr.ph104.i.i160 ] ; 6 uses
  %i.gol = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv117.i.i161
  %i.gom = load <8 x float>, ptr %i.gol, align 1, !tbaa !53
  %i.gon = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv117.i.i161
  %i.goo = load <8 x float>, ptr %i.gon, align 1, !tbaa !53
  %i.gop = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv117.i.i161
  %i.goq = load <8 x float>, ptr %i.gop, align 1, !tbaa !53
  %i.gor = getelementptr inbounds nuw [4 x i8], ptr %.1256.i143, i64 %indvars.iv117.i.i161
  %i.gos = load <8 x float>, ptr %i.gor, align 1, !tbaa !53
  %i.got = fmul fast <8 x float> %i.gom, %i.gob
  %i.gou = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.goo, <8 x float> nofpclass(nan inf) %i.god, <8 x float> nofpclass(nan inf) %i.got)
  %i.gov = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.goq, <8 x float> nofpclass(nan inf) %i.gof, <8 x float> nofpclass(nan inf) %i.gou)
  %i.gow = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gos, <8 x float> nofpclass(nan inf) %i.goh, <8 x float> nofpclass(nan inf) %i.gov)
  %i.gox = getelementptr inbounds nuw [2 x i8], ptr %i.gmt, i64 %indvars.iv117.i.i161
  %i.goy = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gow)
  store <8 x bfloat> %i.goy, ptr %i.gox, align 1, !tbaa !53
  %indvars.iv.next118.i.i162 = add nuw nsw i64 %indvars.iv117.i.i161, 8 ; 3 uses
  %i.goz = icmp slt i64 %indvars.iv.next118.i.i162, %invariant.op.i.i141
  br i1 %i.goz, label %.lr.ph104.i.i160, label %._crit_edge105.loopexit.i.i163, !llvm.loop !156

._crit_edge105.loopexit.i.i163:                   ; preds = %.lr.ph104.i.i160
  %i.gpa = trunc nuw nsw i64 %indvars.iv.next118.i.i162 to i32
  br label %._crit_edge105.i.i146

._crit_edge105.i.i146:                            ; preds = %._crit_edge105.loopexit.i.i163, %._crit_edge.i.i144
  %.1.lcssa.i.i147 = phi i32 [ %.0.lcssa.i.i145, %._crit_edge.i.i144 ], [ %i.gpa, %._crit_edge105.loopexit.i.i163 ] ; 3 uses
  %i.gpb = insertelement <4 x float> poison, float %i.gmu, i64 0
  %i.gpc = shufflevector <4 x float> %i.gpb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gpd = insertelement <4 x float> poison, float %i.gmw, i64 0
  %i.gpe = shufflevector <4 x float> %i.gpd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gpf = insertelement <4 x float> poison, float %i.gmy, i64 0
  %i.gpg = shufflevector <4 x float> %i.gpf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gph = insertelement <4 x float> poison, float %i.gna, i64 0
  %i.gpi = shufflevector <4 x float> %i.gph, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gpj = or disjoint i32 %.1.lcssa.i.i147, 3
  %i.gpk = icmp slt i32 %i.gpj, %i.bx
  br i1 %i.gpk, label %.lr.ph109.preheader.i.i155, label %.preheader.i.i148

.lr.ph109.preheader.i.i155:                       ; preds = %._crit_edge105.i.i146
  %i.gpl = zext nneg i32 %.1.lcssa.i.i147 to i64
  br label %.lr.ph109.i.i156

.preheader.i.i148:                                ; preds = %.lr.ph109.i.i156, %._crit_edge105.i.i146
  %.2.lcssa.i.i149 = phi i32 [ %.1.lcssa.i.i147, %._crit_edge105.i.i146 ], [ %i.gtn, %.lr.ph109.i.i156 ] ; 3 uses
  %i.gpm = icmp slt i32 %.2.lcssa.i.i149, %i.bx
  br i1 %i.gpm, label %iter.check, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150

iter.check:                                       ; preds = %.preheader.i.i148
  %i.gpn = zext i32 %.2.lcssa.i.i149 to i64       ; 5 uses
  %i.gpo = xor i32 %.2.lcssa.i.i149, -1
  %i.gpp = add i32 %i.bx, %i.gpo                  ; 3 uses
  %i.gpq = zext i32 %i.gpp to i64
  %i.gpr = add nuw nsw i64 %i.gpq, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.gpp, 7
  br i1 %min.iters.check, label %.lr.ph112.i.i152.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check578 = icmp ult i32 %i.gpp, 63
  br i1 %min.iters.check578, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gps = and i64 %i.gpr, 56
  %n.vec = and i64 %i.gpr, 8589934528             ; 4 uses
  %i.gpt = add nuw nsw i64 %n.vec, %i.gpn
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.gmu, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert579 = insertelement <16 x float> poison, float %i.gmw, i64 0
  %broadcast.splat580 = shufflevector <16 x float> %broadcast.splatinsert579, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert581 = insertelement <16 x float> poison, float %i.gmy, i64 0
  %broadcast.splat582 = shufflevector <16 x float> %broadcast.splatinsert581, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert583 = insertelement <16 x float> poison, float %i.gna, i64 0
  %broadcast.splat584 = shufflevector <16 x float> %broadcast.splatinsert583, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gpu = add nuw i64 %index, %i.gpn             ; 5 uses
  %i.gpv = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.gpu ; 4 uses
  %i.gpw = getelementptr inbounds nuw i8, ptr %i.gpv, i64 64
  %i.gpx = getelementptr inbounds nuw i8, ptr %i.gpv, i64 128
  %i.gpy = getelementptr inbounds nuw i8, ptr %i.gpv, i64 192
  %wide.load = load <16 x float>, ptr %i.gpv, align 4, !tbaa !24
  %wide.load585 = load <16 x float>, ptr %i.gpw, align 4, !tbaa !24
  %wide.load586 = load <16 x float>, ptr %i.gpx, align 4, !tbaa !24
  %wide.load587 = load <16 x float>, ptr %i.gpy, align 4, !tbaa !24
  %i.gpz = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.gqa = fmul fast <16 x float> %wide.load585, %broadcast.splat
  %i.gqb = fmul fast <16 x float> %wide.load586, %broadcast.splat
  %i.gqc = fmul fast <16 x float> %wide.load587, %broadcast.splat
  %i.gqd = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.gpu ; 4 uses
  %i.gqe = getelementptr inbounds nuw i8, ptr %i.gqd, i64 64
  %i.gqf = getelementptr inbounds nuw i8, ptr %i.gqd, i64 128
  %i.gqg = getelementptr inbounds nuw i8, ptr %i.gqd, i64 192
  %wide.load588 = load <16 x float>, ptr %i.gqd, align 4, !tbaa !24
  %wide.load589 = load <16 x float>, ptr %i.gqe, align 4, !tbaa !24
  %wide.load590 = load <16 x float>, ptr %i.gqf, align 4, !tbaa !24
  %wide.load591 = load <16 x float>, ptr %i.gqg, align 4, !tbaa !24
  %i.gqh = fmul fast <16 x float> %wide.load588, %broadcast.splat580
  %i.gqi = fmul fast <16 x float> %wide.load589, %broadcast.splat580
  %i.gqj = fmul fast <16 x float> %wide.load590, %broadcast.splat580
  %i.gqk = fmul fast <16 x float> %wide.load591, %broadcast.splat580
  %i.gql = fadd fast <16 x float> %i.gpz, %i.gqh
  %i.gqm = fadd fast <16 x float> %i.gqa, %i.gqi
  %i.gqn = fadd fast <16 x float> %i.gqb, %i.gqj
  %i.gqo = fadd fast <16 x float> %i.gqc, %i.gqk
  %i.gqp = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.gpu ; 4 uses
  %i.gqq = getelementptr inbounds nuw i8, ptr %i.gqp, i64 64
  %i.gqr = getelementptr inbounds nuw i8, ptr %i.gqp, i64 128
  %i.gqs = getelementptr inbounds nuw i8, ptr %i.gqp, i64 192
  %wide.load592 = load <16 x float>, ptr %i.gqp, align 4, !tbaa !24
  %wide.load593 = load <16 x float>, ptr %i.gqq, align 4, !tbaa !24
  %wide.load594 = load <16 x float>, ptr %i.gqr, align 4, !tbaa !24
  %wide.load595 = load <16 x float>, ptr %i.gqs, align 4, !tbaa !24
  %i.gqt = fmul fast <16 x float> %wide.load592, %broadcast.splat582
  %i.gqu = fmul fast <16 x float> %wide.load593, %broadcast.splat582
  %i.gqv = fmul fast <16 x float> %wide.load594, %broadcast.splat582
  %i.gqw = fmul fast <16 x float> %wide.load595, %broadcast.splat582
  %i.gqx = fadd fast <16 x float> %i.gql, %i.gqt
  %i.gqy = fadd fast <16 x float> %i.gqm, %i.gqu
  %i.gqz = fadd fast <16 x float> %i.gqn, %i.gqv
  %i.gra = fadd fast <16 x float> %i.gqo, %i.gqw
  %i.grb = getelementptr inbounds nuw [4 x i8], ptr %.1256.i143, i64 %i.gpu ; 4 uses
  %i.grc = getelementptr inbounds nuw i8, ptr %i.grb, i64 64
  %i.grd = getelementptr inbounds nuw i8, ptr %i.grb, i64 128
  %i.gre = getelementptr inbounds nuw i8, ptr %i.grb, i64 192
  %wide.load596 = load <16 x float>, ptr %i.grb, align 4, !tbaa !24
  %wide.load597 = load <16 x float>, ptr %i.grc, align 4, !tbaa !24
  %wide.load598 = load <16 x float>, ptr %i.grd, align 4, !tbaa !24
  %wide.load599 = load <16 x float>, ptr %i.gre, align 4, !tbaa !24
  %i.grf = fmul fast <16 x float> %wide.load596, %broadcast.splat584
  %i.grg = fmul fast <16 x float> %wide.load597, %broadcast.splat584
  %i.grh = fmul fast <16 x float> %wide.load598, %broadcast.splat584
  %i.gri = fmul fast <16 x float> %wide.load599, %broadcast.splat584
  %i.grj = fadd fast <16 x float> %i.gqx, %i.grf
  %i.grk = fadd fast <16 x float> %i.gqy, %i.grg
  %i.grl = fadd fast <16 x float> %i.gqz, %i.grh
  %i.grm = fadd fast <16 x float> %i.gra, %i.gri
  %i.grn = bitcast <16 x float> %i.grj to <16 x i32>
  %i.gro = bitcast <16 x float> %i.grk to <16 x i32>
  %i.grp = bitcast <16 x float> %i.grl to <16 x i32>
  %i.grq = bitcast <16 x float> %i.grm to <16 x i32>
  %i.grr = lshr <16 x i32> %i.grn, splat (i32 16)
  %i.grs = lshr <16 x i32> %i.gro, splat (i32 16)
  %i.grt = lshr <16 x i32> %i.grp, splat (i32 16)
  %i.gru = lshr <16 x i32> %i.grq, splat (i32 16)
  %i.grv = trunc nuw <16 x i32> %i.grr to <16 x i16>
  %i.grw = trunc nuw <16 x i32> %i.grs to <16 x i16>
  %i.grx = trunc nuw <16 x i32> %i.grt to <16 x i16>
  %i.gry = trunc nuw <16 x i32> %i.gru to <16 x i16>
  %i.grz = getelementptr inbounds nuw [2 x i8], ptr %i.gmt, i64 %i.gpu ; 4 uses
  %i.gsa = getelementptr inbounds nuw i8, ptr %i.grz, i64 32
  %i.gsb = getelementptr inbounds nuw i8, ptr %i.grz, i64 64
  %i.gsc = getelementptr inbounds nuw i8, ptr %i.grz, i64 96
  store <16 x i16> %i.grv, ptr %i.grz, align 2, !tbaa !56
  store <16 x i16> %i.grw, ptr %i.gsa, align 2, !tbaa !56
  store <16 x i16> %i.grx, ptr %i.gsb, align 2, !tbaa !56
  store <16 x i16> %i.gry, ptr %i.gsc, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.gsd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gsd, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gpr, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gps, 0
  br i1 %min.epilog.iters.check, label %.lr.ph112.i.i152.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec600 = and i64 %i.gpr, 8589934584          ; 3 uses
  %i.gse = add nuw nsw i64 %n.vec600, %i.gpn
  %broadcast.splatinsert601 = insertelement <8 x float> poison, float %i.gmu, i64 0
  %broadcast.splat602 = shufflevector <8 x float> %broadcast.splatinsert601, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert603 = insertelement <8 x float> poison, float %i.gmw, i64 0
  %broadcast.splat604 = shufflevector <8 x float> %broadcast.splatinsert603, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert605 = insertelement <8 x float> poison, float %i.gmy, i64 0
  %broadcast.splat606 = shufflevector <8 x float> %broadcast.splatinsert605, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert607 = insertelement <8 x float> poison, float %i.gna, i64 0
  %broadcast.splat608 = shufflevector <8 x float> %broadcast.splatinsert607, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index609 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next614, %vec.epilog.vector.body ] ; 2 uses
  %i.gsf = add nuw i64 %index609, %i.gpn          ; 5 uses
  %i.gsg = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.gsf
  %wide.load610 = load <8 x float>, ptr %i.gsg, align 4, !tbaa !24
  %i.gsh = fmul fast <8 x float> %wide.load610, %broadcast.splat602
  %i.gsi = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.gsf
  %wide.load611 = load <8 x float>, ptr %i.gsi, align 4, !tbaa !24
  %i.gsj = fmul fast <8 x float> %wide.load611, %broadcast.splat604
  %i.gsk = fadd fast <8 x float> %i.gsh, %i.gsj
  %i.gsl = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.gsf
  %wide.load612 = load <8 x float>, ptr %i.gsl, align 4, !tbaa !24
  %i.gsm = fmul fast <8 x float> %wide.load612, %broadcast.splat606
  %i.gsn = fadd fast <8 x float> %i.gsk, %i.gsm
  %i.gso = getelementptr inbounds nuw [4 x i8], ptr %.1256.i143, i64 %i.gsf
  %wide.load613 = load <8 x float>, ptr %i.gso, align 4, !tbaa !24
  %i.gsp = fmul fast <8 x float> %wide.load613, %broadcast.splat608
  %i.gsq = fadd fast <8 x float> %i.gsn, %i.gsp
  %i.gsr = bitcast <8 x float> %i.gsq to <8 x i32>
  %i.gss = lshr <8 x i32> %i.gsr, splat (i32 16)
  %i.gst = trunc nuw <8 x i32> %i.gss to <8 x i16>
  %i.gsu = getelementptr inbounds nuw [2 x i8], ptr %i.gmt, i64 %i.gsf
  store <8 x i16> %i.gst, ptr %i.gsu, align 2, !tbaa !56
  %index.next614 = add nuw i64 %index609, 8       ; 2 uses
  %i.gsv = icmp eq i64 %index.next614, %n.vec600
  br i1 %i.gsv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !229

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n615 = icmp eq i64 %i.gpr, %n.vec600
  br i1 %cmp.n615, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150, label %.lr.ph112.i.i152.preheader

.lr.ph112.i.i152.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv123.i.i153.ph = phi i64 [ %i.gpn, %iter.check ], [ %i.gpt, %vec.epilog.iter.check ], [ %i.gse, %vec.epilog.middle.block ]
  br label %.lr.ph112.i.i152

.lr.ph109.i.i156:                                 ; preds = %.lr.ph109.i.i156, %.lr.ph109.preheader.i.i155
  %indvars.iv120.i.i157 = phi i64 [ %i.gpl, %.lr.ph109.preheader.i.i155 ], [ %indvars.iv.next121.i.i158, %.lr.ph109.i.i156 ] ; 6 uses
  %i.gsw = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv120.i.i157
  %i.gsx = load <4 x float>, ptr %i.gsw, align 1, !tbaa !53
  %i.gsy = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv120.i.i157
  %i.gsz = load <4 x float>, ptr %i.gsy, align 1, !tbaa !53
  %i.gta = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv120.i.i157
  %i.gtb = load <4 x float>, ptr %i.gta, align 1, !tbaa !53
  %i.gtc = getelementptr inbounds nuw [4 x i8], ptr %.1256.i143, i64 %indvars.iv120.i.i157
  %i.gtd = load <4 x float>, ptr %i.gtc, align 1, !tbaa !53
  %i.gte = fmul fast <4 x float> %i.gsx, %i.gpc
  %i.gtf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gsz, <4 x float> nofpclass(nan inf) %i.gpe, <4 x float> nofpclass(nan inf) %i.gte)
  %i.gtg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gtb, <4 x float> nofpclass(nan inf) %i.gpg, <4 x float> nofpclass(nan inf) %i.gtf)
  %i.gth = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gtd, <4 x float> nofpclass(nan inf) %i.gpi, <4 x float> nofpclass(nan inf) %i.gtg)
  %i.gti = getelementptr inbounds nuw [2 x i8], ptr %i.gmt, i64 %indvars.iv120.i.i157
  %i.gtj = shufflevector <4 x float> %i.gth, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gtk = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gtj)
  %i.gtl = bitcast <8 x bfloat> %i.gtk to <2 x i64>
  %i.gtm = extractelement <2 x i64> %i.gtl, i64 0
  store i64 %i.gtm, ptr %i.gti, align 1, !tbaa !53
  %indvars.iv.next121.i.i158 = add nuw nsw i64 %indvars.iv120.i.i157, 4 ; 2 uses
  %i.gtn = trunc i64 %indvars.iv.next121.i.i158 to i32 ; 2 uses
  %i.gto = or i32 %i.gtn, 3
  %i.gtp = icmp slt i32 %i.gto, %i.bx
  br i1 %i.gtp, label %.lr.ph109.i.i156, label %.preheader.i.i148, !llvm.loop !159

.lr.ph112.i.i152:                                 ; preds = %.lr.ph112.i.i152.preheader, %.lr.ph112.i.i152
  %indvars.iv123.i.i153 = phi i64 [ %indvars.iv.next124.i.i154, %.lr.ph112.i.i152 ], [ %indvars.iv123.i.i153.ph, %.lr.ph112.i.i152.preheader ] ; 6 uses
  %i.gtq = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv123.i.i153
  %i.gtr = load float, ptr %i.gtq, align 4, !tbaa !24
  %i.gts = fmul fast float %i.gtr, %i.gmu
  %i.gtt = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv123.i.i153
  %i.gtu = load float, ptr %i.gtt, align 4, !tbaa !24
  %i.gtv = fmul fast float %i.gtu, %i.gmw
  %i.gtw = fadd fast float %i.gts, %i.gtv
  %i.gtx = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv123.i.i153
  %i.gty = load float, ptr %i.gtx, align 4, !tbaa !24
  %i.gtz = fmul fast float %i.gty, %i.gmy
  %i.gua = fadd fast float %i.gtw, %i.gtz
  %i.gub = getelementptr inbounds nuw [4 x i8], ptr %.1256.i143, i64 %indvars.iv123.i.i153
  %i.guc = load float, ptr %i.gub, align 4, !tbaa !24
  %i.gud = fmul fast float %i.guc, %i.gna
  %i.gue = fadd fast float %i.gua, %i.gud
  %i.guf = bitcast float %i.gue to i32
  %i.gug = lshr i32 %i.guf, 16
  %i.guh = trunc nuw i32 %i.gug to i16
  %i.gui = getelementptr inbounds nuw [2 x i8], ptr %i.gmt, i64 %indvars.iv123.i.i153
  store i16 %i.guh, ptr %i.gui, align 2, !tbaa !56
  %indvars.iv.next124.i.i154 = add nuw nsw i64 %indvars.iv123.i.i153, 1 ; 2 uses
  %i.guj = trunc nuw i64 %indvars.iv.next124.i.i154 to i32
  %i.guk = icmp sgt i32 %i.bx, %i.guj
  br i1 %i.guk, label %.lr.ph112.i.i152, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150, !llvm.loop !230

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i150: ; preds = %.lr.ph112.i.i152, %middle.block, %vec.epilog.middle.block, %.preheader.i.i148
  %i.gul = getelementptr inbounds nuw i8, ptr %.0346.i, i64 16
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i140, label %bb.gq, !llvm.loop !231

bb.gy:                                            ; preds = %bb.gp
  %i.gum = atomicrmw add ptr %i.bxn, i32 -1 acq_rel, align 4
  %i.gun = icmp eq i32 %i.gum, 1
  br i1 %i.gun, label %bb.gz, label %_ZN4ncnn3MatD2Ev.exit272.i

bb.gz:                                            ; preds = %bb.gy
  %i.guo = load ptr, ptr %i.bj, align 8, !tbaa !92 ; 3 uses
  %.not3.i295.i = icmp eq ptr %i.guo, null
  %i.gup = load ptr, ptr %12, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i295.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.guq = load ptr, ptr %i.guo, align 8, !tbaa !93
  %i.gur = getelementptr inbounds nuw i8, ptr %i.guq, i64 24
  %i.gus = load ptr, ptr %i.gur, align 8
  invoke void %i.gus(ptr noundef nonnull align 8 dereferenceable(8) %i.guo, ptr noundef %i.gup)
          to label %_ZN4ncnn3MatD2Ev.exit272.i unwind label %bb.hd, !inline_history !95

bb.hb:                                            ; preds = %bb.gz
  %.not.i309.i = icmp eq ptr %i.gup, null
  br i1 %.not.i309.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @free(ptr noundef nonnull %i.gup) #3
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.hd:                                            ; preds = %bb.ha
  %i.gut = landingpad { ptr, i32 }
          catch ptr null
  %i.guu = extractvalue { ptr, i32 } %i.gut, 0
  call void @__clang_call_terminate(ptr %i.guu) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit272.i:                       ; preds = %bb.hc, %bb.hb, %bb.ha, %bb.gy, %bb.gp, %bb.go
  %.pn.pn.i = phi { ptr, i32 } [ %i.bxl, %bb.go ], [ %i.bxm, %bb.gy ], [ %i.bxm, %bb.gp ], [ %i.bxm, %bb.ha ], [ %i.bxm, %bb.hb ], [ %i.bxm, %bb.hc ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #3
  %i.guv = load ptr, ptr %i.bf, align 8, !tbaa !91 ; 2 uses
  %.not.i298.i = icmp eq ptr %i.guv, null
  br i1 %.not.i298.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.he

bb.he:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit272.i
  %i.guw = atomicrmw add ptr %i.guv, i32 -1 acq_rel, align 4
  %i.gux = icmp eq i32 %i.guw, 1
  br i1 %i.gux, label %bb.hf, label %_ZN4ncnn3MatD2Ev.exit271.i

bb.hf:                                            ; preds = %bb.he
  %i.guy = load ptr, ptr %i.bg, align 8, !tbaa !92 ; 3 uses
  %.not3.i299.i = icmp eq ptr %i.guy, null
  %i.guz = load ptr, ptr %11, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i299.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.gva = load ptr, ptr %i.guy, align 8, !tbaa !93
  %i.gvb = getelementptr inbounds nuw i8, ptr %i.gva, i64 24
  %i.gvc = load ptr, ptr %i.gvb, align 8
  invoke void %i.gvc(ptr noundef nonnull align 8 dereferenceable(8) %i.guy, ptr noundef %i.guz)
          to label %_ZN4ncnn3MatD2Ev.exit271.i unwind label %bb.hj, !inline_history !95

bb.hh:                                            ; preds = %bb.hf
  %.not.i307.i = icmp eq ptr %i.guz, null
  br i1 %.not.i307.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @free(ptr noundef nonnull %i.guz) #3
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.hj:                                            ; preds = %bb.hg
  %i.gvd = landingpad { ptr, i32 }
          catch ptr null
  %i.gve = extractvalue { ptr, i32 } %i.gvd, 0
  call void @__clang_call_terminate(ptr %i.gve) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit271.i:                       ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.he, %_ZN4ncnn3MatD2Ev.exit272.i, %bb.gn
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.bxk, %bb.gn ], [ %.pn.pn.i, %bb.he ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit272.i ], [ %.pn.pn.i, %bb.hg ], [ %.pn.pn.i, %bb.hh ], [ %.pn.pn.i, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #3
  %i.gvf = load ptr, ptr %i.bc, align 8, !tbaa !91 ; 2 uses
  %.not.i302.i = icmp eq ptr %i.gvf, null
  br i1 %.not.i302.i, label %_ZN4ncnn3MatD2Ev.exit.i139, label %bb.hk

bb.hk:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit271.i
  %i.gvg = atomicrmw add ptr %i.gvf, i32 -1 acq_rel, align 4
  %i.gvh = icmp eq i32 %i.gvg, 1
  br i1 %i.gvh, label %bb.hl, label %_ZN4ncnn3MatD2Ev.exit.i139

bb.hl:                                            ; preds = %bb.hk
  %i.gvi = load ptr, ptr %i.bd, align 8, !tbaa !92 ; 3 uses
  %.not3.i303.i = icmp eq ptr %i.gvi, null
  %i.gvj = load ptr, ptr %10, align 8, !tbaa !29  ; 3 uses
  br i1 %.not3.i303.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.gvk = load ptr, ptr %i.gvi, align 8, !tbaa !93
  %i.gvl = getelementptr inbounds nuw i8, ptr %i.gvk, i64 24
  %i.gvm = load ptr, ptr %i.gvl, align 8
  invoke void %i.gvm(ptr noundef nonnull align 8 dereferenceable(8) %i.gvi, ptr noundef %i.gvj)
          to label %_ZN4ncnn3MatD2Ev.exit.i139 unwind label %bb.hp, !inline_history !95

bb.hn:                                            ; preds = %bb.hl
  %.not.i306.i = icmp eq ptr %i.gvj, null
  br i1 %.not.i306.i, label %_ZN4ncnn3MatD2Ev.exit.i139, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @free(ptr noundef nonnull %i.gvj) #3
  br label %_ZN4ncnn3MatD2Ev.exit.i139

bb.hp:                                            ; preds = %bb.hm
  %i.gvn = landingpad { ptr, i32 }
          catch ptr null
  %i.gvo = extractvalue { ptr, i32 } %i.gvn, 0
  call void @__clang_call_terminate(ptr %i.gvo) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i139:                       ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hk, %_ZN4ncnn3MatD2Ev.exit271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  br label %.body

_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit274.i, %bb.gh, %bb.gj, %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.fn
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gvp = load i32, ptr %i.b, align 4, !tbaa !18
  %i.gvq = sext i32 %i.gvp to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gvq
  br i1 %.not.not, label %.noexc22, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.hq

bb.hq:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.hr:                                            ; preds = %bb.fo, %bb.dk, %bb.bg, %bb.c
  %i.gvr = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i32, %bb.hr, %_ZN4ncnn3MatD2Ev.exit.i139, %_ZN4ncnn3MatD2Ev.exit.i80, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn326.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn316.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i32 ], [ %.pn284.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i80 ], [ %i.gvr, %bb.hr ], [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i139 ]
  %i.gvs = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.gvs) #20
  unreachable
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

end_hunk_4
