inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@XYZtoRGB24:bb.a
  %i.aj = fmul double %i.ai, 2.560000e+02
  %i.ak = fptosi double %i.aj to i32
  %i.al = trunc i32 %i.ak to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.am = phi i8 [ 0, %bb.g ], [ %i.al, %bb.i ], [ -1, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define double @LogL10toY(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sitofp i32 %0 to double
  %i.c = fadd double %i.b, 5.000000e-01
  %i.d = tail call double @llvm.fmuladd.f64(double %i.c, double f0x3F862E42FEFA39EF, double f0xC020A2B23F3BAB73)
  %i.e = tail call double @exp(double noundef %i.d) #16, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.e, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define i32 @LogL10fromY(double noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp ult double %0, 1.574200e+01
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %0, 2.428300e-04
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ninf double @llvm.log.f64(double %0)
  %i.d = tail call double @llvm.fmuladd.f64(double %i.c, double f0x3FF71547652B82FE, double 1.200000e+01)
  %i.e = fmul double %i.d, 6.400000e+01           ; 2 uses
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %tiff_itrunc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !3 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.e, label %_TIFFRand.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @time(ptr noundef null) #16
  %i.i = trunc i64 %i.h to i32
  br label %_TIFFRand.exit.i

_TIFFRand.exit.i:                                 ; preds = %bb.e, %bb.d
  %i.j = phi i32 [ %i.i, %bb.e ], [ %i.g, %bb.d ]
  %i.k = mul i32 %i.j, 1103515245
  %i.l = add i32 %i.k, 1103527590                 ; 2 uses
  store i32 %i.l, ptr @_TIFFRand.nCounter, align 4, !tbaa !3
  %i.m = lshr i32 %i.l, 16
  %i.n = and i32 %i.m, 32767
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double f0x3F00002000400080, double %i.e)
  %i.q = fadd double %i.p, -5.000000e-01
  br label %tiff_itrunc.exit

tiff_itrunc.exit:                                 ; preds = %bb.c, %_TIFFRand.exit.i
  %.0.in.i = phi double [ %i.q, %_TIFFRand.exit.i ], [ %i.e, %bb.c ]
  %.0.i = fptosi double %.0.in.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %tiff_itrunc.exit
  %.0 = phi i32 [ %.0.i, %tiff_itrunc.exit ], [ 1023, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @uv_encode(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %or.cond = fcmp uno double %0, %1               ; 2 uses
  %.026 = select i1 %or.cond, double f0x3FDE50D794B8199E, double %1 ; 6 uses
  %.025 = select i1 %or.cond, double f0x3FCAF286BD156C1A, double %0 ; 6 uses
  %i.a = fcmp olt double %.026, f0x3F9158B820000000
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @oog_encode(double noundef %.025, double noundef %.026)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = fadd double %.026, f0xBF9158B820000000
  %i.d = fmul double %i.c, f0x4071DB6DAD9C14EB    ; 2 uses
  %i.e = icmp eq i32 %2, 0                        ; 2 uses
  br i1 %i.e, label %tiff_itrunc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !3 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %_TIFFRand.exit.i

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i64 @time(ptr noundef null) #16
  %i.h = trunc i64 %i.g to i32
  br label %_TIFFRand.exit.i

_TIFFRand.exit.i:                                 ; preds = %bb.e, %bb.d
  %i.i = phi i32 [ %i.h, %bb.e ], [ %i.f, %bb.d ]
  %i.j = mul i32 %i.i, 1103515245
  %i.k = add i32 %i.j, 1103527590                 ; 2 uses
  store i32 %i.k, ptr @_TIFFRand.nCounter, align 4, !tbaa !3
  %i.l = lshr i32 %i.k, 16
  %i.m = and i32 %i.l, 32767
  %i.n = uitofp nneg i32 %i.m to double
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double f0x3F00002000400080, double %i.d)
  %i.p = fadd double %i.o, -5.000000e-01
  br label %tiff_itrunc.exit

tiff_itrunc.exit:                                 ; preds = %bb.c, %_TIFFRand.exit.i
  %.0.in.i = phi double [ %i.p, %_TIFFRand.exit.i ], [ %i.d, %bb.c ]
  %.0.i = fptosi double %.0.in.i to i32           ; 2 uses
  %i.q = icmp ugt i32 %.0.i, 162
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %tiff_itrunc.exit
  %i.r = tail call fastcc i32 @oog_encode(double noundef %.025, double noundef %.026)
  br label %bb.n

bb.g:                                             ; preds = %tiff_itrunc.exit
  %i.s = zext nneg i32 %.0.i to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.s ; 3 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !10
  %i.v = fpext float %i.u to double               ; 2 uses
  %i.w = fcmp olt double %.025, %i.v
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call fastcc i32 @oog_encode(double noundef %.025, double noundef %.026)
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.y = fsub double %.025, %i.v
  %i.z = fmul double %i.y, f0x4071DB6DAD9C14EB    ; 2 uses
  br i1 %i.e, label %tiff_itrunc.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !3 ; 2 uses
  %.not.i.i30 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i30, label %bb.k, label %_TIFFRand.exit.i31

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call i64 @time(ptr noundef null) #16
  %i.ac = trunc i64 %i.ab to i32
  br label %_TIFFRand.exit.i31

_TIFFRand.exit.i31:                               ; preds = %bb.k, %bb.j
  %i.ad = phi i32 [ %i.ac, %bb.k ], [ %i.aa, %bb.j ]
  %i.ae = mul i32 %i.ad, 1103515245
  %i.af = add i32 %i.ae, 1103527590               ; 2 uses
  store i32 %i.af, ptr @_TIFFRand.nCounter, align 4, !tbaa !3
  %i.ag = lshr i32 %i.af, 16
  %i.ah = and i32 %i.ag, 32767
  %i.ai = uitofp nneg i32 %i.ah to double
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double f0x3F00002000400080, double %i.z)
  %i.ak = fadd double %i.aj, -5.000000e-01
  br label %tiff_itrunc.exit34

tiff_itrunc.exit34:                               ; preds = %bb.i, %_TIFFRand.exit.i31
  %.0.in.i32 = phi double [ %i.ak, %_TIFFRand.exit.i31 ], [ %i.z, %bb.i ]
  %.0.i33 = fptosi double %.0.in.i32 to i32       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.am = load i16, ptr %i.al, align 4, !tbaa !13
  %i.an = sext i16 %i.am to i32
  %.not = icmp slt i32 %.0.i33, %i.an
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %tiff_itrunc.exit34
  %i.ao = tail call fastcc i32 @oog_encode(double noundef %.025, double noundef %.026)
  br label %bb.n

bb.m:                                             ; preds = %tiff_itrunc.exit34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !14
  %i.ar = sext i16 %i.aq to i32
  %i.as = add nsw i32 %i.ar, %.0.i33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.r, %bb.f ], [ %i.x, %bb.h ], [ %i.ao, %bb.l ], [ %i.as, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @oog_encode(double noundef %0, double noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [100 x double], align 16          ; 58 uses
  %.b = load i1, ptr @oog_encode.initialized, align 4
  br i1 %.b, label %bb.k, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  store <2 x double> splat (double 2.000000e+00), ptr %i.b, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.c, align 16, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store <2 x double> splat (double 2.000000e+00), ptr %i.d, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.e, align 16, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store <2 x double> splat (double 2.000000e+00), ptr %i.f, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.g, align 16, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store <2 x double> splat (double 2.000000e+00), ptr %i.h, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.i, align 16, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store <2 x double> splat (double 2.000000e+00), ptr %i.j, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.k, align 16, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store <2 x double> splat (double 2.000000e+00), ptr %i.l, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.m, align 16, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store <2 x double> splat (double 2.000000e+00), ptr %i.n, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.o, align 16, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  store <2 x double> splat (double 2.000000e+00), ptr %i.p, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.q, align 16, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store <2 x double> splat (double 2.000000e+00), ptr %i.r, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.s, align 16, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <2 x double> splat (double 2.000000e+00), ptr %i.t, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.u, align 16, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store <2 x double> splat (double 2.000000e+00), ptr %i.v, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.w, align 16, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store <2 x double> splat (double 2.000000e+00), ptr %i.x, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.y, align 16, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store <2 x double> splat (double 2.000000e+00), ptr %i.z, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.aa, align 16, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <2 x double> splat (double 2.000000e+00), ptr %i.ab, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.ac, align 16, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store <2 x double> splat (double 2.000000e+00), ptr %i.ad, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.ae, align 16, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store <2 x double> splat (double 2.000000e+00), ptr %i.af, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.ag, align 16, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store <2 x double> splat (double 2.000000e+00), ptr %i.ah, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.ai, align 16, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <2 x double> splat (double 2.000000e+00), ptr %i.aj, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.ak, align 16, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <2 x double> splat (double 2.000000e+00), ptr %i.al, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.am, align 16, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <2 x double> splat (double 2.000000e+00), ptr %i.an, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.ao, align 16, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <2 x double> splat (double 2.000000e+00), ptr %i.ap, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.aq, align 16, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <2 x double> splat (double 2.000000e+00), ptr %i.ar, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.as, align 16, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> splat (double 2.000000e+00), ptr %i.at, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.au, align 16, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> splat (double 2.000000e+00), ptr %i.av, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.aw, align 16, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> splat (double 2.000000e+00), ptr %i.ax, align 16, !tbaa !15
  store <2 x double> splat (double 2.000000e+00), ptr %i.a, align 16, !tbaa !15
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, -1
  br i1 %i.be, label %.preheader56, label %.lr.ph

.lr.ph:                                           ; preds = %vector.ph, %.loopexit
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %.loopexit ], [ 162, %vector.ph ] ; 5 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr @uv_row, i64 %indvars.iv65 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !13
  %i.bb = sext i16 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.bd = icmp eq i64 %indvars.iv65, 162
  %i.be = icmp eq i64 %indvars.iv65, 0            ; 2 uses
  %or.cond = or i1 %i.bd, %i.be
  %spec.store.select = select i1 %or.cond, i32 1, i32 %i.bc
  %i.bf = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fadd double %i.bg, 5.000000e-01
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double f0x3F6CAC0840000000, double f0x3F9158B820000000)
  %i.bj = load float, ptr %i.ay, align 8, !tbaa !10
  %i.bk = fpext float %i.bj to double
  %i.bl = fadd double %i.bi, f0xBFDE50D794B8199E
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.05159 = phi i32 [ %i.bc, %.lr.ph ], [ %i.cg, %bb.d ] ; 3 uses
  %i.bn = uitofp nneg i32 %.05159 to double
  %i.bo = fadd double %i.bn, 5.000000e-01
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double f0x3F6CAC0840000000, double %i.bk)
  %i.bq = fadd double %i.bp, f0xBFCAF286BD156C1A
  %i.br = tail call double @atan2(double noundef %i.bl, double noundef %i.bq) #16, !tbaa !3
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double f0x402FD4BBAA79DC37, double 5.000000e+01) ; 2 uses
  %i.bt = fptosi double %i.bs to i32              ; 2 uses
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = fadd double %i.bu, 5.000000e-01
  %i.bw = fsub double %i.bs, %i.bv
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw) ; 2 uses
  %i.by = sext i32 %i.bt to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.by ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !15
  %i.cb = fcmp olt double %i.bx, %i.ca
  br i1 %i.cb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cc = load i16, ptr %i.bm, align 2, !tbaa !14
  %i.cd = sext i16 %i.cc to i32
  %i.ce = add nsw i32 %.05159, %i.cd
  %i.cf = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %i.by
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  store double %i.bx, ptr %i.bz, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.cg = sub nsw i32 %.05159, %spec.store.select ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  br i1 %i.ch, label %bb.b, label %.loopexit

.preheader56:                                     ; preds = %.loopexit, %.preheader56._crit_edge
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.preheader56._crit_edge ], [ 99, %.loopexit ] ; 5 uses
  %.163 = phi i32 [ %i.cl, %.preheader56._crit_edge ], [ 100, %.loopexit ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv70
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !15
  %i.ck = fcmp ogt double %i.cj, 1.500000e+00
  %i.cl = trunc nuw nsw i64 %indvars.iv70 to i32  ; 4 uses
  br i1 %i.ck, label %.preheader, label %.preheader56._crit_edge

.preheader:                                       ; preds = %.preheader56, %bb.f
  %.04960 = phi i32 [ %i.cx, %bb.f ], [ 1, %.preheader56 ] ; 4 uses
  %i.cm = add nuw nsw i32 %.04960, %i.cl
  %.urem = urem i32 %i.cm, 100
  %i.cn = zext nneg i32 %.urem to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !15
  %i.cq = fcmp olt double %i.cp, 1.500000e+00
  br i1 %i.cq, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.cr = add nuw nsw i32 %.04960, 1              ; 3 uses
  %exitcond.not = icmp eq i32 %i.cr, 50
  br i1 %exitcond.not, label %bb.g, label %.preheader.1

.preheader.1:                                     ; preds = %bb.e
  %i.cs = add nuw nsw i32 %i.cr, %i.cl
  %.urem.1 = urem i32 %i.cs, 100
  %i.ct = zext nneg i32 %.urem.1 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !15
  %i.cw = fcmp olt double %i.cv, 1.500000e+00
  br i1 %i.cw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.1
  %i.cx = add nuw nsw i32 %.04960, 2
  br label %.preheader

bb.g:                                             ; preds = %.preheader.1, %.preheader, %bb.e
  %.049.lcssa = phi i32 [ %.04960, %.preheader ], [ 50, %bb.e ], [ %i.cr, %.preheader.1 ] ; 2 uses
  %i.cy = add nuw nsw i32 %.163, 99               ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %8, %bb.g
  %.0.neg62 = phi i32 [ -1, %bb.g ], [ %.0.neg.1, %8 ] ; 2 uses
  %.061 = phi i32 [ 1, %bb.g ], [ %9, %8 ]        ; 5 uses
  %i.cz = add nsw i32 %i.cy, %.0.neg62
  %.urem68 = urem i32 %i.cz, 100
  %i.da = zext nneg i32 %.urem68 to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !15
  %i.dd = fcmp olt double %i.dc, 1.500000e+00
  br i1 %i.dd, label %.preheader56._crit_edge.sink.split, label %2

2:                                                ; preds = %bb.h
  %3 = add nuw nsw i32 %.061, 1                   ; 2 uses
  %exitcond69.not = icmp eq i32 %3, 50
  br i1 %exitcond69.not, label %.preheader56._crit_edge.sink.split, label %bb.i

bb.i:                                             ; preds = %2
  %.0.neg = xor i32 %.061, -1                     ; 2 uses
  %i.de = add nsw i32 %i.cy, %.0.neg
  %.urem68.1 = urem i32 %i.de, 100
  %4 = zext nneg i32 %.urem68.1 to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !15
  %7 = fcmp olt double %6, 1.500000e+00
  br i1 %7, label %.preheader56._crit_edge.sink.split, label %8

8:                                                ; preds = %bb.i
  %9 = add nuw nsw i32 %.061, 2
  %.0.neg.1 = sub nuw i32 -2, %.061
  br label %bb.h

.preheader56._crit_edge.sink.split:               ; preds = %bb.i, %bb.h, %2
  %.0.lcssa = phi i32 [ %.061, %bb.h ], [ 50, %2 ], [ %3, %bb.i ]
  %.0.neg.lcssa = phi i32 [ %.0.neg62, %bb.h ], [ -50, %2 ], [ %.0.neg, %bb.i ]
  %i.df = icmp samesign ult i32 %.049.lcssa, %.0.lcssa
  %i.dg = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %indvars.iv70
  %i.dh = add nsw i32 %.049.lcssa, %i.cl
  %i.di = add i32 %i.cy, %.0.neg.lcssa
  %.sink = select i1 %i.df, i32 %i.dh, i32 %i.di
  %i.dj = srem i32 %.sink, 100
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !3
  br label %.preheader56._crit_edge

.preheader56._crit_edge:                          ; preds = %.preheader56._crit_edge.sink.split, %.preheader56
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, -1
  %.not55 = icmp eq i64 %indvars.iv70, 0
  br i1 %.not55, label %bb.j, label %.preheader56

bb.j:                                             ; preds = %.preheader56._crit_edge
  store i1 true, ptr @oog_encode.initialized, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %i.dn = fadd double %1, f0xBFDE50D794B8199E
  %i.do = fadd double %0, f0xBFCAF286BD156C1A
  %i.dp = tail call double @atan2(double noundef %i.dn, double noundef %i.do) #16, !tbaa !3
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double f0x402FD4BBAA79DC37, double 5.000000e+01)
  %i.dr = fptosi double %i.dq to i32
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  ret i32 %i.du
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define range(i32 -1, 1) i32 @uv_decode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %or.cond = icmp ugt i32 %2, 16288
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.028 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.02227 = phi i32 [ %.123, %bb.c ], [ 163, %bb.a ] ; 2 uses
  %i.a = add nuw i32 %.028, %.02227
  %i.b = lshr i32 %i.a, 1                         ; 4 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !14
  %i.g = sext i16 %i.f to i32
  %i.h = sub nsw i32 %2, %i.g                     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.c, label %split

bb.c:                                             ; preds = %bb.b, %.preheader
  %.123 = phi i32 [ %.02227, %.preheader ], [ %i.b, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.b, %.preheader ], [ %.028, %bb.b ] ; 4 uses
  %i.k = sub nsw i32 %.123, %.1
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = zext nneg i32 %.1 to i64   ; 2 uses
  %.phi.trans.insert29 = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.phi.trans.insert
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert29, i64 6
  %.pre = load i16, ptr %.phi.trans.insert30, align 2, !tbaa !14
  %.pre32 = sext i16 %.pre to i32
  %.pre34 = sub nsw i32 %2, %.pre32
  %i.m = sitofp i32 %.pre34 to double
  %i.n = fadd double %i.m, 5.000000e-01
  br label %split

split:                                            ; preds = %bb.b, %._crit_edge
  %.pre-phi35 = phi double [ %i.n, %._crit_edge ], [ 5.000000e-01, %bb.b ]
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge ], [ %i.c, %bb.b ]
  %.2 = phi i32 [ %.1, %._crit_edge ], [ %i.b, %bb.b ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.pre-phi
  %i.p = load float, ptr %i.o, align 8, !tbaa !10
  %i.q = fpext float %i.p to double
  %i.r = uitofp i32 %.2 to double
  %i.s = fadd double %i.r, 5.000000e-01
  %i.t = insertelement <2 x double> poison, double %.pre-phi35, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = insertelement <2 x double> <double poison, double f0x3F9158B820000000>, double %i.q, i64 0
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double f0x3F6CAC0840000000), <2 x double> %i.v) ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  store double %i.x, ptr %0, align 8, !tbaa !15
  %i.y = extractelement <2 x double> %i.w, i64 1
  store double %i.y, ptr %1, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %split
  %.024 = phi i32 [ 0, %split ], [ -1, %bb.a ]
  ret i32 %.024
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable
define void @LogLuv24toXYZ(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = lshr i32 %0, 14
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %LogL10toY.exit.thread, label %LogL10toY.exit

LogL10toY.exit:                                   ; preds = %bb.a
  %i.d = uitofp nneg i32 %i.b to double
  %i.e = fadd double %i.d, 5.000000e-01
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double f0x3F862E42FEFA39EF, double f0xC020A2B23F3BAB73)
  %i.g = tail call double @exp(double noundef %i.f) #16, !tbaa !3 ; 4 uses
  %i.h = fcmp ugt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %LogL10toY.exit.thread

LogL10toY.exit.thread:                            ; preds = %bb.a, %LogL10toY.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !7
  store <2 x float> zeroinitializer, ptr %1, align 4, !tbaa !7
  br label %bb.f

bb.b:                                             ; preds = %LogL10toY.exit
  %i.j = and i32 %0, 16383                        ; 3 uses
  %or.cond.i = icmp samesign ugt i32 %i.j, 16288
  br i1 %or.cond.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.028.i = phi i32 [ %.1.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.02227.i = phi i32 [ %.123.i, %bb.d ], [ 163, %bb.b ] ; 2 uses
  %i.k = add nuw i32 %.02227.i, %.028.i
  %i.l = lshr i32 %i.k, 1                         ; 4 uses
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.p = load i16, ptr %i.o, align 2, !tbaa !14
  %i.q = sext i16 %i.p to i32
  %i.r = sub nsw i32 %i.j, %i.q                   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %bb.d, label %uv_decode.exit

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.123.i = phi i32 [ %.02227.i, %.preheader.i ], [ %i.l, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %i.l, %.preheader.i ], [ %.028.i, %bb.c ] ; 4 uses
  %i.u = sub nsw i32 %.123.i, %.1.i
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = zext nneg i32 %.1.i to i64 ; 2 uses
  %.phi.trans.insert29.i = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.phi.trans.insert.i
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert29.i, i64 6
  %.pre.i = load i16, ptr %.phi.trans.insert30.i, align 2, !tbaa !14
  %.pre32.i = sext i16 %.pre.i to i32
  %.pre34.i = sub nsw i32 %i.j, %.pre32.i
  %i.w = sitofp i32 %.pre34.i to double
  %i.x = fadd double %i.w, 5.000000e-01
  br label %uv_decode.exit

uv_decode.exit:                                   ; preds = %bb.c, %._crit_edge.i
  %.pre-phi35.i = phi double [ %i.x, %._crit_edge.i ], [ 5.000000e-01, %bb.c ]
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %._crit_edge.i ], [ %i.m, %bb.c ]
  %.2.i = phi i32 [ %.1.i, %._crit_edge.i ], [ %i.l, %bb.c ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.pre-phi.i
  %i.z = load float, ptr %i.y, align 8, !tbaa !10
  %i.aa = fpext float %i.z to double
  %i.ab = uitofp i32 %.2.i to double
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = insertelement <2 x double> poison, double %.pre-phi35.i, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1
  %i.af = insertelement <2 x double> <double poison, double f0x3F9158B820000000>, double %i.aa, i64 0
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> splat (double f0x3F6CAC0840000000), <2 x double> %i.af)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %uv_decode.exit
  %i.ah = phi <2 x double> [ %i.ag, %uv_decode.exit ], [ <double f0x3FCAF286BD156C1A, double f0x3FDE50D794B8199E>, %bb.b ] ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 1 ; 2 uses
  %i.aj = fmul double %i.ai, -1.600000e+01
  %i.ak = extractelement <2 x double> %i.ah, i64 0 ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double 6.000000e+00, double %i.aj)
  %i.am = fadd double %i.al, 1.200000e+01
  %i.an = fdiv double 1.000000e+00, %i.am         ; 2 uses
  %i.ao = fmul double %i.ak, 9.000000e+00
  %i.ap = fmul double %i.ao, %i.an                ; 2 uses
  %i.aq = fmul double %i.ai, 4.000000e+00
  %i.ar = fmul double %i.aq, %i.an                ; 3 uses
  %i.as = fdiv double %i.ap, %i.ar
  %i.at = fmul double %i.g, %i.as
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.g, i64 1
  %i.aw = fptrunc <2 x double> %i.av to <2 x float>
  store <2 x float> %i.aw, ptr %1, align 4, !tbaa !7
  %i.ax = fsub double 1.000000e+00, %i.ap
  %i.ay = fsub double %i.ax, %i.ar
  %i.az = fdiv double %i.ay, %i.ar
  %i.ba = fmul double %i.g, %i.az
end_hunk_0
begin_hunk_1_@llvm.fabs.f64

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LogLuvInitState(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.d = load i16, ptr %i.c, align 2, !tbaa !69
  %.not = icmp eq i16 %i.d, 1
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.i = load i16, ptr %i.h, align 4, !tbaa !59
  %i.j = zext i16 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.m = load i16, ptr %i.l, align 2, !tbaa !60
  %i.n = zext i16 %i.m to i32
  %i.o = or i32 %i.k, %i.n
  switch i32 %i.o, label %bb.g [
    i32 259, label %bb.h
    i32 260, label %bb.d
    i32 257, label %bb.d
    i32 258, label %bb.d
    i32 132, label %bb.e
    i32 130, label %bb.e
    i32 129, label %bb.e
    i32 68, label %bb.f
    i32 65, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.c
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %spec.store.select1.i = phi i32 [ -1, %bb.g ], [ 3, %bb.f ], [ -1, %bb.d ], [ 1, %bb.e ], [ 0, %bb.c ]
  %.not.i = phi i32 [ -1, %bb.g ], [ -1, %bb.f ], [ 2, %bb.d ], [ -1, %bb.e ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.q = load i16, ptr %i.p, align 2, !tbaa !58
  switch i16 %i.q, label %bb.j [
    i16 1, label %LogLuvGuessDataFmt.exit
    i16 3, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %LogLuvGuessDataFmt.exit

bb.j:                                             ; preds = %bb.h
  br label %LogLuvGuessDataFmt.exit

LogLuvGuessDataFmt.exit:                          ; preds = %bb.h, %bb.i, %bb.j
  %.1.i = phi i32 [ -1, %bb.j ], [ %spec.store.select1.i, %bb.i ], [ %.not.i, %bb.h ] ; 2 uses
  store i32 %.1.i, ptr %i.e, align 4, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %LogLuvGuessDataFmt.exit, %bb.b
  %i.r = phi i32 [ %.1.i, %LogLuvGuessDataFmt.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.s = icmp ult i32 %i.r, 4
  br i1 %i.s, label %switch.lookup, label %.sink.split

switch.lookup:                                    ; preds = %bb.k
  %i.t = zext nneg i32 %i.r to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.LogLuvInitState, i64 %i.t
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %switch.ext, ptr %i.u, align 4, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !65
  %i.x = and i32 %i.w, 1024
  %.not32 = icmp eq i32 %i.x, 0
  br i1 %.not32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %switch.lookup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !71
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !72
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.aa, i64 noundef range(i64 0, 4294967296) %i.ad, ptr noundef null) #16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !73
  br label %bb.p

bb.m:                                             ; preds = %switch.lookup
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !74 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !75 ; 2 uses
  %i.ak = icmp ult i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !76
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = zext i32 %i.ah to i64
  %i.aq = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.an, i64 noundef range(i64 0, 4294967296) %i.ap, ptr noundef null) #16 ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !73
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = zext i32 %i.aj to i64
  %i.as = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.an, i64 noundef range(i64 0, 4294967296) %i.ar, ptr noundef null) #16 ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !73
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.at = phi i64 [ %i.aq, %bb.n ], [ %i.as, %bb.o ], [ %i.ae, %bb.l ]
  %i.au = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.at, i64 noundef 4, ptr noundef null) #16
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !73
  %i.ay = shl i64 %i.ax, 2
  %i.az = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ay) #16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !61
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %bb.k, %bb.p, %bb.q, %bb.a
  %.str.8.sink = phi ptr [ @.str.7, %bb.k ], [ @.str.6, %bb.a ], [ @.str.8, %bb.q ], [ @.str.8, %bb.p ]
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvInitState.module, ptr noundef nonnull %.str.8.sink) #16
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogLuvDecode24(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = sext i32 %i.d to i64
  %i.f = sdiv i64 %2, %i.e                        ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode24.module, ptr noundef nonnull @.str.9) #16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !78
  %.fr61 = freeze i64 %i.r                        ; 7 uses
  %i.s = icmp sgt i64 %i.f, 0
  %i.t = icmp sgt i64 %.fr61, 2
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.v = add nsw i64 %.fr61, -3
  %i.w = udiv i64 %i.v, 3
  %i.x = add nsw i64 %i.f, -1
  %umin55 = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.x) ; 2 uses
  %i.y = add nuw nsw i64 %umin55, 1               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin55, 27
  br i1 %min.iters.check, label %.lr.ph.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = add nsw i64 %.fr61, -3
  %i.aa = udiv i64 %i.z, 3
  %i.ab = add nsw i64 %i.f, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ac = shl i64 %umin, 2
  %i.ad = getelementptr i8, ptr %.0, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ad, i64 4
  %i.ae = mul nuw i64 %umin, 3
  %i.af = getelementptr i8, ptr %i.p, i64 %i.ae
  %scevgep54 = getelementptr i8, ptr %i.af, i64 3
  %bound0 = icmp ult ptr %.0, %scevgep54
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775804      ; 6 uses
  %i.ag = mul i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.p, i64 %i.ag   ; 2 uses
  %i.ai = mul i64 %n.vec, -3
  %i.aj = add i64 %.fr61, %i.ai                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = mul i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ak ; 3 uses
  %i.al = getelementptr i8, ptr %i.p, i64 %i.ak   ; 3 uses
  %next.gep56 = getelementptr i8, ptr %i.al, i64 3
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak   ; 3 uses
  %next.gep57 = getelementptr i8, ptr %i.am, i64 6
  %i.an = getelementptr i8, ptr %i.p, i64 %i.ak   ; 3 uses
  %next.gep58 = getelementptr i8, ptr %i.an, i64 9
  %i.ao = load i8, ptr %next.gep, align 1, !tbaa !9, !alias.scope !79
  %i.ap = load i8, ptr %next.gep56, align 1, !tbaa !9, !alias.scope !79
  %i.aq = load i8, ptr %next.gep57, align 1, !tbaa !9, !alias.scope !79
  %i.ar = load i8, ptr %next.gep58, align 1, !tbaa !9, !alias.scope !79
  %i.as = insertelement <4 x i8> poison, i8 %i.ao, i64 0
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 1
  %i.au = insertelement <4 x i8> %i.at, i8 %i.aq, i64 2
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ar, i64 3
  %i.aw = zext <4 x i8> %i.av to <4 x i32>
  %i.ax = shl nuw nsw <4 x i32> %i.aw, splat (i32 16)
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.az = getelementptr i8, ptr %i.al, i64 4
  %i.ba = getelementptr i8, ptr %i.am, i64 7
  %i.bb = getelementptr i8, ptr %i.an, i64 10
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !9, !alias.scope !79
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !9, !alias.scope !79
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !79
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !9, !alias.scope !79
  %i.bg = insertelement <4 x i8> poison, i8 %i.bc, i64 0
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.bd, i64 1
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.be, i64 2
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 3
  %i.bk = zext <4 x i8> %i.bj to <4 x i32>
  %i.bl = shl nuw nsw <4 x i32> %i.bk, splat (i32 8)
  %i.bm = or disjoint <4 x i32> %i.bl, %i.ax
  %i.bn = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.bo = getelementptr i8, ptr %i.al, i64 5
  %i.bp = getelementptr i8, ptr %i.am, i64 8
  %i.bq = getelementptr i8, ptr %i.an, i64 11
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !9, !alias.scope !79
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !9, !alias.scope !79
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !9, !alias.scope !79
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !9, !alias.scope !79
  %i.bv = insertelement <4 x i8> poison, i8 %i.br, i64 0
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bs, i64 1
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bt, i64 2
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 3
  %i.bz = zext <4 x i8> %i.by to <4 x i32>
  %i.ca = or disjoint <4 x i32> %i.bm, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %index
  store <4 x i32> %i.ca, ptr %i.cb, align 4, !tbaa !3, !alias.scope !82, !noalias !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader62

.lr.ph.preheader62:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03643.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.03842.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03941.ph = phi i64 [ %.fr61, %vector.memcheck ], [ %.fr61, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader62, %.lr.ph
  %.03643 = phi ptr [ %i.cq, %.lr.ph ], [ %.03643.ph, %.lr.ph.preheader62 ] ; 4 uses
  %.03842 = phi i64 [ %i.cs, %.lr.ph ], [ %.03842.ph, %.lr.ph.preheader62 ] ; 2 uses
  %.03941 = phi i64 [ %i.cr, %.lr.ph ], [ %.03941.ph, %.lr.ph.preheader62 ] ; 2 uses
  %i.cd = load i8, ptr %.03643, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.03643, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = or disjoint i32 %i.cj, %i.cf
  %i.cl = getelementptr inbounds nuw i8, ptr %.03643, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.cn = zext i8 %i.cm to i32
  %i.co = or disjoint i32 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.03842
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw i8, ptr %.03643, i64 3 ; 2 uses
  %i.cr = add nsw i64 %.03941, -3                 ; 2 uses
  %i.cs = add nuw nsw i64 %.03842, 1              ; 3 uses
  %i.ct = icmp slt i64 %i.cs, %i.f
  %i.cu = icmp samesign ugt i64 %.03941, 5
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  %.039.lcssa = phi i64 [ %.fr61, %bb.e ], [ %i.aj, %middle.block ], [ %i.cr, %.lr.ph ]
  %.038.lcssa = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %i.cs, %.lr.ph ] ; 2 uses
  %.036.lcssa = phi ptr [ %i.p, %bb.e ], [ %i.ah, %middle.block ], [ %i.cq, %.lr.ph ]
  store ptr %.036.lcssa, ptr %i.o, align 8, !tbaa !77
  store i64 %.039.lcssa, ptr %i.q, align 8, !tbaa !78
  %.not = icmp eq i64 %.038.lcssa, %i.f
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !88
  %i.cy = sub nsw i64 %i.f, %.038.lcssa
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode24.module, ptr noundef nonnull @.str.10, i32 noundef %i.cx, i64 noundef %i.cy) #16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !38
  tail call void %i.da(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.f) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.037 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.c ]
  ret i32 %.037
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv24toXYZ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi ptr [ %i.f, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.069 = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.078 = phi i64 [ %i.d, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.078, -1
  %i.e = load i32, ptr %.069, align 4, !tbaa !3
  tail call void @LogLuv24toXYZ(i32 noundef %i.e, ptr noundef %.010)
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %.069, i64 4
  %i.h = icmp samesign ugt i64 %.078, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Luv24toLuv48(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.in = phi i64 [ %i.d, %bb.d ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.022 = phi ptr [ %i.al, %bb.d ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.0821 = phi ptr [ %i.am, %bb.d ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.in, -1
  %i.e = load i32, ptr %.0821, align 4, !tbaa !3  ; 2 uses
  %i.f = lshr i32 %i.e, 12
  %i.g = trunc i32 %i.f to i16
  %i.h = and i16 %i.g, 4093
  %i.i = add nuw nsw i16 %i.h, 13314
  %i.j = getelementptr inbounds nuw i8, ptr %.022, i64 2
  store i16 %i.i, ptr %.022, align 2, !tbaa !89
  %i.k = and i32 %i.e, 16383                      ; 3 uses
  %or.cond.i = icmp samesign ugt i32 %i.k, 16288
  br i1 %or.cond.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.c
  %.028.i = phi i32 [ %.1.i, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
end_hunk_1
