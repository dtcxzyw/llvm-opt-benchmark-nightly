Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ImageBlurGaussian:bb.a

.preheader346.us:                                 ; preds = %.preheader346.us.loopexit.unr-lcssa, %bb.j, %.preheader347.us
  %i.cq = phi <4 x float> [ zeroinitializer, %.preheader347.us ], [ %i.bq, %.preheader346.us.loopexit.unr-lcssa ], [ %i.cp, %bb.j ]
  %.pre-phi443 = trunc i64 %i.be to i32           ; 2 uses
  %i.cr = add i32 %.pre-phi443, %i.ah
  %i.cs = add i32 %1, %.pre-phi443
  %invariant.gep461 = getelementptr [16 x i8], ptr %i.u, i64 %i.be
  br label %bb.e

.lr.ph361.us:                                     ; preds = %.preheader347.us
  %i.ct = and i64 %i.be, 4294967295
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ct ; 5 uses
  br i1 %i.am, label %.epil.preheader, label %.lr.ph361.us.new

._crit_edge.us:                                   ; preds = %bb.i
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %wide.trip.count419
  br i1 %exitcond420.not, label %.preheader348, label %.preheader347.us

.preheader:                                       ; preds = %._crit_edge392
  br i1 %i.y, label %.lr.ph395.preheader, label %._crit_edge396

.lr.ph395.preheader:                              ; preds = %.preheader
  %wide.trip.count440 = zext nneg i32 %i.x to i64
  br label %.lr.ph395

.preheader348:                                    ; preds = %._crit_edge.us, %.preheader349
  br i1 %i.af, label %.preheader345, label %._crit_edge392

.preheader345:                                    ; preds = %.preheader348, %._crit_edge
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %._crit_edge ], [ 0, %.preheader348 ] ; 5 uses
  br i1 %i.ag, label %.lr.ph379.preheader, label %.preheader344

.lr.ph379.preheader:                              ; preds = %.preheader345
  %invariant.gep463 = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv431 ; 5 uses
  br i1 %i.an, label %.lr.ph379.epil.preheader, label %.lr.ph379

._crit_edge392:                                   ; preds = %._crit_edge, %.preheader347.lr.ph, %.preheader348
  %i.cu = add nuw nsw i32 %.0335393, 1            ; 2 uses
  %exitcond436.not = icmp eq i32 %i.cu, 4
  br i1 %exitcond436.not, label %.preheader, label %.preheader349

.preheader344.loopexit.unr-lcssa:                 ; preds = %.lr.ph379
  br i1 %lcmp.mod489.not, label %.preheader344, label %.lr.ph379.epil.preheader

.lr.ph379.epil.preheader:                         ; preds = %.preheader344.loopexit.unr-lcssa, %.lr.ph379.preheader
  %indvars.iv421.epil.init = phi i64 [ 0, %.lr.ph379.preheader ], [ %indvars.iv.next422.3, %.preheader344.loopexit.unr-lcssa ]
  %.epil.init488 = phi <4 x float> [ zeroinitializer, %.lr.ph379.preheader ], [ %i.dn, %.preheader344.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod491)
  br label %.lr.ph379.epil

.lr.ph379.epil:                                   ; preds = %.lr.ph379.epil, %.lr.ph379.epil.preheader
  %indvars.iv421.epil = phi i64 [ %indvars.iv421.epil.init, %.lr.ph379.epil.preheader ], [ %indvars.iv.next422.epil, %.lr.ph379.epil ] ; 2 uses
  %i.cv = phi <4 x float> [ %.epil.init488, %.lr.ph379.epil.preheader ], [ %i.cy, %.lr.ph379.epil ]
  %epil.iter486 = phi i64 [ 0, %.lr.ph379.epil.preheader ], [ %epil.iter486.next, %.lr.ph379.epil ]
  %i.cw = mul nuw nsw i64 %indvars.iv421.epil, %i.ak
  %gep464.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep463, i64 %i.cw
  %i.cx = load <4 x float>, ptr %gep464.epil, align 4
  %i.cy = fadd <4 x float> %i.cv, %i.cx           ; 2 uses
  %indvars.iv.next422.epil = add nuw nsw i64 %indvars.iv421.epil, 1
  %epil.iter486.next = add i64 %epil.iter486, 1   ; 2 uses
  %epil.iter486.cmp.not = icmp eq i64 %epil.iter486.next, %xtraiter485
  br i1 %epil.iter486.cmp.not, label %.preheader344, label %.lr.ph379.epil, !llvm.loop !116

.preheader344:                                    ; preds = %.preheader344.loopexit.unr-lcssa, %.lr.ph379.epil, %.preheader345
  %i.cz = phi <4 x float> [ zeroinitializer, %.preheader345 ], [ %i.dn, %.preheader344.loopexit.unr-lcssa ], [ %i.cy, %.lr.ph379.epil ]
  br i1 %i.ae, label %.lr.ph390.preheader, label %._crit_edge

.lr.ph390.preheader:                              ; preds = %.preheader344
  %i.da = trunc nuw nsw i64 %indvars.iv431 to i32
  %invariant.gep465 = getelementptr [16 x i8], ptr %i.u, i64 %indvars.iv431
  %invariant.gep467 = getelementptr [16 x i8], ptr %i.o, i64 %indvars.iv431
  br label %.lr.ph390

.lr.ph379:                                        ; preds = %.lr.ph379.preheader, %.lr.ph379
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph379 ], [ 0, %.lr.ph379.preheader ] ; 5 uses
  %i.db = phi <4 x float> [ %i.dn, %.lr.ph379 ], [ zeroinitializer, %.lr.ph379.preheader ]
  %niter493 = phi i64 [ %niter493.next.3, %.lr.ph379 ], [ 0, %.lr.ph379.preheader ]
  %i.dc = mul nuw nsw i64 %indvars.iv421, %i.ak
  %gep464 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep463, i64 %i.dc
  %i.dd = load <4 x float>, ptr %gep464, align 4
  %i.de = fadd <4 x float> %i.db, %i.dd
  %indvars.iv.next422 = or disjoint i64 %indvars.iv421, 1
  %i.df = mul nuw nsw i64 %indvars.iv.next422, %i.ak
  %gep464.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep463, i64 %i.df
  %i.dg = load <4 x float>, ptr %gep464.1, align 4
  %i.dh = fadd <4 x float> %i.de, %i.dg
  %indvars.iv.next422.1 = or disjoint i64 %indvars.iv421, 2
  %i.di = mul nuw nsw i64 %indvars.iv.next422.1, %i.ak
  %gep464.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep463, i64 %i.di
  %i.dj = load <4 x float>, ptr %gep464.2, align 4
  %i.dk = fadd <4 x float> %i.dh, %i.dj
  %indvars.iv.next422.2 = or disjoint i64 %indvars.iv421, 3
  %i.dl = mul nuw nsw i64 %indvars.iv.next422.2, %i.ak
  %gep464.3 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep463, i64 %i.dl
  %i.dm = load <4 x float>, ptr %gep464.3, align 4
  %i.dn = fadd <4 x float> %i.dk, %i.dm           ; 3 uses
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %niter493.next.3 = add i64 %niter493, 4         ; 2 uses
  %niter493.ncmp.3 = icmp eq i64 %niter493.next.3, %unroll_iter492
  br i1 %niter493.ncmp.3, label %.preheader344.loopexit.unr-lcssa, label %.lr.ph379

._crit_edge:                                      ; preds = %bb.n, %.preheader344
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %exitcond435.not = icmp eq i64 %indvars.iv.next432, %i.ak
  br i1 %exitcond435.not, label %._crit_edge392, label %.preheader345

.lr.ph390:                                        ; preds = %.lr.ph390.preheader, %bb.n
  %indvars.iv426 = phi i64 [ 0, %.lr.ph390.preheader ], [ %indvars.iv.next427, %bb.n ] ; 4 uses
  %.0296388 = phi i32 [ %1, %.lr.ph390.preheader ], [ %.2, %bb.n ] ; 2 uses
  %i.do = phi <4 x float> [ %i.cz, %.lr.ph390.preheader ], [ %i.eg, %bb.n ] ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv426 to i32
  %i.dq = add i32 %i.dp, %i.ah                    ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph390
  %i.ds = mul nuw nsw i32 %i.dq, %i.w
  %i.dt = add nuw nsw i32 %i.ds, %i.da
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.du
  %i.dw = load <4 x float>, ptr %i.dv, align 4
  %i.dx = fsub <4 x float> %i.do, %i.dw
  %i.dy = add nsw i32 %.0296388, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph390
  %.1 = phi i32 [ %i.dy, %bb.k ], [ %.0296388, %.lr.ph390 ] ; 2 uses
  %i.dz = phi <4 x float> [ %i.dx, %bb.k ], [ %i.do, %.lr.ph390 ] ; 2 uses
  %i.ea = add nsw i64 %indvars.iv426, %i.ai       ; 2 uses
  %i.eb = icmp slt i64 %i.ea, %i.al
  br i1 %i.eb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ec = mul nsw i64 %i.ea, %i.aj
  %gep466 = getelementptr [16 x i8], ptr %invariant.gep465, i64 %i.ec
  %i.ed = load <4 x float>, ptr %gep466, align 4
  %i.ee = fadd <4 x float> %i.dz, %i.ed
  %i.ef = add nsw i32 %.1, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2 = phi i32 [ %i.ef, %bb.m ], [ %.1, %bb.l ]  ; 2 uses
  %i.eg = phi <4 x float> [ %i.ee, %bb.m ], [ %i.dz, %bb.l ] ; 2 uses
  %i.eh = sitofp i32 %.2 to float
  %i.ei = mul nuw nsw i64 %indvars.iv426, %i.aj
  %gep468 = getelementptr [16 x i8], ptr %invariant.gep467, i64 %i.ei
  %i.ej = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = fdiv <4 x float> %i.eg, %i.ek
  %i.em = fptoui <4 x float> %i.el to <4 x i8>
  %i.en = uitofp <4 x i8> %i.em to <4 x float>
  store <4 x float> %i.en, ptr %gep468, align 4
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count429
  br i1 %exitcond430.not, label %._crit_edge, label %.lr.ph390

._crit_edge396:                                   ; preds = %bb.r, %.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.eq) #52
  tail call void @free(ptr noundef %i.o) #52
  tail call void @free(ptr noundef %i.u) #52
  store ptr %i.i, ptr %0, align 8
  store i32 7, ptr %i.eo, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.ep)
  br label %bb.s

.lr.ph395:                                        ; preds = %.lr.ph395.preheader, %bb.r
  %indvars.iv437 = phi i64 [ 0, %.lr.ph395.preheader ], [ %indvars.iv.next438, %bb.r ] ; 4 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv437 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load float, ptr %i.es, align 4          ; 4 uses
  %i.eu = fcmp oeq float %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph395
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv437
  store i32 0, ptr %i.ev, align 1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph395
  %i.ew = fcmp ugt float %i.et, 2.550000e+02
  br i1 %i.ew, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = fdiv float %i.et, 2.550000e+02          ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv437
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fa = load float, ptr %i.ez, align 4
  %i.fb = fdiv nsz float %i.fa, %i.ex
  %i.fc = tail call nsz float @llvm.minnum.f32(float %i.fb, float 2.550000e+02)
  %i.fd = load <2 x float>, ptr %i.er, align 4
  %i.fe = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.ff = insertelement <4 x float> poison, float %i.fc, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.et, i64 3
  %i.fh = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fj = fdiv nsz <4 x float> %i.fh, %i.fi
  %i.fk = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.fj, <4 x float> <float 2.550000e+02, float 2.550000e+02, float poison, float poison>)
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fm = fptoui <4 x float> %i.fl to <4 x i8>
  store <4 x i8> %i.fm, ptr %i.ey, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond441.not = icmp eq i64 %indvars.iv.next438, %wide.trip.count440
  br i1 %exitcond441.not, label %._crit_edge396, label %.lr.ph395

bb.s:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge396
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageKernelConvolution(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq ptr %1, null
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sitofp i32 %2 to float
  %i.k = tail call float @sqrtf(float noundef %i.j) #52
  %i.l = fptosi float %i.k to i32                 ; 8 uses
  %i.m = mul nsw i32 %i.l, %i.l
  %.not = icmp eq i32 %i.m, %2
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.62) #52
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 4 uses
  %i.o = load i32, ptr %i.f, align 4
  %i.p = load i32, ptr %i.c, align 8
  %i.q = mul nsw i32 %i.p, %i.o
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #53 ; 7 uses
  %i.u = sext i32 %2 to i64
  %i.v = shl nsw i64 %i.u, 4
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #53 ; 10 uses
  %i.x = icmp sgt i32 %2, 0                       ; 3 uses
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.y = zext nneg i32 %2 to i64
  %i.z = shl nuw nsw i64 %i.y, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.z, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %i.aa = and i32 %i.l, 1
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %.neg = ashr exact i32 %i.l, 1                  ; 2 uses
  %i.ac = sub nsw i32 0, %.neg
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ad = sdiv i32 %i.l, -2
  %i.ae = sdiv i32 %i.l, 2
  %i.af = add nsw i32 %i.ae, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0204 = phi i32 [ %i.ac, %bb.g ], [ %i.ad, %bb.h ] ; 2 uses
  %.0203 = phi i32 [ %.neg, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %i.ag = load i32, ptr %i.f, align 4             ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %.pre = load i32, ptr %i.c, align 8             ; 6 uses
  br i1 %i.ah, label %.preheader223.lr.ph, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %bb.i
  %.pre283 = mul nsw i32 %.pre, %i.ag
  br label %.preheader

.preheader223.lr.ph:                              ; preds = %bb.i
  %i.ai = icmp sgt i32 %.pre, 0
  %i.aj = icmp slt i32 %.0204, %.0203
  %i.ak = mul nsw i32 %.pre, %i.ag                ; 3 uses
  br i1 %i.ai, label %.preheader223.preheader, label %.preheader

.preheader223.preheader:                          ; preds = %.preheader223.lr.ph
  %i.al = sdiv i32 %i.l, 2
  %i.am = sext i32 %.0204 to i64                  ; 2 uses
  %i.an = sext i32 %i.al to i64                   ; 2 uses
  %i.ao = sext i32 %i.l to i64
  %i.ap = zext i32 %2 to i64                      ; 3 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %wide.trip.count276 = zext nneg i32 %i.ag to i64
  %wide.trip.count271 = zext nneg i32 %.pre to i64
  %wide.trip.count258 = sext i32 %.0203 to i64    ; 2 uses
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.ar = icmp ult i32 %2, 4
  %unroll_iter = and i64 %i.ap, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod301 = icmp ne i64 %xtraiter, 0
  br label %.preheader223

.preheader223:                                    ; preds = %.preheader223.preheader, %._crit_edge244
  %indvars.iv273 = phi i64 [ 0, %.preheader223.preheader ], [ %indvars.iv.next274, %._crit_edge244 ] ; 3 uses
  %i.as = trunc i64 %indvars.iv273 to i32
  %i.at = mul i32 %.pre, %i.as
  %i.au = zext i32 %i.at to i64
  %invariant.gep290 = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.au
  br label %.preheader222

.preheader:                                       ; preds = %._crit_edge244, %..preheader_crit_edge, %.preheader223.lr.ph
  %.pre-phi = phi i32 [ %.pre283, %..preheader_crit_edge ], [ %i.ak, %.preheader223.lr.ph ], [ %i.ak, %._crit_edge244 ] ; 3 uses
  %i.av = icmp sgt i32 %.pre-phi, 0
  br i1 %i.av, label %.lr.ph248.preheader, label %._crit_edge249

.lr.ph248.preheader:                              ; preds = %.preheader
  %wide.trip.count281 = zext nneg i32 %.pre-phi to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre-phi, 4
  br i1 %min.iters.check, label %.lr.ph248.preheader295, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph248.preheader
  %n.vec = and i64 %wide.trip.count281, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index ; 4 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 60
  %i.bh = load float, ptr %i.bd, align 4
  %i.bi = load float, ptr %i.be, align 4
  %i.bj = load float, ptr %i.bf, align 4
  %i.bk = load float, ptr %i.bg, align 4
  %i.bl = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 1
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 2
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 3
  %i.bp = load float, ptr %i.aw, align 4
  %i.bq = load float, ptr %i.ay, align 4
  %i.br = load float, ptr %i.ba, align 4
  %i.bs = load float, ptr %i.bc, align 4
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
  %i.cc = load float, ptr %i.by, align 4
  %i.cd = load float, ptr %i.bz, align 4
  %i.ce = load float, ptr %i.ca, align 4
  %i.cf = load float, ptr %i.cb, align 4
  %i.cg = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 1
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 2
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.co = load float, ptr %i.ck, align 4
  %i.cp = load float, ptr %i.cl, align 4
  %i.cq = load float, ptr %i.cm, align 4
  %i.cr = load float, ptr %i.cn, align 4
  %i.cs = insertelement <4 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3
  %i.cw = shufflevector <4 x float> %i.bw, <4 x float> %i.cj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = fmul <8 x float> %i.cw, splat (float 2.550000e+02)
  %i.cy = fptoui <8 x float> %i.cx to <8 x i8>
  %i.cz = shufflevector <4 x float> %i.cv, <4 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = fmul <8 x float> %i.cz, splat (float 2.550000e+02)
  %i.db = fptoui <8 x float> %i.da to <8 x i8>
end_hunk_0
begin_hunk_1_@stbir__decode_uint16_linear_scaled_AR:bb.a
  %.pn7688 = ptrtoaddr ptr %.pn76 to i64          ; 2 uses
  %i.y = add i64 %.pn7688, 16
  %rt.bound0 = icmp ugt i64 %i.x, %.pn7688
  %rt.bound1 = icmp ugt i64 %i.y, %.27787
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph.rtscalar, label %.lr.ph.rtvec, !prof !24

.lr.ph82:                                         ; preds = %.preheader, %.lr.ph82
  %.381 = phi ptr [ %i.ai, %.lr.ph82 ], [ %.2.lcssa, %.preheader ] ; 3 uses
  %.36480 = phi ptr [ %i.ah, %.lr.ph82 ], [ %.pn.lcssa, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.36480) #52, !srcloc !362
  %i.z = getelementptr inbounds nuw i8, ptr %.381, i64 2
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = uitofp i16 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x37800080
  store float %i.ac, ptr %.36480, align 4
  %i.ad = load i16, ptr %.381, align 2
  %i.ae = uitofp i16 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x37800080
  %i.ag = getelementptr inbounds nuw i8, ptr %.36480, i64 4
  store float %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.36480, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.381, i64 4
  %i.aj = icmp ult ptr %i.ah, %i.b
  br i1 %i.aj, label %.lr.ph82, label %.loopexit, !llvm.loop !359

.loopexit:                                        ; preds = %.lr.ph82, %bb.c, %.preheader
  ret ptr %i.b

.lr.ph.rtvec:                                     ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26378) #52, !srcloc !363
  %i.ak = load <4 x i16>, ptr %.277, align 2
  %i.al = uitofp <4 x i16> %i.ak to <4 x float>
  %i.am = fmul nnan <4 x float> %i.al, splat (float f0x37800080)
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.an, ptr %.pn76, align 4
  br label %.lr.ph.rtcont

.lr.ph.rtscalar:                                  ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26378) #52, !srcloc !363
  %i.ao = getelementptr inbounds nuw i8, ptr %.277, i64 2
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = uitofp i16 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x37800080
  store float %i.ar, ptr %.pn76, align 4
  %i.as = load i16, ptr %.277, align 2
  %i.at = uitofp i16 %i.as to float
  %i.au = fmul nnan float %i.at, f0x37800080
  %i.av = getelementptr inbounds nuw i8, ptr %.pn76, i64 4
  store float %i.au, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.277, i64 6
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = uitofp i16 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x37800080
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn76, i64 8
  store float %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.277, i64 4
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = uitofp i16 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x37800080
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn76, i64 12
  store float %i.be, ptr %i.bf, align 4
  br label %.lr.ph.rtcont

.lr.ph.rtcont:                                    ; preds = %.lr.ph.rtscalar, %.lr.ph.rtvec
  %.263.rtmerge = getelementptr inbounds nuw i8, ptr %.26378, i64 16 ; 2 uses
  %.not.rtmerge = icmp ugt ptr %.263.rtmerge, %i.b
  %.rtmerge = getelementptr inbounds nuw i8, ptr %.277, i64 8 ; 2 uses
  br i1 %.not.rtmerge, label %.preheader, label %.lr.ph, !llvm.loop !360
}

; Function Attrs: nounwind uwtable
define internal ptr @stbir__decode_uint16_linear_AR(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 7
  br i1 %i.e, label %bb.b, label %.preheader71

.preheader71:                                     ; preds = %bb.a
  %.not73 = icmp slt i32 %1, 4
  br i1 %.not73, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader71
  %.26172 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.059 = phi ptr [ %0, %bb.b ], [ %.160, %bb.c ] ; 4 uses
  %.058 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.059) #52, !srcloc !366
  %i.g = load <8 x i16>, ptr %.058, align 1       ; 2 uses
  %i.h = shufflevector <8 x i16> %i.g, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.i = shufflevector <8 x i16> %i.g, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.j = bitcast <8 x i16> %i.h to <4 x i32>
  %i.k = bitcast <8 x i16> %i.i to <4 x i32>
  %i.l = uitofp nneg <4 x i32> %i.j to <4 x float>
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.n = uitofp nneg <4 x i32> %i.k to <4 x float>
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.m, ptr %.059, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.059, i64 16
  store <4 x float> %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.059, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %.not67 = icmp ugt ptr %i.q, %i.f
  %i.s = icmp ne ptr %i.q, %i.b                   ; 2 uses
  %i.t = and i1 %.not67, %i.s                     ; 2 uses
  %.160 = select i1 %i.t, ptr %i.f, ptr %i.q
  %.1 = select i1 %i.t, ptr %i.d, ptr %i.r
  br i1 %i.s, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader71
  %.pn.lcssa = phi ptr [ %0, %.preheader71 ], [ %.26176, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader71 ], [ %i.aj, %.lr.ph ]
  %i.u = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.u, label %.lr.ph80, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.26176 = phi ptr [ %.261, %.lr.ph ], [ %.26172, %.lr.ph.preheader ] ; 4 uses
  %.275 = phi ptr [ %i.aj, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn74 = phi ptr [ %.26176, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26176) #52, !srcloc !367
  %i.v = getelementptr inbounds nuw i8, ptr %.275, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = uitofp i16 %i.w to float
  store float %i.x, ptr %.pn74, align 4
  %i.y = load i16, ptr %.275, align 2
  %i.z = uitofp i16 %i.y to float
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn74, i64 4
  store float %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.275, i64 6
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = uitofp i16 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn74, i64 8
  store float %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.275, i64 4
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = uitofp i16 %i.ag to float
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn74, i64 12
  store float %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.275, i64 8 ; 2 uses
  %.261 = getelementptr inbounds nuw i8, ptr %.26176, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.261, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !364

.lr.ph80:                                         ; preds = %.preheader, %.lr.ph80
  %.379 = phi ptr [ %i.ar, %.lr.ph80 ], [ %.2.lcssa, %.preheader ] ; 3 uses
  %.36278 = phi ptr [ %i.aq, %.lr.ph80 ], [ %.pn.lcssa, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.36278) #52, !srcloc !368
  %i.ak = getelementptr inbounds nuw i8, ptr %.379, i64 2
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = uitofp i16 %i.al to float
  store float %i.am, ptr %.36278, align 4
  %i.an = load i16, ptr %.379, align 2
  %i.ao = uitofp i16 %i.an to float
  %i.ap = getelementptr inbounds nuw i8, ptr %.36278, i64 4
  store float %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.36278, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.379, i64 4
  %i.as = icmp ult ptr %i.aq, %i.b
  br i1 %i.as, label %.lr.ph80, label %.loopexit, !llvm.loop !365

.loopexit:                                        ; preds = %.lr.ph80, %bb.c, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = icmp sgt i32 %1, 15
  br i1 %i.d, label %bb.b, label %.preheader162

.preheader162:                                    ; preds = %bb.a
  %.not164 = icmp slt i32 %1, 4
  br i1 %.not164, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader162
  %.2144163 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0142 = phi ptr [ %0, %bb.b ], [ %.1143, %bb.c ] ; 2 uses
  %.0141 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0141) #52, !srcloc !371
  %3 = load <4 x float>, ptr %.0141, align 1      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0141, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0141, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0141, i64 48
  %8 = load <4 x float>, ptr %i.h, align 1        ; 2 uses
  %i.i = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.k = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.i, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.p = shufflevector <4 x float> %i.l, <4 x float> %i.k, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.q = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.r = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.q, <4 x float> splat (float f0x3F7FFFFF))
  %i.s = bitcast <4 x float> %i.r to <4 x i32>    ; 2 uses
  %i.t = lshr <4 x i32> %i.s, splat (i32 20)      ; 4 uses
  %i.u = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.v = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.u, <4 x float> splat (float f0x3F7FFFFF))
  %i.w = bitcast <4 x float> %i.v to <4 x i32>    ; 2 uses
  %i.x = lshr <4 x i32> %i.w, splat (i32 20)      ; 4 uses
  %i.y = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.z = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> splat (float f0x3F7FFFFF))
  %i.aa = bitcast <4 x float> %i.z to <4 x i32>   ; 2 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 20)    ; 4 uses
  %i.ac = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> splat (float f0x39000000))
  %i.ad = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ac, <4 x float> splat (float f0x3F7FFFFF))
  %i.ae = bitcast <4 x float> %i.ad to <4 x i32>  ; 2 uses
  %i.af = lshr <4 x i32> %i.ae, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.t, i64 0
  %i.ag = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.t, i64 1
  %i.aj = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.al, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.t, i64 2
  %i.am = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.t, i64 3
  %i.ap = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.x, i64 0
  %i.as = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.x, i64 1
  %i.av = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.x, i64 2
  %i.ay = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.x, i64 3
  %i.bb = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.ab, i64 0
  %i.be = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.ab, i64 1
  %i.bh = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.ab, i64 2
  %i.bk = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.ab, i64 3
  %i.bn = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bp, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.af, i64 0
  %i.bq = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.af, i64 1
  %i.bt = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bv, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.af, i64 2
  %i.bw = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.by, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.af, i64 3
  %i.bz = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.cb, i64 3
  %i.cc = lshr <4 x i32> %i.s, splat (i32 12)
  %i.cd = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.ce = bitcast <4 x i32> %i.cc to <8 x i16>
  %i.cf = and <8 x i16> %i.ce, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cg = or disjoint <8 x i16> %i.cf, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.ch = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cd, <8 x i16> %i.cg)
  %i.ci = lshr <4 x i32> %i.ch, splat (i32 16)
  %i.cj = lshr <4 x i32> %i.w, splat (i32 12)
  %i.ck = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.cl = bitcast <4 x i32> %i.cj to <8 x i16>
  %i.cm = and <8 x i16> %i.cl, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cn = or disjoint <8 x i16> %i.cm, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ck, <8 x i16> %i.cn)
  %i.cp = lshr <4 x i32> %i.co, splat (i32 16)
  %i.cq = lshr <4 x i32> %i.aa, splat (i32 12)
  %i.cr = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cs = bitcast <4 x i32> %i.cq to <8 x i16>
  %i.ct = and <8 x i16> %i.cs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cu = or disjoint <8 x i16> %i.ct, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cr, <8 x i16> %i.cu)
  %i.cw = lshr <4 x i32> %i.cv, splat (i32 16)
  %i.cx = lshr <4 x i32> %i.ae, splat (i32 12)
  %i.cy = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cz = bitcast <4 x i32> %i.cx to <8 x i16>
  %i.da = and <8 x i16> %i.cz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.db = or disjoint <8 x i16> %i.da, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> %i.db)
  %i.dd = lshr <4 x i32> %i.dc, splat (i32 16)
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ci, <4 x i32> %i.cp) ; 2 uses
  %i.df = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cw, <4 x i32> %i.dd) ; 2 uses
  %i.dg = shufflevector <8 x i16> %i.de, <8 x i16> %i.df, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dh = shufflevector <8 x i16> %i.de, <8 x i16> %i.df, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dg, <8 x i16> %i.dh)
  store <16 x i8> %i.di, ptr %.0142, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0141, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0142, i64 16 ; 3 uses
  %.not150 = icmp ugt ptr %i.dk, %i.g
  %i.dl = icmp ne ptr %i.dk, %i.c                 ; 2 uses
  %i.dm = and i1 %.not150, %i.dl                  ; 2 uses
  %.1143 = select i1 %i.dm, ptr %i.g, ptr %i.dk
  %.1 = select i1 %i.dm, ptr %i.f, ptr %i.dj
  br i1 %i.dl, label %bb.c, label %.loopexit

.preheader.loopexit:                              ; preds = %stbir__linear_to_srgb_uchar.exit158
  %.pre = ptrtoaddr ptr %.2144167 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader162
  %.pn.lcssa173.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.a, %.preheader162 ]
  %.pn.lcssa = phi ptr [ %.2144167, %.preheader.loopexit ], [ %0, %.preheader162 ] ; 3 uses
  %.2.lcssa = phi ptr [ %i.gq, %.preheader.loopexit ], [ %2, %.preheader162 ]
  %i.dn = icmp ult ptr %.pn.lcssa, %i.c
  br i1 %i.dn, label %.lr.ph171.preheader, label %.loopexit

.lr.ph171.preheader:                              ; preds = %.preheader
  %i.do = add i64 %i.a, %i.b
  %i.dp = sub i64 %i.do, %.pn.lcssa173.pre-phi
  %scevgep = getelementptr i8, ptr %.pn.lcssa, i64 %i.dp
  br label %.lr.ph171

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit158
  %.2144167 = phi ptr [ %.2144, %stbir__linear_to_srgb_uchar.exit158 ], [ %.2144163, %.lr.ph.preheader ] ; 4 uses
  %.2166 = phi ptr [ %i.gq, %stbir__linear_to_srgb_uchar.exit158 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn165 = phi ptr [ %.2144167, %stbir__linear_to_srgb_uchar.exit158 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2166) #52, !srcloc !372
  %i.dq = load float, ptr %.2166, align 4         ; 3 uses
  %i.dr = fcmp ogt float %i.dq, f0x39000000
  br i1 %i.dr, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ds = fcmp ogt float %i.dq, f0x3F7FFFFF
  br i1 %i.ds, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dt = bitcast float %i.dq to i32              ; 2 uses
  %i.du = add nsw i32 %i.dt, -956301312
  %i.dv = lshr i32 %i.du, 20
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.dz = lshr i32 %i.dy, 7
  %i.ea = and i32 %i.dz, 16776704
  %i.eb = and i32 %i.dy, 65535
  %i.ec = lshr i32 %i.dt, 12
  %i.ed = and i32 %i.ec, 255
  %i.ee = mul nuw nsw i32 %i.eb, %i.ed
  %i.ef = add nuw nsw i32 %i.ea, %i.ee
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc i32 %i.eg to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.eh, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn165, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.2166, i64 4
  %i.ej = load float, ptr %i.ei, align 4          ; 3 uses
  %i.ek = fcmp ogt float %i.ej, f0x39000000
  br i1 %i.ek, label %bb.f, label %stbir__linear_to_srgb_uchar.exit154

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
end_hunk_1
begin_hunk_2_@stbir__encode_half_float_linear:bb.a
bb.g:                                             ; preds = %bb.e
  %i.bd = lshr i32 %i.aw, 13
  %i.be = and i32 %i.bd, 1
  %i.bf = add nuw nsw i32 %i.aw, 134221823
  %i.bg = add nuw nsw i32 %i.bf, %i.be
  %i.bh = lshr i32 %i.bg, 13
  br label %stbir__float_to_half.exit

stbir__float_to_half.exit:                        ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.016.0.i = phi i32 [ %i.az, %bb.d ], [ %i.bc, %bb.f ], [ %i.bh, %bb.g ]
  %i.bi = bitcast float %i.au to i32
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = and i32 %i.bj, 32768
  %i.bl = or i32 %.sroa.016.0.i, %i.bk
  %i.bm = trunc i32 %i.bl to i16
  store i16 %i.bm, ptr %.pn63, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn63, i64 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.164, i64 4
  %i.bp = load float, ptr %i.bo, align 4          ; 2 uses
  %i.bq = tail call float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %i.br = bitcast float %i.bq to i32              ; 5 uses
  %i.bs = icmp samesign ugt i32 %i.br, 1199570943
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %stbir__float_to_half.exit
  %i.bt = icmp samesign ugt i32 %i.br, 2139095040
  %i.bu = select i1 %i.bt, i32 32256, i32 31744
  br label %stbir__float_to_half.exit52

bb.i:                                             ; preds = %stbir__float_to_half.exit
  %i.bv = icmp samesign ult i32 %i.br, 947912704
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = fadd float %i.bq, 5.000000e-01
  %i.bx = bitcast float %i.bw to i32
  br label %stbir__float_to_half.exit52

bb.k:                                             ; preds = %bb.i
  %i.by = lshr i32 %i.br, 13
  %i.bz = and i32 %i.by, 1
  %i.ca = add nuw nsw i32 %i.br, 134221823
  %i.cb = add nuw nsw i32 %i.ca, %i.bz
  %i.cc = lshr i32 %i.cb, 13
  br label %stbir__float_to_half.exit52

stbir__float_to_half.exit52:                      ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.016.0.i51 = phi i32 [ %i.bu, %bb.h ], [ %i.bx, %bb.j ], [ %i.cc, %bb.k ]
  %i.cd = bitcast float %i.bp to i32
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = and i32 %i.ce, 32768
  %i.cg = or i32 %.sroa.016.0.i51, %i.cf
  %i.ch = trunc i32 %i.cg to i16
  store i16 %i.ch, ptr %i.bn, align 2
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn63, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.164, i64 8
  %i.ck = load float, ptr %i.cj, align 4          ; 2 uses
  %i.cl = tail call float @llvm.fabs.f32(float %i.ck) ; 2 uses
  %i.cm = bitcast float %i.cl to i32              ; 5 uses
  %i.cn = icmp samesign ugt i32 %i.cm, 1199570943
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbir__float_to_half.exit52
  %i.co = icmp samesign ugt i32 %i.cm, 2139095040
  %i.cp = select i1 %i.co, i32 32256, i32 31744
  br label %stbir__float_to_half.exit54

bb.m:                                             ; preds = %stbir__float_to_half.exit52
  %i.cq = icmp samesign ult i32 %i.cm, 947912704
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = fadd float %i.cl, 5.000000e-01
  %i.cs = bitcast float %i.cr to i32
  br label %stbir__float_to_half.exit54

bb.o:                                             ; preds = %bb.m
  %i.ct = lshr i32 %i.cm, 13
  %i.cu = and i32 %i.ct, 1
  %i.cv = add nuw nsw i32 %i.cm, 134221823
  %i.cw = add nuw nsw i32 %i.cv, %i.cu
  %i.cx = lshr i32 %i.cw, 13
  br label %stbir__float_to_half.exit54

stbir__float_to_half.exit54:                      ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.016.0.i53 = phi i32 [ %i.cp, %bb.l ], [ %i.cs, %bb.n ], [ %i.cx, %bb.o ]
  %i.cy = bitcast float %i.ck to i32
  %i.cz = lshr i32 %i.cy, 16
  %i.da = and i32 %i.cz, 32768
  %i.db = or i32 %.sroa.016.0.i53, %i.da
  %i.dc = trunc i32 %i.db to i16
  store i16 %i.dc, ptr %i.ci, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn63, i64 6
  %i.de = getelementptr inbounds nuw i8, ptr %.164, i64 12
  %i.df = load float, ptr %i.de, align 4          ; 2 uses
  %i.dg = tail call float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.dh = bitcast float %i.dg to i32              ; 5 uses
  %i.di = icmp samesign ugt i32 %i.dh, 1199570943
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %stbir__float_to_half.exit54
  %i.dj = icmp samesign ugt i32 %i.dh, 2139095040
  %i.dk = select i1 %i.dj, i32 32256, i32 31744
  br label %stbir__float_to_half.exit56

bb.q:                                             ; preds = %stbir__float_to_half.exit54
  %i.dl = icmp samesign ult i32 %i.dh, 947912704
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dm = fadd float %i.dg, 5.000000e-01
  %i.dn = bitcast float %i.dm to i32
  br label %stbir__float_to_half.exit56

bb.s:                                             ; preds = %bb.q
  %i.do = lshr i32 %i.dh, 13
  %i.dp = and i32 %i.do, 1
  %i.dq = add nuw nsw i32 %i.dh, 134221823
  %i.dr = add nuw nsw i32 %i.dq, %i.dp
  %i.ds = lshr i32 %i.dr, 13
  br label %stbir__float_to_half.exit56

stbir__float_to_half.exit56:                      ; preds = %bb.p, %bb.r, %bb.s
  %.sroa.016.0.i55 = phi i32 [ %i.dk, %bb.p ], [ %i.dn, %bb.r ], [ %i.ds, %bb.s ]
  %i.dt = bitcast float %i.df to i32
  %i.du = lshr i32 %i.dt, 16
  %i.dv = and i32 %i.du, 32768
  %i.dw = or i32 %.sroa.016.0.i55, %i.dv
  %i.dx = trunc i32 %i.dw to i16
  store i16 %i.dx, ptr %i.dd, align 2
  %i.dy = getelementptr inbounds nuw i8, ptr %.164, i64 16 ; 2 uses
  %.144 = getelementptr inbounds nuw i8, ptr %.14465, i64 8 ; 2 uses
  %.not = icmp ugt ptr %.144, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !375

.lr.ph69:                                         ; preds = %.preheader, %stbir__float_to_half.exit58
  %.268 = phi ptr [ %i.et, %stbir__float_to_half.exit58 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.24567 = phi ptr [ %i.es, %stbir__float_to_half.exit58 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.24567) #52, !srcloc !379
  %i.dz = load float, ptr %.268, align 4          ; 2 uses
  %i.ea = tail call float @llvm.fabs.f32(float %i.dz) ; 2 uses
  %i.eb = bitcast float %i.ea to i32              ; 5 uses
  %i.ec = icmp samesign ugt i32 %i.eb, 1199570943
  br i1 %i.ec, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph69
  %i.ed = icmp samesign ugt i32 %i.eb, 2139095040
  %i.ee = select i1 %i.ed, i32 32256, i32 31744
  br label %stbir__float_to_half.exit58

bb.u:                                             ; preds = %.lr.ph69
  %i.ef = icmp samesign ult i32 %i.eb, 947912704
  br i1 %i.ef, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eg = fadd float %i.ea, 5.000000e-01
  %i.eh = bitcast float %i.eg to i32
  br label %stbir__float_to_half.exit58

bb.w:                                             ; preds = %bb.u
  %i.ei = lshr i32 %i.eb, 13
  %i.ej = and i32 %i.ei, 1
  %i.ek = add nuw nsw i32 %i.eb, 134221823
  %i.el = add nuw nsw i32 %i.ek, %i.ej
  %i.em = lshr i32 %i.el, 13
  br label %stbir__float_to_half.exit58

stbir__float_to_half.exit58:                      ; preds = %bb.t, %bb.v, %bb.w
  %.sroa.016.0.i57 = phi i32 [ %i.ee, %bb.t ], [ %i.eh, %bb.v ], [ %i.em, %bb.w ]
  %i.en = bitcast float %i.dz to i32
  %i.eo = lshr i32 %i.en, 16
  %i.ep = and i32 %i.eo, 32768
  %i.eq = or i32 %.sroa.016.0.i57, %i.ep
  %i.er = trunc i32 %i.eq to i16
  store i16 %i.er, ptr %.24567, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %.24567, i64 2 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.268, i64 4
  %i.eu = icmp ult ptr %i.es, %i.b
  br i1 %i.eu, label %.lr.ph69, label %.loopexit, !llvm.loop !376

.loopexit:                                        ; preds = %stbir__float_to_half.exit58, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb4_linearalpha(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %0, %bb.b ], [ %.1125, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !381
  %3 = load <4 x float>, ptr %.0, align 1         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ag = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.aj = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.al, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.am = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ap = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.as = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.av = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ay = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.bb = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.be = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bh = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bk = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bn = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.bp, i64 3
  %i.bq = lshr <4 x i32> %i.r, splat (i32 12)
  %i.br = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bs = bitcast <4 x i32> %i.bq to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bu = or disjoint <8 x i16> %i.bt, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> %i.bu)
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.v, splat (i32 12)
  %i.by = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.bz = bitcast <4 x i32> %i.bx to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cb = or disjoint <8 x i16> %i.ca, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %i.cb)
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.ce = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.cd) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ck, <4 x i32> %i.af) ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.co)
  store <16 x i8> %i.cp, ptr %.0124, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.cq, %i.f
  %i.cs = icmp ne ptr %i.cq, %i.b                 ; 2 uses
  %i.ct = and i1 %.not, %i.cs                     ; 2 uses
  %.1125 = select i1 %i.ct, ptr %i.f, ptr %i.cq
  %.1 = select i1 %i.ct, ptr %i.e, ptr %i.cr
  br i1 %i.cs, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit135
  %.2126 = phi ptr [ %i.fi, %stbir__linear_to_srgb_uchar.exit135 ], [ %0, %bb.a ] ; 5 uses
  %.2 = phi ptr [ %i.fj, %stbir__linear_to_srgb_uchar.exit135 ], [ %2, %bb.a ] ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #52, !srcloc !382
  %i.cu = load float, ptr %.2, align 4            ; 3 uses
  %i.cv = fcmp ogt float %i.cu, f0x39000000
  br i1 %i.cv, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.cw = fcmp ogt float %i.cu, f0x3F7FFFFF
  br i1 %i.cw, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = bitcast float %i.cu to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, -956301312
  %i.cz = lshr i32 %i.cy, 20
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 16776704
  %i.df = and i32 %i.dc, 65535
  %i.dg = lshr i32 %i.cx, 12
  %i.dh = and i32 %i.dg, 255
  %i.di = mul nuw nsw i32 %i.df, %i.dh
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc i32 %i.dk to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.dl, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.2126, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.dn = load float, ptr %i.dm, align 4          ; 3 uses
  %i.do = fcmp ogt float %i.dn, f0x39000000
  br i1 %i.do, label %bb.f, label %stbir__linear_to_srgb_uchar.exit133

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.dp = fcmp ogt float %i.dn, f0x3F7FFFFF
  br i1 %i.dp, label %stbir__linear_to_srgb_uchar.exit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dq = bitcast float %i.dn to i32              ; 2 uses
  %i.dr = add nsw i32 %i.dq, -956301312
  %i.ds = lshr i32 %i.dr, 20
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = lshr i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 16776704
  %i.dy = and i32 %i.dv, 65535
  %i.dz = lshr i32 %i.dq, 12
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.dy, %i.ea
  %i.ec = add nuw nsw i32 %i.dx, %i.eb
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  br label %stbir__linear_to_srgb_uchar.exit133

stbir__linear_to_srgb_uchar.exit133:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i132 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ee, %bb.g ], [ -1, %bb.f ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.2126, i64 1
  store i8 %.0.i132, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.eh = load float, ptr %i.eg, align 4          ; 3 uses
  %i.ei = fcmp ogt float %i.eh, f0x39000000
  br i1 %i.ei, label %bb.h, label %stbir__linear_to_srgb_uchar.exit135

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit133
  %i.ej = fcmp ogt float %i.eh, f0x3F7FFFFF
  br i1 %i.ej, label %stbir__linear_to_srgb_uchar.exit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ek = bitcast float %i.eh to i32              ; 2 uses
  %i.el = add nsw i32 %i.ek, -956301312
  %i.em = lshr i32 %i.el, 20
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %i.eq = lshr i32 %i.ep, 7
  %i.er = and i32 %i.eq, 16776704
  %i.es = and i32 %i.ep, 65535
  %i.et = lshr i32 %i.ek, 12
  %i.eu = and i32 %i.et, 255
  %i.ev = mul nuw nsw i32 %i.es, %i.eu
  %i.ew = add nuw nsw i32 %i.er, %i.ev
  %i.ex = lshr i32 %i.ew, 16
  %i.ey = trunc i32 %i.ex to i8
  br label %stbir__linear_to_srgb_uchar.exit135

stbir__linear_to_srgb_uchar.exit135:              ; preds = %stbir__linear_to_srgb_uchar.exit133, %bb.h, %bb.i
  %.0.i134 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit133 ], [ %i.ey, %bb.i ], [ -1, %bb.h ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.2126, i64 2
  store i8 %.0.i134, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.fb = load float, ptr %i.fa, align 4
  %i.fc = fmul float %i.fb, 2.550000e+02
  %i.fd = fadd float %i.fc, 5.000000e-01          ; 2 uses
  %i.fe = fcmp olt float %i.fd, 0.000000e+00
  %spec.store.select1 = select i1 %i.fe, float 0.000000e+00, float %i.fd ; 2 uses
  %i.ff = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.ff, float 2.550000e+02, float %spec.store.select1
  %i.fg = fptoui float %spec.store.select to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.2126, i64 3
  store i8 %i.fg, ptr %i.fh, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.2126, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.fk = icmp ult ptr %i.fi, %i.b
  br i1 %i.fk, label %.preheader, label %.loopexit, !llvm.loop !380

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit135, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb4_linearalpha_BGRA(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %0, %bb.b ], [ %.1125, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !384
  %3 = load <4 x float>, ptr %.0, align 1         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ag = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.aj = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.al, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.am = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ap = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.as = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.av = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ay = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.bb = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.be = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bh = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bk = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bn = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.bp, i64 3
  %i.bq = lshr <4 x i32> %i.r, splat (i32 12)
  %i.br = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bs = bitcast <4 x i32> %i.bq to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bu = or disjoint <8 x i16> %i.bt, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> %i.bu)
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.v, splat (i32 12)
  %i.by = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.bz = bitcast <4 x i32> %i.bx to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cb = or disjoint <8 x i16> %i.ca, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %i.cb)
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.ce = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ck, <4 x i32> %i.cd) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.af) ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.co)
  store <16 x i8> %i.cp, ptr %.0124, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.cq, %i.f
  %i.cs = icmp ne ptr %i.cq, %i.b                 ; 2 uses
  %i.ct = and i1 %.not, %i.cs                     ; 2 uses
  %.1125 = select i1 %i.ct, ptr %i.f, ptr %i.cq
  %.1 = select i1 %i.ct, ptr %i.e, ptr %i.cr
  br i1 %i.cs, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit135
  %.2126 = phi ptr [ %i.fi, %stbir__linear_to_srgb_uchar.exit135 ], [ %0, %bb.a ] ; 5 uses
  %.2 = phi ptr [ %i.fj, %stbir__linear_to_srgb_uchar.exit135 ], [ %2, %bb.a ] ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #52, !srcloc !385
  %i.cu = load float, ptr %.2, align 4            ; 3 uses
  %i.cv = fcmp ogt float %i.cu, f0x39000000
  br i1 %i.cv, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.cw = fcmp ogt float %i.cu, f0x3F7FFFFF
  br i1 %i.cw, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = bitcast float %i.cu to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, -956301312
  %i.cz = lshr i32 %i.cy, 20
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 16776704
  %i.df = and i32 %i.dc, 65535
  %i.dg = lshr i32 %i.cx, 12
  %i.dh = and i32 %i.dg, 255
  %i.di = mul nuw nsw i32 %i.df, %i.dh
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc i32 %i.dk to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.dl, %bb.e ], [ -1, %bb.d ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2126, i64 2
  store i8 %.0.i, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.do = load float, ptr %i.dn, align 4          ; 3 uses
  %i.dp = fcmp ogt float %i.do, f0x39000000
  br i1 %i.dp, label %bb.f, label %stbir__linear_to_srgb_uchar.exit133

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.dq = fcmp ogt float %i.do, f0x3F7FFFFF
  br i1 %i.dq, label %stbir__linear_to_srgb_uchar.exit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = bitcast float %i.do to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, -956301312
  %i.dt = lshr i32 %i.ds, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, 7
  %i.dy = and i32 %i.dx, 16776704
  %i.dz = and i32 %i.dw, 65535
  %i.ea = lshr i32 %i.dr, 12
  %i.eb = and i32 %i.ea, 255
  %i.ec = mul nuw nsw i32 %i.dz, %i.eb
  %i.ed = add nuw nsw i32 %i.dy, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc i32 %i.ee to i8
  br label %stbir__linear_to_srgb_uchar.exit133

stbir__linear_to_srgb_uchar.exit133:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i132 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ef, %bb.g ], [ -1, %bb.f ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.2126, i64 1
  store i8 %.0.i132, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ei = load float, ptr %i.eh, align 4          ; 3 uses
  %i.ej = fcmp ogt float %i.ei, f0x39000000
  br i1 %i.ej, label %bb.h, label %stbir__linear_to_srgb_uchar.exit135

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit133
  %i.ek = fcmp ogt float %i.ei, f0x3F7FFFFF
  br i1 %i.ek, label %stbir__linear_to_srgb_uchar.exit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = bitcast float %i.ei to i32              ; 2 uses
  %i.em = add nsw i32 %i.el, -956301312
  %i.en = lshr i32 %i.em, 20
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.er = lshr i32 %i.eq, 7
  %i.es = and i32 %i.er, 16776704
  %i.et = and i32 %i.eq, 65535
  %i.eu = lshr i32 %i.el, 12
  %i.ev = and i32 %i.eu, 255
  %i.ew = mul nuw nsw i32 %i.et, %i.ev
  %i.ex = add nuw nsw i32 %i.es, %i.ew
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc i32 %i.ey to i8
  br label %stbir__linear_to_srgb_uchar.exit135

stbir__linear_to_srgb_uchar.exit135:              ; preds = %stbir__linear_to_srgb_uchar.exit133, %bb.h, %bb.i
  %.0.i134 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit133 ], [ %i.ez, %bb.i ], [ -1, %bb.h ]
  store i8 %.0.i134, ptr %.2126, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.fb = load float, ptr %i.fa, align 4
  %i.fc = fmul float %i.fb, 2.550000e+02
  %i.fd = fadd float %i.fc, 5.000000e-01          ; 2 uses
  %i.fe = fcmp olt float %i.fd, 0.000000e+00
  %spec.store.select1 = select i1 %i.fe, float 0.000000e+00, float %i.fd ; 2 uses
  %i.ff = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.ff, float 2.550000e+02, float %spec.store.select1
  %i.fg = fptoui float %spec.store.select to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.2126, i64 3
  store i8 %i.fg, ptr %i.fh, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.2126, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.fk = icmp ult ptr %i.fi, %i.b
  br i1 %i.fk, label %.preheader, label %.loopexit, !llvm.loop !383

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit135, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb_BGRA(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not152 = icmp slt i32 %1, 4
  br i1 %.not152, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.2137151 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0135 = phi ptr [ %0, %bb.b ], [ %.1136, %bb.c ] ; 2 uses
  %.0134 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0134) #52, !srcloc !387
  %3 = load <4 x float>, ptr %.0134, align 1      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0134, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0134, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0134, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.ac = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> splat (float f0x3F7FFFFF))
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>  ; 2 uses
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.af = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ai = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.ak, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.al = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.an, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ao = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.aq, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.ar = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.au = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.aw, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ax = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.az, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.ba = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bc, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.bd = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bg = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bi, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bj = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bl, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bm = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bo, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ae, i64 0
  %i.bp = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ae, i64 1
  %i.bs = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ae, i64 2
  %i.bv = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bx, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ae, i64 3
  %i.by = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ca, i64 3
  %i.cb = lshr <4 x i32> %i.r, splat (i32 12)
  %i.cc = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cf = or disjoint <8 x i16> %i.ce, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> %i.cf)
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = lshr <4 x i32> %i.v, splat (i32 12)
  %i.cj = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.ck = bitcast <4 x i32> %i.ci to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cm = or disjoint <8 x i16> %i.cl, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cm)
  %i.co = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cp = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cq = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cr = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ct = or disjoint <8 x i16> %i.cs, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ct)
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.cx = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cy = bitcast <4 x i32> %i.cw to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.da = or disjoint <8 x i16> %i.cz, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %i.da)
  %i.dc = lshr <4 x i32> %i.db, splat (i32 16)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cv, <4 x i32> %i.co) ; 2 uses
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ch, <4 x i32> %i.dc) ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dg = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> %i.dg)
  store <16 x i8> %i.dh, ptr %.0135, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.0134, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0135, i64 16 ; 3 uses
  %.not141 = icmp ugt ptr %i.dj, %i.f
  %i.dk = icmp ne ptr %i.dj, %i.b                 ; 2 uses
  %i.dl = and i1 %.not141, %i.dk                  ; 2 uses
  %.1136 = select i1 %i.dl, ptr %i.f, ptr %i.dj
  %.1 = select i1 %i.dl, ptr %i.e, ptr %i.di
  br i1 %i.dk, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit149
  %.2137155 = phi ptr [ %.2137, %stbir__linear_to_srgb_uchar.exit149 ], [ %.2137151, %.lr.ph.preheader ] ; 2 uses
  %.2154 = phi ptr [ %i.gm, %stbir__linear_to_srgb_uchar.exit149 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn153 = phi ptr [ %.2137155, %stbir__linear_to_srgb_uchar.exit149 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2154) #52, !srcloc !388
  %i.dm = getelementptr inbounds nuw i8, ptr %.2154, i64 8
  %i.dn = load float, ptr %i.dm, align 4          ; 3 uses
  %i.do = fcmp ogt float %i.dn, f0x39000000
  br i1 %i.do, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.dp = fcmp ogt float %i.dn, f0x3F7FFFFF
  br i1 %i.dp, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = bitcast float %i.dn to i32              ; 2 uses
  %i.dr = add nsw i32 %i.dq, -956301312
  %i.ds = lshr i32 %i.dr, 20
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = lshr i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 16776704
  %i.dy = and i32 %i.dv, 65535
  %i.dz = lshr i32 %i.dq, 12
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.dy, %i.ea
  %i.ec = add nuw nsw i32 %i.dx, %i.eb
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ee, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn153, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.2154, i64 4
  %i.eg = load float, ptr %i.ef, align 4          ; 3 uses
  %i.eh = fcmp ogt float %i.eg, f0x39000000
  br i1 %i.eh, label %bb.f, label %stbir__linear_to_srgb_uchar.exit145

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.ei = fcmp ogt float %i.eg, f0x3F7FFFFF
  br i1 %i.ei, label %stbir__linear_to_srgb_uchar.exit145, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ej = bitcast float %i.eg to i32              ; 2 uses
  %i.ek = add nsw i32 %i.ej, -956301312
  %i.el = lshr i32 %i.ek, 20
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = lshr i32 %i.eo, 7
  %i.eq = and i32 %i.ep, 16776704
  %i.er = and i32 %i.eo, 65535
  %i.es = lshr i32 %i.ej, 12
  %i.et = and i32 %i.es, 255
  %i.eu = mul nuw nsw i32 %i.er, %i.et
end_hunk_2
begin_hunk_3_@stbir__encode_half_float_linear_BGRA:bb.a
  %.inner77 = and <4 x i32> %i.aq, splat (i32 -32768)
  %.inner78 = or disjoint <4 x i32> %.inner76, %.inner77
  %i.ar = or <4 x i32> %i.y, %.inner73
  %i.as = or <4 x i32> %i.ao, %.inner78
  %i.at = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ar, <4 x i32> %i.as)
  store <8 x i16> %i.at, ptr %.036, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 3 uses
  %.not40 = icmp ugt ptr %i.av, %i.f
  br i1 %.not40, label %bb.c, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.backedge, %bb.c
  %.036.be = phi ptr [ %i.av, %.backedge ], [ %i.f, %bb.c ]
  %.0.be = phi ptr [ %i.au, %.backedge ], [ %i.e, %bb.c ]
  br label %.backedge, !llvm.loop !392

bb.c:                                             ; preds = %.backedge
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %.loopexit, label %.backedge.backedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__float_to_half.exit47
  %.13755 = phi ptr [ %.137, %stbir__float_to_half.exit47 ], [ %.13751, %.lr.ph.preheader ] ; 3 uses
  %.154 = phi ptr [ %i.eb, %stbir__float_to_half.exit47 ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn53 = phi ptr [ %.13755, %stbir__float_to_half.exit47 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.13755) #52, !srcloc !395
  %i.ax = getelementptr inbounds nuw i8, ptr %.154, i64 8
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = tail call float @llvm.fabs.f32(float %i.ay) ; 2 uses
  %i.ba = bitcast float %i.az to i32              ; 5 uses
  %i.bb = icmp samesign ugt i32 %i.ba, 1199570943
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bc = icmp samesign ugt i32 %i.ba, 2139095040
  %i.bd = select i1 %i.bc, i32 32256, i32 31744
  br label %stbir__float_to_half.exit

bb.e:                                             ; preds = %.lr.ph
  %i.be = icmp samesign ult i32 %i.ba, 947912704
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = fadd float %i.az, 5.000000e-01
  %i.bg = bitcast float %i.bf to i32
  br label %stbir__float_to_half.exit

bb.g:                                             ; preds = %bb.e
  %i.bh = lshr i32 %i.ba, 13
  %i.bi = and i32 %i.bh, 1
  %i.bj = add nuw nsw i32 %i.ba, 134221823
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = lshr i32 %i.bk, 13
  br label %stbir__float_to_half.exit

stbir__float_to_half.exit:                        ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.016.0.i = phi i32 [ %i.bd, %bb.d ], [ %i.bg, %bb.f ], [ %i.bl, %bb.g ]
  %i.bm = bitcast float %i.ay to i32
  %i.bn = lshr i32 %i.bm, 16
  %i.bo = and i32 %i.bn, 32768
  %i.bp = or i32 %.sroa.016.0.i, %i.bo
  %i.bq = trunc i32 %i.bp to i16
  store i16 %i.bq, ptr %.pn53, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %.pn53, i64 2
  %i.bs = getelementptr inbounds nuw i8, ptr %.154, i64 4
  %i.bt = load float, ptr %i.bs, align 4          ; 2 uses
  %i.bu = tail call float @llvm.fabs.f32(float %i.bt) ; 2 uses
  %i.bv = bitcast float %i.bu to i32              ; 5 uses
  %i.bw = icmp samesign ugt i32 %i.bv, 1199570943
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %stbir__float_to_half.exit
  %i.bx = icmp samesign ugt i32 %i.bv, 2139095040
  %i.by = select i1 %i.bx, i32 32256, i32 31744
  br label %stbir__float_to_half.exit43

bb.i:                                             ; preds = %stbir__float_to_half.exit
  %i.bz = icmp samesign ult i32 %i.bv, 947912704
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = fadd float %i.bu, 5.000000e-01
  %i.cb = bitcast float %i.ca to i32
  br label %stbir__float_to_half.exit43

bb.k:                                             ; preds = %bb.i
  %i.cc = lshr i32 %i.bv, 13
  %i.cd = and i32 %i.cc, 1
  %i.ce = add nuw nsw i32 %i.bv, 134221823
  %i.cf = add nuw nsw i32 %i.ce, %i.cd
  %i.cg = lshr i32 %i.cf, 13
  br label %stbir__float_to_half.exit43

stbir__float_to_half.exit43:                      ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.016.0.i42 = phi i32 [ %i.by, %bb.h ], [ %i.cb, %bb.j ], [ %i.cg, %bb.k ]
  %i.ch = bitcast float %i.bt to i32
  %i.ci = lshr i32 %i.ch, 16
  %i.cj = and i32 %i.ci, 32768
  %i.ck = or i32 %.sroa.016.0.i42, %i.cj
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.br, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn53, i64 4
  %i.cn = load float, ptr %.154, align 4          ; 2 uses
  %i.co = tail call float @llvm.fabs.f32(float %i.cn) ; 2 uses
  %i.cp = bitcast float %i.co to i32              ; 5 uses
  %i.cq = icmp samesign ugt i32 %i.cp, 1199570943
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbir__float_to_half.exit43
  %i.cr = icmp samesign ugt i32 %i.cp, 2139095040
  %i.cs = select i1 %i.cr, i32 32256, i32 31744
  br label %stbir__float_to_half.exit45

bb.m:                                             ; preds = %stbir__float_to_half.exit43
  %i.ct = icmp samesign ult i32 %i.cp, 947912704
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = fadd float %i.co, 5.000000e-01
  %i.cv = bitcast float %i.cu to i32
  br label %stbir__float_to_half.exit45

bb.o:                                             ; preds = %bb.m
  %i.cw = lshr i32 %i.cp, 13
  %i.cx = and i32 %i.cw, 1
  %i.cy = add nuw nsw i32 %i.cp, 134221823
  %i.cz = add nuw nsw i32 %i.cy, %i.cx
  %i.da = lshr i32 %i.cz, 13
  br label %stbir__float_to_half.exit45

stbir__float_to_half.exit45:                      ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.016.0.i44 = phi i32 [ %i.cs, %bb.l ], [ %i.cv, %bb.n ], [ %i.da, %bb.o ]
  %i.db = bitcast float %i.cn to i32
  %i.dc = lshr i32 %i.db, 16
  %i.dd = and i32 %i.dc, 32768
  %i.de = or i32 %.sroa.016.0.i44, %i.dd
  %i.df = trunc i32 %i.de to i16
  store i16 %i.df, ptr %i.cm, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn53, i64 6
  %i.dh = getelementptr inbounds nuw i8, ptr %.154, i64 12
  %i.di = load float, ptr %i.dh, align 4          ; 2 uses
  %i.dj = tail call float @llvm.fabs.f32(float %i.di) ; 2 uses
  %i.dk = bitcast float %i.dj to i32              ; 5 uses
  %i.dl = icmp samesign ugt i32 %i.dk, 1199570943
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %stbir__float_to_half.exit45
  %i.dm = icmp samesign ugt i32 %i.dk, 2139095040
  %i.dn = select i1 %i.dm, i32 32256, i32 31744
  br label %stbir__float_to_half.exit47

bb.q:                                             ; preds = %stbir__float_to_half.exit45
  %i.do = icmp samesign ult i32 %i.dk, 947912704
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dp = fadd float %i.dj, 5.000000e-01
  %i.dq = bitcast float %i.dp to i32
  br label %stbir__float_to_half.exit47

bb.s:                                             ; preds = %bb.q
  %i.dr = lshr i32 %i.dk, 13
  %i.ds = and i32 %i.dr, 1
  %i.dt = add nuw nsw i32 %i.dk, 134221823
  %i.du = add nuw nsw i32 %i.dt, %i.ds
  %i.dv = lshr i32 %i.du, 13
  br label %stbir__float_to_half.exit47

stbir__float_to_half.exit47:                      ; preds = %bb.p, %bb.r, %bb.s
  %.sroa.016.0.i46 = phi i32 [ %i.dn, %bb.p ], [ %i.dq, %bb.r ], [ %i.dv, %bb.s ]
  %i.dw = bitcast float %i.di to i32
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = and i32 %i.dx, 32768
  %i.dz = or i32 %.sroa.016.0.i46, %i.dy
  %i.ea = trunc i32 %i.dz to i16
  store i16 %i.ea, ptr %i.dg, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.154, i64 16
  %.137 = getelementptr inbounds nuw i8, ptr %.13755, i64 8 ; 2 uses
  %.not = icmp ugt ptr %.137, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !393

.loopexit:                                        ; preds = %stbir__float_to_half.exit47, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb4_linearalpha_ARGB(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %0, %bb.b ], [ %.1125, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !397
  %3 = load <4 x float>, ptr %.0, align 1         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ag = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.aj = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.al, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.am = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ap = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.as = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.av = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ay = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.bb = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.be = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bh = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bk = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bn = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.bp, i64 3
  %i.bq = lshr <4 x i32> %i.r, splat (i32 12)
  %i.br = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bs = bitcast <4 x i32> %i.bq to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bu = or disjoint <8 x i16> %i.bt, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> %i.bu)
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.v, splat (i32 12)
  %i.by = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.bz = bitcast <4 x i32> %i.bx to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cb = or disjoint <8 x i16> %i.ca, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %i.cb)
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.ce = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.af, <4 x i32> %i.bw) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cd, <4 x i32> %i.ck) ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.co)
  store <16 x i8> %i.cp, ptr %.0124, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.cq, %i.f
  %i.cs = icmp ne ptr %i.cq, %i.b                 ; 2 uses
  %i.ct = and i1 %.not, %i.cs                     ; 2 uses
  %.1125 = select i1 %i.ct, ptr %i.f, ptr %i.cq
  %.1 = select i1 %i.ct, ptr %i.e, ptr %i.cr
  br i1 %i.cs, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit135
  %.2126 = phi ptr [ %i.fi, %stbir__linear_to_srgb_uchar.exit135 ], [ %0, %bb.a ] ; 5 uses
  %.2 = phi ptr [ %i.fj, %stbir__linear_to_srgb_uchar.exit135 ], [ %2, %bb.a ] ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #52, !srcloc !398
  %i.cu = load float, ptr %.2, align 4            ; 3 uses
  %i.cv = fcmp ogt float %i.cu, f0x39000000
  br i1 %i.cv, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.cw = fcmp ogt float %i.cu, f0x3F7FFFFF
  br i1 %i.cw, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = bitcast float %i.cu to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, -956301312
  %i.cz = lshr i32 %i.cy, 20
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 16776704
  %i.df = and i32 %i.dc, 65535
  %i.dg = lshr i32 %i.cx, 12
  %i.dh = and i32 %i.dg, 255
  %i.di = mul nuw nsw i32 %i.df, %i.dh
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc i32 %i.dk to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.dl, %bb.e ], [ -1, %bb.d ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2126, i64 1
  store i8 %.0.i, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.do = load float, ptr %i.dn, align 4          ; 3 uses
  %i.dp = fcmp ogt float %i.do, f0x39000000
  br i1 %i.dp, label %bb.f, label %stbir__linear_to_srgb_uchar.exit133

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.dq = fcmp ogt float %i.do, f0x3F7FFFFF
  br i1 %i.dq, label %stbir__linear_to_srgb_uchar.exit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = bitcast float %i.do to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, -956301312
  %i.dt = lshr i32 %i.ds, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, 7
  %i.dy = and i32 %i.dx, 16776704
  %i.dz = and i32 %i.dw, 65535
  %i.ea = lshr i32 %i.dr, 12
  %i.eb = and i32 %i.ea, 255
  %i.ec = mul nuw nsw i32 %i.dz, %i.eb
  %i.ed = add nuw nsw i32 %i.dy, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc i32 %i.ee to i8
  br label %stbir__linear_to_srgb_uchar.exit133

stbir__linear_to_srgb_uchar.exit133:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i132 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ef, %bb.g ], [ -1, %bb.f ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.2126, i64 2
  store i8 %.0.i132, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ei = load float, ptr %i.eh, align 4          ; 3 uses
  %i.ej = fcmp ogt float %i.ei, f0x39000000
  br i1 %i.ej, label %bb.h, label %stbir__linear_to_srgb_uchar.exit135

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit133
  %i.ek = fcmp ogt float %i.ei, f0x3F7FFFFF
  br i1 %i.ek, label %stbir__linear_to_srgb_uchar.exit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = bitcast float %i.ei to i32              ; 2 uses
  %i.em = add nsw i32 %i.el, -956301312
  %i.en = lshr i32 %i.em, 20
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.er = lshr i32 %i.eq, 7
  %i.es = and i32 %i.er, 16776704
  %i.et = and i32 %i.eq, 65535
  %i.eu = lshr i32 %i.el, 12
  %i.ev = and i32 %i.eu, 255
  %i.ew = mul nuw nsw i32 %i.et, %i.ev
  %i.ex = add nuw nsw i32 %i.es, %i.ew
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc i32 %i.ey to i8
  br label %stbir__linear_to_srgb_uchar.exit135

stbir__linear_to_srgb_uchar.exit135:              ; preds = %stbir__linear_to_srgb_uchar.exit133, %bb.h, %bb.i
  %.0.i134 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit133 ], [ %i.ez, %bb.i ], [ -1, %bb.h ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.2126, i64 3
  store i8 %.0.i134, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.fc = load float, ptr %i.fb, align 4
  %i.fd = fmul float %i.fc, 2.550000e+02
  %i.fe = fadd float %i.fd, 5.000000e-01          ; 2 uses
  %i.ff = fcmp olt float %i.fe, 0.000000e+00
  %spec.store.select1 = select i1 %i.ff, float 0.000000e+00, float %i.fe ; 2 uses
  %i.fg = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.fg, float 2.550000e+02, float %spec.store.select1
  %i.fh = fptoui float %spec.store.select to i8
  store i8 %i.fh, ptr %.2126, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.2126, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.fk = icmp ult ptr %i.fi, %i.b
  br i1 %i.fk, label %.preheader, label %.loopexit, !llvm.loop !396

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit135, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb_ARGB(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not152 = icmp slt i32 %1, 4
  br i1 %.not152, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.2137151 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0135 = phi ptr [ %0, %bb.b ], [ %.1136, %bb.c ] ; 2 uses
  %.0134 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0134) #52, !srcloc !400
  %3 = load <4 x float>, ptr %.0134, align 1      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0134, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0134, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0134, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.ac = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> splat (float f0x3F7FFFFF))
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>  ; 2 uses
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.af = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ai = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.ak, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.al = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.an, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ao = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.aq, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.ar = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.au = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.aw, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ax = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.az, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.ba = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bc, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.bd = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bg = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bi, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bj = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bl, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bm = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bo, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ae, i64 0
  %i.bp = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ae, i64 1
  %i.bs = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ae, i64 2
  %i.bv = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bx, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ae, i64 3
  %i.by = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ca, i64 3
  %i.cb = lshr <4 x i32> %i.r, splat (i32 12)
  %i.cc = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cf = or disjoint <8 x i16> %i.ce, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> %i.cf)
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = lshr <4 x i32> %i.v, splat (i32 12)
  %i.cj = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.ck = bitcast <4 x i32> %i.ci to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cm = or disjoint <8 x i16> %i.cl, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cm)
  %i.co = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cp = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cq = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cr = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ct = or disjoint <8 x i16> %i.cs, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ct)
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.cx = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cy = bitcast <4 x i32> %i.cw to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.da = or disjoint <8 x i16> %i.cz, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %i.da)
  %i.dc = lshr <4 x i32> %i.db, splat (i32 16)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dc, <4 x i32> %i.ch) ; 2 uses
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> %i.cv) ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dg = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> %i.dg)
  store <16 x i8> %i.dh, ptr %.0135, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.0134, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0135, i64 16 ; 3 uses
  %.not141 = icmp ugt ptr %i.dj, %i.f
  %i.dk = icmp ne ptr %i.dj, %i.b                 ; 2 uses
  %i.dl = and i1 %.not141, %i.dk                  ; 2 uses
  %.1136 = select i1 %i.dl, ptr %i.f, ptr %i.dj
  %.1 = select i1 %i.dl, ptr %i.e, ptr %i.di
  br i1 %i.dk, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit149
  %.2137155 = phi ptr [ %.2137, %stbir__linear_to_srgb_uchar.exit149 ], [ %.2137151, %.lr.ph.preheader ] ; 2 uses
  %.2154 = phi ptr [ %i.gm, %stbir__linear_to_srgb_uchar.exit149 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn153 = phi ptr [ %.2137155, %stbir__linear_to_srgb_uchar.exit149 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2154) #52, !srcloc !401
  %i.dm = getelementptr inbounds nuw i8, ptr %.2154, i64 12
  %i.dn = load float, ptr %i.dm, align 4          ; 3 uses
  %i.do = fcmp ogt float %i.dn, f0x39000000
  br i1 %i.do, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.dp = fcmp ogt float %i.dn, f0x3F7FFFFF
  br i1 %i.dp, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = bitcast float %i.dn to i32              ; 2 uses
  %i.dr = add nsw i32 %i.dq, -956301312
  %i.ds = lshr i32 %i.dr, 20
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = lshr i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 16776704
  %i.dy = and i32 %i.dv, 65535
  %i.dz = lshr i32 %i.dq, 12
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.dy, %i.ea
  %i.ec = add nuw nsw i32 %i.dx, %i.eb
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ee, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn153, align 1
  %i.ef = load float, ptr %.2154, align 4         ; 3 uses
  %i.eg = fcmp ogt float %i.ef, f0x39000000
  br i1 %i.eg, label %bb.f, label %stbir__linear_to_srgb_uchar.exit145

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.eh = fcmp ogt float %i.ef, f0x3F7FFFFF
  br i1 %i.eh, label %stbir__linear_to_srgb_uchar.exit145, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ei = bitcast float %i.ef to i32              ; 2 uses
  %i.ej = add nsw i32 %i.ei, -956301312
  %i.ek = lshr i32 %i.ej, 20
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = lshr i32 %i.en, 7
  %i.ep = and i32 %i.eo, 16776704
  %i.eq = and i32 %i.en, 65535
  %i.er = lshr i32 %i.ei, 12
  %i.es = and i32 %i.er, 255
  %i.et = mul nuw nsw i32 %i.eq, %i.es
  %i.eu = add nuw nsw i32 %i.ep, %i.et
end_hunk_3
begin_hunk_4_@stbir__encode_half_float_linear_ARGB:bb.a
  %.inner77 = and <4 x i32> %i.aq, splat (i32 -32768)
  %.inner78 = or disjoint <4 x i32> %.inner76, %.inner77
  %i.ar = or <4 x i32> %i.y, %.inner73
  %i.as = or <4 x i32> %i.ao, %.inner78
  %i.at = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ar, <4 x i32> %i.as)
  store <8 x i16> %i.at, ptr %.036, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 3 uses
  %.not40 = icmp ugt ptr %i.av, %i.f
  br i1 %.not40, label %bb.c, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.backedge, %bb.c
  %.036.be = phi ptr [ %i.av, %.backedge ], [ %i.f, %bb.c ]
  %.0.be = phi ptr [ %i.au, %.backedge ], [ %i.e, %bb.c ]
  br label %.backedge, !llvm.loop !405

bb.c:                                             ; preds = %.backedge
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %.loopexit, label %.backedge.backedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__float_to_half.exit47
  %.13755 = phi ptr [ %.137, %stbir__float_to_half.exit47 ], [ %.13751, %.lr.ph.preheader ] ; 3 uses
  %.154 = phi ptr [ %i.eb, %stbir__float_to_half.exit47 ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn53 = phi ptr [ %.13755, %stbir__float_to_half.exit47 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.13755) #52, !srcloc !408
  %i.ax = getelementptr inbounds nuw i8, ptr %.154, i64 12
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = tail call float @llvm.fabs.f32(float %i.ay) ; 2 uses
  %i.ba = bitcast float %i.az to i32              ; 5 uses
  %i.bb = icmp samesign ugt i32 %i.ba, 1199570943
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bc = icmp samesign ugt i32 %i.ba, 2139095040
  %i.bd = select i1 %i.bc, i32 32256, i32 31744
  br label %stbir__float_to_half.exit

bb.e:                                             ; preds = %.lr.ph
  %i.be = icmp samesign ult i32 %i.ba, 947912704
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = fadd float %i.az, 5.000000e-01
  %i.bg = bitcast float %i.bf to i32
  br label %stbir__float_to_half.exit

bb.g:                                             ; preds = %bb.e
  %i.bh = lshr i32 %i.ba, 13
  %i.bi = and i32 %i.bh, 1
  %i.bj = add nuw nsw i32 %i.ba, 134221823
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = lshr i32 %i.bk, 13
  br label %stbir__float_to_half.exit

stbir__float_to_half.exit:                        ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.016.0.i = phi i32 [ %i.bd, %bb.d ], [ %i.bg, %bb.f ], [ %i.bl, %bb.g ]
  %i.bm = bitcast float %i.ay to i32
  %i.bn = lshr i32 %i.bm, 16
  %i.bo = and i32 %i.bn, 32768
  %i.bp = or i32 %.sroa.016.0.i, %i.bo
  %i.bq = trunc i32 %i.bp to i16
  store i16 %i.bq, ptr %.pn53, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %.pn53, i64 2
  %i.bs = load float, ptr %.154, align 4          ; 2 uses
  %i.bt = tail call float @llvm.fabs.f32(float %i.bs) ; 2 uses
  %i.bu = bitcast float %i.bt to i32              ; 5 uses
  %i.bv = icmp samesign ugt i32 %i.bu, 1199570943
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %stbir__float_to_half.exit
  %i.bw = icmp samesign ugt i32 %i.bu, 2139095040
  %i.bx = select i1 %i.bw, i32 32256, i32 31744
  br label %stbir__float_to_half.exit43

bb.i:                                             ; preds = %stbir__float_to_half.exit
  %i.by = icmp samesign ult i32 %i.bu, 947912704
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bz = fadd float %i.bt, 5.000000e-01
  %i.ca = bitcast float %i.bz to i32
  br label %stbir__float_to_half.exit43

bb.k:                                             ; preds = %bb.i
  %i.cb = lshr i32 %i.bu, 13
  %i.cc = and i32 %i.cb, 1
  %i.cd = add nuw nsw i32 %i.bu, 134221823
  %i.ce = add nuw nsw i32 %i.cd, %i.cc
  %i.cf = lshr i32 %i.ce, 13
  br label %stbir__float_to_half.exit43

stbir__float_to_half.exit43:                      ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.016.0.i42 = phi i32 [ %i.bx, %bb.h ], [ %i.ca, %bb.j ], [ %i.cf, %bb.k ]
  %i.cg = bitcast float %i.bs to i32
  %i.ch = lshr i32 %i.cg, 16
  %i.ci = and i32 %i.ch, 32768
  %i.cj = or i32 %.sroa.016.0.i42, %i.ci
  %i.ck = trunc i32 %i.cj to i16
  store i16 %i.ck, ptr %i.br, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn53, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.154, i64 4
  %i.cn = load float, ptr %i.cm, align 4          ; 2 uses
  %i.co = tail call float @llvm.fabs.f32(float %i.cn) ; 2 uses
  %i.cp = bitcast float %i.co to i32              ; 5 uses
  %i.cq = icmp samesign ugt i32 %i.cp, 1199570943
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbir__float_to_half.exit43
  %i.cr = icmp samesign ugt i32 %i.cp, 2139095040
  %i.cs = select i1 %i.cr, i32 32256, i32 31744
  br label %stbir__float_to_half.exit45

bb.m:                                             ; preds = %stbir__float_to_half.exit43
  %i.ct = icmp samesign ult i32 %i.cp, 947912704
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = fadd float %i.co, 5.000000e-01
  %i.cv = bitcast float %i.cu to i32
  br label %stbir__float_to_half.exit45

bb.o:                                             ; preds = %bb.m
  %i.cw = lshr i32 %i.cp, 13
  %i.cx = and i32 %i.cw, 1
  %i.cy = add nuw nsw i32 %i.cp, 134221823
  %i.cz = add nuw nsw i32 %i.cy, %i.cx
  %i.da = lshr i32 %i.cz, 13
  br label %stbir__float_to_half.exit45

stbir__float_to_half.exit45:                      ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.016.0.i44 = phi i32 [ %i.cs, %bb.l ], [ %i.cv, %bb.n ], [ %i.da, %bb.o ]
  %i.db = bitcast float %i.cn to i32
  %i.dc = lshr i32 %i.db, 16
  %i.dd = and i32 %i.dc, 32768
  %i.de = or i32 %.sroa.016.0.i44, %i.dd
  %i.df = trunc i32 %i.de to i16
  store i16 %i.df, ptr %i.cl, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn53, i64 6
  %i.dh = getelementptr inbounds nuw i8, ptr %.154, i64 8
  %i.di = load float, ptr %i.dh, align 4          ; 2 uses
  %i.dj = tail call float @llvm.fabs.f32(float %i.di) ; 2 uses
  %i.dk = bitcast float %i.dj to i32              ; 5 uses
  %i.dl = icmp samesign ugt i32 %i.dk, 1199570943
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %stbir__float_to_half.exit45
  %i.dm = icmp samesign ugt i32 %i.dk, 2139095040
  %i.dn = select i1 %i.dm, i32 32256, i32 31744
  br label %stbir__float_to_half.exit47

bb.q:                                             ; preds = %stbir__float_to_half.exit45
  %i.do = icmp samesign ult i32 %i.dk, 947912704
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dp = fadd float %i.dj, 5.000000e-01
  %i.dq = bitcast float %i.dp to i32
  br label %stbir__float_to_half.exit47

bb.s:                                             ; preds = %bb.q
  %i.dr = lshr i32 %i.dk, 13
  %i.ds = and i32 %i.dr, 1
  %i.dt = add nuw nsw i32 %i.dk, 134221823
  %i.du = add nuw nsw i32 %i.dt, %i.ds
  %i.dv = lshr i32 %i.du, 13
  br label %stbir__float_to_half.exit47

stbir__float_to_half.exit47:                      ; preds = %bb.p, %bb.r, %bb.s
  %.sroa.016.0.i46 = phi i32 [ %i.dn, %bb.p ], [ %i.dq, %bb.r ], [ %i.dv, %bb.s ]
  %i.dw = bitcast float %i.di to i32
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = and i32 %i.dx, 32768
  %i.dz = or i32 %.sroa.016.0.i46, %i.dy
  %i.ea = trunc i32 %i.dz to i16
  store i16 %i.ea, ptr %i.dg, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.154, i64 16
  %.137 = getelementptr inbounds nuw i8, ptr %.13755, i64 8 ; 2 uses
  %.not = icmp ugt ptr %.137, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !406

.loopexit:                                        ; preds = %stbir__float_to_half.exit47, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb4_linearalpha_ABGR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %0, %bb.b ], [ %.1125, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !410
  %3 = load <4 x float>, ptr %.0, align 1         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ag = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.aj = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.al, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.am = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ap = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.as = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.av = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ay = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.bb = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.be = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bh = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bk = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bn = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.bp, i64 3
  %i.bq = lshr <4 x i32> %i.r, splat (i32 12)
  %i.br = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bs = bitcast <4 x i32> %i.bq to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bu = or disjoint <8 x i16> %i.bt, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> %i.bu)
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.v, splat (i32 12)
  %i.by = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.bz = bitcast <4 x i32> %i.bx to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cb = or disjoint <8 x i16> %i.ca, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %i.cb)
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.ce = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.af, <4 x i32> %i.ck) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cd, <4 x i32> %i.bw) ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.co)
  store <16 x i8> %i.cp, ptr %.0124, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.cq, %i.f
  %i.cs = icmp ne ptr %i.cq, %i.b                 ; 2 uses
  %i.ct = and i1 %.not, %i.cs                     ; 2 uses
  %.1125 = select i1 %i.ct, ptr %i.f, ptr %i.cq
  %.1 = select i1 %i.ct, ptr %i.e, ptr %i.cr
  br i1 %i.cs, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit135
  %.2126 = phi ptr [ %i.fi, %stbir__linear_to_srgb_uchar.exit135 ], [ %0, %bb.a ] ; 5 uses
  %.2 = phi ptr [ %i.fj, %stbir__linear_to_srgb_uchar.exit135 ], [ %2, %bb.a ] ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #52, !srcloc !411
  %i.cu = load float, ptr %.2, align 4            ; 3 uses
  %i.cv = fcmp ogt float %i.cu, f0x39000000
  br i1 %i.cv, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.cw = fcmp ogt float %i.cu, f0x3F7FFFFF
  br i1 %i.cw, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = bitcast float %i.cu to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, -956301312
  %i.cz = lshr i32 %i.cy, 20
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 16776704
  %i.df = and i32 %i.dc, 65535
  %i.dg = lshr i32 %i.cx, 12
  %i.dh = and i32 %i.dg, 255
  %i.di = mul nuw nsw i32 %i.df, %i.dh
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc i32 %i.dk to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.dl, %bb.e ], [ -1, %bb.d ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2126, i64 3
  store i8 %.0.i, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.do = load float, ptr %i.dn, align 4          ; 3 uses
  %i.dp = fcmp ogt float %i.do, f0x39000000
  br i1 %i.dp, label %bb.f, label %stbir__linear_to_srgb_uchar.exit133

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.dq = fcmp ogt float %i.do, f0x3F7FFFFF
  br i1 %i.dq, label %stbir__linear_to_srgb_uchar.exit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = bitcast float %i.do to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, -956301312
  %i.dt = lshr i32 %i.ds, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, 7
  %i.dy = and i32 %i.dx, 16776704
  %i.dz = and i32 %i.dw, 65535
  %i.ea = lshr i32 %i.dr, 12
  %i.eb = and i32 %i.ea, 255
  %i.ec = mul nuw nsw i32 %i.dz, %i.eb
  %i.ed = add nuw nsw i32 %i.dy, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc i32 %i.ee to i8
  br label %stbir__linear_to_srgb_uchar.exit133

stbir__linear_to_srgb_uchar.exit133:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i132 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ef, %bb.g ], [ -1, %bb.f ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.2126, i64 2
  store i8 %.0.i132, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ei = load float, ptr %i.eh, align 4          ; 3 uses
  %i.ej = fcmp ogt float %i.ei, f0x39000000
  br i1 %i.ej, label %bb.h, label %stbir__linear_to_srgb_uchar.exit135

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit133
  %i.ek = fcmp ogt float %i.ei, f0x3F7FFFFF
  br i1 %i.ek, label %stbir__linear_to_srgb_uchar.exit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = bitcast float %i.ei to i32              ; 2 uses
  %i.em = add nsw i32 %i.el, -956301312
  %i.en = lshr i32 %i.em, 20
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.er = lshr i32 %i.eq, 7
  %i.es = and i32 %i.er, 16776704
  %i.et = and i32 %i.eq, 65535
  %i.eu = lshr i32 %i.el, 12
  %i.ev = and i32 %i.eu, 255
  %i.ew = mul nuw nsw i32 %i.et, %i.ev
  %i.ex = add nuw nsw i32 %i.es, %i.ew
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc i32 %i.ey to i8
  br label %stbir__linear_to_srgb_uchar.exit135

stbir__linear_to_srgb_uchar.exit135:              ; preds = %stbir__linear_to_srgb_uchar.exit133, %bb.h, %bb.i
  %.0.i134 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit133 ], [ %i.ez, %bb.i ], [ -1, %bb.h ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.2126, i64 1
  store i8 %.0.i134, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.fc = load float, ptr %i.fb, align 4
  %i.fd = fmul float %i.fc, 2.550000e+02
  %i.fe = fadd float %i.fd, 5.000000e-01          ; 2 uses
  %i.ff = fcmp olt float %i.fe, 0.000000e+00
  %spec.store.select1 = select i1 %i.ff, float 0.000000e+00, float %i.fe ; 2 uses
  %i.fg = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.fg, float 2.550000e+02, float %spec.store.select1
  %i.fh = fptoui float %spec.store.select to i8
  store i8 %i.fh, ptr %.2126, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.2126, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.fk = icmp ult ptr %i.fi, %i.b
  br i1 %i.fk, label %.preheader, label %.loopexit, !llvm.loop !409

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit135, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb_ABGR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not152 = icmp slt i32 %1, 4
  br i1 %.not152, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.2137151 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0135 = phi ptr [ %0, %bb.b ], [ %.1136, %bb.c ] ; 2 uses
  %.0134 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0134) #52, !srcloc !413
  %3 = load <4 x float>, ptr %.0134, align 1      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0134, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0134, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0134, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.ac = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> splat (float f0x3F7FFFFF))
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>  ; 2 uses
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.af = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ai = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.ak, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.al = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.an, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ao = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.aq, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.ar = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.au = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.aw, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ax = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.az, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.ba = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bc, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.bd = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bg = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bi, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bj = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bl, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bm = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bo, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ae, i64 0
  %i.bp = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ae, i64 1
  %i.bs = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ae, i64 2
  %i.bv = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bx, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ae, i64 3
  %i.by = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ca, i64 3
  %i.cb = lshr <4 x i32> %i.r, splat (i32 12)
  %i.cc = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cf = or disjoint <8 x i16> %i.ce, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> %i.cf)
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = lshr <4 x i32> %i.v, splat (i32 12)
  %i.cj = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.ck = bitcast <4 x i32> %i.ci to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cm = or disjoint <8 x i16> %i.cl, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cm)
  %i.co = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cp = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cq = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cr = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ct = or disjoint <8 x i16> %i.cs, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ct)
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.cx = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cy = bitcast <4 x i32> %i.cw to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.da = or disjoint <8 x i16> %i.cz, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %i.da)
  %i.dc = lshr <4 x i32> %i.db, splat (i32 16)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dc, <4 x i32> %i.cv) ; 2 uses
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> %i.ch) ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dg = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> %i.dg)
  store <16 x i8> %i.dh, ptr %.0135, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.0134, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0135, i64 16 ; 3 uses
  %.not141 = icmp ugt ptr %i.dj, %i.f
  %i.dk = icmp ne ptr %i.dj, %i.b                 ; 2 uses
  %i.dl = and i1 %.not141, %i.dk                  ; 2 uses
  %.1136 = select i1 %i.dl, ptr %i.f, ptr %i.dj
  %.1 = select i1 %i.dl, ptr %i.e, ptr %i.di
  br i1 %i.dk, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit149
  %.2137155 = phi ptr [ %.2137, %stbir__linear_to_srgb_uchar.exit149 ], [ %.2137151, %.lr.ph.preheader ] ; 2 uses
  %.2154 = phi ptr [ %i.gm, %stbir__linear_to_srgb_uchar.exit149 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn153 = phi ptr [ %.2137155, %stbir__linear_to_srgb_uchar.exit149 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2154) #52, !srcloc !414
  %i.dm = getelementptr inbounds nuw i8, ptr %.2154, i64 12
  %i.dn = load float, ptr %i.dm, align 4          ; 3 uses
  %i.do = fcmp ogt float %i.dn, f0x39000000
  br i1 %i.do, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.dp = fcmp ogt float %i.dn, f0x3F7FFFFF
  br i1 %i.dp, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = bitcast float %i.dn to i32              ; 2 uses
  %i.dr = add nsw i32 %i.dq, -956301312
  %i.ds = lshr i32 %i.dr, 20
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = lshr i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 16776704
  %i.dy = and i32 %i.dv, 65535
  %i.dz = lshr i32 %i.dq, 12
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.dy, %i.ea
  %i.ec = add nuw nsw i32 %i.dx, %i.eb
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ee, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn153, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.2154, i64 8
  %i.eg = load float, ptr %i.ef, align 4          ; 3 uses
  %i.eh = fcmp ogt float %i.eg, f0x39000000
  br i1 %i.eh, label %bb.f, label %stbir__linear_to_srgb_uchar.exit145

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.ei = fcmp ogt float %i.eg, f0x3F7FFFFF
  br i1 %i.ei, label %stbir__linear_to_srgb_uchar.exit145, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ej = bitcast float %i.eg to i32              ; 2 uses
  %i.ek = add nsw i32 %i.ej, -956301312
  %i.el = lshr i32 %i.ek, 20
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = lshr i32 %i.eo, 7
  %i.eq = and i32 %i.ep, 16776704
  %i.er = and i32 %i.eo, 65535
  %i.es = lshr i32 %i.ej, 12
  %i.et = and i32 %i.es, 255
  %i.eu = mul nuw nsw i32 %i.er, %i.et
end_hunk_4
begin_hunk_5_@stbir__encode_half_float_linear_ABGR:bb.a
  %.inner77 = and <4 x i32> %i.aq, splat (i32 -32768)
  %.inner78 = or disjoint <4 x i32> %.inner76, %.inner77
  %i.ar = or <4 x i32> %i.y, %.inner73
  %i.as = or <4 x i32> %i.ao, %.inner78
  %i.at = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ar, <4 x i32> %i.as)
  store <8 x i16> %i.at, ptr %.036, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 3 uses
  %.not40 = icmp ugt ptr %i.av, %i.f
  br i1 %.not40, label %bb.c, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.backedge, %bb.c
  %.036.be = phi ptr [ %i.av, %.backedge ], [ %i.f, %bb.c ]
  %.0.be = phi ptr [ %i.au, %.backedge ], [ %i.e, %bb.c ]
  br label %.backedge, !llvm.loop !418

bb.c:                                             ; preds = %.backedge
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %.loopexit, label %.backedge.backedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__float_to_half.exit47
  %.13755 = phi ptr [ %.137, %stbir__float_to_half.exit47 ], [ %.13751, %.lr.ph.preheader ] ; 3 uses
  %.154 = phi ptr [ %i.eb, %stbir__float_to_half.exit47 ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn53 = phi ptr [ %.13755, %stbir__float_to_half.exit47 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.13755) #52, !srcloc !421
  %i.ax = getelementptr inbounds nuw i8, ptr %.154, i64 12
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = tail call float @llvm.fabs.f32(float %i.ay) ; 2 uses
  %i.ba = bitcast float %i.az to i32              ; 5 uses
  %i.bb = icmp samesign ugt i32 %i.ba, 1199570943
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bc = icmp samesign ugt i32 %i.ba, 2139095040
  %i.bd = select i1 %i.bc, i32 32256, i32 31744
  br label %stbir__float_to_half.exit

bb.e:                                             ; preds = %.lr.ph
  %i.be = icmp samesign ult i32 %i.ba, 947912704
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = fadd float %i.az, 5.000000e-01
  %i.bg = bitcast float %i.bf to i32
  br label %stbir__float_to_half.exit

bb.g:                                             ; preds = %bb.e
  %i.bh = lshr i32 %i.ba, 13
  %i.bi = and i32 %i.bh, 1
  %i.bj = add nuw nsw i32 %i.ba, 134221823
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = lshr i32 %i.bk, 13
  br label %stbir__float_to_half.exit

stbir__float_to_half.exit:                        ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.016.0.i = phi i32 [ %i.bd, %bb.d ], [ %i.bg, %bb.f ], [ %i.bl, %bb.g ]
  %i.bm = bitcast float %i.ay to i32
  %i.bn = lshr i32 %i.bm, 16
  %i.bo = and i32 %i.bn, 32768
  %i.bp = or i32 %.sroa.016.0.i, %i.bo
  %i.bq = trunc i32 %i.bp to i16
  store i16 %i.bq, ptr %.pn53, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %.pn53, i64 2
  %i.bs = getelementptr inbounds nuw i8, ptr %.154, i64 8
  %i.bt = load float, ptr %i.bs, align 4          ; 2 uses
  %i.bu = tail call float @llvm.fabs.f32(float %i.bt) ; 2 uses
  %i.bv = bitcast float %i.bu to i32              ; 5 uses
  %i.bw = icmp samesign ugt i32 %i.bv, 1199570943
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %stbir__float_to_half.exit
  %i.bx = icmp samesign ugt i32 %i.bv, 2139095040
  %i.by = select i1 %i.bx, i32 32256, i32 31744
  br label %stbir__float_to_half.exit43

bb.i:                                             ; preds = %stbir__float_to_half.exit
  %i.bz = icmp samesign ult i32 %i.bv, 947912704
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = fadd float %i.bu, 5.000000e-01
  %i.cb = bitcast float %i.ca to i32
  br label %stbir__float_to_half.exit43

bb.k:                                             ; preds = %bb.i
  %i.cc = lshr i32 %i.bv, 13
  %i.cd = and i32 %i.cc, 1
  %i.ce = add nuw nsw i32 %i.bv, 134221823
  %i.cf = add nuw nsw i32 %i.ce, %i.cd
  %i.cg = lshr i32 %i.cf, 13
  br label %stbir__float_to_half.exit43

stbir__float_to_half.exit43:                      ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.016.0.i42 = phi i32 [ %i.by, %bb.h ], [ %i.cb, %bb.j ], [ %i.cg, %bb.k ]
  %i.ch = bitcast float %i.bt to i32
  %i.ci = lshr i32 %i.ch, 16
  %i.cj = and i32 %i.ci, 32768
  %i.ck = or i32 %.sroa.016.0.i42, %i.cj
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.br, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn53, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.154, i64 4
  %i.co = load float, ptr %i.cn, align 4          ; 2 uses
  %i.cp = tail call float @llvm.fabs.f32(float %i.co) ; 2 uses
  %i.cq = bitcast float %i.cp to i32              ; 5 uses
  %i.cr = icmp samesign ugt i32 %i.cq, 1199570943
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbir__float_to_half.exit43
  %i.cs = icmp samesign ugt i32 %i.cq, 2139095040
  %i.ct = select i1 %i.cs, i32 32256, i32 31744
  br label %stbir__float_to_half.exit45

bb.m:                                             ; preds = %stbir__float_to_half.exit43
  %i.cu = icmp samesign ult i32 %i.cq, 947912704
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cv = fadd float %i.cp, 5.000000e-01
  %i.cw = bitcast float %i.cv to i32
  br label %stbir__float_to_half.exit45

bb.o:                                             ; preds = %bb.m
  %i.cx = lshr i32 %i.cq, 13
  %i.cy = and i32 %i.cx, 1
  %i.cz = add nuw nsw i32 %i.cq, 134221823
  %i.da = add nuw nsw i32 %i.cz, %i.cy
  %i.db = lshr i32 %i.da, 13
  br label %stbir__float_to_half.exit45

stbir__float_to_half.exit45:                      ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.016.0.i44 = phi i32 [ %i.ct, %bb.l ], [ %i.cw, %bb.n ], [ %i.db, %bb.o ]
  %i.dc = bitcast float %i.co to i32
  %i.dd = lshr i32 %i.dc, 16
  %i.de = and i32 %i.dd, 32768
  %i.df = or i32 %.sroa.016.0.i44, %i.de
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %i.cm, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn53, i64 6
  %i.di = load float, ptr %.154, align 4          ; 2 uses
  %i.dj = tail call float @llvm.fabs.f32(float %i.di) ; 2 uses
  %i.dk = bitcast float %i.dj to i32              ; 5 uses
  %i.dl = icmp samesign ugt i32 %i.dk, 1199570943
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %stbir__float_to_half.exit45
  %i.dm = icmp samesign ugt i32 %i.dk, 2139095040
  %i.dn = select i1 %i.dm, i32 32256, i32 31744
  br label %stbir__float_to_half.exit47

bb.q:                                             ; preds = %stbir__float_to_half.exit45
  %i.do = icmp samesign ult i32 %i.dk, 947912704
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dp = fadd float %i.dj, 5.000000e-01
  %i.dq = bitcast float %i.dp to i32
  br label %stbir__float_to_half.exit47

bb.s:                                             ; preds = %bb.q
  %i.dr = lshr i32 %i.dk, 13
  %i.ds = and i32 %i.dr, 1
  %i.dt = add nuw nsw i32 %i.dk, 134221823
  %i.du = add nuw nsw i32 %i.dt, %i.ds
  %i.dv = lshr i32 %i.du, 13
  br label %stbir__float_to_half.exit47

stbir__float_to_half.exit47:                      ; preds = %bb.p, %bb.r, %bb.s
  %.sroa.016.0.i46 = phi i32 [ %i.dn, %bb.p ], [ %i.dq, %bb.r ], [ %i.dv, %bb.s ]
  %i.dw = bitcast float %i.di to i32
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = and i32 %i.dx, 32768
  %i.dz = or i32 %.sroa.016.0.i46, %i.dy
  %i.ea = trunc i32 %i.dz to i16
  store i16 %i.ea, ptr %i.dh, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.154, i64 16
  %.137 = getelementptr inbounds nuw i8, ptr %.13755, i64 8 ; 2 uses
  %.not = icmp ugt ptr %.137, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !419

.loopexit:                                        ; preds = %stbir__float_to_half.exit47, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb2_linearalpha(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0107 = phi ptr [ %0, %bb.b ], [ %.1108, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !423
  %3 = load <4 x float>, ptr %.0, align 1         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = fmul <4 x float> %i.m, splat (float 2.550000e+02)
  %i.u = fadd <4 x float> %i.t, splat (float 5.000000e-01)
  %i.v = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.u, <4 x float> zeroinitializer)
  %i.w = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.v, <4 x float> splat (float 2.550000e+02))
  %i.x = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.w)
  %i.y = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.z = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> splat (float f0x3F7FFFFF))
  %i.aa = bitcast <4 x float> %i.z to <4 x i32>   ; 2 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 20)    ; 4 uses
  %i.ac = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ad = fadd <4 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> zeroinitializer)
  %i.af = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> splat (float 2.550000e+02))
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.af)
  %.sroa.016.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ah = zext nneg i32 %.sroa.016.0.vec.extract to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %.sroa.016.0.vec.insert = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %.sroa.016.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ak = zext nneg i32 %.sroa.016.4.vec.extract to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %.sroa.016.4.vec.insert = insertelement <4 x i32> %.sroa.016.0.vec.insert, i32 %i.am, i64 1
  %.sroa.016.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.an = zext nneg i32 %.sroa.016.8.vec.extract to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %.sroa.016.8.vec.insert = insertelement <4 x i32> %.sroa.016.4.vec.insert, i32 %i.ap, i64 2
  %.sroa.016.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.aq = zext nneg i32 %.sroa.016.12.vec.extract to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %.sroa.016.12.vec.insert = insertelement <4 x i32> %.sroa.016.8.vec.insert, i32 %i.as, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ab, i64 0
  %i.at = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ab, i64 1
  %i.aw = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.ay, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ab, i64 2
  %i.az = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bb, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ab, i64 3
  %i.bc = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.be, i64 3
  %i.bf = lshr <4 x i32> %i.r, splat (i32 12)
  %i.bg = bitcast <4 x i32> %.sroa.016.12.vec.insert to <8 x i16>
  %i.bh = bitcast <4 x i32> %i.bf to <8 x i16>
  %i.bi = and <8 x i16> %i.bh, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bj = or disjoint <8 x i16> %i.bi, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bg, <8 x i16> %i.bj)
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bm = lshr <4 x i32> %i.aa, splat (i32 12)
  %i.bn = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.bo = bitcast <4 x i32> %i.bm to <8 x i16>
  %i.bp = and <8 x i16> %i.bo, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bq = or disjoint <8 x i16> %i.bp, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.br = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bn, <8 x i16> %i.bq)
  %i.bs = lshr <4 x i32> %i.br, splat (i32 16)
  %i.bt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bl, <4 x i32> %i.x) ; 2 uses
  %i.bu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.ag) ; 2 uses
  %i.bv = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bw = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> %i.bw)
  store <16 x i8> %i.bx, ptr %.0107, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.by, %i.f
  %i.ca = icmp ne ptr %i.by, %i.b                 ; 2 uses
  %i.cb = and i1 %.not, %i.ca                     ; 2 uses
  %.1108 = select i1 %i.cb, ptr %i.f, ptr %i.by
  %.1 = select i1 %i.cb, ptr %i.e, ptr %i.bz
  br i1 %i.ca, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit
  %.2109 = phi ptr [ %i.dc, %stbir__linear_to_srgb_uchar.exit ], [ %0, %bb.a ] ; 3 uses
  %.2 = phi ptr [ %i.dd, %stbir__linear_to_srgb_uchar.exit ], [ %2, %bb.a ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #52, !srcloc !424
  %i.cc = load float, ptr %.2, align 4            ; 3 uses
  %i.cd = fcmp ogt float %i.cc, f0x39000000
  br i1 %i.cd, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.ce = fcmp ogt float %i.cc, f0x3F7FFFFF
  br i1 %i.ce, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = bitcast float %i.cc to i32              ; 2 uses
  %i.cg = add nsw i32 %i.cf, -956301312
  %i.ch = lshr i32 %i.cg, 20
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = lshr i32 %i.ck, 7
  %i.cm = and i32 %i.cl, 16776704
  %i.cn = and i32 %i.ck, 65535
  %i.co = lshr i32 %i.cf, 12
  %i.cp = and i32 %i.co, 255
  %i.cq = mul nuw nsw i32 %i.cn, %i.cp
  %i.cr = add nuw nsw i32 %i.cm, %i.cq
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = trunc i32 %i.cs to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.ct, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.2109, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = fmul float %i.cv, 2.550000e+02
  %i.cx = fadd float %i.cw, 5.000000e-01          ; 2 uses
  %i.cy = fcmp olt float %i.cx, 0.000000e+00
  %spec.store.select1 = select i1 %i.cy, float 0.000000e+00, float %i.cx ; 2 uses
  %i.cz = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.cz, float 2.550000e+02, float %spec.store.select1
  %i.da = fptoui float %spec.store.select to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.2109, i64 1
  store i8 %i.da, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.2109, i64 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.de = icmp ult ptr %i.dc, %i.b
  br i1 %i.de, label %.preheader, label %.loopexit, !llvm.loop !422

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb2_linearalpha_AR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0107 = phi ptr [ %0, %bb.b ], [ %.1108, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !426
  %3 = load <4 x float>, ptr %.0, align 1         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = fmul <4 x float> %i.m, splat (float 2.550000e+02)
  %i.u = fadd <4 x float> %i.t, splat (float 5.000000e-01)
  %i.v = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.u, <4 x float> zeroinitializer)
  %i.w = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.v, <4 x float> splat (float 2.550000e+02))
  %i.x = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.w)
  %i.y = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.z = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> splat (float f0x3F7FFFFF))
  %i.aa = bitcast <4 x float> %i.z to <4 x i32>   ; 2 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 20)    ; 4 uses
  %i.ac = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ad = fadd <4 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> zeroinitializer)
  %i.af = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> splat (float 2.550000e+02))
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.af)
  %.sroa.016.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ah = zext nneg i32 %.sroa.016.0.vec.extract to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %.sroa.016.0.vec.insert = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %.sroa.016.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ak = zext nneg i32 %.sroa.016.4.vec.extract to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %.sroa.016.4.vec.insert = insertelement <4 x i32> %.sroa.016.0.vec.insert, i32 %i.am, i64 1
  %.sroa.016.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.an = zext nneg i32 %.sroa.016.8.vec.extract to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %.sroa.016.8.vec.insert = insertelement <4 x i32> %.sroa.016.4.vec.insert, i32 %i.ap, i64 2
  %.sroa.016.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.aq = zext nneg i32 %.sroa.016.12.vec.extract to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %.sroa.016.12.vec.insert = insertelement <4 x i32> %.sroa.016.8.vec.insert, i32 %i.as, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ab, i64 0
  %i.at = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ab, i64 1
  %i.aw = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.ay, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ab, i64 2
  %i.az = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bb, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ab, i64 3
  %i.bc = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.be, i64 3
  %i.bf = lshr <4 x i32> %i.r, splat (i32 12)
  %i.bg = bitcast <4 x i32> %.sroa.016.12.vec.insert to <8 x i16>
  %i.bh = bitcast <4 x i32> %i.bf to <8 x i16>
  %i.bi = and <8 x i16> %i.bh, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bj = or disjoint <8 x i16> %i.bi, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bg, <8 x i16> %i.bj)
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bm = lshr <4 x i32> %i.aa, splat (i32 12)
  %i.bn = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.bo = bitcast <4 x i32> %i.bm to <8 x i16>
  %i.bp = and <8 x i16> %i.bo, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bq = or disjoint <8 x i16> %i.bp, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.br = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bn, <8 x i16> %i.bq)
  %i.bs = lshr <4 x i32> %i.br, splat (i32 16)
  %i.bt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.x, <4 x i32> %i.bl) ; 2 uses
  %i.bu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> %i.bs) ; 2 uses
  %i.bv = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bw = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> %i.bw)
  store <16 x i8> %i.bx, ptr %.0107, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.by, %i.f
  %i.ca = icmp ne ptr %i.by, %i.b                 ; 2 uses
  %i.cb = and i1 %.not, %i.ca                     ; 2 uses
  %.1108 = select i1 %i.cb, ptr %i.f, ptr %i.by
  %.1 = select i1 %i.cb, ptr %i.e, ptr %i.bz
  br i1 %i.ca, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit
  %.2109 = phi ptr [ %i.dc, %stbir__linear_to_srgb_uchar.exit ], [ %0, %bb.a ] ; 3 uses
  %.2 = phi ptr [ %i.dd, %stbir__linear_to_srgb_uchar.exit ], [ %2, %bb.a ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #52, !srcloc !427
  %i.cc = load float, ptr %.2, align 4            ; 3 uses
  %i.cd = fcmp ogt float %i.cc, f0x39000000
  br i1 %i.cd, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.ce = fcmp ogt float %i.cc, f0x3F7FFFFF
  br i1 %i.ce, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = bitcast float %i.cc to i32              ; 2 uses
  %i.cg = add nsw i32 %i.cf, -956301312
  %i.ch = lshr i32 %i.cg, 20
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = lshr i32 %i.ck, 7
  %i.cm = and i32 %i.cl, 16776704
  %i.cn = and i32 %i.ck, 65535
  %i.co = lshr i32 %i.cf, 12
  %i.cp = and i32 %i.co, 255
  %i.cq = mul nuw nsw i32 %i.cn, %i.cp
  %i.cr = add nuw nsw i32 %i.cm, %i.cq
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = trunc i32 %i.cs to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.ct, %bb.e ], [ -1, %bb.d ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.2109, i64 1
  store i8 %.0.i, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = fmul float %i.cw, 2.550000e+02
  %i.cy = fadd float %i.cx, 5.000000e-01          ; 2 uses
  %i.cz = fcmp olt float %i.cy, 0.000000e+00
  %spec.store.select1 = select i1 %i.cz, float 0.000000e+00, float %i.cy ; 2 uses
  %i.da = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.da, float 2.550000e+02, float %spec.store.select1
  %i.db = fptoui float %spec.store.select to i8
  store i8 %i.db, ptr %.2109, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.2109, i64 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.de = icmp ult ptr %i.dc, %i.b
  br i1 %i.de, label %.preheader, label %.loopexit, !llvm.loop !425

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb_AR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 5 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader166

.preheader166:                                    ; preds = %bb.a
  %.not168 = icmp slt i32 %1, 4
  br i1 %.not168, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader166
  %.2146167 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0144 = phi ptr [ %0, %bb.b ], [ %.1145, %bb.c ] ; 2 uses
  %.0143 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0143) #52, !srcloc !430
  %3 = load <4 x float>, ptr %.0143, align 1      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0143, i64 16
  %5 = load <4 x float>, ptr %4, align 1          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0143, i64 32
  %7 = load <4 x float>, ptr %6, align 1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0143, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1        ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.ac = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> splat (float f0x3F7FFFFF))
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>  ; 2 uses
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.af = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ai = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.ak, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.al = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.an, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ao = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.aq, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.ar = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.au = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.aw, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ax = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.az, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.ba = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bc, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.bd = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bg = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bi, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bj = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bl, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bm = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bo, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ae, i64 0
  %i.bp = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ae, i64 1
  %i.bs = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ae, i64 2
  %i.bv = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bx, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ae, i64 3
  %i.by = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ca, i64 3
  %i.cb = lshr <4 x i32> %i.r, splat (i32 12)
  %i.cc = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cf = or disjoint <8 x i16> %i.ce, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> %i.cf)
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = lshr <4 x i32> %i.v, splat (i32 12)
  %i.cj = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.ck = bitcast <4 x i32> %i.ci to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cm = or disjoint <8 x i16> %i.cl, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cm)
  %i.co = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cp = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cq = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cr = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ct = or disjoint <8 x i16> %i.cs, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ct)
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.cx = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cy = bitcast <4 x i32> %i.cw to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.da = or disjoint <8 x i16> %i.cz, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %i.da)
  %i.dc = lshr <4 x i32> %i.db, splat (i32 16)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> %i.ch) ; 2 uses
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dc, <4 x i32> %i.cv) ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dg = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> %i.dg)
  store <16 x i8> %i.dh, ptr %.0144, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.0143, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0144, i64 16 ; 3 uses
  %.not152 = icmp ugt ptr %i.dj, %i.f
  %i.dk = icmp ne ptr %i.dj, %i.b                 ; 2 uses
  %i.dl = and i1 %.not152, %i.dk                  ; 2 uses
  %.1145 = select i1 %i.dl, ptr %i.f, ptr %i.dj
  %.1 = select i1 %i.dl, ptr %i.e, ptr %i.di
  br i1 %i.dk, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %stbir__linear_to_srgb_uchar.exit160, %.preheader166
  %.pn.lcssa = phi ptr [ %0, %.preheader166 ], [ %.2146171, %stbir__linear_to_srgb_uchar.exit160 ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader166 ], [ %i.gn, %stbir__linear_to_srgb_uchar.exit160 ]
  %i.dm = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.dm, label %.lr.ph175, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit160
  %.2146171 = phi ptr [ %.2146, %stbir__linear_to_srgb_uchar.exit160 ], [ %.2146167, %.lr.ph.preheader ] ; 3 uses
  %.2170 = phi ptr [ %i.gn, %stbir__linear_to_srgb_uchar.exit160 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn169 = phi ptr [ %.2146171, %stbir__linear_to_srgb_uchar.exit160 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2170) #52, !srcloc !431
  %i.dn = getelementptr inbounds nuw i8, ptr %.2170, i64 4
  %i.do = load float, ptr %i.dn, align 4          ; 3 uses
  %i.dp = fcmp ogt float %i.do, f0x39000000
  br i1 %i.dp, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.dq = fcmp ogt float %i.do, f0x3F7FFFFF
  br i1 %i.dq, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dr = bitcast float %i.do to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, -956301312
  %i.dt = lshr i32 %i.ds, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, 7
  %i.dy = and i32 %i.dx, 16776704
  %i.dz = and i32 %i.dw, 65535
  %i.ea = lshr i32 %i.dr, 12
  %i.eb = and i32 %i.ea, 255
  %i.ec = mul nuw nsw i32 %i.dz, %i.eb
  %i.ed = add nuw nsw i32 %i.dy, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc i32 %i.ee to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ef, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn169, align 1
  %i.eg = load float, ptr %.2170, align 4         ; 3 uses
  %i.eh = fcmp ogt float %i.eg, f0x39000000
  br i1 %i.eh, label %bb.f, label %stbir__linear_to_srgb_uchar.exit156

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.ei = fcmp ogt float %i.eg, f0x3F7FFFFF
  br i1 %i.ei, label %stbir__linear_to_srgb_uchar.exit156, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ej = bitcast float %i.eg to i32              ; 2 uses
  %i.ek = add nsw i32 %i.ej, -956301312
  %i.el = lshr i32 %i.ek, 20
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = lshr i32 %i.eo, 7
end_hunk_5
