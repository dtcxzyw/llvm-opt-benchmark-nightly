Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.09?download=true
inline.NumInlined: 1385
inline.NumDeleted: 492
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fEB6_:bb.a
  %..i43 = select i1 %i.bo, double 2.550000e+02, double %i.bi
  %.sroa.0.0.i44 = select i1 %i.bn, double 0.000000e+00, double %..i43
  %i.bp = fptrunc double %.sroa.0.0.i44 to float
  %i.bq = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.br = fptrunc <2 x double> %i.bq to <2 x float>
  store <2 x float> %i.br, ptr %i.as, align 4
  %.sroa.550.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.bp, ptr %.sroa.550.0..sroa.0.0.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp uge i32 %i.ap, %.sroa.15.0.copyload ; 2 uses
  %i.bs = zext i1 %.not to i32
  %spec.select = add i32 %spec.select62, %i.bs
  %spec.select55 = select i1 %.not, i32 0, i32 %i.ap
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.ar
  br i1 %.not.i, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp66
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = sitofp i32 %2 to double
  %i.e = fmul nnan double %i.d, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 8 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 6 uses
  %i.f = fmul double %cos, 7.870000e-01
  %i.g = fadd double %i.f, 2.130000e-01
  %i.h = fmul double %sin, 2.130000e-01
  %i.i = fsub double %i.g, %i.h
  %i.j = fmul double %cos, 7.150000e-01
  %i.k = fsub double 7.150000e-01, %i.j           ; 2 uses
  %i.l = fmul double %sin, 7.150000e-01           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.o = fsub double f0x3FB26E978D4FDF3B, %i.n    ; 2 uses
  %i.p = fmul double %sin, 9.280000e-01
  %i.q = fadd double %i.p, %i.o
  %i.r = fmul double %cos, 2.130000e-01
  %i.s = fsub double 2.130000e-01, %i.r           ; 2 uses
  %i.t = fmul double %sin, 1.430000e-01
  %i.u = fadd double %i.t, %i.s
  %i.v = fmul double %cos, 2.850000e-01
  %i.w = fadd double %i.v, 7.150000e-01
  %i.x = fmul double %sin, 1.400000e-01
  %i.y = fadd double %i.x, %i.w
  %i.z = fmul double %sin, 2.830000e-01
  %i.aa = fsub double %i.o, %i.z
  %i.ab = fmul double %sin, 7.870000e-01
  %i.ac = fsub double %i.s, %i.ab
  %i.ad = fadd double %i.l, %i.k
  %i.ae = fmul double %cos, 9.280000e-01
  %i.af = fadd double %i.ae, f0x3FB26E978D4FDF3B
  %i.ag = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.ah = fadd double %i.ag, %i.af
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color3RgbhEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %.invoke, %bb.a
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i77 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i77, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not74 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select7376 = select i1 %.not74, i32 0, i32 %.sroa.8.0.copyload
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.ak = zext i1 %.not74 to i32
  %spec.select75 = add i32 %.sroa.12.0.copyload, %i.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %spec.select7381 = phi i32 [ %spec.select73, %bb.i ], [ %spec.select7376, %.lr.ph.preheader ] ; 2 uses
  %spec.select80 = phi i32 [ %spec.select, %bb.i ], [ %spec.select75, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.079 = phi ptr [ %i.am, %bb.i ], [ %.sroa.3.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.078 = phi i64 [ %i.an, %bb.i ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %i.al = add nuw i32 %spec.select7381, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.079) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.3.079, i64 %.sroa.7.0.copyload
  %i.an = sub nuw i64 %.sroa.5.078, %.sroa.7.0.copyload ; 2 uses
  %i.ao = invoke noundef nonnull ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %.sroa.3.079, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color3RgbhEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color3RgbhEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = invoke i24 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select7381, i32 noundef %spec.select80)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color3RgbhEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  store i24 %i.ap, ptr %i.a, align 4
  %i.aq = invoke noundef i32 @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.045.0.extract.trunc = trunc i32 %i.aq to i8
  %.sroa.446.0.extract.shift = lshr i32 %i.aq, 8
  %.sroa.446.0.extract.trunc = trunc i32 %.sroa.446.0.extract.shift to i8
  %.sroa.547.0.extract.shift = lshr i32 %i.aq, 16
  %.sroa.547.0.extract.trunc = trunc i32 %.sroa.547.0.extract.shift to i8
  %i.ar = uitofp i8 %.sroa.045.0.extract.trunc to double ; 3 uses
  %i.as = uitofp i8 %.sroa.446.0.extract.trunc to double ; 3 uses
  %i.at = uitofp i8 %.sroa.547.0.extract.trunc to double ; 3 uses
  %i.au = fmul double %i.i, %i.ar
  %i.av = fmul double %i.m, %i.as
  %i.aw = fadd double %i.au, %i.av
  %i.ax = fmul double %i.q, %i.at
  %i.ay = fadd double %i.ax, %i.aw                ; 3 uses
  %i.az = fmul double %i.ac, %i.ar
  %i.ba = fmul double %i.ad, %i.as
  %i.bb = fadd double %i.az, %i.ba
  %i.bc = fmul double %i.ah, %i.at
  %i.bd = fadd double %i.bc, %i.bb                ; 3 uses
  %i.be = fcmp olt double %i.ay, 0.000000e+00
  %i.bf = fcmp ogt double %i.ay, 2.550000e+02
  %..i = select i1 %i.bf, double 2.550000e+02, double %i.ay
  %.sroa.0.0.i54 = select i1 %i.be, double 0.000000e+00, double %..i ; 3 uses
  %i.bg = fcmp ogt double %.sroa.0.0.i54, -1.000000e+00
  %i.bh = fcmp olt double %.sroa.0.0.i54, 2.560000e+02
  %or.cond.i.i = and i1 %i.bg, %i.bh
  %i.bi = fptoui double %.sroa.0.0.i54 to i8
  br i1 %or.cond.i.i, label %bb.g, label %.invoke, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bj = fmul double %i.u, %i.ar
  %i.bk = fmul double %i.y, %i.as
  %i.bl = fadd double %i.bj, %i.bk
  %i.bm = fmul double %i.aa, %i.at
  %i.bn = fadd double %i.bm, %i.bl                ; 3 uses
  %i.bo = fcmp olt double %i.bn, 0.000000e+00
  %i.bp = fcmp ogt double %i.bn, 2.550000e+02
  %..i55 = select i1 %i.bp, double 2.550000e+02, double %i.bn
  %.sroa.0.0.i56 = select i1 %i.bo, double 0.000000e+00, double %..i55 ; 3 uses
  %i.bq = fcmp ogt double %.sroa.0.0.i56, -1.000000e+00
  %i.br = fcmp olt double %.sroa.0.0.i56, 2.560000e+02
  %or.cond.i.i57 = and i1 %i.bq, %i.br
  %i.bs = fptoui double %.sroa.0.0.i56 to i8
  br i1 %or.cond.i.i57, label %bb.h, label %.invoke, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.bt = fcmp olt double %i.bd, 0.000000e+00
  %i.bu = fcmp ogt double %i.bd, 2.550000e+02
  %..i59 = select i1 %i.bu, double 2.550000e+02, double %i.bd
  %.sroa.0.0.i60 = select i1 %i.bt, double 0.000000e+00, double %..i59 ; 3 uses
  %i.bv = fcmp ogt double %.sroa.0.0.i60, -1.000000e+00
  %i.bw = fcmp olt double %.sroa.0.0.i60, 2.560000e+02
  %or.cond.i.i61 = and i1 %i.bv, %i.bw
  br i1 %or.cond.i.i61, label %bb.i, label %.invoke, !prof !12

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f
  %i.bx = phi ptr [ @18, %bb.g ], [ @17, %bb.f ], [ @19, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.by = fptoui double %.sroa.0.0.i60 to i8
  %.sroa.01.0.insert.ext.i = zext i8 %i.bi to i24
  %.sroa.01.1.insert.ext.i = zext i8 %i.bs to i24
  %.sroa.01.1.insert.shift.i = shl nuw nsw i24 %.sroa.01.1.insert.ext.i, 8
  %.sroa.01.1.insert.insert.i = or disjoint i24 %.sroa.01.1.insert.shift.i, %.sroa.01.0.insert.ext.i
  %.sroa.01.2.insert.ext.i = zext i8 %i.by to i24
  %.sroa.01.2.insert.shift.i = shl nuw i24 %.sroa.01.2.insert.ext.i, 16
  %.sroa.01.2.insert.insert.i = or disjoint i24 %.sroa.01.1.insert.insert.i, %.sroa.01.2.insert.shift.i
  store i24 %.sroa.01.2.insert.insert.i, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp uge i32 %i.al, %.sroa.15.0.copyload ; 2 uses
  %i.bz = zext i1 %.not to i32
  %spec.select = add i32 %spec.select80, %i.bz
  %spec.select73 = select i1 %.not, i32 0, i32 %i.al
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.an
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.loopexit.split-lp83
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [6 x i8], align 8                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = sitofp i32 %2 to double
  %i.e = fmul nnan double %i.d, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 8 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 6 uses
  %i.f = fmul double %cos, 7.870000e-01
  %i.g = fadd double %i.f, 2.130000e-01
  %i.h = fmul double %sin, 2.130000e-01
  %i.i = fsub double %i.g, %i.h
  %i.j = fmul double %cos, 7.150000e-01
  %i.k = fsub double 7.150000e-01, %i.j           ; 2 uses
  %i.l = fmul double %sin, 7.150000e-01           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.o = fsub double f0x3FB26E978D4FDF3B, %i.n    ; 2 uses
  %i.p = fmul double %sin, 9.280000e-01
  %i.q = fadd double %i.p, %i.o
  %i.r = fmul double %cos, 2.130000e-01
  %i.s = fsub double 2.130000e-01, %i.r           ; 2 uses
  %i.t = fmul double %sin, 1.430000e-01
  %i.u = fadd double %i.t, %i.s
  %i.v = fmul double %cos, 2.850000e-01
  %i.w = fadd double %i.v, 7.150000e-01
  %i.x = fmul double %sin, 1.400000e-01
  %i.y = fadd double %i.x, %i.w
  %i.z = fmul double %sin, 2.830000e-01
  %i.aa = fsub double %i.o, %i.z
  %i.ab = fmul double %sin, 7.870000e-01
  %i.ac = fsub double %i.s, %i.ab
  %i.ad = fadd double %i.l, %i.k
  %i.ae = fmul double %cos, 9.280000e-01
  %i.af = fadd double %i.ae, f0x3FB26E978D4FDF3B
  %i.ag = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.ah = fadd double %i.ag, %i.af
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color3RgbtEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %.invoke, %bb.a
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i80 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i80, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not77 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select7679 = select i1 %.not77, i32 0, i32 %.sroa.8.0.copyload
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.ak = zext i1 %.not77 to i32
  %spec.select78 = add i32 %.sroa.12.0.copyload, %i.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %spec.select7684 = phi i32 [ %spec.select76, %bb.j ], [ %spec.select7679, %.lr.ph.preheader ] ; 2 uses
  %spec.select83 = phi i32 [ %spec.select, %bb.j ], [ %spec.select78, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.082 = phi ptr [ %i.am, %bb.j ], [ %.sroa.3.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.081 = phi i64 [ %i.an, %bb.j ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %i.al = add nuw i32 %spec.select7684, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.082) ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.082, i64 %.sroa.7.0.copyload
  %i.an = sub nuw i64 %.sroa.5.081, %.sroa.7.0.copyload ; 2 uses
  %i.ao = invoke noundef nonnull align 2 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %.sroa.3.082, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color3RgbtEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color3RgbtEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = invoke i48 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select7684, i32 noundef %spec.select83)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.j, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color3RgbtEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  store i48 %i.ap, ptr %i.a, align 8
  %i.aq = invoke noundef i64 @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.045.0.extract.trunc = trunc i64 %i.aq to i16
  %.sroa.446.0.extract.shift = lshr i64 %i.aq, 16
  %.sroa.446.0.extract.trunc = trunc i64 %.sroa.446.0.extract.shift to i16
  %.sroa.547.0.extract.shift = lshr i64 %i.aq, 32
  %.sroa.547.0.extract.trunc = trunc i64 %.sroa.547.0.extract.shift to i16
  %.sroa.648.0.extract.shift = lshr i64 %i.aq, 48
  %.sroa.648.0.extract.trunc = trunc nuw i64 %.sroa.648.0.extract.shift to i16
  %i.ar = uitofp i16 %.sroa.045.0.extract.trunc to double ; 3 uses
  %i.as = uitofp i16 %.sroa.446.0.extract.trunc to double ; 3 uses
  %i.at = uitofp i16 %.sroa.547.0.extract.trunc to double ; 3 uses
  %i.au = uitofp i16 %.sroa.648.0.extract.trunc to double ; 2 uses
  %i.av = fmul double %i.i, %i.ar
  %i.aw = fmul double %i.m, %i.as
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fmul double %i.q, %i.at
  %i.az = fadd double %i.ay, %i.ax                ; 3 uses
  %i.ba = fmul double %i.ac, %i.ar
  %i.bb = fmul double %i.ad, %i.as
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.ah, %i.at
  %i.be = fadd double %i.bd, %i.bc                ; 3 uses
  %i.bf = fcmp olt double %i.az, 0.000000e+00
  %i.bg = fcmp ogt double %i.az, 2.550000e+02
  %..i = select i1 %i.bg, double 2.550000e+02, double %i.az
  %.sroa.0.0.i54 = select i1 %i.bf, double 0.000000e+00, double %..i ; 3 uses
  %i.bh = fcmp ogt double %.sroa.0.0.i54, -1.000000e+00
  %i.bi = fcmp olt double %.sroa.0.0.i54, 6.553600e+04
  %or.cond.i.i = and i1 %i.bh, %i.bi
  %i.bj = fptoui double %.sroa.0.0.i54 to i16
  br i1 %or.cond.i.i, label %bb.g, label %.invoke, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bk = fmul double %i.u, %i.ar
  %i.bl = fmul double %i.y, %i.as
  %i.bm = fadd double %i.bk, %i.bl
  %i.bn = fmul double %i.aa, %i.at
  %i.bo = fadd double %i.bn, %i.bm                ; 3 uses
  %i.bp = fcmp olt double %i.bo, 0.000000e+00
  %i.bq = fcmp ogt double %i.bo, 2.550000e+02
  %..i55 = select i1 %i.bq, double 2.550000e+02, double %i.bo
  %.sroa.0.0.i56 = select i1 %i.bp, double 0.000000e+00, double %..i55 ; 3 uses
  %i.br = fcmp ogt double %.sroa.0.0.i56, -1.000000e+00
  %i.bs = fcmp olt double %.sroa.0.0.i56, 6.553600e+04
  %or.cond.i.i57 = and i1 %i.br, %i.bs
  %i.bt = fptoui double %.sroa.0.0.i56 to i16
  br i1 %or.cond.i.i57, label %bb.h, label %.invoke, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.bu = fcmp olt double %i.be, 0.000000e+00
  %i.bv = fcmp ogt double %i.be, 2.550000e+02
  %..i60 = select i1 %i.bv, double 2.550000e+02, double %i.be
  %.sroa.0.0.i61 = select i1 %i.bu, double 0.000000e+00, double %..i60 ; 3 uses
  %i.bw = fcmp ogt double %.sroa.0.0.i61, -1.000000e+00
  %i.bx = fcmp olt double %.sroa.0.0.i61, 6.553600e+04
  %or.cond.i.i62 = and i1 %i.bw, %i.bx
  %i.by = fptoui double %.sroa.0.0.i61 to i16
  br i1 %or.cond.i.i62, label %bb.i, label %.invoke, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.bz = fcmp ogt double %i.au, 2.550000e+02
  %..i65 = select i1 %i.bz, double 2.550000e+02, double %i.au ; 2 uses
  %i.ca = fcmp ogt double %..i65, -1.000000e+00
  %i.cb = fcmp olt double %..i65, 6.553600e+04
  %or.cond.i.i67 = and i1 %i.ca, %i.cb
  br i1 %or.cond.i.i67, label %bb.j, label %.invoke, !prof !12

.invoke:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.cc = phi ptr [ @19, %bb.h ], [ @18, %bb.g ], [ @17, %bb.f ], [ @20, %bb.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %.sroa.01.0.insert.ext.i = zext i16 %i.bj to i48
  %.sroa.01.2.insert.ext.i = zext i16 %i.bt to i48
  %.sroa.01.2.insert.shift.i = shl nuw nsw i48 %.sroa.01.2.insert.ext.i, 16
  %.sroa.01.2.insert.insert.i = or disjoint i48 %.sroa.01.2.insert.shift.i, %.sroa.01.0.insert.ext.i
  %.sroa.01.4.insert.ext.i = zext i16 %i.by to i48
  %.sroa.01.4.insert.shift.i = shl nuw i48 %.sroa.01.4.insert.ext.i, 32
  %.sroa.01.4.insert.insert.i = or disjoint i48 %.sroa.01.2.insert.insert.i, %.sroa.01.4.insert.shift.i
  store i48 %.sroa.01.4.insert.insert.i, ptr %i.ao, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp uge i32 %i.al, %.sroa.15.0.copyload ; 2 uses
  %i.cd = zext i1 %.not to i32
  %spec.select = add i32 %spec.select83, %i.cd
  %spec.select76 = select i1 %.not, i32 0, i32 %i.al
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.an
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.loopexit.split-lp86
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = sitofp i32 %2 to double
  %i.e = fmul nnan double %i.d, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 8 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 6 uses
  %i.f = fmul double %cos, 7.870000e-01
  %i.g = fadd double %i.f, 2.130000e-01
  %i.h = fmul double %sin, 2.130000e-01
  %i.i = fsub double %i.g, %i.h
  %i.j = fmul double %cos, 7.150000e-01
  %i.k = fsub double 7.150000e-01, %i.j           ; 2 uses
  %i.l = fmul double %sin, 7.150000e-01           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.o = fsub double f0x3FB26E978D4FDF3B, %i.n    ; 2 uses
  %i.p = fmul double %sin, 9.280000e-01
  %i.q = fadd double %i.p, %i.o
  %i.r = fmul double %cos, 2.130000e-01
  %i.s = fsub double 2.130000e-01, %i.r           ; 2 uses
  %i.t = fmul double %sin, 1.430000e-01
  %i.u = fadd double %i.t, %i.s
  %i.v = fmul double %cos, 2.850000e-01
  %i.w = fadd double %i.v, 7.150000e-01
  %i.x = fmul double %sin, 1.400000e-01
  %i.y = fadd double %i.x, %i.w
  %i.z = fmul double %sin, 2.830000e-01
  %i.aa = fsub double %i.o, %i.z
  %i.ab = fmul double %sin, 7.870000e-01
  %i.ac = fsub double %i.s, %i.ab
  %i.ad = fadd double %i.l, %i.k
  %i.ae = fmul double %cos, 9.280000e-01
  %i.af = fadd double %i.ae, f0x3FB26E978D4FDF3B
  %i.ag = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.ah = fadd double %i.ag, %i.af
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4LumahEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %.invoke, %bb.a
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i76 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i76, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not73 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select7275 = select i1 %.not73, i32 0, i32 %.sroa.8.0.copyload
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.ak = zext i1 %.not73 to i32
  %spec.select74 = add i32 %.sroa.12.0.copyload, %i.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %spec.select7280 = phi i32 [ %spec.select72, %bb.i ], [ %spec.select7275, %.lr.ph.preheader ] ; 2 uses
  %spec.select79 = phi i32 [ %spec.select, %bb.i ], [ %spec.select74, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.078 = phi ptr [ %i.am, %bb.i ], [ %.sroa.3.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.077 = phi i64 [ %i.an, %bb.i ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %i.al = add nuw i32 %spec.select7280, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.078) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.3.078, i64 %.sroa.7.0.copyload
  %i.an = sub nuw i64 %.sroa.5.077, %.sroa.7.0.copyload ; 2 uses
  %i.ao = invoke noundef nonnull ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %.sroa.3.078, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4LumahEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4LumahEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = invoke noundef i8 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select7280, i32 noundef %spec.select79)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4LumahEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  store i8 %i.ap, ptr %i.a, align 1
  %i.aq = invoke noundef i32 @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.046.0.extract.trunc = trunc i32 %i.aq to i8
  %.sroa.447.0.extract.shift = lshr i32 %i.aq, 8
  %.sroa.447.0.extract.trunc = trunc i32 %.sroa.447.0.extract.shift to i8
  %.sroa.548.0.extract.shift = lshr i32 %i.aq, 16
  %.sroa.548.0.extract.trunc = trunc i32 %.sroa.548.0.extract.shift to i8
  %i.ar = uitofp i8 %.sroa.046.0.extract.trunc to double ; 3 uses
  %i.as = uitofp i8 %.sroa.447.0.extract.trunc to double ; 3 uses
  %i.at = uitofp i8 %.sroa.548.0.extract.trunc to double ; 3 uses
  %i.au = fmul double %i.i, %i.ar
  %i.av = fmul double %i.m, %i.as
  %i.aw = fadd double %i.au, %i.av
  %i.ax = fmul double %i.q, %i.at
  %i.ay = fadd double %i.ax, %i.aw                ; 3 uses
  %i.az = fmul double %i.ac, %i.ar
  %i.ba = fmul double %i.ad, %i.as
  %i.bb = fadd double %i.az, %i.ba
  %i.bc = fmul double %i.ah, %i.at
  %i.bd = fadd double %i.bc, %i.bb                ; 3 uses
  %i.be = fcmp olt double %i.ay, 0.000000e+00
  %i.bf = fcmp ogt double %i.ay, 2.550000e+02
  %..i = select i1 %i.bf, double 2.550000e+02, double %i.ay
  %.sroa.0.0.i53 = select i1 %i.be, double 0.000000e+00, double %..i ; 3 uses
  %i.bg = fcmp ogt double %.sroa.0.0.i53, -1.000000e+00
  %i.bh = fcmp olt double %.sroa.0.0.i53, 2.560000e+02
  %or.cond.i.i = and i1 %i.bg, %i.bh
  %i.bi = fptoui double %.sroa.0.0.i53 to i8
  br i1 %or.cond.i.i, label %bb.g, label %.invoke, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bj = fmul double %i.u, %i.ar
  %i.bk = fmul double %i.y, %i.as
  %i.bl = fadd double %i.bj, %i.bk
  %i.bm = fmul double %i.aa, %i.at
  %i.bn = fadd double %i.bm, %i.bl                ; 3 uses
  %i.bo = fcmp olt double %i.bn, 0.000000e+00
  %i.bp = fcmp ogt double %i.bn, 2.550000e+02
  %..i54 = select i1 %i.bp, double 2.550000e+02, double %i.bn
  %.sroa.0.0.i55 = select i1 %i.bo, double 0.000000e+00, double %..i54 ; 2 uses
  %i.bq = fcmp ogt double %.sroa.0.0.i55, -1.000000e+00
  %i.br = fcmp olt double %.sroa.0.0.i55, 2.560000e+02
  %or.cond.i.i56 = and i1 %i.bq, %i.br
  br i1 %or.cond.i.i56, label %bb.h, label %.invoke, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.bs = fcmp olt double %i.bd, 0.000000e+00
  %i.bt = fcmp ogt double %i.bd, 2.550000e+02
  %..i58 = select i1 %i.bt, double 2.550000e+02, double %i.bd
  %.sroa.0.0.i59 = select i1 %i.bs, double 0.000000e+00, double %..i58 ; 2 uses
  %i.bu = fcmp ogt double %.sroa.0.0.i59, -1.000000e+00
  %i.bv = fcmp olt double %.sroa.0.0.i59, 2.560000e+02
  %or.cond.i.i60 = and i1 %i.bu, %i.bv
  br i1 %or.cond.i.i60, label %bb.i, label %.invoke, !prof !12

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f
  %i.bw = phi ptr [ @18, %bb.g ], [ @17, %bb.f ], [ @19, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  store i8 %i.bi, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp uge i32 %i.al, %.sroa.15.0.copyload ; 2 uses
  %i.bx = zext i1 %.not to i32
  %spec.select = add i32 %spec.select79, %i.bx
  %spec.select72 = select i1 %.not, i32 0, i32 %i.al
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.an
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.loopexit.split-lp82
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = sitofp i32 %2 to double
  %i.e = fmul nnan double %i.d, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 8 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 6 uses
  %i.f = fmul double %cos, 7.870000e-01
  %i.g = fadd double %i.f, 2.130000e-01
  %i.h = fmul double %sin, 2.130000e-01
  %i.i = fsub double %i.g, %i.h
  %i.j = fmul double %cos, 7.150000e-01
  %i.k = fsub double 7.150000e-01, %i.j           ; 2 uses
  %i.l = fmul double %sin, 7.150000e-01           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.o = fsub double f0x3FB26E978D4FDF3B, %i.n    ; 2 uses
  %i.p = fmul double %sin, 9.280000e-01
  %i.q = fadd double %i.p, %i.o
  %i.r = fmul double %cos, 2.130000e-01
  %i.s = fsub double 2.130000e-01, %i.r           ; 2 uses
  %i.t = fmul double %sin, 1.430000e-01
  %i.u = fadd double %i.t, %i.s
  %i.v = fmul double %cos, 2.850000e-01
  %i.w = fadd double %i.v, 7.150000e-01
  %i.x = fmul double %sin, 1.400000e-01
  %i.y = fadd double %i.x, %i.w
  %i.z = fmul double %sin, 2.830000e-01
  %i.aa = fsub double %i.o, %i.z
  %i.ab = fmul double %sin, 7.870000e-01
  %i.ac = fsub double %i.s, %i.ab
  %i.ad = fadd double %i.l, %i.k
  %i.ae = fmul double %cos, 9.280000e-01
  %i.af = fadd double %i.ae, f0x3FB26E978D4FDF3B
  %i.ag = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.ah = fadd double %i.ag, %i.af
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4LumatEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %.invoke, %bb.a
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i79 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i79, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not76 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select7578 = select i1 %.not76, i32 0, i32 %.sroa.8.0.copyload
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.ak = zext i1 %.not76 to i32
  %spec.select77 = add i32 %.sroa.12.0.copyload, %i.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %spec.select7583 = phi i32 [ %spec.select75, %bb.j ], [ %spec.select7578, %.lr.ph.preheader ] ; 2 uses
  %spec.select82 = phi i32 [ %spec.select, %bb.j ], [ %spec.select77, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.081 = phi ptr [ %i.am, %bb.j ], [ %.sroa.3.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.080 = phi i64 [ %i.an, %bb.j ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %i.al = add nuw i32 %spec.select7583, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.081) ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.081, i64 %.sroa.7.0.copyload
  %i.an = sub nuw i64 %.sroa.5.080, %.sroa.7.0.copyload ; 2 uses
  %i.ao = invoke noundef nonnull align 2 ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %.sroa.3.081, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4LumatEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4LumatEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = invoke noundef i16 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select7583, i32 noundef %spec.select82)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.j, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4LumatEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  store i16 %i.ap, ptr %i.a, align 2
  %i.aq = invoke noundef i64 @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.046.0.extract.trunc = trunc i64 %i.aq to i16
  %.sroa.447.0.extract.shift = lshr i64 %i.aq, 16
  %.sroa.447.0.extract.trunc = trunc i64 %.sroa.447.0.extract.shift to i16
  %.sroa.548.0.extract.shift = lshr i64 %i.aq, 32
  %.sroa.548.0.extract.trunc = trunc i64 %.sroa.548.0.extract.shift to i16
  %.sroa.649.0.extract.shift = lshr i64 %i.aq, 48
  %.sroa.649.0.extract.trunc = trunc nuw i64 %.sroa.649.0.extract.shift to i16
  %i.ar = uitofp i16 %.sroa.046.0.extract.trunc to double ; 3 uses
  %i.as = uitofp i16 %.sroa.447.0.extract.trunc to double ; 3 uses
  %i.at = uitofp i16 %.sroa.548.0.extract.trunc to double ; 3 uses
  %i.au = uitofp i16 %.sroa.649.0.extract.trunc to double ; 2 uses
  %i.av = fmul double %i.i, %i.ar
  %i.aw = fmul double %i.m, %i.as
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fmul double %i.q, %i.at
  %i.az = fadd double %i.ay, %i.ax                ; 3 uses
  %i.ba = fmul double %i.ac, %i.ar
  %i.bb = fmul double %i.ad, %i.as
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.ah, %i.at
  %i.be = fadd double %i.bd, %i.bc                ; 3 uses
  %i.bf = fcmp olt double %i.az, 0.000000e+00
  %i.bg = fcmp ogt double %i.az, 2.550000e+02
  %..i = select i1 %i.bg, double 2.550000e+02, double %i.az
  %.sroa.0.0.i53 = select i1 %i.bf, double 0.000000e+00, double %..i ; 3 uses
  %i.bh = fcmp ogt double %.sroa.0.0.i53, -1.000000e+00
  %i.bi = fcmp olt double %.sroa.0.0.i53, 6.553600e+04
  %or.cond.i.i = and i1 %i.bh, %i.bi
  %i.bj = fptoui double %.sroa.0.0.i53 to i16
  br i1 %or.cond.i.i, label %bb.g, label %.invoke, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bk = fmul double %i.u, %i.ar
  %i.bl = fmul double %i.y, %i.as
  %i.bm = fadd double %i.bk, %i.bl
  %i.bn = fmul double %i.aa, %i.at
  %i.bo = fadd double %i.bn, %i.bm                ; 3 uses
  %i.bp = fcmp olt double %i.bo, 0.000000e+00
  %i.bq = fcmp ogt double %i.bo, 2.550000e+02
  %..i54 = select i1 %i.bq, double 2.550000e+02, double %i.bo
  %.sroa.0.0.i55 = select i1 %i.bp, double 0.000000e+00, double %..i54 ; 2 uses
  %i.br = fcmp ogt double %.sroa.0.0.i55, -1.000000e+00
  %i.bs = fcmp olt double %.sroa.0.0.i55, 6.553600e+04
  %or.cond.i.i56 = and i1 %i.br, %i.bs
  br i1 %or.cond.i.i56, label %bb.h, label %.invoke, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.bt = fcmp olt double %i.be, 0.000000e+00
  %i.bu = fcmp ogt double %i.be, 2.550000e+02
  %..i59 = select i1 %i.bu, double 2.550000e+02, double %i.be
  %.sroa.0.0.i60 = select i1 %i.bt, double 0.000000e+00, double %..i59 ; 2 uses
  %i.bv = fcmp ogt double %.sroa.0.0.i60, -1.000000e+00
  %i.bw = fcmp olt double %.sroa.0.0.i60, 6.553600e+04
  %or.cond.i.i61 = and i1 %i.bv, %i.bw
  br i1 %or.cond.i.i61, label %bb.i, label %.invoke, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.bx = fcmp ogt double %i.au, 2.550000e+02
  %..i64 = select i1 %i.bx, double 2.550000e+02, double %i.au ; 2 uses
  %i.by = fcmp ogt double %..i64, -1.000000e+00
  %i.bz = fcmp olt double %..i64, 6.553600e+04
  %or.cond.i.i66 = and i1 %i.by, %i.bz
  br i1 %or.cond.i.i66, label %bb.j, label %.invoke, !prof !12

.invoke:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.ca = phi ptr [ @19, %bb.h ], [ @18, %bb.g ], [ @17, %bb.f ], [ @20, %bb.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  store i16 %i.bj, ptr %i.ao, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp uge i32 %i.al, %.sroa.15.0.copyload ; 2 uses
  %i.cb = zext i1 %.not to i32
  %spec.select = add i32 %spec.select82, %i.cb
  %spec.select75 = select i1 %.not, i32 0, i32 %i.al
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.an
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.loopexit.split-lp85
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.e = sitofp i32 %2 to double
  %i.f = fmul nnan double %i.e, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.f) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 3 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 3 uses
  %i.g = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.h = fsub double f0x3FB26E978D4FDF3B, %i.g
  %i.i = insertelement <2 x double> poison, double %cos, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.k = fmul <2 x double> %i.j, <double 2.850000e-01, double 7.870000e-01>
  %i.l = fadd <2 x double> %i.k, <double 7.150000e-01, double 2.130000e-01> ; 2 uses
  %i.m = insertelement <2 x double> poison, double %sin, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.o = fmul <2 x double> %i.n, <double 1.400000e-01, double 2.130000e-01> ; 2 uses
  %i.p = fmul <2 x double> %i.j, <double 2.130000e-01, double 7.150000e-01>
  %i.q = fsub <2 x double> <double 2.130000e-01, double 7.150000e-01>, %i.p ; 4 uses
  %i.r = fmul <2 x double> %i.n, <double 1.430000e-01, double 7.150000e-01> ; 3 uses
  %i.s = fmul <2 x double> %i.n, <double 2.830000e-01, double 9.280000e-01> ; 2 uses
  %i.t = fsub <2 x double> %i.q, %i.r
  %i.u = fadd <2 x double> %i.q, %i.r
  %i.v = shufflevector <2 x double> %i.u, <2 x double> %i.t, <2 x i32> <i32 0, i32 3>
  %i.w = fsub <2 x double> %i.l, %i.o
  %i.x = fadd <2 x double> %i.l, %i.o
  %i.y = shufflevector <2 x double> %i.x, <2 x double> %i.w, <2 x i32> <i32 0, i32 3>
  %i.z = insertelement <2 x double> poison, double %i.h, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fadd <2 x double> %i.aa, %i.s
  %i.ac = fsub <2 x double> %i.aa, %i.s
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ae = fmul double %sin, 7.870000e-01
  %i.af = insertelement <2 x double> %i.r, double %i.ae, i64 0 ; 2 uses
  %i.ag = fsub <2 x double> %i.q, %i.af
  %i.ah = fadd <2 x double> %i.q, %i.af
  %i.ai = shufflevector <2 x double> %i.ag, <2 x double> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.aj = fmul double %cos, 9.280000e-01
  %i.ak = fadd double %i.aj, f0x3FB26E978D4FDF3B
  %i.al = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.am = fadd double %i.al, %i.ak
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbafEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %bb.a
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #30
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i59 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i59, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not56 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select5558 = select i1 %.not56, i32 0, i32 %.sroa.8.0.copyload
  %i.an = zext i1 %.not56 to i32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %spec.select57 = add i32 %.sroa.12.0.copyload, %i.an
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %spec.select5563 = phi i32 [ %spec.select5558, %.lr.ph ], [ %spec.select55, %bb.e ] ; 2 uses
  %spec.select62 = phi i32 [ %spec.select57, %.lr.ph ], [ %spec.select, %bb.e ] ; 2 uses
  %.sroa.3.061 = phi ptr [ %.sroa.3.0.copyload, %.lr.ph ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.5.060 = phi i64 [ %.sroa.5.0.copyload, %.lr.ph ], [ %i.as, %bb.e ]
  %i.aq = add nuw i32 %spec.select5563, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.061) ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.061, i64 %.sroa.7.0.copyload
  %i.as = sub nuw i64 %.sroa.5.060, %.sroa.7.0.copyload ; 2 uses
  %i.at = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 4 %.sroa.3.061, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbafEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbafEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select5563, i32 noundef %spec.select62)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbafEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.au = load float, ptr %i.ao, align 8, !noundef !4
  %i.av = load float, ptr %i.ap, align 4, !noundef !4 ; 3 uses
  %i.aw = fpext float %i.au to double             ; 2 uses
  %i.ax = fmul double %i.am, %i.aw
  %i.ay = fcmp olt float %i.av, 0.000000e+00
  %i.az = fcmp ogt float %i.av, 2.550000e+02
  %narrow.sel = select i1 %i.az, float 2.550000e+02, float %i.av
  %i.ba = select i1 %i.ay, float 0.000000e+00, float %narrow.sel
  %i.bb = load <2 x float>, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = fpext <2 x float> %i.bb to <2 x double> ; 3 uses
  %i.bd = fmul <2 x double> %i.v, %i.bc
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = fmul <2 x double> %i.y, %i.be
  %i.bg = fadd <2 x double> %i.bd, %i.bf
  %i.bh = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x double> %i.ad, %i.bi
  %i.bk = fadd <2 x double> %i.bg, %i.bj          ; 3 uses
  %i.bl = fmul <2 x double> %i.ai, %i.bc          ; 2 uses
  %shift = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bl, %shift
  %i.bm = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bn = fadd double %i.bm, %i.ax                ; 3 uses
  %i.bo = fcmp olt <2 x double> %i.bk, zeroinitializer
  %i.bp = fcmp ogt <2 x double> %i.bk, splat (double 2.550000e+02)
  %i.bq = select <2 x i1> %i.bp, <2 x double> splat (double 2.550000e+02), <2 x double> %i.bk
  %i.br = select <2 x i1> %i.bo, <2 x double> zeroinitializer, <2 x double> %i.bq
  %i.bs = fcmp olt double %i.bn, 0.000000e+00
  %i.bt = fcmp ogt double %i.bn, 2.550000e+02
  %..i43 = select i1 %i.bt, double 2.550000e+02, double %i.bn
  %.sroa.0.0.i44 = select i1 %i.bs, double 0.000000e+00, double %..i43
  %i.bu = fptrunc double %.sroa.0.0.i44 to float
  %i.bv = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = fptrunc <2 x double> %i.bv to <2 x float>
  store <2 x float> %i.bw, ptr %i.at, align 4
  %.sroa.550.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float %i.bu, ptr %.sroa.550.0..sroa.0.0.i.sroa_idx, align 4
  %.sroa.6.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float %i.ba, ptr %.sroa.6.0..sroa.0.0.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp uge i32 %i.aq, %.sroa.15.0.copyload ; 2 uses
  %i.bx = zext i1 %.not to i32
  %spec.select = add i32 %spec.select62, %i.bx
  %spec.select55 = select i1 %.not, i32 0, i32 %i.aq
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.as
  br i1 %.not.i, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp66
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = sitofp i32 %2 to double
  %i.e = fmul nnan double %i.d, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 8 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 6 uses
  %i.f = fmul double %cos, 7.870000e-01
  %i.g = fadd double %i.f, 2.130000e-01
  %i.h = fmul double %sin, 2.130000e-01
  %i.i = fsub double %i.g, %i.h
  %i.j = fmul double %cos, 7.150000e-01
  %i.k = fsub double 7.150000e-01, %i.j           ; 2 uses
  %i.l = fmul double %sin, 7.150000e-01           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.o = fsub double f0x3FB26E978D4FDF3B, %i.n    ; 2 uses
  %i.p = fmul double %sin, 9.280000e-01
  %i.q = fadd double %i.p, %i.o
  %i.r = fmul double %cos, 2.130000e-01
  %i.s = fsub double 2.130000e-01, %i.r           ; 2 uses
  %i.t = fmul double %sin, 1.430000e-01
  %i.u = fadd double %i.t, %i.s
  %i.v = fmul double %cos, 2.850000e-01
  %i.w = fadd double %i.v, 7.150000e-01
  %i.x = fmul double %sin, 1.400000e-01
  %i.y = fadd double %i.x, %i.w
  %i.z = fmul double %sin, 2.830000e-01
  %i.aa = fsub double %i.o, %i.z
  %i.ab = fmul double %sin, 7.870000e-01
  %i.ac = fsub double %i.s, %i.ab
  %i.ad = fadd double %i.l, %i.k
  %i.ae = fmul double %cos, 9.280000e-01
  %i.af = fadd double %i.ae, f0x3FB26E978D4FDF3B
  %i.ag = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.ah = fadd double %i.ag, %i.af
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbahEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %.invoke, %bb.a
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i76 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i76, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not73 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select7275 = select i1 %.not73, i32 0, i32 %.sroa.8.0.copyload
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.ak = zext i1 %.not73 to i32
  %spec.select74 = add i32 %.sroa.12.0.copyload, %i.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %spec.select7280 = phi i32 [ %spec.select72, %bb.i ], [ %spec.select7275, %.lr.ph.preheader ] ; 2 uses
  %spec.select79 = phi i32 [ %spec.select, %bb.i ], [ %spec.select74, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.078 = phi ptr [ %i.am, %bb.i ], [ %.sroa.3.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.077 = phi i64 [ %i.an, %bb.i ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %i.al = add nuw i32 %spec.select7280, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.078) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.3.078, i64 %.sroa.7.0.copyload
  %i.an = sub nuw i64 %.sroa.5.077, %.sroa.7.0.copyload ; 2 uses
  %i.ao = invoke noundef nonnull ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %.sroa.3.078, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbahEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbahEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = invoke noundef i32 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select7280, i32 noundef %spec.select79)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbahEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  store i32 %i.ap, ptr %i.a, align 4
  %i.aq = invoke noundef i32 @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.046.0.extract.trunc = trunc i32 %i.aq to i8
  %.sroa.447.0.extract.shift = lshr i32 %i.aq, 8
  %.sroa.447.0.extract.trunc = trunc i32 %.sroa.447.0.extract.shift to i8
  %.sroa.548.0.extract.shift = lshr i32 %i.aq, 16
  %.sroa.548.0.extract.trunc = trunc i32 %.sroa.548.0.extract.shift to i8
  %.sroa.649.0.extract.shift = and i32 %i.aq, -16777216
  %i.ar = uitofp i8 %.sroa.046.0.extract.trunc to double ; 3 uses
  %i.as = uitofp i8 %.sroa.447.0.extract.trunc to double ; 3 uses
  %i.at = uitofp i8 %.sroa.548.0.extract.trunc to double ; 3 uses
  %i.au = fmul double %i.i, %i.ar
  %i.av = fmul double %i.m, %i.as
  %i.aw = fadd double %i.au, %i.av
  %i.ax = fmul double %i.q, %i.at
  %i.ay = fadd double %i.ax, %i.aw                ; 3 uses
  %i.az = fmul double %i.ac, %i.ar
  %i.ba = fmul double %i.ad, %i.as
  %i.bb = fadd double %i.az, %i.ba
  %i.bc = fmul double %i.ah, %i.at
  %i.bd = fadd double %i.bc, %i.bb                ; 3 uses
  %i.be = fcmp olt double %i.ay, 0.000000e+00
  %i.bf = fcmp ogt double %i.ay, 2.550000e+02
  %..i = select i1 %i.bf, double 2.550000e+02, double %i.ay
  %.sroa.0.0.i53 = select i1 %i.be, double 0.000000e+00, double %..i ; 3 uses
  %i.bg = fcmp ogt double %.sroa.0.0.i53, -1.000000e+00
  %i.bh = fcmp olt double %.sroa.0.0.i53, 2.560000e+02
  %or.cond.i.i = and i1 %i.bg, %i.bh
  %i.bi = fptoui double %.sroa.0.0.i53 to i8
  br i1 %or.cond.i.i, label %bb.g, label %.invoke, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bj = fmul double %i.u, %i.ar
  %i.bk = fmul double %i.y, %i.as
  %i.bl = fadd double %i.bj, %i.bk
  %i.bm = fmul double %i.aa, %i.at
  %i.bn = fadd double %i.bm, %i.bl                ; 3 uses
  %i.bo = fcmp olt double %i.bn, 0.000000e+00
  %i.bp = fcmp ogt double %i.bn, 2.550000e+02
  %..i54 = select i1 %i.bp, double 2.550000e+02, double %i.bn
  %.sroa.0.0.i55 = select i1 %i.bo, double 0.000000e+00, double %..i54 ; 3 uses
  %i.bq = fcmp ogt double %.sroa.0.0.i55, -1.000000e+00
  %i.br = fcmp olt double %.sroa.0.0.i55, 2.560000e+02
  %or.cond.i.i56 = and i1 %i.bq, %i.br
  %i.bs = fptoui double %.sroa.0.0.i55 to i8
  br i1 %or.cond.i.i56, label %bb.h, label %.invoke, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.bt = fcmp olt double %i.bd, 0.000000e+00
  %i.bu = fcmp ogt double %i.bd, 2.550000e+02
  %..i58 = select i1 %i.bu, double 2.550000e+02, double %i.bd
  %.sroa.0.0.i59 = select i1 %i.bt, double 0.000000e+00, double %..i58 ; 3 uses
  %i.bv = fcmp ogt double %.sroa.0.0.i59, -1.000000e+00
  %i.bw = fcmp olt double %.sroa.0.0.i59, 2.560000e+02
  %or.cond.i.i60 = and i1 %i.bv, %i.bw
  br i1 %or.cond.i.i60, label %bb.i, label %.invoke, !prof !12

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f
  %i.bx = phi ptr [ @18, %bb.g ], [ @17, %bb.f ], [ @19, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.by = fptoui double %.sroa.0.0.i59 to i8
  %.sroa.5.0.insert.ext.i = zext i8 %i.by to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.shift.i, %.sroa.649.0.extract.shift
  %.sroa.4.0.insert.ext.i = zext i8 %i.bs to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i
  %.sroa.01.0.insert.ext.i = zext i8 %i.bi to i32
  %.sroa.01.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.01.0.insert.ext.i
  store i32 %.sroa.01.0.insert.insert.i, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp uge i32 %i.al, %.sroa.15.0.copyload ; 2 uses
  %i.bz = zext i1 %.not to i32
  %spec.select = add i32 %spec.select79, %i.bz
  %spec.select72 = select i1 %.not, i32 0, i32 %i.al
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.an
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.loopexit.split-lp82
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = sitofp i32 %2 to double
  %i.e = fmul nnan double %i.d, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 8 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 6 uses
  %i.f = fmul double %cos, 7.870000e-01
  %i.g = fadd double %i.f, 2.130000e-01
  %i.h = fmul double %sin, 2.130000e-01
  %i.i = fsub double %i.g, %i.h
  %i.j = fmul double %cos, 7.150000e-01
  %i.k = fsub double 7.150000e-01, %i.j           ; 2 uses
  %i.l = fmul double %sin, 7.150000e-01           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.o = fsub double f0x3FB26E978D4FDF3B, %i.n    ; 2 uses
  %i.p = fmul double %sin, 9.280000e-01
  %i.q = fadd double %i.p, %i.o
  %i.r = fmul double %cos, 2.130000e-01
  %i.s = fsub double 2.130000e-01, %i.r           ; 2 uses
  %i.t = fmul double %sin, 1.430000e-01
  %i.u = fadd double %i.t, %i.s
  %i.v = fmul double %cos, 2.850000e-01
  %i.w = fadd double %i.v, 7.150000e-01
  %i.x = fmul double %sin, 1.400000e-01
  %i.y = fadd double %i.x, %i.w
  %i.z = fmul double %sin, 2.830000e-01
  %i.aa = fsub double %i.o, %i.z
  %i.ab = fmul double %sin, 7.870000e-01
  %i.ac = fsub double %i.s, %i.ab
  %i.ad = fadd double %i.l, %i.k
  %i.ae = fmul double %cos, 9.280000e-01
  %i.af = fadd double %i.ae, f0x3FB26E978D4FDF3B
  %i.ag = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.ah = fadd double %i.ag, %i.af
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbatEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %.invoke, %bb.a
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i79 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i79, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not76 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select7578 = select i1 %.not76, i32 0, i32 %.sroa.8.0.copyload
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.ak = zext i1 %.not76 to i32
  %spec.select77 = add i32 %.sroa.12.0.copyload, %i.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %spec.select7583 = phi i32 [ %spec.select75, %bb.j ], [ %spec.select7578, %.lr.ph.preheader ] ; 2 uses
  %spec.select82 = phi i32 [ %spec.select, %bb.j ], [ %spec.select77, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.081 = phi ptr [ %i.am, %bb.j ], [ %.sroa.3.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.080 = phi i64 [ %i.an, %bb.j ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %i.al = add nuw i32 %spec.select7583, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.081) ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.081, i64 %.sroa.7.0.copyload
  %i.an = sub nuw i64 %.sroa.5.080, %.sroa.7.0.copyload ; 2 uses
  %i.ao = invoke noundef nonnull align 2 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %.sroa.3.081, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbatEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbatEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = invoke noundef i64 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select7583, i32 noundef %spec.select82)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.j, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color4RgbatEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  store i64 %i.ap, ptr %i.a, align 8
  %i.aq = invoke noundef i64 @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.046.0.extract.trunc = trunc i64 %i.aq to i16
  %.sroa.447.0.extract.shift = lshr i64 %i.aq, 16
  %.sroa.447.0.extract.trunc = trunc i64 %.sroa.447.0.extract.shift to i16
  %.sroa.548.0.extract.shift = lshr i64 %i.aq, 32
  %.sroa.548.0.extract.trunc = trunc i64 %.sroa.548.0.extract.shift to i16
  %.sroa.649.0.extract.shift = lshr i64 %i.aq, 48
  %.sroa.649.0.extract.trunc = trunc nuw i64 %.sroa.649.0.extract.shift to i16
  %i.ar = uitofp i16 %.sroa.046.0.extract.trunc to double ; 3 uses
  %i.as = uitofp i16 %.sroa.447.0.extract.trunc to double ; 3 uses
  %i.at = uitofp i16 %.sroa.548.0.extract.trunc to double ; 3 uses
  %i.au = uitofp i16 %.sroa.649.0.extract.trunc to double ; 2 uses
  %i.av = fmul double %i.i, %i.ar
  %i.aw = fmul double %i.m, %i.as
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fmul double %i.q, %i.at
  %i.az = fadd double %i.ay, %i.ax                ; 3 uses
  %i.ba = fmul double %i.ac, %i.ar
  %i.bb = fmul double %i.ad, %i.as
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.ah, %i.at
  %i.be = fadd double %i.bd, %i.bc                ; 3 uses
  %i.bf = fcmp olt double %i.az, 0.000000e+00
  %i.bg = fcmp ogt double %i.az, 2.550000e+02
  %..i = select i1 %i.bg, double 2.550000e+02, double %i.az
  %.sroa.0.0.i53 = select i1 %i.bf, double 0.000000e+00, double %..i ; 3 uses
  %i.bh = fcmp ogt double %.sroa.0.0.i53, -1.000000e+00
  %i.bi = fcmp olt double %.sroa.0.0.i53, 6.553600e+04
  %or.cond.i.i = and i1 %i.bh, %i.bi
  %i.bj = fptoui double %.sroa.0.0.i53 to i16
  br i1 %or.cond.i.i, label %bb.g, label %.invoke, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bk = fmul double %i.u, %i.ar
  %i.bl = fmul double %i.y, %i.as
  %i.bm = fadd double %i.bk, %i.bl
  %i.bn = fmul double %i.aa, %i.at
  %i.bo = fadd double %i.bn, %i.bm                ; 3 uses
  %i.bp = fcmp olt double %i.bo, 0.000000e+00
  %i.bq = fcmp ogt double %i.bo, 2.550000e+02
  %..i54 = select i1 %i.bq, double 2.550000e+02, double %i.bo
  %.sroa.0.0.i55 = select i1 %i.bp, double 0.000000e+00, double %..i54 ; 3 uses
  %i.br = fcmp ogt double %.sroa.0.0.i55, -1.000000e+00
  %i.bs = fcmp olt double %.sroa.0.0.i55, 6.553600e+04
  %or.cond.i.i56 = and i1 %i.br, %i.bs
  %i.bt = fptoui double %.sroa.0.0.i55 to i16
  br i1 %or.cond.i.i56, label %bb.h, label %.invoke, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.bu = fcmp olt double %i.be, 0.000000e+00
  %i.bv = fcmp ogt double %i.be, 2.550000e+02
  %..i59 = select i1 %i.bv, double 2.550000e+02, double %i.be
  %.sroa.0.0.i60 = select i1 %i.bu, double 0.000000e+00, double %..i59 ; 3 uses
  %i.bw = fcmp ogt double %.sroa.0.0.i60, -1.000000e+00
  %i.bx = fcmp olt double %.sroa.0.0.i60, 6.553600e+04
  %or.cond.i.i61 = and i1 %i.bw, %i.bx
  %i.by = fptoui double %.sroa.0.0.i60 to i16
  br i1 %or.cond.i.i61, label %bb.i, label %.invoke, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.bz = fcmp ogt double %i.au, 2.550000e+02
  %..i64 = select i1 %i.bz, double 2.550000e+02, double %i.au ; 3 uses
  %i.ca = fcmp ogt double %..i64, -1.000000e+00
  %i.cb = fcmp olt double %..i64, 6.553600e+04
  %or.cond.i.i66 = and i1 %i.ca, %i.cb
  br i1 %or.cond.i.i66, label %bb.j, label %.invoke, !prof !12

.invoke:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.cc = phi ptr [ @19, %bb.h ], [ @18, %bb.g ], [ @17, %bb.f ], [ @20, %bb.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.cd = fptoui double %..i64 to i16
  %i.ce = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %i.cf = insertelement <4 x i16> %i.ce, i16 %i.bt, i64 1
  %i.cg = insertelement <4 x i16> %i.cf, i16 %i.by, i64 2
  %i.ch = insertelement <4 x i16> %i.cg, i16 %i.cd, i64 3
  store <4 x i16> %i.ch, ptr %i.ao, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp uge i32 %i.al, %.sroa.15.0.copyload ; 2 uses
  %i.ci = zext i1 %.not to i32
  %spec.select = add i32 %spec.select82, %i.ci
  %spec.select75 = select i1 %.not, i32 0, i32 %i.al
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.an
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.loopexit.split-lp85
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = sitofp i32 %2 to double
  %i.e = fmul nnan double %i.d, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 8 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 6 uses
  %i.f = fmul double %cos, 7.870000e-01
  %i.g = fadd double %i.f, 2.130000e-01
  %i.h = fmul double %sin, 2.130000e-01
  %i.i = fsub double %i.g, %i.h
  %i.j = fmul double %cos, 7.150000e-01
  %i.k = fsub double 7.150000e-01, %i.j           ; 2 uses
  %i.l = fmul double %sin, 7.150000e-01           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.o = fsub double f0x3FB26E978D4FDF3B, %i.n    ; 2 uses
  %i.p = fmul double %sin, 9.280000e-01
  %i.q = fadd double %i.p, %i.o
  %i.r = fmul double %cos, 2.130000e-01
  %i.s = fsub double 2.130000e-01, %i.r           ; 2 uses
  %i.t = fmul double %sin, 1.430000e-01
  %i.u = fadd double %i.t, %i.s
  %i.v = fmul double %cos, 2.850000e-01
  %i.w = fadd double %i.v, 7.150000e-01
  %i.x = fmul double %sin, 1.400000e-01
  %i.y = fadd double %i.x, %i.w
  %i.z = fmul double %sin, 2.830000e-01
  %i.aa = fsub double %i.o, %i.z
  %i.ab = fmul double %sin, 7.870000e-01
  %i.ac = fsub double %i.s, %i.ab
  %i.ad = fadd double %i.l, %i.k
  %i.ae = fmul double %cos, 9.280000e-01
  %i.af = fadd double %i.ae, f0x3FB26E978D4FDF3B
  %i.ag = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.ah = fadd double %i.ag, %i.af
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color5LumaAhEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %.invoke, %bb.a
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i76 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i76, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not73 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select7275 = select i1 %.not73, i32 0, i32 %.sroa.8.0.copyload
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.ak = zext i1 %.not73 to i32
  %spec.select74 = add i32 %.sroa.12.0.copyload, %i.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %spec.select7280 = phi i32 [ %spec.select72, %bb.i ], [ %spec.select7275, %.lr.ph.preheader ] ; 2 uses
  %spec.select79 = phi i32 [ %spec.select, %bb.i ], [ %spec.select74, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.078 = phi ptr [ %i.am, %bb.i ], [ %.sroa.3.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.077 = phi i64 [ %i.an, %bb.i ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %i.al = add nuw i32 %spec.select7280, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.078) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.3.078, i64 %.sroa.7.0.copyload
  %i.an = sub nuw i64 %.sroa.5.077, %.sroa.7.0.copyload ; 2 uses
  %i.ao = invoke noundef nonnull ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel14from_slice_mutB8_(ptr noalias nofree noundef nonnull %.sroa.3.078, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color5LumaAhEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color5LumaAhEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = invoke noundef i16 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select7280, i32 noundef %spec.select79)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color5LumaAhEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  store i16 %i.ap, ptr %i.a, align 2
  %i.aq = invoke noundef i32 @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel9channels4B8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.046.0.extract.trunc = trunc i32 %i.aq to i8
  %.sroa.447.0.extract.shift = lshr i32 %i.aq, 8
  %.sroa.447.0.extract.trunc = trunc i32 %.sroa.447.0.extract.shift to i8
  %.sroa.548.0.extract.shift = lshr i32 %i.aq, 16
  %.sroa.548.0.extract.trunc = trunc i32 %.sroa.548.0.extract.shift to i8
  %i.ar = uitofp i8 %.sroa.046.0.extract.trunc to double ; 3 uses
  %i.as = uitofp i8 %.sroa.447.0.extract.trunc to double ; 3 uses
  %i.at = uitofp i8 %.sroa.548.0.extract.trunc to double ; 3 uses
  %i.au = fmul double %i.i, %i.ar
  %i.av = fmul double %i.m, %i.as
  %i.aw = fadd double %i.au, %i.av
  %i.ax = fmul double %i.q, %i.at
  %i.ay = fadd double %i.ax, %i.aw                ; 3 uses
  %i.az = fmul double %i.ac, %i.ar
  %i.ba = fmul double %i.ad, %i.as
  %i.bb = fadd double %i.az, %i.ba
  %i.bc = fmul double %i.ah, %i.at
  %i.bd = fadd double %i.bc, %i.bb                ; 3 uses
  %i.be = fcmp olt double %i.ay, 0.000000e+00
  %i.bf = fcmp ogt double %i.ay, 2.550000e+02
  %..i = select i1 %i.bf, double 2.550000e+02, double %i.ay
  %.sroa.0.0.i53 = select i1 %i.be, double 0.000000e+00, double %..i ; 3 uses
  %i.bg = fcmp ogt double %.sroa.0.0.i53, -1.000000e+00
  %i.bh = fcmp olt double %.sroa.0.0.i53, 2.560000e+02
  %or.cond.i.i = and i1 %i.bg, %i.bh
  %i.bi = fptoui double %.sroa.0.0.i53 to i8
  br i1 %or.cond.i.i, label %bb.g, label %.invoke, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bj = fmul double %i.u, %i.ar
  %i.bk = fmul double %i.y, %i.as
  %i.bl = fadd double %i.bj, %i.bk
  %i.bm = fmul double %i.aa, %i.at
  %i.bn = fadd double %i.bm, %i.bl                ; 3 uses
  %i.bo = fcmp olt double %i.bn, 0.000000e+00
  %i.bp = fcmp ogt double %i.bn, 2.550000e+02
  %..i54 = select i1 %i.bp, double 2.550000e+02, double %i.bn
  %.sroa.0.0.i55 = select i1 %i.bo, double 0.000000e+00, double %..i54 ; 3 uses
  %i.bq = fcmp ogt double %.sroa.0.0.i55, -1.000000e+00
  %i.br = fcmp olt double %.sroa.0.0.i55, 2.560000e+02
  %or.cond.i.i56 = and i1 %i.bq, %i.br
  %i.bs = fptoui double %.sroa.0.0.i55 to i8
  br i1 %or.cond.i.i56, label %bb.h, label %.invoke, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.bt = fcmp olt double %i.bd, 0.000000e+00
  %i.bu = fcmp ogt double %i.bd, 2.550000e+02
  %..i58 = select i1 %i.bu, double 2.550000e+02, double %i.bd
  %.sroa.0.0.i59 = select i1 %i.bt, double 0.000000e+00, double %..i58 ; 2 uses
  %i.bv = fcmp ogt double %.sroa.0.0.i59, -1.000000e+00
  %i.bw = fcmp olt double %.sroa.0.0.i59, 2.560000e+02
  %or.cond.i.i60 = and i1 %i.bv, %i.bw
  br i1 %or.cond.i.i60, label %bb.i, label %.invoke, !prof !12

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f
  %i.bx = phi ptr [ @18, %bb.g ], [ @17, %bb.f ], [ @19, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %.sroa.01.0.insert.ext.i = zext i8 %i.bi to i16
  %.sroa.01.1.insert.ext.i = zext i8 %i.bs to i16
  %.sroa.01.1.insert.shift.i = shl nuw i16 %.sroa.01.1.insert.ext.i, 8
  %.sroa.01.1.insert.insert.i = or disjoint i16 %.sroa.01.1.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i16 %.sroa.01.1.insert.insert.i, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp uge i32 %i.al, %.sroa.15.0.copyload ; 2 uses
  %i.by = zext i1 %.not to i32
  %spec.select = add i32 %spec.select79, %i.by
  %spec.select72 = select i1 %.not, i32 0, i32 %i.al
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.an
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.loopexit.split-lp82
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops9huerotateINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = sitofp i32 %2 to double
  %i.e = fmul nnan double %i.d, f0x3F91DF46A2529D39
  %sincos = call { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 8 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 6 uses
  %i.f = fmul double %cos, 7.870000e-01
  %i.g = fadd double %i.f, 2.130000e-01
  %i.h = fmul double %sin, 2.130000e-01
  %i.i = fsub double %i.g, %i.h
  %i.j = fmul double %cos, 7.150000e-01
  %i.k = fsub double 7.150000e-01, %i.j           ; 2 uses
  %i.l = fmul double %sin, 7.150000e-01           ; 2 uses
  %i.m = fsub double %i.k, %i.l
  %i.n = fmul double %cos, f0x3FB26E978D4FDF3B
  %i.o = fsub double f0x3FB26E978D4FDF3B, %i.n    ; 2 uses
  %i.p = fmul double %sin, 9.280000e-01
  %i.q = fadd double %i.p, %i.o
  %i.r = fmul double %cos, 2.130000e-01
  %i.s = fsub double 2.130000e-01, %i.r           ; 2 uses
  %i.t = fmul double %sin, 1.430000e-01
  %i.u = fadd double %i.t, %i.s
  %i.v = fmul double %cos, 2.850000e-01
  %i.w = fadd double %i.v, 7.150000e-01
  %i.x = fmul double %sin, 1.400000e-01
  %i.y = fadd double %i.x, %i.w
  %i.z = fmul double %sin, 2.830000e-01
  %i.aa = fsub double %i.o, %i.z
  %i.ab = fmul double %sin, 7.870000e-01
  %i.ac = fsub double %i.s, %i.ab
  %i.ad = fadd double %i.l, %i.k
  %i.ae = fmul double %cos, 9.280000e-01
  %i.af = fadd double %i.ae, f0x3FB26E978D4FDF3B
  %i.ag = fmul double %sin, f0x3FB26E978D4FDF3B
  %i.ah = fadd double %i.ag, %i.af
  invoke void @_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE20enumerate_pixels_mutB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e, %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color5LumaAtEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit, %.invoke, %bb.a
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.not.i79 = icmp ugt i64 %.sroa.7.0.copyload, %.sroa.5.0.copyload
  br i1 %.not.i79, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not76 = icmp uge i32 %.sroa.8.0.copyload, %.sroa.15.0.copyload ; 2 uses
  %spec.select7578 = select i1 %.not76, i32 0, i32 %.sroa.8.0.copyload
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.ak = zext i1 %.not76 to i32
  %spec.select77 = add i32 %.sroa.12.0.copyload, %i.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %spec.select7583 = phi i32 [ %spec.select75, %bb.j ], [ %spec.select7578, %.lr.ph.preheader ] ; 2 uses
  %spec.select82 = phi i32 [ %spec.select, %bb.j ], [ %spec.select77, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.081 = phi ptr [ %i.am, %bb.j ], [ %.sroa.3.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.080 = phi i64 [ %i.an, %bb.j ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %i.al = add nuw i32 %spec.select7583, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.081) ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.081, i64 %.sroa.7.0.copyload
  %i.an = sub nuw i64 %.sroa.5.080, %.sroa.7.0.copyload ; 2 uses
  %i.ao = invoke noundef nonnull align 2 ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAtENtNtB8_6traits5Pixel14from_slice_mutB8_(ptr noalias nofree noundef nonnull align 2 %.sroa.3.081, i64 noundef %.sroa.7.0.copyload)
          to label %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color5LumaAtEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color5LumaAtEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = invoke noundef i32 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %spec.select7583, i32 noundef %spec.select82)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.j, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %_RNvXs3_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_9PixelsMutINtNtB9_5color5LumaAtEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_.exit
  store i32 %i.ap, ptr %i.a, align 4
  %i.aq = invoke noundef i64 @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAtENtNtB8_6traits5Pixel9channels4B8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.046.0.extract.trunc = trunc i64 %i.aq to i16
  %.sroa.447.0.extract.shift = lshr i64 %i.aq, 16
  %.sroa.447.0.extract.trunc = trunc i64 %.sroa.447.0.extract.shift to i16
  %.sroa.548.0.extract.shift = lshr i64 %i.aq, 32
  %.sroa.548.0.extract.trunc = trunc i64 %.sroa.548.0.extract.shift to i16
  %.sroa.649.0.extract.shift = lshr i64 %i.aq, 48
  %.sroa.649.0.extract.trunc = trunc nuw i64 %.sroa.649.0.extract.shift to i16
  %i.ar = uitofp i16 %.sroa.046.0.extract.trunc to double ; 3 uses
  %i.as = uitofp i16 %.sroa.447.0.extract.trunc to double ; 3 uses
  %i.at = uitofp i16 %.sroa.548.0.extract.trunc to double ; 3 uses
  %i.au = uitofp i16 %.sroa.649.0.extract.trunc to double ; 2 uses
  %i.av = fmul double %i.i, %i.ar
  %i.aw = fmul double %i.m, %i.as
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fmul double %i.q, %i.at
  %i.az = fadd double %i.ay, %i.ax                ; 3 uses
  %i.ba = fmul double %i.ac, %i.ar
  %i.bb = fmul double %i.ad, %i.as
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.ah, %i.at
  %i.be = fadd double %i.bd, %i.bc                ; 3 uses
  %i.bf = fcmp olt double %i.az, 0.000000e+00
  %i.bg = fcmp ogt double %i.az, 2.550000e+02
  %..i = select i1 %i.bg, double 2.550000e+02, double %i.az
  %.sroa.0.0.i53 = select i1 %i.bf, double 0.000000e+00, double %..i ; 3 uses
  %i.bh = fcmp ogt double %.sroa.0.0.i53, -1.000000e+00
  %i.bi = fcmp olt double %.sroa.0.0.i53, 6.553600e+04
  %or.cond.i.i = and i1 %i.bh, %i.bi
  %i.bj = fptoui double %.sroa.0.0.i53 to i16
  br i1 %or.cond.i.i, label %bb.g, label %.invoke, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.bk = fmul double %i.u, %i.ar
  %i.bl = fmul double %i.y, %i.as
  %i.bm = fadd double %i.bk, %i.bl
  %i.bn = fmul double %i.aa, %i.at
  %i.bo = fadd double %i.bn, %i.bm                ; 3 uses
  %i.bp = fcmp olt double %i.bo, 0.000000e+00
  %i.bq = fcmp ogt double %i.bo, 2.550000e+02
  %..i54 = select i1 %i.bq, double 2.550000e+02, double %i.bo
  %.sroa.0.0.i55 = select i1 %i.bp, double 0.000000e+00, double %..i54 ; 3 uses
  %i.br = fcmp ogt double %.sroa.0.0.i55, -1.000000e+00
  %i.bs = fcmp olt double %.sroa.0.0.i55, 6.553600e+04
  %or.cond.i.i56 = and i1 %i.br, %i.bs
  %i.bt = fptoui double %.sroa.0.0.i55 to i16
  br i1 %or.cond.i.i56, label %bb.h, label %.invoke, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.bu = fcmp olt double %i.be, 0.000000e+00
  %i.bv = fcmp ogt double %i.be, 2.550000e+02
  %..i59 = select i1 %i.bv, double 2.550000e+02, double %i.be
  %.sroa.0.0.i60 = select i1 %i.bu, double 0.000000e+00, double %..i59 ; 2 uses
  %i.bw = fcmp ogt double %.sroa.0.0.i60, -1.000000e+00
  %i.bx = fcmp olt double %.sroa.0.0.i60, 6.553600e+04
  %or.cond.i.i61 = and i1 %i.bw, %i.bx
  br i1 %or.cond.i.i61, label %bb.i, label %.invoke, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.by = fcmp ogt double %i.au, 2.550000e+02
  %..i64 = select i1 %i.by, double 2.550000e+02, double %i.au ; 2 uses
  %i.bz = fcmp ogt double %..i64, -1.000000e+00
  %i.ca = fcmp olt double %..i64, 6.553600e+04
  %or.cond.i.i66 = and i1 %i.bz, %i.ca
  br i1 %or.cond.i.i66, label %bb.j, label %.invoke, !prof !12

.invoke:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.cb = phi ptr [ @19, %bb.h ], [ @18, %bb.g ], [ @17, %bb.f ], [ @20, %bb.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %.sroa.01.0.insert.ext.i = zext i16 %i.bj to i32
  %.sroa.01.2.insert.ext.i = zext i16 %i.bt to i32
  %.sroa.01.2.insert.shift.i = shl nuw i32 %.sroa.01.2.insert.ext.i, 16
  %.sroa.01.2.insert.insert.i = or disjoint i32 %.sroa.01.2.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i32 %.sroa.01.2.insert.insert.i, ptr %i.ao, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp uge i32 %i.al, %.sroa.15.0.copyload ; 2 uses
  %i.cc = zext i1 %.not to i32
  %spec.select = add i32 %spec.select82, %i.cc
  %spec.select75 = select i1 %.not, i32 0, i32 %i.al
  %.not.i = icmp ugt i64 %.sroa.7.0.copyload, %i.an
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.loopexit.split-lp85
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazy7destroyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB19_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECsa5QsYiPB8Gl_5image(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !4
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsaKJjC64KgbL_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !979, !noundef !4 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtNtCsaKJjC64KgbL_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !980
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtNtCsaKJjC64KgbL_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsa5QsYiPB8Gl_5image.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #32
          to label %_RINvNtNtCsaKJjC64KgbL_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsa5QsYiPB8Gl_5image.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsaKJjC64KgbL_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop() #35
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtNtCsaKJjC64KgbL_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB9_25ParallelBlockDecompressorINtB9_22OnProgressChunksReaderINtB9_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuEE3new00Csa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readnone captures(none) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @21, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs2_NtCsvKatKEpids_3gif6readerINtB7_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE16read_into_buffer0Csa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !30, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !994
  call void @_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE11decode_nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #32, !noalias !993
  %i.d = load i64, ptr %i.b, align 8, !range !11, !noalias !994, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.034.0.copyload.i = load i8, ptr %i.f, align 8, !noalias !994 ; 6 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.439.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.435.0..sroa_idx.i, i64 7, i1 false), !noalias !995
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !994
  store i8 %.sroa.034.0.copyload.i, ptr %0, align 8, !alias.scope !993
  store <2 x i64> %i.g, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !993
  br label %_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17decode_next_bytesCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.528.0.copyload.i = load i64, ptr %.sroa.528.0..sroa_idx.i, align 8, !noalias !994 ; 3 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.629.0.copyload.i = load i64, ptr %.sroa.629.0..sroa_idx.i, align 8, !noalias !994 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !994
  switch i8 %.sroa.034.0.copyload.i, label %bb.d [
    i8 9, label %bb.e
    i8 7, label %.thread42.i
  ], !prof !34

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !994
  invoke void @_RNvMs0_NtNtCsvKatKEpids_3gif6reader7decoderNtB5_13DecodingError6format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 15)
          to label %bb.f unwind label %bb.i, !noalias !993

bb.e:                                             ; preds = %bb.c
  br label %.thread42.i

.thread42.i:                                      ; preds = %bb.e, %bb.c
  %.sroa.528.0.copyload.sink.i = phi i64 [ 0, %bb.e ], [ %.sroa.528.0.copyload.i, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.528.0.copyload.sink.i, ptr %i.h, align 8, !alias.scope !993
  store i64 -1, ptr %0, align 8, !alias.scope !993
  br label %_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17decode_next_bytesCsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !994
  %i.i = icmp eq i8 %.sroa.034.0.copyload.i, -1
  br i1 %i.i, label %_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17decode_next_bytesCsa5QsYiPB8Gl_5image.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = icmp ne i8 %.sroa.034.0.copyload.i, 1
  %i.k = icmp eq i64 %.sroa.629.0.copyload.i, 0
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i, label %_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17decode_next_bytesCsa5QsYiPB8Gl_5image.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = inttoptr i64 %.sroa.528.0.copyload.i to ptr
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef range(i64 1, 0) %.sroa.629.0.copyload.i, i64 noundef 1) #33, !noalias !996
  br label %_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17decode_next_bytesCsa5QsYiPB8Gl_5image.exit

bb.i:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i8 %.sroa.034.0.copyload.i, -1
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedEECsa5QsYiPB8Gl_5image.exit4.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = icmp ne i8 %.sroa.034.0.copyload.i, 1
  %i.p = icmp eq i64 %.sroa.629.0.copyload.i, 0
  %or.cond43.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond43.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedEECsa5QsYiPB8Gl_5image.exit4.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = inttoptr i64 %.sroa.528.0.copyload.i to ptr
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %.sroa.629.0.copyload.i, i64 noundef 1) #33, !noalias !997
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedEECsa5QsYiPB8Gl_5image.exit4.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedEECsa5QsYiPB8Gl_5image.exit4.i: ; preds = %bb.k, %bb.j, %bb.i
  resume { ptr, i32 } %i.m

_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17decode_next_bytesCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %.thread42.i, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNCNvMs9_NtNtCsdsTQD3x2eOp_3exr5block6readerINtBe_25ParallelBlockDecompressorINtBe_22OnProgressChunksReaderINtBe_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuEE3new00INtNtNtB2n_3ops8function6FnOnceTjEE9call_once6vtableCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1002
  store i64 %2, ptr %i.b, align 8, !noalias !1003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1003
  store ptr %i.b, ptr %i.a, align 8, !noalias !1003
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1003
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @21, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1003
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBP_14AttributeValueNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertCsa5QsYiPB8Gl_5image:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ar, ptr noundef nonnull align 8 dereferenceable(352) %3, i64 352, i1 false)
  tail call void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.as, ptr noundef nonnull align 8 dereferenceable(352) %3, i64 352, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.at = load ptr, ptr %1, align 8, !alias.scope !1276, !nonnull !4, !noundef !4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !noalias !1277, !noundef !4
  %i.aw = and i8 %i.av, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ba = load i64, ptr %i.d, align 8, !alias.scope !1276, !noundef !4
  %i.bb = and i64 %i.ba, %i.az
  store i8 %i.f, ptr %i.au, align 1, !noalias !1277
  %i.bc = getelementptr i8, ptr %i.at, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store i8 %i.f, ptr %i.bd, align 1, !noalias !1277
  %i.be = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !1276
  %i.bf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ax, i64 0
  %i.bg = sub <2 x i64> %i.be, %i.bf
  store <2 x i64> %i.bg, ptr %i.ay, align 8, !alias.scope !1276
  %i.bh = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bi = getelementptr inbounds [392 x i8], ptr %i.at, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(392) %i.a, i64 392, i1 false), !noalias !1276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  %lpad.loopexit.split-lp20 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(352) %3) #30
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

.critedge:                                        ; preds = %bb.m
  resume { ptr, i32 } %lpad.loopexit.split-lp20

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %.critedge unwind label %bb.l
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE11decode_nextCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(264) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.9.sroa.8 = alloca [6 x i8], align 2      ; 6 uses
  %.sroa.933 = alloca [6 x i8], align 2           ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.415.sroa.7.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre = load i64, ptr %i.g, align 8, !alias.scope !1282
  %.pre74 = load i64, ptr %i.h, align 8, !alias.scope !1282
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27
  %i.p = phi i64 [ %.pre74, %.lr.ph ], [ %i.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27 ] ; 2 uses
  %i.q = phi i64 [ %.pre, %.lr.ph ], [ %..i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %.not.i = icmp ult i64 %i.q, %i.p
  %.pre.i = load ptr, ptr %i.f, align 8, !alias.scope !1282 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1283
  %i.r = load i64, ptr %i.j, align 8, !alias.scope !1282, !noundef !4
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !1283
  store i64 %i.r, ptr %i.k, align 8, !noalias !1283
  store i64 0, ptr %i.l, align 8, !noalias !1283
  %i.s = load i8, ptr %i.n, align 8, !range !5, !alias.scope !1282, !noundef !4
  store i8 %i.s, ptr %i.m, align 8, !noalias !1283
  %i.t = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1284 ; 2 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !1282
  %i.u = load i64, ptr %i.l, align 8, !noalias !1283, !noundef !4 ; 2 uses
  store i64 %i.u, ptr %i.h, align 8, !alias.scope !1282
  %i.v = load i8, ptr %i.m, align 8, !range !5, !noalias !1283, !noundef !4
  store i8 %i.v, ptr %i.n, align 8, !alias.scope !1282
  %.not3.i = icmp eq ptr %i.t, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1283
  br i1 %.not3.i, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit, label %.loopexit

_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %bb.b
  %i.w = phi i64 [ %i.p, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.x = phi i64 [ %i.q, %bb.b ], [ 0, %bb.c ]    ; 3 uses
  %i.y = sub nuw i64 %i.w, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.x
  %i.aa = icmp eq ptr %.pre.i, null
  br i1 %i.aa, label %.loopexit.loopexit, label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27.thread, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.ab, align 8
  store i64 0, ptr %0, align 8
  br label %bb.j

.loopexit.loopexit:                               ; preds = %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit
  %i.ac = inttoptr i64 %i.y to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.loopexit
  %.sroa.6.060 = phi ptr [ %i.ac, %.loopexit.loopexit ], [ %i.t, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.ad, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.060, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.d:                                             ; preds = %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit
  %i.ae = icmp eq i64 %i.w, %i.x
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs9_NtNtCsvKatKEpids_3gif6reader7decoderNtB5_16StreamingDecoder6update(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.af = load i64, ptr %i.b, align 8, !range !11, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  %.sroa.018.0.copyload = load i64, ptr %i.o, align 8 ; 2 uses
  %.sroa.419.sroa.0.0.copyload = load i8, ptr %.sroa.415.0..sroa_idx, align 8 ; 3 uses
  %.sroa.419.sroa.4.0.copyload = load i8, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 1 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.9.sroa.8, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, i64 6, i1 false)
  %.sroa.419.sroa.6.0.copyload = load ptr, ptr %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.ah, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.9.sroa.8, i64 6, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.018.0.copyload, ptr %i.ai, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.419.sroa.0.0.copyload, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.419.sroa.4.0.copyload, ptr %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.419.sroa.6.0.copyload, ptr %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.8)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %.sroa.415.sroa.7.0.copyload = load i64, ptr %.sroa.415.sroa.7.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.933)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.933, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.9.sroa.8, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.8)
  %i.aj = load i64, ptr %i.g, align 8, !noundef !4
  %i.ak = add i64 %i.aj, %.sroa.018.0.copyload
  %i.al = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.al, i64 %i.ak) ; 2 uses
  store i64 %..i, ptr %i.g, align 8
  switch i8 %.sroa.419.sroa.0.0.copyload, label %.loopexit79 [
    i8 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27
    i8 4, label %bb.i
  ]

.loopexit79:                                      ; preds = %bb.h, %bb.i
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.933, i64 6, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.419.sroa.0.0.copyload, ptr %i.am, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.419.sroa.4.0.copyload, ptr %.sroa.445.0..sroa_idx, align 1
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.419.sroa.6.0.copyload, ptr %.sroa.647.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.415.sroa.7.0.copyload, ptr %.sroa.748.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.933)
  br label %bb.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27: ; preds = %bb.h
  %.pre75 = load i8, ptr %i.c, align 8, !range !5
  %i.an = trunc nuw i8 %.pre75 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.933)
  br i1 %i.an, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i8 %.sroa.419.sroa.4.0.copyload, 59
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27.thread, label %.loopexit79

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder7DecodedECsa5QsYiPB8Gl_5image.exit27.thread: ; preds = %bb.i
  store i8 1, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.933)
  br label %._crit_edge

bb.j:                                             ; preds = %.loopexit, %bb.f, %bb.g, %.loopexit79, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.715 = alloca [16 x i8], align 8          ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %_RNCNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0Csa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCsaKJjC64KgbL_3std3env3varReECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 17)
  %i.i = load i64, ptr %i.f, align 8, !range !11, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %.thread63, label %bb.c

.thread63:                                        ; preds = %bb.b
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std3env8VarErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.017.0.copyload = load i64, ptr %i.k, align 8 ; 2 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.418.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not27 = icmp eq i64 %.sroa.017.0.copyload, -1
  br i1 %.not27, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store i64 %.sroa.017.0.copyload, ptr %i.d, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.l = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !1301, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1301, !noundef !4 ; 2 uses
  switch i64 %i.n, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.l, align 1, !alias.scope !1302, !noalias !1301, !noundef !4 ; 2 uses
  switch i8 %i.o, label %bb.f [
    i8 43, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i8 45, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.d
  %.pr.i.i = load i8, ptr %i.l, align 1, !alias.scope !1302, !noalias !1301
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i, %bb.e
  %i.p = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.o, %bb.e ]
  %cond.i.i = icmp eq i8 %i.p, 43                 ; 2 uses
  %i.q = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.n, %i.q        ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.r, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.f
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i106, i64 1
  %i.t = add nsw i64 %.sroa.15.1.i.i105, -1       ; 2 uses
  %.not52.i.not.i = icmp eq i64 %i.t, 0
  br i1 %.not52.i.not.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.f, %.preheader56.i.i
  %.sroa.0.1.i.i106 = phi ptr [ %i.s, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.f ] ; 2 uses
  %.sroa.15.1.i.i105 = phi i64 [ %i.t, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.f ]
  %.sroa.042.0.i.i104 = phi i64 [ %i.ac, %.preheader56.i.i ], [ 0, %bb.f ]
  %i.u = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i104, i64 10) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %.preheader56.i.i.preheader
  %i.w = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %i.x = load i8, ptr %.sroa.0.1.i.i106, align 1, !alias.scope !1302, !noalias !1301, !noundef !4
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 9
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = add i64 %i.w, %i.ab                     ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %i.w
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ad, !prof !1303
  br i1 %or.cond.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i, !prof !1303

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.h
  %.sroa.0.269.i.i = phi ptr [ %i.ak, %bb.h ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.aj, %bb.h ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.am, %bb.h ], [ 0, %.preheader.i.i ]
  %i.ae = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !1302, !noalias !1301, !noundef !4
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 10                  ; 3 uses
  br i1 %i.ah, label %bb.h, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ai = mul i64 %.sroa.042.267.i.i, 10
  %i.aj = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = add i64 %i.ai, %i.al                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.g, %.preheader56.i.i.preheader, %.preheader56.i.i, %bb.h, %.lr.ph.i.i, %.preheader.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i ], [ %i.am, %bb.h ], [ undef, %bb.g ], [ undef, %.preheader56.i.i.preheader ], [ %i.ac, %.preheader56.i.i ] ; 2 uses
  %not..sink.i.i = phi i1 [ false, %bb.e ], [ true, %.preheader.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ %i.ah, %bb.h ], [ %i.ah, %.lr.ph.i.i ], [ false, %bb.g ], [ false, %.preheader56.i.i.preheader ], [ true, %.preheader56.i.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNCNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Csa5QsYiPB8Gl_5image.exit unwind label %bb.i

bb.i:                                             ; preds = %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.cf, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Csa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br i1 %not..sink.i.i, label %bb.m, label %bb.l

bb.k:                                             ; preds = %.thread63, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Csa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvNtCsaKJjC64KgbL_3std3env3varReECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 17)
  %i.ap = load i64, ptr %i.e, align 8, !range !11, !noundef !4
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %.thread70, label %bb.r

bb.m:                                             ; preds = %_RNCNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Csa5QsYiPB8Gl_5image.exit
  %.not29 = icmp eq i64 %.sroa.102.0.i, 0
  br i1 %.not29, label %bb.n, label %_RNCNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0Csa5QsYiPB8Gl_5image.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = call { i64, ptr } @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions21available_parallelism() ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = extractvalue { i64, ptr } %i.ar, 1      ; 4 uses
  %i.au = trunc nuw i64 %i.as to i1
end_hunk_1
