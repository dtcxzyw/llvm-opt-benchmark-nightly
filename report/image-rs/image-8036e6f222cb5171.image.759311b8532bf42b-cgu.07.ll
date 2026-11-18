Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.07?download=true
inline.NumInlined: 1778
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEB6_:bb.a
  br i1 %exitcond177.not.i, label %.loopexit90.i, label %.lr.ph137.i

bb.s:                                             ; preds = %.lr.ph130.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !72
  invoke void @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbfENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.n)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

bb.t:                                             ; preds = %bb.s
  %i.dl = load <4 x float>, ptr %i.m, align 16, !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !72
  %i.dm = load float, ptr %.sroa.0.0124.i, align 4, !noalias !73, !noundef !4
  %i.dn = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul <4 x float> %i.dl, %i.do
  %i.dq = fadd <4 x float> %i.cp, %i.dp           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !72
  %i.dr = icmp eq ptr %i.cq, %i.cm
  br i1 %i.dr, label %._crit_edge131.i, label %.lr.ph130.i

bb.u:                                             ; preds = %bb.n
  %i.ds = load i64, ptr %i.ai, align 8, !alias.scope !77, !noalias !72, !noundef !4 ; 4 uses
  %i.dt = load i64, ptr %i.o, align 8, !range !5, !alias.scope !77, !noalias !72, !noundef !4
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dv = load ptr, ptr %i.ah, align 8, !alias.scope !77, !noalias !72, !nonnull !4, !noundef !4
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ds
  store float %i.cf, ptr %i.dw, align 4, !noalias !73
  %i.dx = add i64 %i.ds, 1                        ; 3 uses
  store i64 %i.dx, ptr %i.ai, align 8, !alias.scope !77, !noalias !72
  %i.dy = fadd float %.sroa.03.0119.i, %i.cf      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.cb, %i.bn
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i, %bb.k
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body58.i

.body58.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !73
  unreachable

.thread75.i:                                      ; preds = %bb.k, %bb.f, %.thread81.i
  %.pn74.i = phi { ptr, i32 } [ %i.af, %bb.f ], [ %lpad.thr_comm.i, %.thread81.i ], [ %lpad.loopexit.split-lp475, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i unwind label %bb.y, !noalias !73

bb.y:                                             ; preds = %.thread75.i
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.body58.i unwind label %bb.z, !noalias !73

bb.z:                                             ; preds = %bb.y
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !73
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i: ; preds = %.thread75.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.body17 unwind label %bb.x, !noalias !73

.body17:                                          ; preds = %bb.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i, %bb.h, %bb.aa, %.body46
  %.pn = phi { ptr, i32 } [ %eh.lpad-body47, %.body46 ], [ %.pn74.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i ], [ %i.av, %bb.h ], [ %i.ec, %bb.aa ], [ %i.jf, %bb.be ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load419) #18
          to label %common.resume unwind label %bb.bl

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i48, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !72
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !alias.scope !78, !noundef !4 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.eg = load i32, ptr %i.ef, align 4, !alias.scope !78, !noundef !4 ; 4 uses
  %i.eh = icmp ne i32 %i.ee, 0
  %i.ei = icmp eq i32 %i.eg, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.eh, %i.ei
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc43 unwind label %bb.bc

.noexc43:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.aw, %bb.ak, %.invoke.i, %.invoke268.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !79

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !79

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.az unwind label %bb.ay, !noalias !79

bb.af:                                            ; preds = %bb.ad
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !79
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !79
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.eg)
          to label %.noexc44 unwind label %bb.bc

.noexc44:                                         ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.el, i64 3, i1 false), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !79
  store i64 0, ptr %i.h, align 8, !noalias !79
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.en, align 8, !noalias !79
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eo, align 8, !noalias !79
  %i.ep = uitofp i32 %i.ee to float
  %i.eq = uitofp i32 %2 to float
  %i.er = fdiv float %i.ep, %i.eq                 ; 3 uses
  %i.es = fcmp olt float %i.er, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.es, float 1.000000e+00, float %i.er ; 2 uses
  %i.et = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not157.i = icmp eq i32 %2, 0
  br i1 %.not157.i, label %._crit_edge156.i, label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %.noexc44
  %i.eu = zext i32 %i.ee to i64                   ; 3 uses
  %i.ev = add nsw i64 %i.eu, -1
  %i.ew = getelementptr inbounds nuw i8, ptr %switch.load419, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val15.i.i20 = load i64, ptr %i.ex, align 8, !alias.scope !78 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.i21 = load ptr, ptr %i.ey, align 8, !alias.scope !78, !nonnull !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count216.i = zext i32 %2 to i64
  %wide.trip.count211.i = zext i32 %i.eg to i64
  br label %bb.aj

.loopexit90.i35:                                  ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond217.not.i = icmp eq i64 %indvars.iv.next214.i, %wide.trip.count216.i
  br i1 %exitcond217.not.i, label %._crit_edge156.i, label %bb.aj

._crit_edge156.i:                                 ; preds = %.loopexit90.i35, %.noexc44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !81
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit55.i unwind label %bb.ah, !noalias !79

bb.ah:                                            ; preds = %._crit_edge156.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body46 unwind label %bb.ai, !noalias !79

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit55.i: ; preds = %._crit_edge156.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bd unwind label %bb.bc

bb.ai:                                            ; preds = %bb.ah
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !79
  unreachable

bb.aj:                                            ; preds = %.loopexit90.i35, %.lr.ph155.i
  %indvars.iv213.i = phi i64 [ 0, %.lr.ph155.i ], [ %indvars.iv.next214.i, %.loopexit90.i35 ] ; 4 uses
  %indvars.iv.next214.i = add nuw nsw i64 %indvars.iv213.i, 1 ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv213.i to i32   ; 2 uses
  %i.fh = uitofp i32 %i.fg to float
  %i.fi = fadd nnan float %i.fh, 5.000000e-01
  %i.fj = fmul float %i.er, %i.fi                 ; 3 uses
  %i.fk = fsub float %i.fj, %i.et
  %i.fl = call float @llvm.floor.f32(float %i.fk)
  %i.fm = call i64 @llvm.fptosi.sat.i64.f32(float %i.fl) ; 2 uses
  %i.fn = icmp slt i64 %i.fm, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fm, i64 range(i64 -1, 4294967296) %i.ev)
  %.sroa.0.0.i.i23 = select i1 %i.fn, i64 0, i64 %..i.i22 ; 3 uses
  %i.fo = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fp = fadd float %i.et, %i.fj
  %i.fq = call float @llvm.ceil.f32(float %i.fp)
  %i.fr = call i64 @llvm.fptosi.sat.i64.f32(float %i.fq) ; 2 uses
  %i.fs = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.ft = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fr, %i.fs
  %..i56.i = call i64 @llvm.smin.i64(i64 %i.fr, i64 range(i64 -1, 4294967296) %i.eu)
  %.sroa.0.0.i57.i = select i1 %.not.i24, i64 %..i56.i, i64 %i.ft
  %i.fu = trunc i64 %.sroa.0.0.i57.i to i32       ; 2 uses
  %i.fv = fadd float %i.fj, -5.000000e-01
  store i64 0, ptr %i.eo, align 8, !noalias !79
  %i.fw = icmp ult i32 %i.fo, %i.fu
  br i1 %i.fw, label %.lr.ph.i38, label %.preheader.i25

.lr.ph.i38:                                       ; preds = %bb.aj
  %i.fx = load ptr, ptr %i.ew, align 8, !invariant.load !4, !noalias !79, !nonnull !4
  br label %bb.ak

._crit_edge.i40:                                  ; preds = %bb.ax
  %i.fy = load ptr, ptr %i.en, align 8, !noalias !79, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i41 = shl nuw nsw i64 %i.iz, 2
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx.i41
  %i.ga = icmp eq i64 %i.iz, 0
  br i1 %i.ga, label %.preheader.i25, label %.lr.ph139.i42.preheader

.lr.ph139.i42.preheader:                          ; preds = %._crit_edge.i40
  %i.gb = and i64 %i.iu, 4611686018427387903      ; 2 uses
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check404 = icmp samesign ult i64 %i.gb, 3
  br i1 %min.iters.check404, label %.lr.ph139.i42.preheader423, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph139.i42.preheader
  %n.vec406 = and i64 %i.gc, 9223372036854775804  ; 3 uses
  %i.gd = shl i64 %n.vec406, 2
  %i.ge = getelementptr i8, ptr %i.fy, i64 %i.gd
  %broadcast.splatinsert407 = insertelement <4 x float> poison, float %i.ja, i64 0
  %broadcast.splat408 = shufflevector <4 x float> %broadcast.splatinsert407, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph405
  %index410 = phi i64 [ 0, %vector.ph405 ], [ %index.next413, %vector.body409 ] ; 2 uses
  %i.gf = shl i64 %index410, 2
  %next.gep411 = getelementptr i8, ptr %i.fy, i64 %i.gf ; 2 uses
  %wide.load412 = load <4 x float>, ptr %next.gep411, align 4, !noalias !79
  %i.gg = fdiv <4 x float> %wide.load412, %broadcast.splat408
  store <4 x float> %i.gg, ptr %next.gep411, align 4, !noalias !79
  %index.next413 = add nuw i64 %index410, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next413, %n.vec406
  br i1 %i.gh, label %middle.block414, label %vector.body409, !llvm.loop !60

middle.block414:                                  ; preds = %vector.body409
  %cmp.n415 = icmp eq i64 %i.gc, %n.vec406
  br i1 %cmp.n415, label %.preheader.i25, label %.lr.ph139.i42.preheader423

.lr.ph139.i42.preheader423:                       ; preds = %.lr.ph139.i42.preheader, %middle.block414
  %.sroa.013.0137.i.ph = phi ptr [ %i.fy, %.lr.ph139.i42.preheader ], [ %i.ge, %middle.block414 ]
  br label %.lr.ph139.i42

bb.ak:                                            ; preds = %bb.ax, %.lr.ph.i38
  %.sroa.09.0136.i = phi float [ 0.000000e+00, %.lr.ph.i38 ], [ %i.ja, %bb.ax ]
  %.sroa.037.0135.i = phi i32 [ %i.fo, %.lr.ph.i38 ], [ %i.gi, %bb.ax ] ; 2 uses
  %i.gi = add nuw i32 %.sroa.037.0135.i, 1        ; 2 uses
  %i.gj = uitofp i32 %.sroa.037.0135.i to float
  %i.gk = fsub float %i.gj, %i.fv
  %i.gl = fdiv float %i.gk, %.sroa.05.0.i
  %i.gm = invoke noundef float %i.fx(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gl)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph139.i42, %middle.block414, %._crit_edge.i40, %bb.aj
  br i1 %i.ei, label %.loopexit90.i35, label %.lr.ph152.i

.lr.ph152.i:                                      ; preds = %.preheader.i25
  %i.gn = call i32 @llvm.usub.sat.i32(i32 %i.ee, i32 %i.fo)
  %wide.trip.count.i26 = zext i32 %i.gn to i64
  br label %bb.al

.lr.ph139.i42:                                    ; preds = %.lr.ph139.i42.preheader423, %.lr.ph139.i42
  %.sroa.013.0137.i = phi ptr [ %i.go, %.lr.ph139.i42 ], [ %.sroa.013.0137.i.ph, %.lr.ph139.i42.preheader423 ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.013.0137.i, i64 4 ; 2 uses
  %i.gp = load float, ptr %.sroa.013.0137.i, align 4, !noalias !79, !noundef !4
  %i.gq = fdiv float %i.gp, %i.ja
  store float %i.gq, ptr %.sroa.013.0137.i, align 4, !noalias !79
  %i.gr = icmp eq ptr %i.go, %i.fz
  br i1 %i.gr, label %.preheader.i25, label %.lr.ph139.i42, !llvm.loop !61

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i, %.lr.ph152.i
  %indvars.iv208.i = phi i64 [ 0, %.lr.ph152.i ], [ %indvars.iv.next209.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %i.gs = load ptr, ptr %i.en, align 8, !noalias !79, !nonnull !4, !noundef !4 ; 2 uses
  %i.gt = load i64, ptr %i.eo, align 8, !noalias !79, !noundef !4 ; 2 uses
  %.idx159.i = shl nuw nsw i64 %i.gt, 2
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx159.i
  %i.gv = icmp eq i64 %i.gt, 0
  br i1 %i.gv, label %._crit_edge147.i, label %.lr.ph146.i

.lr.ph146.i:                                      ; preds = %bb.al
  %i.gw = mul nuw i64 %indvars.iv208.i, %i.eu
  br label %bb.am

bb.am:                                            ; preds = %bb.au, %.lr.ph146.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph146.i ], [ %indvars.iv.next.i28, %bb.au ] ; 3 uses
  %.sroa.045.0144.i = phi float [ 0.000000e+00, %.lr.ph146.i ], [ %i.is, %bb.au ]
  %.sroa.0.0141.i = phi ptr [ %i.gs, %.lr.ph146.i ], [ %i.gy, %bb.au ] ; 2 uses
  %i.gx = phi <2 x float> [ zeroinitializer, %.lr.ph146.i ], [ %i.ip, %bb.au ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0141.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fo                          ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond207.not.i, label %bb.aq, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.gz = add nuw i64 %i.gw, %7
  %i.ha = shl i64 %i.gz, 2                        ; 4 uses
  %i.hb = or disjoint i64 %i.ha, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hb, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.ha
  %i.hd = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hc, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79

bb.ap:                                            ; preds = %bb.an
  %i.he = add i64 %i.ha, 4
  br label %.invoke268.i

bb.aq:                                            ; preds = %bb.am
  %i.hf = trunc nuw i64 %indvars.iv208.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !82
  store i32 %6, ptr %i.f, align 4, !noalias !82
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hf, ptr %i.hg, align 4, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !82
  store i32 %i.ee, ptr %i.e, align 4, !noalias !82
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.eg, ptr %i.hh, align 4, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82
  store ptr %i.f, ptr %i.d, align 8, !noalias !82
  br label %.invoke.i

._crit_edge147.i:                                 ; preds = %bb.au, %bb.al
  %.sroa.045.0.lcssa.i = phi float [ 0.000000e+00, %bb.al ], [ %i.is, %bb.au ] ; 3 uses
  %i.hi = phi <2 x float> [ zeroinitializer, %bb.al ], [ %i.ip, %bb.au ] ; 3 uses
  %i.hj = fcmp olt <2 x float> %i.hi, zeroinitializer
  %i.hk = fcmp ogt <2 x float> %i.hi, splat (float 1.000000e+00)
  %i.hl = select <2 x i1> %i.hk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.hi
  %i.hm = select <2 x i1> %i.hj, <2 x float> zeroinitializer, <2 x float> %i.hl
  %i.hn = fcmp olt float %.sroa.045.0.lcssa.i, 0.000000e+00
  %i.ho = fcmp ogt float %.sroa.045.0.lcssa.i, 1.000000e+00
  %..i65.i = select i1 %i.ho, float 1.000000e+00, float %.sroa.045.0.lcssa.i
  %.sroa.0.0.i66.i = select i1 %i.hn, float 0.000000e+00, float %..i65.i
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.hp = load i32, ptr %i.fa, align 8, !alias.scope !83, !noalias !79, !noundef !4 ; 2 uses
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = icmp samesign uge i64 %indvars.iv213.i, %i.hq
  %i.hs = load i32, ptr %i.fb, align 4, !alias.scope !83, !noalias !79 ; 2 uses
  %i.ht = zext i32 %i.hs to i64
  %i.hu = icmp samesign uge i64 %indvars.iv208.i, %i.ht
  %or.cond.i69.i = select i1 %i.hr, i1 true, i1 %i.hu, !prof !12
  br i1 %or.cond.i69.i, label %bb.at, label %bb.ar, !prof !12

bb.ar:                                            ; preds = %._crit_edge147.i
  %i.hv = mul nuw i64 %indvars.iv208.i, %i.hq
  %i.hw = add nuw i64 %i.hv, %indvars.iv213.i
  %i.hx = mul i64 %i.hw, 3                        ; 4 uses
  %i.hy = add i64 %i.hx, 3                        ; 2 uses
  %.val15.i70.i = load i64, ptr %i.fc, align 8, !alias.scope !83, !noalias !79, !noundef !4 ; 2 uses
  %i.hz = icmp ugt i64 %i.hx, -4
  %.not.i.i = icmp ugt i64 %i.hy, %.val15.i70.i
  %or.cond14.i.i = or i1 %i.hz, %.not.i.i
  br i1 %or.cond14.i.i, label %.invoke268.i, label %bb.as, !prof !12

bb.as:                                            ; preds = %bb.ar
  %.val.i71.i = load ptr, ptr %i.fd, align 8, !alias.scope !83, !noalias !79, !nonnull !4, !noundef !4
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.val.i71.i, i64 %i.hx
  %i.ib = invoke noundef nonnull align 4 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbfENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 4 %i.ia, i64 noundef 3)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79 ; 2 uses

.invoke268.i:                                     ; preds = %bb.ar, %bb.ap
  %i.ic = phi i64 [ %i.ha, %bb.ap ], [ %i.hx, %bb.ar ]
  %i.id = phi i64 [ %i.he, %bb.ap ], [ %i.hy, %bb.ar ]
  %i.ie = phi i64 [ %.val15.i.i20, %bb.ap ], [ %.val15.i70.i, %bb.ar ]
  %i.if = phi ptr [ @9, %bb.ap ], [ @8, %bb.ar ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ic, i64 noundef %i.id, i64 noundef %i.ie, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.if) #19
          to label %.cont269.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79

.cont269.i:                                       ; preds = %.invoke268.i
  unreachable

bb.at:                                            ; preds = %._crit_edge147.i
  %i.ig = trunc nuw i64 %indvars.iv208.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !84
  store i32 %i.fg, ptr %i.c, align 4, !noalias !84
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ig, ptr %i.ih, align 4, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  store i32 %i.hp, ptr %i.b, align 4, !noalias !84
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.hs, ptr %i.ii, align 4, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  store ptr %i.c, ptr %i.a, align 8, !noalias !84
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.at, %bb.aq
  %.sink273.i.sroa.phi = phi ptr [ %.sink273.i.sroa.gep, %bb.aq ], [ %.sink273.i.sroa.gep56, %bb.at ]
  %.sink273.i.sroa.phi57 = phi ptr [ %.sink273.i.sroa.gep58, %bb.aq ], [ %.sink273.i.sroa.gep59, %bb.at ]
  %.sink273.i.sroa.phi60 = phi ptr [ %.sink273.i.sroa.gep61, %bb.aq ], [ %.sink273.i.sroa.gep62, %bb.at ]
  %.sink273.i = phi ptr [ %i.d, %bb.aq ], [ %i.a, %bb.at ]
  %.sink270.i = phi ptr [ %i.e, %bb.aq ], [ %i.b, %bb.at ]
  %i.ij = phi ptr [ @9, %bb.aq ], [ @8, %bb.at ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink273.i.sroa.phi, align 8, !noalias !79
  store ptr %.sink270.i, ptr %.sink273.i.sroa.phi57, align 8, !noalias !79
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink273.i.sroa.phi60, align 8, !noalias !79
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink273.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ij) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i: ; preds = %bb.as
  store <2 x float> %i.hm, ptr %i.ib, align 4, !noalias !79
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store float %.sroa.0.0.i66.i, ptr %.sroa.580.0..sroa_idx.i, align 4, !noalias !79
  %exitcond212.not.i = icmp eq i64 %indvars.iv.next209.i, %wide.trip.count211.i
  br i1 %exitcond212.not.i, label %.loopexit90.i35, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !79
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.hd)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79

bb.au:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.ik = load float, ptr %.sroa.0.0141.i, align 4, !noalias !79, !noundef !4 ; 2 uses
  %i.il = load <2 x float>, ptr %i.g, align 8, !noalias !79
  %i.im = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x float> %i.in, %i.il
  %i.ip = fadd <2 x float> %i.gx, %i.io           ; 2 uses
  %i.iq = load float, ptr %i.ez, align 8, !noalias !79, !noundef !4
  %i.ir = fmul float %i.ik, %i.iq
  %i.is = fadd float %.sroa.045.0144.i, %i.ir     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !79
  %i.it = icmp eq ptr %i.gy, %i.gu
  br i1 %i.it, label %._crit_edge147.i, label %bb.am

bb.av:                                            ; preds = %bb.ak
  %i.iu = load i64, ptr %i.eo, align 8, !alias.scope !85, !noalias !79, !noundef !4 ; 4 uses
  %i.iv = load i64, ptr %i.h, align 8, !range !5, !alias.scope !85, !noalias !79, !noundef !4
  %i.iw = icmp eq i64 %i.iu, %i.iv
  br i1 %i.iw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !79

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ix = load ptr, ptr %i.en, align 8, !alias.scope !85, !noalias !79, !nonnull !4, !noundef !4
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.iu
  store float %i.gm, ptr %i.iy, align 4, !noalias !79
  %i.iz = add i64 %i.iu, 1                        ; 3 uses
  store i64 %i.iz, ptr %i.eo, align 8, !alias.scope !85, !noalias !79
  %i.ja = fadd float %.sroa.09.0136.i, %i.gm      ; 3 uses
  %exitcond.not.i39 = icmp eq i32 %i.gi, %i.fu
  br i1 %exitcond.not.i39, label %._crit_edge.i40, label %bb.ak

bb.ay:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ba, %bb.ay, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !79
  unreachable

bb.az:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31 unwind label %bb.ba, !noalias !79

bb.ba:                                            ; preds = %bb.az
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body.i unwind label %bb.bb, !noalias !79

bb.bb:                                            ; preds = %bb.ba
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !79
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31: ; preds = %bb.az
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body46 unwind label %bb.ay, !noalias !79

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit55.i, %bb.ag, %bb.ac
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %bb.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.bc
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.je, %bb.bc ], [ %i.fe, %bb.ah ], [ %lpad.loopexit.split-lp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s) #18
          to label %.body17 unwind label %bb.bl

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !79
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i48 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %.body17 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i48: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
end_hunk_0
begin_hunk_1_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB6_:bb.a
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond185.not.i, label %.loopexit98.i, label %.lr.ph145.i

bb.s:                                             ; preds = %.lr.ph138.i
  store i24 %i.cs, ptr %i.m, align 4, !noalias !116
  %i.dl = invoke noundef i32 @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !117

bb.t:                                             ; preds = %bb.s
  %i.dm = load float, ptr %.sroa.0.0132.i, align 4, !noalias !117, !noundef !4
  %i.dn = bitcast i32 %i.dl to <4 x i8>
  %i.do = uitofp <4 x i8> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.co, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !116
  %i.dt = icmp eq ptr %i.cp, %i.cl
  br i1 %i.dt, label %._crit_edge139.i, label %.lr.ph138.i

bb.u:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.ah, align 8, !alias.scope !121, !noalias !116, !noundef !4 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !121, !noalias !116, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !117

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.ag, align 8, !alias.scope !121, !noalias !116, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  store float %i.ce, ptr %i.dy, align 4, !noalias !117
  %i.dz = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.ah, align 8, !alias.scope !121, !noalias !116
  %i.ea = fadd float %.sroa.03.0127.i, %i.ce      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.k
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body68.i

.body68.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !117
  unreachable

.thread83.i:                                      ; preds = %bb.k, %bb.f, %.thread89.i
  %.pn82.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %lpad.thr_comm.i, %.thread89.i ], [ %lpad.loopexit.split-lp484, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.y, !noalias !117

bb.y:                                             ; preds = %.thread83.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body68.i unwind label %bb.z, !noalias !117

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !117
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.thread83.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body17 unwind label %bb.x, !noalias !117

.body17:                                          ; preds = %bb.bi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.h, %bb.aa, %.body42
  %.pn = phi { ptr, i32 } [ %eh.lpad-body43, %.body42 ], [ %.pn82.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.au, %bb.h ], [ %i.ee, %bb.aa ], [ %i.kd, %bb.bi ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load427) #18
          to label %common.resume unwind label %bb.bp

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i44, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !116
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !alias.scope !122, !noundef !4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !122, !noundef !4 ; 4 uses
  %i.ej = icmp ne i32 %i.eg, 0
  %i.ek = icmp eq i32 %i.ei, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc39 unwind label %bb.bg

.noexc39:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.ba, %bb.ak, %.invoke.i, %.invoke306.i, %.invoke308.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !123

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !123

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bd unwind label %bb.bc, !noalias !123

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !123
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !123
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.ei)
          to label %.noexc40 unwind label %bb.bg

.noexc40:                                         ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.en, i64 3, i1 false), !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !123
  store i64 0, ptr %i.h, align 8, !noalias !123
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ep, align 8, !noalias !123
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !123
  %i.er = uitofp i32 %i.eg to float
  %i.es = uitofp i32 %2 to float
  %i.et = fdiv float %i.er, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not177.i = icmp eq i32 %2, 0
  br i1 %.not177.i, label %._crit_edge176.i, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.noexc40
  %i.ew = zext i32 %i.eg to i64                   ; 3 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %switch.load427, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val15.i.i20 = load i64, ptr %i.ez, align 8, !alias.scope !122 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i21 = load ptr, ptr %i.fa, align 8, !alias.scope !122, !nonnull !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count245.i = zext i32 %2 to i64
  %wide.trip.count240.i = zext i32 %i.ei to i64
  br label %bb.aj

.loopexit97.i:                                    ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond246.not.i = icmp eq i64 %indvars.iv.next243.i, %wide.trip.count245.i
  br i1 %exitcond246.not.i, label %._crit_edge176.i, label %bb.aj

._crit_edge176.i:                                 ; preds = %.loopexit97.i, %.noexc40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !125
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i unwind label %bb.ah, !noalias !123

bb.ah:                                            ; preds = %._crit_edge176.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body42 unwind label %bb.ai, !noalias !123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i: ; preds = %._crit_edge176.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bh unwind label %bb.bg

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !123
  unreachable

bb.aj:                                            ; preds = %.loopexit97.i, %.lr.ph175.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph175.i ], [ %indvars.iv.next243.i, %.loopexit97.i ] ; 4 uses
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv242.i to i32   ; 2 uses
  %i.fi = uitofp i32 %i.fh to float
  %i.fj = fadd nnan float %i.fi, 5.000000e-01
  %i.fk = fmul float %i.et, %i.fj                 ; 3 uses
  %i.fl = fsub float %i.fk, %i.ev
  %i.fm = call float @llvm.floor.f32(float %i.fl)
  %i.fn = call i64 @llvm.fptosi.sat.i64.f32(float %i.fm) ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fn, i64 range(i64 -1, 4294967296) %i.ex)
  %.sroa.0.0.i.i23 = select i1 %i.fo, i64 0, i64 %..i.i22 ; 3 uses
  %i.fp = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fq = fadd float %i.ev, %i.fk
  %i.fr = call float @llvm.ceil.f32(float %i.fq)
  %i.fs = call i64 @llvm.fptosi.sat.i64.f32(float %i.fr) ; 2 uses
  %i.ft = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fu = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fs, %i.ft
  %..i59.i = call i64 @llvm.smin.i64(i64 %i.fs, i64 range(i64 -1, 4294967296) %i.ew)
  %.sroa.0.0.i60.i = select i1 %.not.i24, i64 %..i59.i, i64 %i.fu
  %i.fv = trunc i64 %.sroa.0.0.i60.i to i32       ; 2 uses
  %i.fw = fadd float %i.fk, -5.000000e-01
  store i64 0, ptr %i.eq, align 8, !noalias !123
  %i.fx = icmp ult i32 %i.fp, %i.fv
  br i1 %i.fx, label %.lr.ph.i35, label %.preheader.i25

.lr.ph.i35:                                       ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.ey, align 8, !invariant.load !4, !noalias !123, !nonnull !4
  br label %bb.ak

._crit_edge.i37:                                  ; preds = %bb.bb
  %i.fz = load ptr, ptr %i.ep, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i38 = shl nuw nsw i64 %i.jx, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i38
  %i.gb = icmp eq i64 %i.jx, 0
  br i1 %i.gb, label %.preheader.i25, label %.lr.ph157.i.preheader

.lr.ph157.i.preheader:                            ; preds = %._crit_edge.i37
  %i.gc = and i64 %i.js, 4611686018427387903      ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check412 = icmp samesign ult i64 %i.gc, 3
  br i1 %min.iters.check412, label %.lr.ph157.i.preheader431, label %vector.ph413

vector.ph413:                                     ; preds = %.lr.ph157.i.preheader
  %n.vec414 = and i64 %i.gd, 9223372036854775804  ; 3 uses
  %i.ge = shl i64 %n.vec414, 2
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  %broadcast.splatinsert415 = insertelement <4 x float> poison, float %i.jy, i64 0
  %broadcast.splat416 = shufflevector <4 x float> %broadcast.splatinsert415, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph413
  %index418 = phi i64 [ 0, %vector.ph413 ], [ %index.next421, %vector.body417 ] ; 2 uses
  %i.gg = shl i64 %index418, 2
  %next.gep419 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %wide.load420 = load <4 x float>, ptr %next.gep419, align 4, !noalias !123
  %i.gh = fdiv <4 x float> %wide.load420, %broadcast.splat416
  store <4 x float> %i.gh, ptr %next.gep419, align 4, !noalias !123
  %index.next421 = add nuw i64 %index418, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next421, %n.vec414
  br i1 %i.gi, label %middle.block422, label %vector.body417, !llvm.loop !104

middle.block422:                                  ; preds = %vector.body417
  %cmp.n423 = icmp eq i64 %i.gd, %n.vec414
  br i1 %cmp.n423, label %.preheader.i25, label %.lr.ph157.i.preheader431

.lr.ph157.i.preheader431:                         ; preds = %.lr.ph157.i.preheader, %middle.block422
  %.sroa.013.0155.i.ph = phi ptr [ %i.fz, %.lr.ph157.i.preheader ], [ %i.gf, %middle.block422 ]
  br label %.lr.ph157.i

bb.ak:                                            ; preds = %bb.bb, %.lr.ph.i35
  %.sroa.09.0154.i = phi float [ 0.000000e+00, %.lr.ph.i35 ], [ %i.jy, %bb.bb ]
  %.sroa.037.0153.i = phi i32 [ %i.fp, %.lr.ph.i35 ], [ %i.gj, %bb.bb ] ; 2 uses
  %i.gj = add nuw i32 %.sroa.037.0153.i, 1        ; 2 uses
  %i.gk = uitofp i32 %.sroa.037.0153.i to float
  %i.gl = fsub float %i.gk, %i.fw
  %i.gm = fdiv float %i.gl, %.sroa.05.0.i
  %i.gn = invoke noundef float %i.fy(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gm)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !123 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph157.i, %middle.block422, %._crit_edge.i37, %bb.aj
  br i1 %i.ek, label %.loopexit97.i, label %.lr.ph172.i

.lr.ph172.i:                                      ; preds = %.preheader.i25
  %i.go = call i32 @llvm.usub.sat.i32(i32 %i.eg, i32 %i.fp)
  %wide.trip.count.i26 = zext i32 %i.go to i64
  br label %bb.al

.lr.ph157.i:                                      ; preds = %.lr.ph157.i.preheader431, %.lr.ph157.i
  %.sroa.013.0155.i = phi ptr [ %i.gp, %.lr.ph157.i ], [ %.sroa.013.0155.i.ph, %.lr.ph157.i.preheader431 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0155.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %.sroa.013.0155.i, align 4, !noalias !123, !noundef !4
  %i.gr = fdiv float %i.gq, %i.jy
  store float %i.gr, ptr %.sroa.013.0155.i, align 4, !noalias !123
  %i.gs = icmp eq ptr %i.gp, %i.ga
  br i1 %i.gs, label %.preheader.i25, label %.lr.ph157.i, !llvm.loop !105

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i, %.lr.ph172.i
  %indvars.iv237.i = phi i64 [ 0, %.lr.ph172.i ], [ %indvars.iv.next238.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.ep, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = load i64, ptr %i.eq, align 8, !noalias !123, !noundef !4 ; 2 uses
  %.idx179.i = shl nuw nsw i64 %i.gu, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx179.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %._crit_edge166.i, label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %bb.al
  %i.gx = mul nuw i64 %indvars.iv237.i, %i.ew
  br label %bb.am

bb.am:                                            ; preds = %bb.ay, %.lr.ph165.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i28, %bb.ay ] ; 3 uses
  %.sroa.0.0159.i = phi ptr [ %i.gt, %.lr.ph165.i ], [ %i.gz, %bb.ay ] ; 2 uses
  %i.gy = phi <4 x float> [ zeroinitializer, %.lr.ph165.i ], [ %i.jq, %bb.ay ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0159.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fp                          ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond236.not.i, label %bb.aq, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.ha = add nuw i64 %i.gx, %7
  %i.hb = shl i64 %i.ha, 2                        ; 4 uses
  %i.hc = or disjoint i64 %i.hb, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hc, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.hb
  %i.he = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hd, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !123

bb.ap:                                            ; preds = %bb.an
  %i.hf = add i64 %i.hb, 4
  br label %.invoke306.i

bb.aq:                                            ; preds = %bb.am
  %i.hg = trunc nuw i64 %indvars.iv237.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !126
  store i32 %6, ptr %i.f, align 4, !noalias !126
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hg, ptr %i.hh, align 4, !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !126
  store i32 %i.eg, ptr %i.e, align 4, !noalias !126
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ei, ptr %i.hi, align 4, !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !126
  store ptr %i.f, ptr %i.d, align 8, !noalias !126
  br label %.invoke.i

._crit_edge166.i:                                 ; preds = %bb.ay, %bb.al
  %i.hj = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.jq, %bb.ay ] ; 4 uses
  %i.hk = extractelement <4 x float> %i.hj, i64 0 ; 3 uses
  %i.hl = fcmp olt float %i.hk, 0.000000e+00
  %i.hm = fcmp ogt float %i.hk, 2.550000e+02
  %..i64.i = select i1 %i.hm, float 2.550000e+02, float %i.hk
  %i.hn = call float @llvm.round.f32(float %..i64.i)
  %i.ho = select i1 %i.hl, float 0.000000e+00, float %i.hn ; 3 uses
  %i.hp = fcmp ogt float %i.ho, -1.000000e+00
  %i.hq = fcmp olt float %i.ho, 2.560000e+02
  %or.cond.i.i.i = and i1 %i.hp, %i.hq
  %i.hr = fptoui float %i.ho to i8
  br i1 %or.cond.i.i.i, label %bb.ar, label %.invoke308.i, !prof !16

bb.ar:                                            ; preds = %._crit_edge166.i
  %i.hs = extractelement <4 x float> %i.hj, i64 1 ; 3 uses
  %i.ht = fcmp olt float %i.hs, 0.000000e+00
  %i.hu = fcmp ogt float %i.hs, 2.550000e+02
  %..i66.i = select i1 %i.hu, float 2.550000e+02, float %i.hs
  %i.hv = call float @llvm.round.f32(float %..i66.i)
  %i.hw = select i1 %i.ht, float 0.000000e+00, float %i.hv ; 3 uses
  %i.hx = fcmp ogt float %i.hw, -1.000000e+00
  %i.hy = fcmp olt float %i.hw, 2.560000e+02
  %or.cond.i.i68.i = and i1 %i.hx, %i.hy
  %i.hz = fptoui float %i.hw to i8
  br i1 %or.cond.i.i68.i, label %bb.as, label %.invoke308.i, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.ia = extractelement <4 x float> %i.hj, i64 2 ; 3 uses
  %i.ib = fcmp olt float %i.ia, 0.000000e+00
  %i.ic = fcmp ogt float %i.ia, 2.550000e+02
  %..i70.i = select i1 %i.ic, float 2.550000e+02, float %i.ia
  %i.id = call float @llvm.round.f32(float %..i70.i)
  %i.ie = select i1 %i.ib, float 0.000000e+00, float %i.id ; 3 uses
  %i.if = fcmp ogt float %i.ie, -1.000000e+00
  %i.ig = fcmp olt float %i.ie, 2.560000e+02
  %or.cond.i.i72.i = and i1 %i.if, %i.ig
  %i.ih = fptoui float %i.ie to i8
  br i1 %or.cond.i.i72.i, label %bb.at, label %.invoke308.i, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.ii = extractelement <4 x float> %i.hj, i64 3 ; 3 uses
  %i.ij = fcmp olt float %i.ii, 0.000000e+00
  %i.ik = fcmp ogt float %i.ii, 2.550000e+02
  %..i74.i = select i1 %i.ik, float 2.550000e+02, float %i.ii
  %i.il = call float @llvm.round.f32(float %..i74.i)
  %i.im = select i1 %i.ij, float 0.000000e+00, float %i.il ; 2 uses
  %i.in = fcmp ogt float %i.im, -1.000000e+00
  %i.io = fcmp olt float %i.im, 2.560000e+02
  %or.cond.i.i76.i = and i1 %i.in, %i.io
  br i1 %or.cond.i.i76.i, label %bb.au, label %.invoke308.i, !prof !16

.invoke308.i:                                     ; preds = %bb.at, %bb.as, %bb.ar, %._crit_edge166.i
  %i.ip = phi ptr [ @6, %bb.as ], [ @5, %bb.ar ], [ @4, %._crit_edge166.i ], [ @7, %bb.at ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ip) #21
          to label %.cont309.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !123

.cont309.i:                                       ; preds = %.invoke308.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %.sroa.01.0.insert.ext.i.i = zext i8 %i.hr to i24
  %.sroa.01.1.insert.ext.i.i = zext i8 %i.hz to i24
  %.sroa.01.1.insert.shift.i.i = shl nuw nsw i24 %.sroa.01.1.insert.ext.i.i, 8
  %.sroa.01.1.insert.insert.i.i = or disjoint i24 %.sroa.01.1.insert.shift.i.i, %.sroa.01.0.insert.ext.i.i
  %.sroa.01.2.insert.ext.i.i = zext i8 %i.ih to i24
  %.sroa.01.2.insert.shift.i.i = shl nuw i24 %.sroa.01.2.insert.ext.i.i, 16
  %.sroa.01.2.insert.insert.i.i = or disjoint i24 %.sroa.01.1.insert.insert.i.i, %.sroa.01.2.insert.shift.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.iq = load i32, ptr %i.fb, align 8, !alias.scope !127, !noalias !123, !noundef !4 ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = icmp samesign uge i64 %indvars.iv242.i, %i.ir
  %i.it = load i32, ptr %i.fc, align 4, !alias.scope !127, !noalias !123 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = icmp samesign uge i64 %indvars.iv237.i, %i.iu
  %or.cond.i78.i = select i1 %i.is, i1 true, i1 %i.iv, !prof !12
  br i1 %or.cond.i78.i, label %bb.ax, label %bb.av, !prof !12

bb.av:                                            ; preds = %bb.au
  %i.iw = mul nuw i64 %indvars.iv237.i, %i.ir
  %i.ix = add nuw i64 %i.iw, %indvars.iv242.i
  %i.iy = mul i64 %i.ix, 3                        ; 4 uses
  %i.iz = add i64 %i.iy, 3                        ; 2 uses
  %.val15.i79.i = load i64, ptr %i.fd, align 8, !alias.scope !127, !noalias !123, !noundef !4 ; 2 uses
  %i.ja = icmp ugt i64 %i.iy, -4
  %.not.i.i = icmp ugt i64 %i.iz, %.val15.i79.i
  %or.cond14.i.i = or i1 %i.ja, %.not.i.i
  br i1 %or.cond14.i.i, label %.invoke306.i, label %bb.aw, !prof !12

bb.aw:                                            ; preds = %bb.av
  %.val.i80.i = load ptr, ptr %i.fe, align 8, !alias.scope !127, !noalias !123, !nonnull !4, !noundef !4
  %i.jb = getelementptr inbounds nuw i8, ptr %.val.i80.i, i64 %i.iy
  %i.jc = invoke noundef nonnull ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.jb, i64 noundef 3)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !123

.invoke306.i:                                     ; preds = %bb.av, %bb.ap
  %i.jd = phi i64 [ %i.hb, %bb.ap ], [ %i.iy, %bb.av ]
  %i.je = phi i64 [ %i.hf, %bb.ap ], [ %i.iz, %bb.av ]
  %i.jf = phi i64 [ %.val15.i.i20, %bb.ap ], [ %.val15.i79.i, %bb.av ]
  %i.jg = phi ptr [ @9, %bb.ap ], [ @8, %bb.av ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.jd, i64 noundef %i.je, i64 noundef %i.jf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #19
          to label %.cont307.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !123

.cont307.i:                                       ; preds = %.invoke306.i
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.jh = trunc nuw i64 %indvars.iv237.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128
  store i32 %i.fh, ptr %i.c, align 4, !noalias !128
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.jh, ptr %i.ji, align 4, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128
  store i32 %i.iq, ptr %i.b, align 4, !noalias !128
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.it, ptr %i.jj, align 4, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  store ptr %i.c, ptr %i.a, align 8, !noalias !128
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ax, %bb.aq
  %.sink313.i.sroa.phi = phi ptr [ %.sink313.i.sroa.gep, %bb.aq ], [ %.sink313.i.sroa.gep52, %bb.ax ]
  %.sink313.i.sroa.phi53 = phi ptr [ %.sink313.i.sroa.gep54, %bb.aq ], [ %.sink313.i.sroa.gep55, %bb.ax ]
  %.sink313.i.sroa.phi56 = phi ptr [ %.sink313.i.sroa.gep57, %bb.aq ], [ %.sink313.i.sroa.gep58, %bb.ax ]
  %.sink313.i = phi ptr [ %i.d, %bb.aq ], [ %i.a, %bb.ax ]
  %.sink310.i = phi ptr [ %i.e, %bb.aq ], [ %i.b, %bb.ax ]
  %i.jk = phi ptr [ @9, %bb.aq ], [ @8, %bb.ax ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink313.i.sroa.phi, align 8, !noalias !123
  store ptr %.sink310.i, ptr %.sink313.i.sroa.phi53, align 8, !noalias !123
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink313.i.sroa.phi56, align 8, !noalias !123
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink313.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !123

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i: ; preds = %bb.aw
  store i24 %.sroa.01.2.insert.insert.i.i, ptr %i.jc, align 1, !noalias !123
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %.loopexit97.i, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !123
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.he)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !123

bb.ay:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.jl = load float, ptr %.sroa.0.0159.i, align 4, !noalias !123, !noundef !4
  %i.jm = load <4 x float>, ptr %i.g, align 16, !noalias !123
  %i.jn = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = fmul <4 x float> %i.jo, %i.jm
  %i.jq = fadd <4 x float> %i.gy, %i.jp           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !123
  %i.jr = icmp eq ptr %i.gz, %i.gv
  br i1 %i.jr, label %._crit_edge166.i, label %bb.am

bb.az:                                            ; preds = %bb.ak
  %i.js = load i64, ptr %i.eq, align 8, !alias.scope !129, !noalias !123, !noundef !4 ; 4 uses
  %i.jt = load i64, ptr %i.h, align 8, !range !5, !alias.scope !129, !noalias !123, !noundef !4
  %i.ju = icmp eq i64 %i.js, %i.jt
  br i1 %i.ju, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !123

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.jv = load ptr, ptr %i.ep, align 8, !alias.scope !129, !noalias !123, !nonnull !4, !noundef !4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.js
  store float %i.gn, ptr %i.jw, align 4, !noalias !123
  %i.jx = add i64 %i.js, 1                        ; 3 uses
  store i64 %i.jx, ptr %i.eq, align 8, !alias.scope !129, !noalias !123
  %i.jy = fadd float %.sroa.09.0154.i, %i.gn      ; 3 uses
  %exitcond.not.i36 = icmp eq i32 %i.gj, %i.fv
  br i1 %exitcond.not.i36, label %._crit_edge.i37, label %bb.ak

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.be, %bb.bc, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !123
  unreachable

bb.bd:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
end_hunk_1
begin_hunk_2_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB6_:bb.a
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond185.not.i, label %.loopexit98.i, label %.lr.ph145.i

bb.s:                                             ; preds = %.lr.ph138.i
  store i48 %i.cs, ptr %i.m, align 8, !noalias !160
  %i.dl = invoke noundef i64 @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !161

bb.t:                                             ; preds = %bb.s
  %i.dm = load float, ptr %.sroa.0.0132.i, align 4, !noalias !161, !noundef !4
  %i.dn = bitcast i64 %i.dl to <4 x i16>
  %i.do = uitofp <4 x i16> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.co, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !160
  %i.dt = icmp eq ptr %i.cp, %i.cl
  br i1 %i.dt, label %._crit_edge139.i, label %.lr.ph138.i

bb.u:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.ah, align 8, !alias.scope !165, !noalias !160, !noundef !4 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !165, !noalias !160, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !161

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.ag, align 8, !alias.scope !165, !noalias !160, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  store float %i.ce, ptr %i.dy, align 4, !noalias !161
  %i.dz = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.ah, align 8, !alias.scope !165, !noalias !160
  %i.ea = fadd float %.sroa.03.0127.i, %i.ce      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.k
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body68.i

.body68.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !161
  unreachable

.thread83.i:                                      ; preds = %bb.k, %bb.f, %.thread89.i
  %.pn82.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %lpad.thr_comm.i, %.thread89.i ], [ %lpad.loopexit.split-lp485, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.y, !noalias !161

bb.y:                                             ; preds = %.thread83.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body68.i unwind label %bb.z, !noalias !161

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !161
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.thread83.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body17 unwind label %bb.x, !noalias !161

.body17:                                          ; preds = %bb.bi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.h, %bb.aa, %.body43
  %.pn = phi { ptr, i32 } [ %eh.lpad-body44, %.body43 ], [ %.pn82.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.au, %bb.h ], [ %i.ee, %bb.aa ], [ %i.kd, %bb.bi ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load428) #18
          to label %common.resume unwind label %bb.bp

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !160
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !alias.scope !166, !noundef !4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !166, !noundef !4 ; 4 uses
  %i.ej = icmp ne i32 %i.eg, 0
  %i.ek = icmp eq i32 %i.ei, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc40 unwind label %bb.bg

.noexc40:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.ba, %bb.ak, %.invoke.i, %.invoke309.i, %.invoke311.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !167

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !167

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bd unwind label %bb.bc, !noalias !167

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !167
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !167
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.ei)
          to label %.noexc41 unwind label %bb.bg

.noexc41:                                         ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.en, i64 3, i1 false), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !167
  store i64 0, ptr %i.h, align 8, !noalias !167
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ep, align 8, !noalias !167
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !167
  %i.er = uitofp i32 %i.eg to float
  %i.es = uitofp i32 %2 to float
  %i.et = fdiv float %i.er, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not180.i = icmp eq i32 %2, 0
  br i1 %.not180.i, label %._crit_edge179.i, label %.lr.ph178.i

.lr.ph178.i:                                      ; preds = %.noexc41
  %i.ew = zext i32 %i.eg to i64                   ; 3 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %switch.load428, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val15.i.i20 = load i64, ptr %i.ez, align 8, !alias.scope !166 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i21 = load ptr, ptr %i.fa, align 8, !alias.scope !166, !nonnull !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count248.i = zext i32 %2 to i64
  %wide.trip.count243.i = zext i32 %i.ei to i64
  br label %bb.aj

.loopexit100.i:                                   ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond249.not.i = icmp eq i64 %indvars.iv.next246.i, %wide.trip.count248.i
  br i1 %exitcond249.not.i, label %._crit_edge179.i, label %bb.aj

._crit_edge179.i:                                 ; preds = %.loopexit100.i, %.noexc41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !169
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i unwind label %bb.ah, !noalias !167

bb.ah:                                            ; preds = %._crit_edge179.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body43 unwind label %bb.ai, !noalias !167

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i: ; preds = %._crit_edge179.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bh unwind label %bb.bg

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !167
  unreachable

bb.aj:                                            ; preds = %.loopexit100.i, %.lr.ph178.i
  %indvars.iv245.i = phi i64 [ 0, %.lr.ph178.i ], [ %indvars.iv.next246.i, %.loopexit100.i ] ; 4 uses
  %indvars.iv.next246.i = add nuw nsw i64 %indvars.iv245.i, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv245.i to i32   ; 2 uses
  %i.fi = uitofp i32 %i.fh to float
  %i.fj = fadd nnan float %i.fi, 5.000000e-01
  %i.fk = fmul float %i.et, %i.fj                 ; 3 uses
  %i.fl = fsub float %i.fk, %i.ev
  %i.fm = call float @llvm.floor.f32(float %i.fl)
  %i.fn = call i64 @llvm.fptosi.sat.i64.f32(float %i.fm) ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fn, i64 range(i64 -1, 4294967296) %i.ex)
  %.sroa.0.0.i.i23 = select i1 %i.fo, i64 0, i64 %..i.i22 ; 3 uses
  %i.fp = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fq = fadd float %i.ev, %i.fk
  %i.fr = call float @llvm.ceil.f32(float %i.fq)
  %i.fs = call i64 @llvm.fptosi.sat.i64.f32(float %i.fr) ; 2 uses
  %i.ft = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fu = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fs, %i.ft
  %..i59.i = call i64 @llvm.smin.i64(i64 %i.fs, i64 range(i64 -1, 4294967296) %i.ew)
  %.sroa.0.0.i60.i = select i1 %.not.i24, i64 %..i59.i, i64 %i.fu
  %i.fv = trunc i64 %.sroa.0.0.i60.i to i32       ; 2 uses
  %i.fw = fadd float %i.fk, -5.000000e-01
  store i64 0, ptr %i.eq, align 8, !noalias !167
  %i.fx = icmp ult i32 %i.fp, %i.fv
  br i1 %i.fx, label %.lr.ph.i36, label %.preheader.i25

.lr.ph.i36:                                       ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.ey, align 8, !invariant.load !4, !noalias !167, !nonnull !4
  br label %bb.ak

._crit_edge.i38:                                  ; preds = %bb.bb
  %i.fz = load ptr, ptr %i.ep, align 8, !noalias !167, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i39 = shl nuw nsw i64 %i.jx, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i39
  %i.gb = icmp eq i64 %i.jx, 0
  br i1 %i.gb, label %.preheader.i25, label %.lr.ph160.i.preheader

.lr.ph160.i.preheader:                            ; preds = %._crit_edge.i38
  %i.gc = and i64 %i.js, 4611686018427387903      ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check413 = icmp samesign ult i64 %i.gc, 3
  br i1 %min.iters.check413, label %.lr.ph160.i.preheader432, label %vector.ph414

vector.ph414:                                     ; preds = %.lr.ph160.i.preheader
  %n.vec415 = and i64 %i.gd, 9223372036854775804  ; 3 uses
  %i.ge = shl i64 %n.vec415, 2
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  %broadcast.splatinsert416 = insertelement <4 x float> poison, float %i.jy, i64 0
  %broadcast.splat417 = shufflevector <4 x float> %broadcast.splatinsert416, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph414
  %index419 = phi i64 [ 0, %vector.ph414 ], [ %index.next422, %vector.body418 ] ; 2 uses
  %i.gg = shl i64 %index419, 2
  %next.gep420 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %wide.load421 = load <4 x float>, ptr %next.gep420, align 4, !noalias !167
  %i.gh = fdiv <4 x float> %wide.load421, %broadcast.splat417
  store <4 x float> %i.gh, ptr %next.gep420, align 4, !noalias !167
  %index.next422 = add nuw i64 %index419, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.gi, label %middle.block423, label %vector.body418, !llvm.loop !148

middle.block423:                                  ; preds = %vector.body418
  %cmp.n424 = icmp eq i64 %i.gd, %n.vec415
  br i1 %cmp.n424, label %.preheader.i25, label %.lr.ph160.i.preheader432

.lr.ph160.i.preheader432:                         ; preds = %.lr.ph160.i.preheader, %middle.block423
  %.sroa.013.0158.i.ph = phi ptr [ %i.fz, %.lr.ph160.i.preheader ], [ %i.gf, %middle.block423 ]
  br label %.lr.ph160.i

bb.ak:                                            ; preds = %bb.bb, %.lr.ph.i36
  %.sroa.09.0157.i = phi float [ 0.000000e+00, %.lr.ph.i36 ], [ %i.jy, %bb.bb ]
  %.sroa.037.0156.i = phi i32 [ %i.fp, %.lr.ph.i36 ], [ %i.gj, %bb.bb ] ; 2 uses
  %i.gj = add nuw i32 %.sroa.037.0156.i, 1        ; 2 uses
  %i.gk = uitofp i32 %.sroa.037.0156.i to float
  %i.gl = fsub float %i.gk, %i.fw
  %i.gm = fdiv float %i.gl, %.sroa.05.0.i
  %i.gn = invoke noundef float %i.fy(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gm)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph160.i, %middle.block423, %._crit_edge.i38, %bb.aj
  br i1 %i.ek, label %.loopexit100.i, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.preheader.i25
  %i.go = call i32 @llvm.usub.sat.i32(i32 %i.eg, i32 %i.fp)
  %wide.trip.count.i26 = zext i32 %i.go to i64
  br label %bb.al

.lr.ph160.i:                                      ; preds = %.lr.ph160.i.preheader432, %.lr.ph160.i
  %.sroa.013.0158.i = phi ptr [ %i.gp, %.lr.ph160.i ], [ %.sroa.013.0158.i.ph, %.lr.ph160.i.preheader432 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0158.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %.sroa.013.0158.i, align 4, !noalias !167, !noundef !4
  %i.gr = fdiv float %i.gq, %i.jy
  store float %i.gr, ptr %.sroa.013.0158.i, align 4, !noalias !167
  %i.gs = icmp eq ptr %i.gp, %i.ga
  br i1 %i.gs, label %.preheader.i25, label %.lr.ph160.i, !llvm.loop !149

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i, %.lr.ph175.i
  %indvars.iv240.i = phi i64 [ 0, %.lr.ph175.i ], [ %indvars.iv.next241.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next241.i = add nuw nsw i64 %indvars.iv240.i, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.ep, align 8, !noalias !167, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = load i64, ptr %i.eq, align 8, !noalias !167, !noundef !4 ; 2 uses
  %.idx182.i = shl nuw nsw i64 %i.gu, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx182.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %._crit_edge169.i, label %.lr.ph168.i

.lr.ph168.i:                                      ; preds = %bb.al
  %i.gx = mul nuw i64 %indvars.iv240.i, %i.ew
  br label %bb.am

bb.am:                                            ; preds = %bb.ay, %.lr.ph168.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph168.i ], [ %indvars.iv.next.i28, %bb.ay ] ; 3 uses
  %.sroa.0.0162.i = phi ptr [ %i.gt, %.lr.ph168.i ], [ %i.gz, %bb.ay ] ; 2 uses
  %i.gy = phi <4 x float> [ zeroinitializer, %.lr.ph168.i ], [ %i.jq, %bb.ay ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0162.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fp                          ; 2 uses
  %exitcond239.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond239.not.i, label %bb.aq, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.ha = add nuw i64 %i.gx, %7
  %i.hb = shl i64 %i.ha, 2                        ; 4 uses
  %i.hc = or disjoint i64 %i.hb, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hc, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.hb
  %i.he = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hd, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

bb.ap:                                            ; preds = %bb.an
  %i.hf = add i64 %i.hb, 4
  br label %.invoke309.i

bb.aq:                                            ; preds = %bb.am
  %i.hg = trunc nuw i64 %indvars.iv240.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !170
  store i32 %6, ptr %i.f, align 4, !noalias !170
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hg, ptr %i.hh, align 4, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !170
  store i32 %i.eg, ptr %i.e, align 4, !noalias !170
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ei, ptr %i.hi, align 4, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !170
  store ptr %i.f, ptr %i.d, align 8, !noalias !170
  br label %.invoke.i

._crit_edge169.i:                                 ; preds = %bb.ay, %bb.al
  %i.hj = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.jq, %bb.ay ] ; 4 uses
  %i.hk = extractelement <4 x float> %i.hj, i64 0 ; 3 uses
  %i.hl = fcmp olt float %i.hk, 0.000000e+00
  %i.hm = fcmp ogt float %i.hk, 6.553500e+04
  %..i64.i = select i1 %i.hm, float 6.553500e+04, float %i.hk
  %i.hn = call float @llvm.round.f32(float %..i64.i)
  %i.ho = select i1 %i.hl, float 0.000000e+00, float %i.hn ; 3 uses
  %i.hp = fcmp ogt float %i.ho, -1.000000e+00
  %i.hq = fcmp olt float %i.ho, 6.553600e+04
  %or.cond.i.i.i = and i1 %i.hp, %i.hq
  %i.hr = fptoui float %i.ho to i16
  br i1 %or.cond.i.i.i, label %bb.ar, label %.invoke311.i, !prof !16

bb.ar:                                            ; preds = %._crit_edge169.i
  %i.hs = extractelement <4 x float> %i.hj, i64 1 ; 3 uses
  %i.ht = fcmp olt float %i.hs, 0.000000e+00
  %i.hu = fcmp ogt float %i.hs, 6.553500e+04
  %..i66.i = select i1 %i.hu, float 6.553500e+04, float %i.hs
  %i.hv = call float @llvm.round.f32(float %..i66.i)
  %i.hw = select i1 %i.ht, float 0.000000e+00, float %i.hv ; 3 uses
  %i.hx = fcmp ogt float %i.hw, -1.000000e+00
  %i.hy = fcmp olt float %i.hw, 6.553600e+04
  %or.cond.i.i68.i = and i1 %i.hx, %i.hy
  %i.hz = fptoui float %i.hw to i16
  br i1 %or.cond.i.i68.i, label %bb.as, label %.invoke311.i, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.ia = extractelement <4 x float> %i.hj, i64 2 ; 3 uses
  %i.ib = fcmp olt float %i.ia, 0.000000e+00
  %i.ic = fcmp ogt float %i.ia, 6.553500e+04
  %..i71.i33 = select i1 %i.ic, float 6.553500e+04, float %i.ia
  %i.id = call float @llvm.round.f32(float %..i71.i33)
  %i.ie = select i1 %i.ib, float 0.000000e+00, float %i.id ; 3 uses
  %i.if = fcmp ogt float %i.ie, -1.000000e+00
  %i.ig = fcmp olt float %i.ie, 6.553600e+04
  %or.cond.i.i73.i = and i1 %i.if, %i.ig
  %i.ih = fptoui float %i.ie to i16
  br i1 %or.cond.i.i73.i, label %bb.at, label %.invoke311.i, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.ii = extractelement <4 x float> %i.hj, i64 3 ; 3 uses
  %i.ij = fcmp olt float %i.ii, 0.000000e+00
  %i.ik = fcmp ogt float %i.ii, 6.553500e+04
  %..i76.i = select i1 %i.ik, float 6.553500e+04, float %i.ii
  %i.il = call float @llvm.round.f32(float %..i76.i)
  %i.im = select i1 %i.ij, float 0.000000e+00, float %i.il ; 2 uses
  %i.in = fcmp ogt float %i.im, -1.000000e+00
  %i.io = fcmp olt float %i.im, 6.553600e+04
  %or.cond.i.i78.i = and i1 %i.in, %i.io
  br i1 %or.cond.i.i78.i, label %bb.au, label %.invoke311.i, !prof !16

.invoke311.i:                                     ; preds = %bb.at, %bb.as, %bb.ar, %._crit_edge169.i
  %i.ip = phi ptr [ @6, %bb.as ], [ @5, %bb.ar ], [ @4, %._crit_edge169.i ], [ @7, %bb.at ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ip) #21
          to label %.cont312.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

.cont312.i:                                       ; preds = %.invoke311.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %.sroa.01.0.insert.ext.i.i = zext i16 %i.hr to i48
  %.sroa.01.2.insert.ext.i.i = zext i16 %i.hz to i48
  %.sroa.01.2.insert.shift.i.i = shl nuw nsw i48 %.sroa.01.2.insert.ext.i.i, 16
  %.sroa.01.2.insert.insert.i.i = or disjoint i48 %.sroa.01.2.insert.shift.i.i, %.sroa.01.0.insert.ext.i.i
  %.sroa.01.4.insert.ext.i.i = zext i16 %i.ih to i48
  %.sroa.01.4.insert.shift.i.i = shl nuw i48 %.sroa.01.4.insert.ext.i.i, 32
  %.sroa.01.4.insert.insert.i.i = or disjoint i48 %.sroa.01.2.insert.insert.i.i, %.sroa.01.4.insert.shift.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.iq = load i32, ptr %i.fb, align 8, !alias.scope !171, !noalias !167, !noundef !4 ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = icmp samesign uge i64 %indvars.iv245.i, %i.ir
  %i.it = load i32, ptr %i.fc, align 4, !alias.scope !171, !noalias !167 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = icmp samesign uge i64 %indvars.iv240.i, %i.iu
  %or.cond.i81.i = select i1 %i.is, i1 true, i1 %i.iv, !prof !12
  br i1 %or.cond.i81.i, label %bb.ax, label %bb.av, !prof !12

bb.av:                                            ; preds = %bb.au
  %i.iw = mul nuw i64 %indvars.iv240.i, %i.ir
  %i.ix = add nuw i64 %i.iw, %indvars.iv245.i
  %i.iy = mul i64 %i.ix, 3                        ; 4 uses
  %i.iz = add i64 %i.iy, 3                        ; 2 uses
  %.val15.i82.i = load i64, ptr %i.fd, align 8, !alias.scope !171, !noalias !167, !noundef !4 ; 2 uses
  %i.ja = icmp ugt i64 %i.iy, -4
  %.not.i.i = icmp ugt i64 %i.iz, %.val15.i82.i
  %or.cond14.i.i = or i1 %i.ja, %.not.i.i
  br i1 %or.cond14.i.i, label %.invoke309.i, label %bb.aw, !prof !12

bb.aw:                                            ; preds = %bb.av
  %.val.i83.i = load ptr, ptr %i.fe, align 8, !alias.scope !171, !noalias !167, !nonnull !4, !noundef !4
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %.val.i83.i, i64 %i.iy
  %i.jc = invoke noundef nonnull align 2 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.jb, i64 noundef 3)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

.invoke309.i:                                     ; preds = %bb.av, %bb.ap
  %i.jd = phi i64 [ %i.hb, %bb.ap ], [ %i.iy, %bb.av ]
  %i.je = phi i64 [ %i.hf, %bb.ap ], [ %i.iz, %bb.av ]
  %i.jf = phi i64 [ %.val15.i.i20, %bb.ap ], [ %.val15.i82.i, %bb.av ]
  %i.jg = phi ptr [ @9, %bb.ap ], [ @8, %bb.av ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.jd, i64 noundef %i.je, i64 noundef %i.jf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #19
          to label %.cont310.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

.cont310.i:                                       ; preds = %.invoke309.i
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.jh = trunc nuw i64 %indvars.iv240.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !172
  store i32 %i.fh, ptr %i.c, align 4, !noalias !172
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.jh, ptr %i.ji, align 4, !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172
  store i32 %i.iq, ptr %i.b, align 4, !noalias !172
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.it, ptr %i.jj, align 4, !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  store ptr %i.c, ptr %i.a, align 8, !noalias !172
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ax, %bb.aq
  %.sink316.i.sroa.phi = phi ptr [ %.sink316.i.sroa.gep, %bb.aq ], [ %.sink316.i.sroa.gep53, %bb.ax ]
  %.sink316.i.sroa.phi54 = phi ptr [ %.sink316.i.sroa.gep55, %bb.aq ], [ %.sink316.i.sroa.gep56, %bb.ax ]
  %.sink316.i.sroa.phi57 = phi ptr [ %.sink316.i.sroa.gep58, %bb.aq ], [ %.sink316.i.sroa.gep59, %bb.ax ]
  %.sink316.i = phi ptr [ %i.d, %bb.aq ], [ %i.a, %bb.ax ]
  %.sink313.i = phi ptr [ %i.e, %bb.aq ], [ %i.b, %bb.ax ]
  %i.jk = phi ptr [ @9, %bb.aq ], [ @8, %bb.ax ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink316.i.sroa.phi, align 8, !noalias !167
  store ptr %.sink313.i, ptr %.sink316.i.sroa.phi54, align 8, !noalias !167
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink316.i.sroa.phi57, align 8, !noalias !167
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink316.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i: ; preds = %bb.aw
  store i48 %.sroa.01.4.insert.insert.i.i, ptr %i.jc, align 2, !noalias !167
  %exitcond244.not.i = icmp eq i64 %indvars.iv.next241.i, %wide.trip.count243.i
  br i1 %exitcond244.not.i, label %.loopexit100.i, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !167
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.he)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

bb.ay:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.jl = load float, ptr %.sroa.0.0162.i, align 4, !noalias !167, !noundef !4
  %i.jm = load <4 x float>, ptr %i.g, align 16, !noalias !167
  %i.jn = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = fmul <4 x float> %i.jo, %i.jm
  %i.jq = fadd <4 x float> %i.gy, %i.jp           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !167
  %i.jr = icmp eq ptr %i.gz, %i.gv
  br i1 %i.jr, label %._crit_edge169.i, label %bb.am

bb.az:                                            ; preds = %bb.ak
  %i.js = load i64, ptr %i.eq, align 8, !alias.scope !173, !noalias !167, !noundef !4 ; 4 uses
  %i.jt = load i64, ptr %i.h, align 8, !range !5, !alias.scope !173, !noalias !167, !noundef !4
  %i.ju = icmp eq i64 %i.js, %i.jt
  br i1 %i.ju, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.jv = load ptr, ptr %i.ep, align 8, !alias.scope !173, !noalias !167, !nonnull !4, !noundef !4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.js
  store float %i.gn, ptr %i.jw, align 4, !noalias !167
  %i.jx = add i64 %i.js, 1                        ; 3 uses
  store i64 %i.jx, ptr %i.eq, align 8, !alias.scope !173, !noalias !167
  %i.jy = fadd float %.sroa.09.0157.i, %i.gn      ; 3 uses
  %exitcond.not.i37 = icmp eq i32 %i.gj, %i.fv
  br i1 %exitcond.not.i37, label %._crit_edge.i38, label %bb.ak

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.be, %bb.bc, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !167
  unreachable

bb.bd:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
end_hunk_2
begin_hunk_3_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB6_:bb.a
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.loopexit97.i, label %.lr.ph144.i

bb.s:                                             ; preds = %.lr.ph137.i
  store i8 %i.cs, ptr %i.m, align 1, !noalias !204
  %i.dl = invoke noundef i32 @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

bb.t:                                             ; preds = %bb.s
  %i.dm = load float, ptr %.sroa.0.0131.i, align 4, !noalias !205, !noundef !4
  %i.dn = bitcast i32 %i.dl to <4 x i8>
  %i.do = uitofp <4 x i8> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.co, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !204
  %i.dt = icmp eq ptr %i.cp, %i.cl
  br i1 %i.dt, label %._crit_edge138.i, label %.lr.ph137.i

bb.u:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.ah, align 8, !alias.scope !209, !noalias !204, !noundef !4 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !209, !noalias !204, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.ag, align 8, !alias.scope !209, !noalias !204, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  store float %i.ce, ptr %i.dy, align 4, !noalias !205
  %i.dz = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.ah, align 8, !alias.scope !209, !noalias !204
  %i.ea = fadd float %.sroa.03.0126.i, %i.ce      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.k
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body67.i

.body67.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !205
  unreachable

.thread82.i:                                      ; preds = %bb.k, %bb.f, %.thread88.i
  %.pn81.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %lpad.thr_comm.i, %.thread88.i ], [ %lpad.loopexit.split-lp469, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.y, !noalias !205

bb.y:                                             ; preds = %.thread82.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body67.i unwind label %bb.z, !noalias !205

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !205
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.thread82.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body17 unwind label %bb.x, !noalias !205

.body17:                                          ; preds = %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.h, %bb.aa, %.body43
  %.pn = phi { ptr, i32 } [ %eh.lpad-body44, %.body43 ], [ %.pn81.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.au, %bb.h ], [ %i.ee, %bb.aa ], [ %i.jz, %bb.bj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load415) #18
          to label %common.resume unwind label %bb.bq

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !204
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !alias.scope !210, !noundef !4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !210, !noundef !4 ; 4 uses
  %i.ej = icmp ne i32 %i.eg, 0
  %i.ek = icmp eq i32 %i.ei, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc40 unwind label %bb.bh

.noexc40:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.bb, %bb.ak, %.invoke.i, %.invoke297.i, %.invoke299.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !211

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !211

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.be unwind label %bb.bd, !noalias !211

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !211
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !211
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.ei)
          to label %.noexc41 unwind label %bb.bh

.noexc41:                                         ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.en, i64 3, i1 false), !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !211
  store i64 0, ptr %i.h, align 8, !noalias !211
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ep, align 8, !noalias !211
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !211
  %i.er = uitofp i32 %i.eg to float
  %i.es = uitofp i32 %2 to float
  %i.et = fdiv float %i.er, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not174.i = icmp eq i32 %2, 0
  br i1 %.not174.i, label %._crit_edge173.i, label %.lr.ph172.i

.lr.ph172.i:                                      ; preds = %.noexc41
  %i.ew = zext i32 %i.eg to i64                   ; 3 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %switch.load415, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val15.i.i20 = load i64, ptr %i.ez, align 8, !alias.scope !210 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i21 = load ptr, ptr %i.fa, align 8, !alias.scope !210, !nonnull !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count239.i = zext i32 %2 to i64
  %wide.trip.count234.i = zext i32 %i.ei to i64
  br label %bb.aj

.loopexit96.i:                                    ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next237.i, %wide.trip.count239.i
  br i1 %exitcond240.not.i, label %._crit_edge173.i, label %bb.aj

._crit_edge173.i:                                 ; preds = %.loopexit96.i, %.noexc41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !213
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i unwind label %bb.ah, !noalias !211

bb.ah:                                            ; preds = %._crit_edge173.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body43 unwind label %bb.ai, !noalias !211

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i: ; preds = %._crit_edge173.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bi unwind label %bb.bh

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !211
  unreachable

bb.aj:                                            ; preds = %.loopexit96.i, %.lr.ph172.i
  %indvars.iv236.i = phi i64 [ 0, %.lr.ph172.i ], [ %indvars.iv.next237.i, %.loopexit96.i ] ; 4 uses
  %indvars.iv.next237.i = add nuw nsw i64 %indvars.iv236.i, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv236.i to i32   ; 2 uses
  %i.fi = uitofp i32 %i.fh to float
  %i.fj = fadd nnan float %i.fi, 5.000000e-01
  %i.fk = fmul float %i.et, %i.fj                 ; 3 uses
  %i.fl = fsub float %i.fk, %i.ev
  %i.fm = call float @llvm.floor.f32(float %i.fl)
  %i.fn = call i64 @llvm.fptosi.sat.i64.f32(float %i.fm) ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fn, i64 range(i64 -1, 4294967296) %i.ex)
  %.sroa.0.0.i.i23 = select i1 %i.fo, i64 0, i64 %..i.i22 ; 3 uses
  %i.fp = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fq = fadd float %i.ev, %i.fk
  %i.fr = call float @llvm.ceil.f32(float %i.fq)
  %i.fs = call i64 @llvm.fptosi.sat.i64.f32(float %i.fr) ; 2 uses
  %i.ft = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fu = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fs, %i.ft
  %..i59.i = call i64 @llvm.smin.i64(i64 %i.fs, i64 range(i64 -1, 4294967296) %i.ew)
  %.sroa.0.0.i60.i = select i1 %.not.i24, i64 %..i59.i, i64 %i.fu
  %i.fv = trunc i64 %.sroa.0.0.i60.i to i32       ; 2 uses
  %i.fw = fadd float %i.fk, -5.000000e-01
  store i64 0, ptr %i.eq, align 8, !noalias !211
  %i.fx = icmp ult i32 %i.fp, %i.fv
  br i1 %i.fx, label %.lr.ph.i36, label %.preheader.i25

.lr.ph.i36:                                       ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.ey, align 8, !invariant.load !4, !noalias !211, !nonnull !4
  br label %bb.ak

._crit_edge.i38:                                  ; preds = %bb.bc
  %i.fz = load ptr, ptr %i.ep, align 8, !noalias !211, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i39 = shl nuw nsw i64 %i.jt, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i39
  %i.gb = icmp eq i64 %i.jt, 0
  br i1 %i.gb, label %.preheader.i25, label %.lr.ph154.i.preheader

.lr.ph154.i.preheader:                            ; preds = %._crit_edge.i38
  %i.gc = and i64 %i.jo, 4611686018427387903      ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check400 = icmp samesign ult i64 %i.gc, 3
  br i1 %min.iters.check400, label %.lr.ph154.i.preheader419, label %vector.ph401

vector.ph401:                                     ; preds = %.lr.ph154.i.preheader
  %n.vec402 = and i64 %i.gd, 9223372036854775804  ; 3 uses
  %i.ge = shl i64 %n.vec402, 2
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  %broadcast.splatinsert403 = insertelement <4 x float> poison, float %i.ju, i64 0
  %broadcast.splat404 = shufflevector <4 x float> %broadcast.splatinsert403, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph401
  %index406 = phi i64 [ 0, %vector.ph401 ], [ %index.next409, %vector.body405 ] ; 2 uses
  %i.gg = shl i64 %index406, 2
  %next.gep407 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %wide.load408 = load <4 x float>, ptr %next.gep407, align 4, !noalias !211
  %i.gh = fdiv <4 x float> %wide.load408, %broadcast.splat404
  store <4 x float> %i.gh, ptr %next.gep407, align 4, !noalias !211
  %index.next409 = add nuw i64 %index406, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next409, %n.vec402
  br i1 %i.gi, label %middle.block410, label %vector.body405, !llvm.loop !192

middle.block410:                                  ; preds = %vector.body405
  %cmp.n411 = icmp eq i64 %i.gd, %n.vec402
  br i1 %cmp.n411, label %.preheader.i25, label %.lr.ph154.i.preheader419

.lr.ph154.i.preheader419:                         ; preds = %.lr.ph154.i.preheader, %middle.block410
  %.sroa.013.0152.i.ph = phi ptr [ %i.fz, %.lr.ph154.i.preheader ], [ %i.gf, %middle.block410 ]
  br label %.lr.ph154.i

bb.ak:                                            ; preds = %bb.bc, %.lr.ph.i36
  %.sroa.09.0151.i = phi float [ 0.000000e+00, %.lr.ph.i36 ], [ %i.ju, %bb.bc ]
  %.sroa.039.0150.i = phi i32 [ %i.fp, %.lr.ph.i36 ], [ %i.gj, %bb.bc ] ; 2 uses
  %i.gj = add nuw i32 %.sroa.039.0150.i, 1        ; 2 uses
  %i.gk = uitofp i32 %.sroa.039.0150.i to float
  %i.gl = fsub float %i.gk, %i.fw
  %i.gm = fdiv float %i.gl, %.sroa.05.0.i
  %i.gn = invoke noundef float %i.fy(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gm)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph154.i, %middle.block410, %._crit_edge.i38, %bb.aj
  br i1 %i.ek, label %.loopexit96.i, label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %.preheader.i25
  %i.go = call i32 @llvm.usub.sat.i32(i32 %i.eg, i32 %i.fp)
  %wide.trip.count.i26 = zext i32 %i.go to i64
  br label %bb.al

.lr.ph154.i:                                      ; preds = %.lr.ph154.i.preheader419, %.lr.ph154.i
  %.sroa.013.0152.i = phi ptr [ %i.gp, %.lr.ph154.i ], [ %.sroa.013.0152.i.ph, %.lr.ph154.i.preheader419 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0152.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %.sroa.013.0152.i, align 4, !noalias !211, !noundef !4
  %i.gr = fdiv float %i.gq, %i.ju
  store float %i.gr, ptr %.sroa.013.0152.i, align 4, !noalias !211
  %i.gs = icmp eq ptr %i.gp, %i.ga
  br i1 %i.gs, label %.preheader.i25, label %.lr.ph154.i, !llvm.loop !193

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i, %.lr.ph169.i
  %indvars.iv231.i = phi i64 [ 0, %.lr.ph169.i ], [ %indvars.iv.next232.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.ep, align 8, !noalias !211, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = load i64, ptr %i.eq, align 8, !noalias !211, !noundef !4 ; 2 uses
  %.idx176.i = shl nuw nsw i64 %i.gu, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx176.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %._crit_edge163.i, label %.lr.ph162.i

.lr.ph162.i:                                      ; preds = %bb.al
  %i.gx = mul nuw i64 %indvars.iv231.i, %i.ew
  br label %bb.am

bb.am:                                            ; preds = %bb.az, %.lr.ph162.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph162.i ], [ %indvars.iv.next.i28, %bb.az ] ; 3 uses
  %.sroa.0.0156.i = phi ptr [ %i.gt, %.lr.ph162.i ], [ %i.gz, %bb.az ] ; 2 uses
  %i.gy = phi <4 x float> [ zeroinitializer, %.lr.ph162.i ], [ %i.jm, %bb.az ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0156.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fp                          ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond230.not.i, label %bb.aq, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.ha = add nuw i64 %i.gx, %7
  %i.hb = shl i64 %i.ha, 2                        ; 4 uses
  %i.hc = or disjoint i64 %i.hb, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hc, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.hb
  %i.he = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hd, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

bb.ap:                                            ; preds = %bb.an
  %i.hf = add i64 %i.hb, 4
  br label %.invoke297.i

bb.aq:                                            ; preds = %bb.am
  %i.hg = trunc nuw i64 %indvars.iv231.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !214
  store i32 %6, ptr %i.f, align 4, !noalias !214
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hg, ptr %i.hh, align 4, !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !214
  store i32 %i.eg, ptr %i.e, align 4, !noalias !214
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ei, ptr %i.hi, align 4, !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !214
  store ptr %i.f, ptr %i.d, align 8, !noalias !214
  br label %.invoke.i

._crit_edge163.i:                                 ; preds = %bb.az, %bb.al
  %i.hj = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.jm, %bb.az ] ; 4 uses
  %i.hk = extractelement <4 x float> %i.hj, i64 0 ; 3 uses
  %i.hl = fcmp olt float %i.hk, 0.000000e+00
  %i.hm = fcmp ogt float %i.hk, 2.550000e+02
  %..i64.i = select i1 %i.hm, float 2.550000e+02, float %i.hk
  %i.hn = call float @llvm.round.f32(float %..i64.i)
  %i.ho = select i1 %i.hl, float 0.000000e+00, float %i.hn ; 3 uses
  %i.hp = fcmp ogt float %i.ho, -1.000000e+00
  %i.hq = fcmp olt float %i.ho, 2.560000e+02
  %or.cond.i.i.i = and i1 %i.hp, %i.hq
  %i.hr = fptoui float %i.ho to i8
  br i1 %or.cond.i.i.i, label %bb.ar, label %.invoke299.i, !prof !16

bb.ar:                                            ; preds = %._crit_edge163.i
  %i.hs = extractelement <4 x float> %i.hj, i64 1 ; 3 uses
  %i.ht = fcmp olt float %i.hs, 0.000000e+00
  %i.hu = fcmp ogt float %i.hs, 2.550000e+02
  %..i66.i = select i1 %i.hu, float 2.550000e+02, float %i.hs
  %i.hv = call float @llvm.round.f32(float %..i66.i)
  %i.hw = select i1 %i.ht, float 0.000000e+00, float %i.hv ; 2 uses
  %i.hx = fcmp ogt float %i.hw, -1.000000e+00
  %i.hy = fcmp olt float %i.hw, 2.560000e+02
  %or.cond.i.i68.i = and i1 %i.hx, %i.hy
  br i1 %or.cond.i.i68.i, label %bb.as, label %.invoke299.i, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.hz = extractelement <4 x float> %i.hj, i64 2 ; 3 uses
  %i.ia = fcmp olt float %i.hz, 0.000000e+00
  %i.ib = fcmp ogt float %i.hz, 2.550000e+02
  %..i70.i33 = select i1 %i.ib, float 2.550000e+02, float %i.hz
  %i.ic = call float @llvm.round.f32(float %..i70.i33)
  %i.id = select i1 %i.ia, float 0.000000e+00, float %i.ic ; 2 uses
  %i.ie = fcmp ogt float %i.id, -1.000000e+00
  %i.if = fcmp olt float %i.id, 2.560000e+02
  %or.cond.i.i72.i = and i1 %i.ie, %i.if
  br i1 %or.cond.i.i72.i, label %bb.at, label %.invoke299.i, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.ig = extractelement <4 x float> %i.hj, i64 3 ; 3 uses
  %i.ih = fcmp olt float %i.ig, 0.000000e+00
  %i.ii = fcmp ogt float %i.ig, 2.550000e+02
  %..i74.i = select i1 %i.ii, float 2.550000e+02, float %i.ig
  %i.ij = call float @llvm.round.f32(float %..i74.i)
  %i.ik = select i1 %i.ih, float 0.000000e+00, float %i.ij ; 2 uses
  %i.il = fcmp ogt float %i.ik, -1.000000e+00
  %i.im = fcmp olt float %i.ik, 2.560000e+02
  %or.cond.i.i76.i = and i1 %i.il, %i.im
  br i1 %or.cond.i.i76.i, label %bb.au, label %.invoke299.i, !prof !16

.invoke299.i:                                     ; preds = %bb.at, %bb.as, %bb.ar, %._crit_edge163.i
  %i.in = phi ptr [ @6, %bb.as ], [ @5, %bb.ar ], [ @4, %._crit_edge163.i ], [ @7, %bb.at ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.in) #21
          to label %.cont300.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

.cont300.i:                                       ; preds = %.invoke299.i
  unreachable

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.io = load i32, ptr %i.fb, align 8, !alias.scope !215, !noalias !211, !noundef !4 ; 2 uses
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = icmp samesign uge i64 %indvars.iv236.i, %i.ip
  %i.ir = load i32, ptr %i.fc, align 4, !alias.scope !215, !noalias !211 ; 2 uses
  %i.is = zext i32 %i.ir to i64
  %i.it = icmp samesign uge i64 %indvars.iv231.i, %i.is
  %or.cond.i78.i = select i1 %i.iq, i1 true, i1 %i.it, !prof !12
  br i1 %or.cond.i78.i, label %bb.ay, label %bb.av, !prof !12

bb.av:                                            ; preds = %bb.au
  %i.iu = mul nuw i64 %indvars.iv231.i, %i.ip
  %i.iv = add nuw i64 %i.iu, %indvars.iv236.i     ; 4 uses
  %.val14.i.i = load i64, ptr %i.fd, align 8, !alias.scope !215, !noalias !211, !noundef !4 ; 2 uses
  %.not.not.i.i = icmp ult i64 %i.iv, %.val14.i.i
  br i1 %.not.not.i.i, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %bb.av
  %.val.i79.i = load ptr, ptr %i.fe, align 8, !alias.scope !215, !noalias !211, !nonnull !4, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i79.i, i64 %i.iv
  %i.ix = invoke noundef nonnull ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.iw, i64 noundef 1)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

bb.ax:                                            ; preds = %bb.av
  %i.iy = add nuw i64 %i.iv, 1
  br label %.invoke297.i

.invoke297.i:                                     ; preds = %bb.ax, %bb.ap
  %i.iz = phi i64 [ %i.iv, %bb.ax ], [ %i.hb, %bb.ap ]
  %i.ja = phi i64 [ %i.iy, %bb.ax ], [ %i.hf, %bb.ap ]
  %i.jb = phi i64 [ %.val14.i.i, %bb.ax ], [ %.val15.i.i20, %bb.ap ]
  %i.jc = phi ptr [ @8, %bb.ax ], [ @9, %bb.ap ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.iz, i64 noundef %i.ja, i64 noundef %i.jb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc) #19
          to label %.cont298.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

.cont298.i:                                       ; preds = %.invoke297.i
  unreachable

bb.ay:                                            ; preds = %bb.au
  %i.jd = trunc nuw i64 %indvars.iv231.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !216
  store i32 %i.fh, ptr %i.c, align 4, !noalias !216
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.jd, ptr %i.je, align 4, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !216
  store i32 %i.io, ptr %i.b, align 4, !noalias !216
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ir, ptr %i.jf, align 4, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !216
  store ptr %i.c, ptr %i.a, align 8, !noalias !216
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ay, %bb.aq
  %.sink304.i.sroa.phi = phi ptr [ %.sink304.i.sroa.gep, %bb.aq ], [ %.sink304.i.sroa.gep52, %bb.ay ]
  %.sink304.i.sroa.phi53 = phi ptr [ %.sink304.i.sroa.gep54, %bb.aq ], [ %.sink304.i.sroa.gep55, %bb.ay ]
  %.sink304.i.sroa.phi56 = phi ptr [ %.sink304.i.sroa.gep57, %bb.aq ], [ %.sink304.i.sroa.gep58, %bb.ay ]
  %.sink304.i = phi ptr [ %i.d, %bb.aq ], [ %i.a, %bb.ay ]
  %.sink301.i = phi ptr [ %i.e, %bb.aq ], [ %i.b, %bb.ay ]
  %i.jg = phi ptr [ @9, %bb.aq ], [ @8, %bb.ay ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink304.i.sroa.phi, align 8, !noalias !211
  store ptr %.sink301.i, ptr %.sink304.i.sroa.phi53, align 8, !noalias !211
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink304.i.sroa.phi56, align 8, !noalias !211
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink304.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i: ; preds = %bb.aw
  store i8 %i.hr, ptr %i.ix, align 1, !noalias !211
  %exitcond235.not.i = icmp eq i64 %indvars.iv.next232.i, %wide.trip.count234.i
  br i1 %exitcond235.not.i, label %.loopexit96.i, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !211
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.he)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

bb.az:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.jh = load float, ptr %.sroa.0.0156.i, align 4, !noalias !211, !noundef !4
  %i.ji = load <4 x float>, ptr %i.g, align 16, !noalias !211
  %i.jj = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = fmul <4 x float> %i.jk, %i.ji
  %i.jm = fadd <4 x float> %i.gy, %i.jl           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !211
  %i.jn = icmp eq ptr %i.gz, %i.gv
  br i1 %i.jn, label %._crit_edge163.i, label %bb.am

bb.ba:                                            ; preds = %bb.ak
  %i.jo = load i64, ptr %i.eq, align 8, !alias.scope !217, !noalias !211, !noundef !4 ; 4 uses
  %i.jp = load i64, ptr %i.h, align 8, !range !5, !alias.scope !217, !noalias !211, !noundef !4
  %i.jq = icmp eq i64 %i.jo, %i.jp
  br i1 %i.jq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jr = load ptr, ptr %i.ep, align 8, !alias.scope !217, !noalias !211, !nonnull !4, !noundef !4
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jo
  store float %i.gn, ptr %i.js, align 4, !noalias !211
  %i.jt = add i64 %i.jo, 1                        ; 3 uses
  store i64 %i.jt, ptr %i.eq, align 8, !alias.scope !217, !noalias !211
  %i.ju = fadd float %.sroa.09.0151.i, %i.gn      ; 3 uses
  %exitcond.not.i37 = icmp eq i32 %i.gj, %i.fv
  br i1 %exitcond.not.i37, label %._crit_edge.i38, label %bb.ak

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bf, %bb.bd, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !211
  unreachable

bb.be:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i31 unwind label %bb.bf, !noalias !211

bb.bf:                                            ; preds = %bb.be
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body.i unwind label %bb.bg, !noalias !211

bb.bg:                                            ; preds = %bb.bf
end_hunk_3
begin_hunk_4_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB6_:bb.a
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.loopexit97.i, label %.lr.ph144.i

bb.s:                                             ; preds = %.lr.ph137.i
  store i16 %i.cs, ptr %i.m, align 2, !noalias !248
  %i.dl = invoke noundef i64 @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !249

bb.t:                                             ; preds = %bb.s
  %i.dm = load float, ptr %.sroa.0.0131.i, align 4, !noalias !249, !noundef !4
  %i.dn = bitcast i64 %i.dl to <4 x i16>
  %i.do = uitofp <4 x i16> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.co, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !248
  %i.dt = icmp eq ptr %i.cp, %i.cl
  br i1 %i.dt, label %._crit_edge138.i, label %.lr.ph137.i

bb.u:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.ah, align 8, !alias.scope !253, !noalias !248, !noundef !4 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !253, !noalias !248, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !249

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.ag, align 8, !alias.scope !253, !noalias !248, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  store float %i.ce, ptr %i.dy, align 4, !noalias !249
  %i.dz = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.ah, align 8, !alias.scope !253, !noalias !248
  %i.ea = fadd float %.sroa.03.0126.i, %i.ce      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.k
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body67.i

.body67.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !249
  unreachable

.thread82.i:                                      ; preds = %bb.k, %bb.f, %.thread88.i
  %.pn81.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %lpad.thr_comm.i, %.thread88.i ], [ %lpad.loopexit.split-lp468, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.y, !noalias !249

bb.y:                                             ; preds = %.thread82.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body67.i unwind label %bb.z, !noalias !249

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !249
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.thread82.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body17 unwind label %bb.x, !noalias !249

.body17:                                          ; preds = %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.h, %bb.aa, %.body42
  %.pn = phi { ptr, i32 } [ %eh.lpad-body43, %.body42 ], [ %.pn81.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.au, %bb.h ], [ %i.ee, %bb.aa ], [ %i.jz, %bb.bj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load414) #18
          to label %common.resume unwind label %bb.bq

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i44, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !248
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !alias.scope !254, !noundef !4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !254, !noundef !4 ; 4 uses
  %i.ej = icmp ne i32 %i.eg, 0
  %i.ek = icmp eq i32 %i.ei, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc39 unwind label %bb.bh

.noexc39:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.bb, %bb.ak, %.invoke.i, %.invoke300.i, %.invoke302.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !255

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !255

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.be unwind label %bb.bd, !noalias !255

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !255
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !255
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.ei)
          to label %.noexc40 unwind label %bb.bh

.noexc40:                                         ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.en, i64 3, i1 false), !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !255
  store i64 0, ptr %i.h, align 8, !noalias !255
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ep, align 8, !noalias !255
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !255
  %i.er = uitofp i32 %i.eg to float
  %i.es = uitofp i32 %2 to float
  %i.et = fdiv float %i.er, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not177.i = icmp eq i32 %2, 0
  br i1 %.not177.i, label %._crit_edge176.i, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.noexc40
  %i.ew = zext i32 %i.eg to i64                   ; 3 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %switch.load414, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val15.i.i20 = load i64, ptr %i.ez, align 8, !alias.scope !254 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i21 = load ptr, ptr %i.fa, align 8, !alias.scope !254, !nonnull !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count242.i = zext i32 %2 to i64
  %wide.trip.count237.i = zext i32 %i.ei to i64
  br label %bb.aj

.loopexit99.i:                                    ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count242.i
  br i1 %exitcond243.not.i, label %._crit_edge176.i, label %bb.aj

._crit_edge176.i:                                 ; preds = %.loopexit99.i, %.noexc40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !257
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i unwind label %bb.ah, !noalias !255

bb.ah:                                            ; preds = %._crit_edge176.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body42 unwind label %bb.ai, !noalias !255

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i: ; preds = %._crit_edge176.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bi unwind label %bb.bh

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !255
  unreachable

bb.aj:                                            ; preds = %.loopexit99.i, %.lr.ph175.i
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph175.i ], [ %indvars.iv.next240.i, %.loopexit99.i ] ; 4 uses
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv239.i to i32   ; 2 uses
  %i.fi = uitofp i32 %i.fh to float
  %i.fj = fadd nnan float %i.fi, 5.000000e-01
  %i.fk = fmul float %i.et, %i.fj                 ; 3 uses
  %i.fl = fsub float %i.fk, %i.ev
  %i.fm = call float @llvm.floor.f32(float %i.fl)
  %i.fn = call i64 @llvm.fptosi.sat.i64.f32(float %i.fm) ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fn, i64 range(i64 -1, 4294967296) %i.ex)
  %.sroa.0.0.i.i23 = select i1 %i.fo, i64 0, i64 %..i.i22 ; 3 uses
  %i.fp = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fq = fadd float %i.ev, %i.fk
  %i.fr = call float @llvm.ceil.f32(float %i.fq)
  %i.fs = call i64 @llvm.fptosi.sat.i64.f32(float %i.fr) ; 2 uses
  %i.ft = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fu = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fs, %i.ft
  %..i59.i = call i64 @llvm.smin.i64(i64 %i.fs, i64 range(i64 -1, 4294967296) %i.ew)
  %.sroa.0.0.i60.i = select i1 %.not.i24, i64 %..i59.i, i64 %i.fu
  %i.fv = trunc i64 %.sroa.0.0.i60.i to i32       ; 2 uses
  %i.fw = fadd float %i.fk, -5.000000e-01
  store i64 0, ptr %i.eq, align 8, !noalias !255
  %i.fx = icmp ult i32 %i.fp, %i.fv
  br i1 %i.fx, label %.lr.ph.i35, label %.preheader.i25

.lr.ph.i35:                                       ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.ey, align 8, !invariant.load !4, !noalias !255, !nonnull !4
  br label %bb.ak

._crit_edge.i37:                                  ; preds = %bb.bc
  %i.fz = load ptr, ptr %i.ep, align 8, !noalias !255, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i38 = shl nuw nsw i64 %i.jt, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i38
  %i.gb = icmp eq i64 %i.jt, 0
  br i1 %i.gb, label %.preheader.i25, label %.lr.ph157.i.preheader

.lr.ph157.i.preheader:                            ; preds = %._crit_edge.i37
  %i.gc = and i64 %i.jo, 4611686018427387903      ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check399 = icmp samesign ult i64 %i.gc, 3
  br i1 %min.iters.check399, label %.lr.ph157.i.preheader418, label %vector.ph400

vector.ph400:                                     ; preds = %.lr.ph157.i.preheader
  %n.vec401 = and i64 %i.gd, 9223372036854775804  ; 3 uses
  %i.ge = shl i64 %n.vec401, 2
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  %broadcast.splatinsert402 = insertelement <4 x float> poison, float %i.ju, i64 0
  %broadcast.splat403 = shufflevector <4 x float> %broadcast.splatinsert402, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph400
  %index405 = phi i64 [ 0, %vector.ph400 ], [ %index.next408, %vector.body404 ] ; 2 uses
  %i.gg = shl i64 %index405, 2
  %next.gep406 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %wide.load407 = load <4 x float>, ptr %next.gep406, align 4, !noalias !255
  %i.gh = fdiv <4 x float> %wide.load407, %broadcast.splat403
  store <4 x float> %i.gh, ptr %next.gep406, align 4, !noalias !255
  %index.next408 = add nuw i64 %index405, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next408, %n.vec401
  br i1 %i.gi, label %middle.block409, label %vector.body404, !llvm.loop !236

middle.block409:                                  ; preds = %vector.body404
  %cmp.n410 = icmp eq i64 %i.gd, %n.vec401
  br i1 %cmp.n410, label %.preheader.i25, label %.lr.ph157.i.preheader418

.lr.ph157.i.preheader418:                         ; preds = %.lr.ph157.i.preheader, %middle.block409
  %.sroa.013.0155.i.ph = phi ptr [ %i.fz, %.lr.ph157.i.preheader ], [ %i.gf, %middle.block409 ]
  br label %.lr.ph157.i

bb.ak:                                            ; preds = %bb.bc, %.lr.ph.i35
  %.sroa.09.0154.i = phi float [ 0.000000e+00, %.lr.ph.i35 ], [ %i.ju, %bb.bc ]
  %.sroa.039.0153.i = phi i32 [ %i.fp, %.lr.ph.i35 ], [ %i.gj, %bb.bc ] ; 2 uses
  %i.gj = add nuw i32 %.sroa.039.0153.i, 1        ; 2 uses
  %i.gk = uitofp i32 %.sroa.039.0153.i to float
  %i.gl = fsub float %i.gk, %i.fw
  %i.gm = fdiv float %i.gl, %.sroa.05.0.i
  %i.gn = invoke noundef float %i.fy(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gm)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph157.i, %middle.block409, %._crit_edge.i37, %bb.aj
  br i1 %i.ek, label %.loopexit99.i, label %.lr.ph172.i

.lr.ph172.i:                                      ; preds = %.preheader.i25
  %i.go = call i32 @llvm.usub.sat.i32(i32 %i.eg, i32 %i.fp)
  %wide.trip.count.i26 = zext i32 %i.go to i64
  br label %bb.al

.lr.ph157.i:                                      ; preds = %.lr.ph157.i.preheader418, %.lr.ph157.i
  %.sroa.013.0155.i = phi ptr [ %i.gp, %.lr.ph157.i ], [ %.sroa.013.0155.i.ph, %.lr.ph157.i.preheader418 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0155.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %.sroa.013.0155.i, align 4, !noalias !255, !noundef !4
  %i.gr = fdiv float %i.gq, %i.ju
  store float %i.gr, ptr %.sroa.013.0155.i, align 4, !noalias !255
  %i.gs = icmp eq ptr %i.gp, %i.ga
  br i1 %i.gs, label %.preheader.i25, label %.lr.ph157.i, !llvm.loop !237

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i, %.lr.ph172.i
  %indvars.iv234.i = phi i64 [ 0, %.lr.ph172.i ], [ %indvars.iv.next235.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.ep, align 8, !noalias !255, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = load i64, ptr %i.eq, align 8, !noalias !255, !noundef !4 ; 2 uses
  %.idx179.i = shl nuw nsw i64 %i.gu, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx179.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %._crit_edge166.i, label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %bb.al
  %i.gx = mul nuw i64 %indvars.iv234.i, %i.ew
  br label %bb.am

bb.am:                                            ; preds = %bb.az, %.lr.ph165.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i28, %bb.az ] ; 3 uses
  %.sroa.0.0159.i = phi ptr [ %i.gt, %.lr.ph165.i ], [ %i.gz, %bb.az ] ; 2 uses
  %i.gy = phi <4 x float> [ zeroinitializer, %.lr.ph165.i ], [ %i.jm, %bb.az ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0159.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fp                          ; 2 uses
  %exitcond233.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond233.not.i, label %bb.aq, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.ha = add nuw i64 %i.gx, %7
  %i.hb = shl i64 %i.ha, 2                        ; 4 uses
  %i.hc = or disjoint i64 %i.hb, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hc, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.hb
  %i.he = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hd, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255

bb.ap:                                            ; preds = %bb.an
  %i.hf = add i64 %i.hb, 4
  br label %.invoke300.i

bb.aq:                                            ; preds = %bb.am
  %i.hg = trunc nuw i64 %indvars.iv234.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !258
  store i32 %6, ptr %i.f, align 4, !noalias !258
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hg, ptr %i.hh, align 4, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !258
  store i32 %i.eg, ptr %i.e, align 4, !noalias !258
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ei, ptr %i.hi, align 4, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !258
  store ptr %i.f, ptr %i.d, align 8, !noalias !258
  br label %.invoke.i

._crit_edge166.i:                                 ; preds = %bb.az, %bb.al
  %i.hj = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.jm, %bb.az ] ; 4 uses
  %i.hk = extractelement <4 x float> %i.hj, i64 0 ; 3 uses
  %i.hl = fcmp olt float %i.hk, 0.000000e+00
  %i.hm = fcmp ogt float %i.hk, 6.553500e+04
  %..i64.i = select i1 %i.hm, float 6.553500e+04, float %i.hk
  %i.hn = call float @llvm.round.f32(float %..i64.i)
  %i.ho = select i1 %i.hl, float 0.000000e+00, float %i.hn ; 3 uses
  %i.hp = fcmp ogt float %i.ho, -1.000000e+00
  %i.hq = fcmp olt float %i.ho, 6.553600e+04
  %or.cond.i.i.i = and i1 %i.hp, %i.hq
  %i.hr = fptoui float %i.ho to i16
  br i1 %or.cond.i.i.i, label %bb.ar, label %.invoke302.i, !prof !16

bb.ar:                                            ; preds = %._crit_edge166.i
  %i.hs = extractelement <4 x float> %i.hj, i64 1 ; 3 uses
  %i.ht = fcmp olt float %i.hs, 0.000000e+00
  %i.hu = fcmp ogt float %i.hs, 6.553500e+04
  %..i66.i = select i1 %i.hu, float 6.553500e+04, float %i.hs
  %i.hv = call float @llvm.round.f32(float %..i66.i)
  %i.hw = select i1 %i.ht, float 0.000000e+00, float %i.hv ; 2 uses
  %i.hx = fcmp ogt float %i.hw, -1.000000e+00
  %i.hy = fcmp olt float %i.hw, 6.553600e+04
  %or.cond.i.i68.i = and i1 %i.hx, %i.hy
  br i1 %or.cond.i.i68.i, label %bb.as, label %.invoke302.i, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.hz = extractelement <4 x float> %i.hj, i64 2 ; 3 uses
  %i.ia = fcmp olt float %i.hz, 0.000000e+00
  %i.ib = fcmp ogt float %i.hz, 6.553500e+04
  %..i71.i = select i1 %i.ib, float 6.553500e+04, float %i.hz
  %i.ic = call float @llvm.round.f32(float %..i71.i)
  %i.id = select i1 %i.ia, float 0.000000e+00, float %i.ic ; 2 uses
  %i.ie = fcmp ogt float %i.id, -1.000000e+00
  %i.if = fcmp olt float %i.id, 6.553600e+04
  %or.cond.i.i73.i = and i1 %i.ie, %i.if
  br i1 %or.cond.i.i73.i, label %bb.at, label %.invoke302.i, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.ig = extractelement <4 x float> %i.hj, i64 3 ; 3 uses
  %i.ih = fcmp olt float %i.ig, 0.000000e+00
  %i.ii = fcmp ogt float %i.ig, 6.553500e+04
  %..i76.i = select i1 %i.ii, float 6.553500e+04, float %i.ig
  %i.ij = call float @llvm.round.f32(float %..i76.i)
  %i.ik = select i1 %i.ih, float 0.000000e+00, float %i.ij ; 2 uses
  %i.il = fcmp ogt float %i.ik, -1.000000e+00
  %i.im = fcmp olt float %i.ik, 6.553600e+04
  %or.cond.i.i78.i = and i1 %i.il, %i.im
  br i1 %or.cond.i.i78.i, label %bb.au, label %.invoke302.i, !prof !16

.invoke302.i:                                     ; preds = %bb.at, %bb.as, %bb.ar, %._crit_edge166.i
  %i.in = phi ptr [ @6, %bb.as ], [ @5, %bb.ar ], [ @4, %._crit_edge166.i ], [ @7, %bb.at ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.in) #21
          to label %.cont303.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255

.cont303.i:                                       ; preds = %.invoke302.i
  unreachable

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.io = load i32, ptr %i.fb, align 8, !alias.scope !259, !noalias !255, !noundef !4 ; 2 uses
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = icmp samesign uge i64 %indvars.iv239.i, %i.ip
  %i.ir = load i32, ptr %i.fc, align 4, !alias.scope !259, !noalias !255 ; 2 uses
  %i.is = zext i32 %i.ir to i64
  %i.it = icmp samesign uge i64 %indvars.iv234.i, %i.is
  %or.cond.i81.i = select i1 %i.iq, i1 true, i1 %i.it, !prof !12
  br i1 %or.cond.i81.i, label %bb.ay, label %bb.av, !prof !12

bb.av:                                            ; preds = %bb.au
  %i.iu = mul nuw i64 %indvars.iv234.i, %i.ip
  %i.iv = add nuw i64 %i.iu, %indvars.iv239.i     ; 4 uses
  %.val14.i.i = load i64, ptr %i.fd, align 8, !alias.scope !259, !noalias !255, !noundef !4 ; 2 uses
  %.not.not.i.i = icmp ult i64 %i.iv, %.val14.i.i
  br i1 %.not.not.i.i, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %bb.av
  %.val.i82.i = load ptr, ptr %i.fe, align 8, !alias.scope !259, !noalias !255, !nonnull !4, !noundef !4
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %.val.i82.i, i64 %i.iv
  %i.ix = invoke noundef nonnull align 2 ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.iw, i64 noundef 1)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255

bb.ax:                                            ; preds = %bb.av
  %i.iy = add nuw i64 %i.iv, 1
  br label %.invoke300.i

.invoke300.i:                                     ; preds = %bb.ax, %bb.ap
  %i.iz = phi i64 [ %i.iv, %bb.ax ], [ %i.hb, %bb.ap ]
  %i.ja = phi i64 [ %i.iy, %bb.ax ], [ %i.hf, %bb.ap ]
  %i.jb = phi i64 [ %.val14.i.i, %bb.ax ], [ %.val15.i.i20, %bb.ap ]
  %i.jc = phi ptr [ @8, %bb.ax ], [ @9, %bb.ap ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.iz, i64 noundef %i.ja, i64 noundef %i.jb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc) #19
          to label %.cont301.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255

.cont301.i:                                       ; preds = %.invoke300.i
  unreachable

bb.ay:                                            ; preds = %bb.au
  %i.jd = trunc nuw i64 %indvars.iv234.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !260
  store i32 %i.fh, ptr %i.c, align 4, !noalias !260
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.jd, ptr %i.je, align 4, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  store i32 %i.io, ptr %i.b, align 4, !noalias !260
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ir, ptr %i.jf, align 4, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !260
  store ptr %i.c, ptr %i.a, align 8, !noalias !260
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ay, %bb.aq
  %.sink307.i.sroa.phi = phi ptr [ %.sink307.i.sroa.gep, %bb.aq ], [ %.sink307.i.sroa.gep51, %bb.ay ]
  %.sink307.i.sroa.phi52 = phi ptr [ %.sink307.i.sroa.gep53, %bb.aq ], [ %.sink307.i.sroa.gep54, %bb.ay ]
  %.sink307.i.sroa.phi55 = phi ptr [ %.sink307.i.sroa.gep56, %bb.aq ], [ %.sink307.i.sroa.gep57, %bb.ay ]
  %.sink307.i = phi ptr [ %i.d, %bb.aq ], [ %i.a, %bb.ay ]
  %.sink304.i = phi ptr [ %i.e, %bb.aq ], [ %i.b, %bb.ay ]
  %i.jg = phi ptr [ @9, %bb.aq ], [ @8, %bb.ay ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink307.i.sroa.phi, align 8, !noalias !255
  store ptr %.sink304.i, ptr %.sink307.i.sroa.phi52, align 8, !noalias !255
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink307.i.sroa.phi55, align 8, !noalias !255
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink307.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i: ; preds = %bb.aw
  store i16 %i.hr, ptr %i.ix, align 2, !noalias !255
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next235.i, %wide.trip.count237.i
  br i1 %exitcond238.not.i, label %.loopexit99.i, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !255
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.he)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255

bb.az:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.jh = load float, ptr %.sroa.0.0159.i, align 4, !noalias !255, !noundef !4
  %i.ji = load <4 x float>, ptr %i.g, align 16, !noalias !255
  %i.jj = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = fmul <4 x float> %i.jk, %i.ji
  %i.jm = fadd <4 x float> %i.gy, %i.jl           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !255
  %i.jn = icmp eq ptr %i.gz, %i.gv
  br i1 %i.jn, label %._crit_edge166.i, label %bb.am

bb.ba:                                            ; preds = %bb.ak
  %i.jo = load i64, ptr %i.eq, align 8, !alias.scope !261, !noalias !255, !noundef !4 ; 4 uses
  %i.jp = load i64, ptr %i.h, align 8, !range !5, !alias.scope !261, !noalias !255, !noundef !4
  %i.jq = icmp eq i64 %i.jo, %i.jp
  br i1 %i.jq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jr = load ptr, ptr %i.ep, align 8, !alias.scope !261, !noalias !255, !nonnull !4, !noundef !4
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jo
  store float %i.gn, ptr %i.js, align 4, !noalias !255
  %i.jt = add i64 %i.jo, 1                        ; 3 uses
  store i64 %i.jt, ptr %i.eq, align 8, !alias.scope !261, !noalias !255
  %i.ju = fadd float %.sroa.09.0154.i, %i.gn      ; 3 uses
  %exitcond.not.i36 = icmp eq i32 %i.gj, %i.fv
  br i1 %exitcond.not.i36, label %._crit_edge.i37, label %bb.ak

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bf, %bb.bd, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !255
  unreachable

bb.be:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i.i31 unwind label %bb.bf, !noalias !255

bb.bf:                                            ; preds = %bb.be
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body.i unwind label %bb.bg, !noalias !255

bb.bg:                                            ; preds = %bb.bf
end_hunk_4
begin_hunk_5_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEB6_:bb.a
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond178.not.i, label %.loopexit91.i, label %.lr.ph138.i

bb.s:                                             ; preds = %.lr.ph131.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !292
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !293

bb.t:                                             ; preds = %bb.s
  %i.dl = load <4 x float>, ptr %i.m, align 16, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !292
  %i.dm = load float, ptr %.sroa.0.0125.i, align 4, !noalias !293, !noundef !4
  %i.dn = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul <4 x float> %i.dl, %i.do
  %i.dq = fadd <4 x float> %i.cp, %i.dp           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !292
  %i.dr = icmp eq ptr %i.cq, %i.cm
  br i1 %i.dr, label %._crit_edge132.i, label %.lr.ph131.i

bb.u:                                             ; preds = %bb.n
  %i.ds = load i64, ptr %i.ai, align 8, !alias.scope !297, !noalias !292, !noundef !4 ; 4 uses
  %i.dt = load i64, ptr %i.o, align 8, !range !5, !alias.scope !297, !noalias !292, !noundef !4
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !293

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dv = load ptr, ptr %i.ah, align 8, !alias.scope !297, !noalias !292, !nonnull !4, !noundef !4
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ds
  store float %i.cf, ptr %i.dw, align 4, !noalias !293
  %i.dx = add i64 %i.ds, 1                        ; 3 uses
  store i64 %i.dx, ptr %i.ai, align 8, !alias.scope !297, !noalias !292
  %i.dy = fadd float %.sroa.03.0120.i, %i.cf      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.cb, %i.bn
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i, %bb.k
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body58.i

.body58.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !293
  unreachable

.thread76.i:                                      ; preds = %bb.k, %bb.f, %.thread82.i
  %.pn75.i = phi { ptr, i32 } [ %i.af, %bb.f ], [ %lpad.thr_comm.i, %.thread82.i ], [ %lpad.loopexit.split-lp466, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i unwind label %bb.y, !noalias !293

bb.y:                                             ; preds = %.thread76.i
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.body58.i unwind label %bb.z, !noalias !293

bb.z:                                             ; preds = %bb.y
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !293
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i: ; preds = %.thread76.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.body17 unwind label %bb.x, !noalias !293

.body17:                                          ; preds = %bb.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i, %bb.h, %bb.aa, %.body46
  %.pn = phi { ptr, i32 } [ %eh.lpad-body47, %.body46 ], [ %.pn75.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i67.i ], [ %i.av, %bb.h ], [ %i.ec, %bb.aa ], [ %i.iw, %bb.bd ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load413) #18
          to label %common.resume unwind label %bb.bk

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i48, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !292
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !alias.scope !298, !noundef !4 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.eg = load i32, ptr %i.ef, align 4, !alias.scope !298, !noundef !4 ; 4 uses
  %i.eh = icmp ne i32 %i.ee, 0
  %i.ei = icmp eq i32 %i.eg, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.eh, %i.ei
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc43 unwind label %bb.bb

.noexc43:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.av, %bb.ak, %.invoke.i, %.invoke267.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !299

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !299

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ay unwind label %bb.ax, !noalias !299

bb.af:                                            ; preds = %bb.ad
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !299
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !299
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.eg)
          to label %.noexc44 unwind label %bb.bb

.noexc44:                                         ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.el, i64 3, i1 false), !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !299
  store i64 0, ptr %i.h, align 8, !noalias !299
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.en, align 8, !noalias !299
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eo, align 8, !noalias !299
  %i.ep = uitofp i32 %i.ee to float
  %i.eq = uitofp i32 %2 to float
  %i.er = fdiv float %i.ep, %i.eq                 ; 3 uses
  %i.es = fcmp olt float %i.er, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.es, float 1.000000e+00, float %i.er ; 2 uses
  %i.et = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not161.i = icmp eq i32 %2, 0
  br i1 %.not161.i, label %._crit_edge160.i, label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %.noexc44
  %i.eu = zext i32 %i.ee to i64                   ; 3 uses
  %i.ev = add nsw i64 %i.eu, -1
  %i.ew = getelementptr inbounds nuw i8, ptr %switch.load413, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val15.i.i20 = load i64, ptr %i.ex, align 8, !alias.scope !298 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.i21 = load ptr, ptr %i.ey, align 8, !alias.scope !298, !nonnull !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count218.i = zext i32 %2 to i64
  %wide.trip.count213.i = zext i32 %i.eg to i64
  br label %bb.aj

.loopexit91.i36:                                  ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i35, %.preheader.i25
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next216.i, %wide.trip.count218.i
  br i1 %exitcond219.not.i, label %._crit_edge160.i, label %bb.aj

._crit_edge160.i:                                 ; preds = %.loopexit91.i36, %.noexc44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !301
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit55.i unwind label %bb.ah, !noalias !299

bb.ah:                                            ; preds = %._crit_edge160.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body46 unwind label %bb.ai, !noalias !299

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit55.i: ; preds = %._crit_edge160.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bc unwind label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !299
  unreachable

bb.aj:                                            ; preds = %.loopexit91.i36, %.lr.ph159.i
  %indvars.iv215.i = phi i64 [ 0, %.lr.ph159.i ], [ %indvars.iv.next216.i, %.loopexit91.i36 ] ; 4 uses
  %indvars.iv.next216.i = add nuw nsw i64 %indvars.iv215.i, 1 ; 2 uses
  %i.ff = trunc nuw i64 %indvars.iv215.i to i32   ; 2 uses
  %i.fg = uitofp i32 %i.ff to float
  %i.fh = fadd nnan float %i.fg, 5.000000e-01
  %i.fi = fmul float %i.er, %i.fh                 ; 3 uses
  %i.fj = fsub float %i.fi, %i.et
  %i.fk = call float @llvm.floor.f32(float %i.fj)
  %i.fl = call i64 @llvm.fptosi.sat.i64.f32(float %i.fk) ; 2 uses
  %i.fm = icmp slt i64 %i.fl, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fl, i64 range(i64 -1, 4294967296) %i.ev)
  %.sroa.0.0.i.i23 = select i1 %i.fm, i64 0, i64 %..i.i22 ; 3 uses
  %i.fn = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fo = fadd float %i.et, %i.fi
  %i.fp = call float @llvm.ceil.f32(float %i.fo)
  %i.fq = call i64 @llvm.fptosi.sat.i64.f32(float %i.fp) ; 2 uses
  %i.fr = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fs = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fq, %i.fr
  %..i56.i = call i64 @llvm.smin.i64(i64 %i.fq, i64 range(i64 -1, 4294967296) %i.eu)
  %.sroa.0.0.i57.i = select i1 %.not.i24, i64 %..i56.i, i64 %i.fs
  %i.ft = trunc i64 %.sroa.0.0.i57.i to i32       ; 2 uses
  %i.fu = fadd float %i.fi, -5.000000e-01
  store i64 0, ptr %i.eo, align 8, !noalias !299
  %i.fv = icmp ult i32 %i.fn, %i.ft
  br i1 %i.fv, label %.lr.ph.i39, label %.preheader.i25

.lr.ph.i39:                                       ; preds = %bb.aj
  %i.fw = load ptr, ptr %i.ew, align 8, !invariant.load !4, !noalias !299, !nonnull !4
  br label %bb.ak

._crit_edge.i41:                                  ; preds = %bb.aw
  %i.fx = load ptr, ptr %i.en, align 8, !noalias !299, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i42 = shl nuw nsw i64 %i.iq, 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx.i42
  %i.fz = icmp eq i64 %i.iq, 0
  br i1 %i.fz, label %.preheader.i25, label %.lr.ph141.i.preheader

.lr.ph141.i.preheader:                            ; preds = %._crit_edge.i41
  %i.ga = and i64 %i.il, 4611686018427387903      ; 2 uses
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check398 = icmp samesign ult i64 %i.ga, 3
  br i1 %min.iters.check398, label %.lr.ph141.i.preheader418, label %vector.ph399

vector.ph399:                                     ; preds = %.lr.ph141.i.preheader
  %n.vec400 = and i64 %i.gb, 9223372036854775804  ; 3 uses
  %i.gc = shl i64 %n.vec400, 2
  %i.gd = getelementptr i8, ptr %i.fx, i64 %i.gc
  %broadcast.splatinsert401 = insertelement <4 x float> poison, float %i.ir, i64 0
  %broadcast.splat402 = shufflevector <4 x float> %broadcast.splatinsert401, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph399
  %index404 = phi i64 [ 0, %vector.ph399 ], [ %index.next407, %vector.body403 ] ; 2 uses
  %i.ge = shl i64 %index404, 2
  %next.gep405 = getelementptr i8, ptr %i.fx, i64 %i.ge ; 2 uses
  %wide.load406 = load <4 x float>, ptr %next.gep405, align 4, !noalias !299
  %i.gf = fdiv <4 x float> %wide.load406, %broadcast.splat402
  store <4 x float> %i.gf, ptr %next.gep405, align 4, !noalias !299
  %index.next407 = add nuw i64 %index404, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next407, %n.vec400
  br i1 %i.gg, label %middle.block408, label %vector.body403, !llvm.loop !280

middle.block408:                                  ; preds = %vector.body403
  %cmp.n409 = icmp eq i64 %i.gb, %n.vec400
  br i1 %cmp.n409, label %.preheader.i25, label %.lr.ph141.i.preheader418

.lr.ph141.i.preheader418:                         ; preds = %.lr.ph141.i.preheader, %middle.block408
  %.sroa.013.0139.i.ph = phi ptr [ %i.fx, %.lr.ph141.i.preheader ], [ %i.gd, %middle.block408 ]
  br label %.lr.ph141.i

bb.ak:                                            ; preds = %bb.aw, %.lr.ph.i39
  %.sroa.09.0138.i = phi float [ 0.000000e+00, %.lr.ph.i39 ], [ %i.ir, %bb.aw ]
  %.sroa.037.0137.i = phi i32 [ %i.fn, %.lr.ph.i39 ], [ %i.gh, %bb.aw ] ; 2 uses
  %i.gh = add nuw i32 %.sroa.037.0137.i, 1        ; 2 uses
  %i.gi = uitofp i32 %.sroa.037.0137.i to float
  %i.gj = fsub float %i.gi, %i.fu
  %i.gk = fdiv float %i.gj, %.sroa.05.0.i
  %i.gl = invoke noundef float %i.fw(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gk)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !299 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph141.i, %middle.block408, %._crit_edge.i41, %bb.aj
  br i1 %i.ei, label %.loopexit91.i36, label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %.preheader.i25
  %i.gm = call i32 @llvm.usub.sat.i32(i32 %i.ee, i32 %i.fn)
  %wide.trip.count.i26 = zext i32 %i.gm to i64
  br label %bb.al

.lr.ph141.i:                                      ; preds = %.lr.ph141.i.preheader418, %.lr.ph141.i
  %.sroa.013.0139.i = phi ptr [ %i.gn, %.lr.ph141.i ], [ %.sroa.013.0139.i.ph, %.lr.ph141.i.preheader418 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.013.0139.i, i64 4 ; 2 uses
  %i.go = load float, ptr %.sroa.013.0139.i, align 4, !noalias !299, !noundef !4
  %i.gp = fdiv float %i.go, %i.ir
  store float %i.gp, ptr %.sroa.013.0139.i, align 4, !noalias !299
  %i.gq = icmp eq ptr %i.gn, %i.fy
  br i1 %i.gq, label %.preheader.i25, label %.lr.ph141.i, !llvm.loop !281

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i35, %.lr.ph156.i
  %indvars.iv210.i = phi i64 [ 0, %.lr.ph156.i ], [ %indvars.iv.next211.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i35 ] ; 6 uses
  %indvars.iv.next211.i = add nuw nsw i64 %indvars.iv210.i, 1 ; 2 uses
  %i.gr = load ptr, ptr %i.en, align 8, !noalias !299, !nonnull !4, !noundef !4 ; 2 uses
  %i.gs = load i64, ptr %i.eo, align 8, !noalias !299, !noundef !4 ; 2 uses
  %.idx163.i = shl nuw nsw i64 %i.gs, 2
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx163.i
  %i.gu = icmp eq i64 %i.gs, 0
  br i1 %i.gu, label %._crit_edge150.i, label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %bb.al
  %i.gv = mul nuw i64 %indvars.iv210.i, %i.eu
  br label %bb.am

bb.am:                                            ; preds = %bb.at, %.lr.ph149.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph149.i ], [ %indvars.iv.next.i28, %bb.at ] ; 3 uses
  %.sroa.0.0143.i = phi ptr [ %i.gr, %.lr.ph149.i ], [ %i.gx, %bb.at ] ; 2 uses
  %i.gw = phi <4 x float> [ zeroinitializer, %.lr.ph149.i ], [ %i.ij, %bb.at ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0143.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fn                          ; 2 uses
  %exitcond209.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond209.not.i, label %bb.ap, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.gy = add nuw i64 %i.gv, %7
  %i.gz = shl i64 %i.gy, 2                        ; 3 uses
  %i.ha = or disjoint i64 %i.gz, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.ha, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %.invoke267.i, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.gz
  %i.hc = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hb, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !299

bb.ap:                                            ; preds = %bb.am
  %i.hd = trunc nuw i64 %indvars.iv210.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !302
  store i32 %6, ptr %i.f, align 4, !noalias !302
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hd, ptr %i.he, align 4, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !302
  store i32 %i.ee, ptr %i.e, align 4, !noalias !302
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.eg, ptr %i.hf, align 4, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !302
  store ptr %i.f, ptr %i.d, align 8, !noalias !302
  br label %.invoke.i

._crit_edge150.i:                                 ; preds = %bb.at, %bb.al
  %i.hg = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.ij, %bb.at ] ; 3 uses
  %i.hh = fcmp olt <4 x float> %i.hg, zeroinitializer
  %i.hi = fcmp ogt <4 x float> %i.hg, splat (float 1.000000e+00)
  %i.hj = select <4 x i1> %i.hi, <4 x float> splat (float 1.000000e+00), <4 x float> %i.hg
  %i.hk = select <4 x i1> %i.hh, <4 x float> zeroinitializer, <4 x float> %i.hj
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.hl = load i32, ptr %i.ez, align 8, !alias.scope !303, !noalias !299, !noundef !4 ; 2 uses
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  %i.hn = icmp samesign uge i64 %indvars.iv215.i, %i.hm
  %i.ho = load i32, ptr %i.fa, align 4, !alias.scope !303, !noalias !299 ; 2 uses
  %i.hp = zext i32 %i.ho to i64
  %i.hq = icmp samesign uge i64 %indvars.iv210.i, %i.hp
  %or.cond.i69.i = select i1 %i.hn, i1 true, i1 %i.hq, !prof !12
  br i1 %or.cond.i69.i, label %bb.as, label %bb.aq, !prof !12

bb.aq:                                            ; preds = %._crit_edge150.i
  %i.hr = mul nuw i64 %indvars.iv210.i, %i.hm
  %i.hs = add nuw i64 %i.hr, %indvars.iv215.i
  %i.ht = shl i64 %i.hs, 2                        ; 3 uses
  %.val15.i70.i = load i64, ptr %i.fb, align 8, !alias.scope !303, !noalias !299, !noundef !4 ; 2 uses
  %i.hu = or disjoint i64 %i.ht, 3
  %or.cond14.not.i71.i = icmp ult i64 %i.hu, %.val15.i70.i
  br i1 %or.cond14.not.i71.i, label %bb.ar, label %.invoke267.i, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %.val.i72.i = load ptr, ptr %i.fc, align 8, !alias.scope !303, !noalias !299, !nonnull !4, !noundef !4
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.val.i72.i, i64 %i.ht
  %i.hw = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 4 %i.hv, i64 noundef 4)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !299

.invoke267.i:                                     ; preds = %bb.aq, %bb.an
  %.lcssa233.sink.i = phi i64 [ %i.gz, %bb.an ], [ %i.ht, %bb.aq ] ; 2 uses
  %i.hx = phi i64 [ %.val15.i.i20, %bb.an ], [ %.val15.i70.i, %bb.aq ]
  %i.hy = phi ptr [ @9, %bb.an ], [ @8, %bb.aq ]
  %i.hz = add i64 %.lcssa233.sink.i, 4
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa233.sink.i, i64 noundef %i.hz, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hy) #19
          to label %.cont268.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !299

.cont268.i:                                       ; preds = %.invoke267.i
  unreachable

bb.as:                                            ; preds = %._crit_edge150.i
  %i.ia = trunc nuw i64 %indvars.iv210.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !304
  store i32 %i.ff, ptr %i.c, align 4, !noalias !304
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ia, ptr %i.ib, align 4, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !304
  store i32 %i.hl, ptr %i.b, align 4, !noalias !304
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ho, ptr %i.ic, align 4, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !304
  store ptr %i.c, ptr %i.a, align 8, !noalias !304
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.as, %bb.ap
  %.sink272.i.sroa.phi = phi ptr [ %.sink272.i.sroa.gep, %bb.ap ], [ %.sink272.i.sroa.gep55, %bb.as ]
  %.sink272.i.sroa.phi56 = phi ptr [ %.sink272.i.sroa.gep57, %bb.ap ], [ %.sink272.i.sroa.gep58, %bb.as ]
  %.sink272.i.sroa.phi59 = phi ptr [ %.sink272.i.sroa.gep60, %bb.ap ], [ %.sink272.i.sroa.gep61, %bb.as ]
  %.sink272.i = phi ptr [ %i.d, %bb.ap ], [ %i.a, %bb.as ]
  %.sink269.i = phi ptr [ %i.e, %bb.ap ], [ %i.b, %bb.as ]
  %i.id = phi ptr [ @9, %bb.ap ], [ @8, %bb.as ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink272.i.sroa.phi, align 8, !noalias !299
  store ptr %.sink269.i, ptr %.sink272.i.sroa.phi56, align 8, !noalias !299
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink272.i.sroa.phi59, align 8, !noalias !299
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink272.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.id) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !299

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i35: ; preds = %bb.ar
  store <4 x float> %i.hk, ptr %i.hw, align 4, !noalias !299
  %exitcond214.not.i = icmp eq i64 %indvars.iv.next211.i, %wide.trip.count213.i
  br i1 %exitcond214.not.i, label %.loopexit91.i36, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !299
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.hc)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !299

bb.at:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.ie = load float, ptr %.sroa.0.0143.i, align 4, !noalias !299, !noundef !4
  %i.if = load <4 x float>, ptr %i.g, align 16, !noalias !299
  %i.ig = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fmul <4 x float> %i.ih, %i.if
  %i.ij = fadd <4 x float> %i.gw, %i.ii           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !299
  %i.ik = icmp eq ptr %i.gx, %i.gt
  br i1 %i.ik, label %._crit_edge150.i, label %bb.am

bb.au:                                            ; preds = %bb.ak
  %i.il = load i64, ptr %i.eo, align 8, !alias.scope !305, !noalias !299, !noundef !4 ; 4 uses
  %i.im = load i64, ptr %i.h, align 8, !range !5, !alias.scope !305, !noalias !299, !noundef !4
  %i.in = icmp eq i64 %i.il, %i.im
  br i1 %i.in, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !299

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.io = load ptr, ptr %i.en, align 8, !alias.scope !305, !noalias !299, !nonnull !4, !noundef !4
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.il
  store float %i.gl, ptr %i.ip, align 4, !noalias !299
  %i.iq = add i64 %i.il, 1                        ; 3 uses
  store i64 %i.iq, ptr %i.eo, align 8, !alias.scope !305, !noalias !299
  %i.ir = fadd float %.sroa.09.0138.i, %i.gl      ; 3 uses
  %exitcond.not.i40 = icmp eq i32 %i.gh, %i.ft
  br i1 %exitcond.not.i40, label %._crit_edge.i41, label %bb.ak

bb.ax:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.az, %bb.ax, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !299
  unreachable

bb.ay:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31 unwind label %bb.az, !noalias !299

bb.az:                                            ; preds = %bb.ay
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body.i unwind label %bb.ba, !noalias !299

bb.ba:                                            ; preds = %bb.az
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !299
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body46 unwind label %bb.ax, !noalias !299

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit55.i, %bb.ag, %bb.ac
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %bb.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.bb
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.iv, %bb.bb ], [ %i.fd, %bb.ah ], [ %lpad.loopexit.split-lp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i31 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s) #18
          to label %.body17 unwind label %bb.bk

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !299
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i48 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %.body17 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i48: ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.iy = load ptr, ptr %switch.load413, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit
  invoke void %i.iy(ptr noundef nonnull inttoptr (i64 1 to ptr))
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %switch.load413, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
end_hunk_5
begin_hunk_6_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB6_:bb.a
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.loopexit97.i, label %.lr.ph144.i

bb.s:                                             ; preds = %.lr.ph137.i
  store i32 %i.cs, ptr %i.m, align 4, !noalias !336
  %i.dl = invoke noundef i32 @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

bb.t:                                             ; preds = %bb.s
  %i.dm = load float, ptr %.sroa.0.0131.i, align 4, !noalias !337, !noundef !4
  %i.dn = bitcast i32 %i.dl to <4 x i8>
  %i.do = uitofp <4 x i8> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.co, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !336
  %i.dt = icmp eq ptr %i.cp, %i.cl
  br i1 %i.dt, label %._crit_edge138.i, label %.lr.ph137.i

bb.u:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.ah, align 8, !alias.scope !341, !noalias !336, !noundef !4 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !341, !noalias !336, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.ag, align 8, !alias.scope !341, !noalias !336, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  store float %i.ce, ptr %i.dy, align 4, !noalias !337
  %i.dz = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.ah, align 8, !alias.scope !341, !noalias !336
  %i.ea = fadd float %.sroa.03.0126.i, %i.ce      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.k
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body67.i

.body67.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !337
  unreachable

.thread82.i:                                      ; preds = %bb.k, %bb.f, %.thread88.i
  %.pn81.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %lpad.thr_comm.i, %.thread88.i ], [ %lpad.loopexit.split-lp474, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.y, !noalias !337

bb.y:                                             ; preds = %.thread82.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body67.i unwind label %bb.z, !noalias !337

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !337
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.thread82.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body17 unwind label %bb.x, !noalias !337

.body17:                                          ; preds = %bb.bh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.h, %bb.aa, %.body43
  %.pn = phi { ptr, i32 } [ %eh.lpad-body44, %.body43 ], [ %.pn81.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.au, %bb.h ], [ %i.ee, %bb.aa ], [ %i.kb, %bb.bh ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load419) #18
          to label %common.resume unwind label %bb.bo

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !336
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !alias.scope !342, !noundef !4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !342, !noundef !4 ; 4 uses
  %i.ej = icmp ne i32 %i.eg, 0
  %i.ek = icmp eq i32 %i.ei, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc40 unwind label %bb.bf

.noexc40:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.az, %bb.ak, %.invoke.i, %.invoke299.i, %.invoke301.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !343

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !343

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bc unwind label %bb.bb, !noalias !343

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !343
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !343
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.ei)
          to label %.noexc41 unwind label %bb.bf

.noexc41:                                         ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.en, i64 3, i1 false), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !343
  store i64 0, ptr %i.h, align 8, !noalias !343
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ep, align 8, !noalias !343
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !343
  %i.er = uitofp i32 %i.eg to float
  %i.es = uitofp i32 %2 to float
  %i.et = fdiv float %i.er, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not176.i = icmp eq i32 %2, 0
  br i1 %.not176.i, label %._crit_edge175.i, label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.noexc41
  %i.ew = zext i32 %i.eg to i64                   ; 3 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %switch.load419, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val15.i.i20 = load i64, ptr %i.ez, align 8, !alias.scope !342 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i21 = load ptr, ptr %i.fa, align 8, !alias.scope !342, !nonnull !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count241.i = zext i32 %2 to i64
  %wide.trip.count236.i = zext i32 %i.ei to i64
  br label %bb.aj

.loopexit98.i:                                    ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i, label %._crit_edge175.i, label %bb.aj

._crit_edge175.i:                                 ; preds = %.loopexit98.i, %.noexc41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !345
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i unwind label %bb.ah, !noalias !343

bb.ah:                                            ; preds = %._crit_edge175.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body43 unwind label %bb.ai, !noalias !343

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i: ; preds = %._crit_edge175.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bg unwind label %bb.bf

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !343
  unreachable

bb.aj:                                            ; preds = %.loopexit98.i, %.lr.ph174.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph174.i ], [ %indvars.iv.next239.i, %.loopexit98.i ] ; 4 uses
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv238.i to i32   ; 2 uses
  %i.fi = uitofp i32 %i.fh to float
  %i.fj = fadd nnan float %i.fi, 5.000000e-01
  %i.fk = fmul float %i.et, %i.fj                 ; 3 uses
  %i.fl = fsub float %i.fk, %i.ev
  %i.fm = call float @llvm.floor.f32(float %i.fl)
  %i.fn = call i64 @llvm.fptosi.sat.i64.f32(float %i.fm) ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fn, i64 range(i64 -1, 4294967296) %i.ex)
  %.sroa.0.0.i.i23 = select i1 %i.fo, i64 0, i64 %..i.i22 ; 3 uses
  %i.fp = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fq = fadd float %i.ev, %i.fk
  %i.fr = call float @llvm.ceil.f32(float %i.fq)
  %i.fs = call i64 @llvm.fptosi.sat.i64.f32(float %i.fr) ; 2 uses
  %i.ft = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fu = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fs, %i.ft
  %..i59.i = call i64 @llvm.smin.i64(i64 %i.fs, i64 range(i64 -1, 4294967296) %i.ew)
  %.sroa.0.0.i60.i = select i1 %.not.i24, i64 %..i59.i, i64 %i.fu
  %i.fv = trunc i64 %.sroa.0.0.i60.i to i32       ; 2 uses
  %i.fw = fadd float %i.fk, -5.000000e-01
  store i64 0, ptr %i.eq, align 8, !noalias !343
  %i.fx = icmp ult i32 %i.fp, %i.fv
  br i1 %i.fx, label %.lr.ph.i36, label %.preheader.i25

.lr.ph.i36:                                       ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.ey, align 8, !invariant.load !4, !noalias !343, !nonnull !4
  br label %bb.ak

._crit_edge.i38:                                  ; preds = %bb.ba
  %i.fz = load ptr, ptr %i.ep, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i39 = shl nuw nsw i64 %i.jv, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i39
  %i.gb = icmp eq i64 %i.jv, 0
  br i1 %i.gb, label %.preheader.i25, label %.lr.ph156.i.preheader

.lr.ph156.i.preheader:                            ; preds = %._crit_edge.i38
  %i.gc = and i64 %i.jq, 4611686018427387903      ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check404 = icmp samesign ult i64 %i.gc, 3
  br i1 %min.iters.check404, label %.lr.ph156.i.preheader424, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph156.i.preheader
  %n.vec406 = and i64 %i.gd, 9223372036854775804  ; 3 uses
  %i.ge = shl i64 %n.vec406, 2
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  %broadcast.splatinsert407 = insertelement <4 x float> poison, float %i.jw, i64 0
  %broadcast.splat408 = shufflevector <4 x float> %broadcast.splatinsert407, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph405
  %index410 = phi i64 [ 0, %vector.ph405 ], [ %index.next413, %vector.body409 ] ; 2 uses
  %i.gg = shl i64 %index410, 2
  %next.gep411 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %wide.load412 = load <4 x float>, ptr %next.gep411, align 4, !noalias !343
  %i.gh = fdiv <4 x float> %wide.load412, %broadcast.splat408
  store <4 x float> %i.gh, ptr %next.gep411, align 4, !noalias !343
  %index.next413 = add nuw i64 %index410, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next413, %n.vec406
  br i1 %i.gi, label %middle.block414, label %vector.body409, !llvm.loop !324

middle.block414:                                  ; preds = %vector.body409
  %cmp.n415 = icmp eq i64 %i.gd, %n.vec406
  br i1 %cmp.n415, label %.preheader.i25, label %.lr.ph156.i.preheader424

.lr.ph156.i.preheader424:                         ; preds = %.lr.ph156.i.preheader, %middle.block414
  %.sroa.013.0154.i.ph = phi ptr [ %i.fz, %.lr.ph156.i.preheader ], [ %i.gf, %middle.block414 ]
  br label %.lr.ph156.i

bb.ak:                                            ; preds = %bb.ba, %.lr.ph.i36
  %.sroa.09.0153.i = phi float [ 0.000000e+00, %.lr.ph.i36 ], [ %i.jw, %bb.ba ]
  %.sroa.039.0152.i = phi i32 [ %i.fp, %.lr.ph.i36 ], [ %i.gj, %bb.ba ] ; 2 uses
  %i.gj = add nuw i32 %.sroa.039.0152.i, 1        ; 2 uses
  %i.gk = uitofp i32 %.sroa.039.0152.i to float
  %i.gl = fsub float %i.gk, %i.fw
  %i.gm = fdiv float %i.gl, %.sroa.05.0.i
  %i.gn = invoke noundef float %i.fy(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gm)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph156.i, %middle.block414, %._crit_edge.i38, %bb.aj
  br i1 %i.ek, label %.loopexit98.i, label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.preheader.i25
  %i.go = call i32 @llvm.usub.sat.i32(i32 %i.eg, i32 %i.fp)
  %wide.trip.count.i26 = zext i32 %i.go to i64
  br label %bb.al

.lr.ph156.i:                                      ; preds = %.lr.ph156.i.preheader424, %.lr.ph156.i
  %.sroa.013.0154.i = phi ptr [ %i.gp, %.lr.ph156.i ], [ %.sroa.013.0154.i.ph, %.lr.ph156.i.preheader424 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0154.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %.sroa.013.0154.i, align 4, !noalias !343, !noundef !4
  %i.gr = fdiv float %i.gq, %i.jw
  store float %i.gr, ptr %.sroa.013.0154.i, align 4, !noalias !343
  %i.gs = icmp eq ptr %i.gp, %i.ga
  br i1 %i.gs, label %.preheader.i25, label %.lr.ph156.i, !llvm.loop !325

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i, %.lr.ph171.i
  %indvars.iv233.i = phi i64 [ 0, %.lr.ph171.i ], [ %indvars.iv.next234.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.ep, align 8, !noalias !343, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = load i64, ptr %i.eq, align 8, !noalias !343, !noundef !4 ; 2 uses
  %.idx178.i = shl nuw nsw i64 %i.gu, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx178.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %._crit_edge165.i, label %.lr.ph164.i

.lr.ph164.i:                                      ; preds = %bb.al
  %i.gx = mul nuw i64 %indvars.iv233.i, %i.ew
  br label %bb.am

bb.am:                                            ; preds = %bb.ax, %.lr.ph164.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph164.i ], [ %indvars.iv.next.i28, %bb.ax ] ; 3 uses
  %.sroa.0.0158.i = phi ptr [ %i.gt, %.lr.ph164.i ], [ %i.gz, %bb.ax ] ; 2 uses
  %i.gy = phi <4 x float> [ zeroinitializer, %.lr.ph164.i ], [ %i.jo, %bb.ax ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0158.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fp                          ; 2 uses
  %exitcond232.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond232.not.i, label %bb.ap, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.ha = add nuw i64 %i.gx, %7
  %i.hb = shl i64 %i.ha, 2                        ; 3 uses
  %i.hc = or disjoint i64 %i.hb, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hc, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %.invoke299.i, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.hb
  %i.he = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hd, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.ap:                                            ; preds = %bb.am
  %i.hf = trunc nuw i64 %indvars.iv233.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !346
  store i32 %6, ptr %i.f, align 4, !noalias !346
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hf, ptr %i.hg, align 4, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !346
  store i32 %i.eg, ptr %i.e, align 4, !noalias !346
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ei, ptr %i.hh, align 4, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !346
  store ptr %i.f, ptr %i.d, align 8, !noalias !346
  br label %.invoke.i

._crit_edge165.i:                                 ; preds = %bb.ax, %bb.al
  %i.hi = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.jo, %bb.ax ] ; 4 uses
  %i.hj = extractelement <4 x float> %i.hi, i64 0 ; 3 uses
  %i.hk = fcmp olt float %i.hj, 0.000000e+00
  %i.hl = fcmp ogt float %i.hj, 2.550000e+02
  %..i64.i = select i1 %i.hl, float 2.550000e+02, float %i.hj
  %i.hm = call float @llvm.round.f32(float %..i64.i)
  %i.hn = select i1 %i.hk, float 0.000000e+00, float %i.hm ; 3 uses
  %i.ho = fcmp ogt float %i.hn, -1.000000e+00
  %i.hp = fcmp olt float %i.hn, 2.560000e+02
  %or.cond.i.i.i = and i1 %i.ho, %i.hp
  %i.hq = fptoui float %i.hn to i8
  br i1 %or.cond.i.i.i, label %bb.aq, label %.invoke301.i, !prof !16

bb.aq:                                            ; preds = %._crit_edge165.i
  %i.hr = extractelement <4 x float> %i.hi, i64 1 ; 3 uses
  %i.hs = fcmp olt float %i.hr, 0.000000e+00
  %i.ht = fcmp ogt float %i.hr, 2.550000e+02
  %..i66.i = select i1 %i.ht, float 2.550000e+02, float %i.hr
  %i.hu = call float @llvm.round.f32(float %..i66.i)
  %i.hv = select i1 %i.hs, float 0.000000e+00, float %i.hu ; 3 uses
  %i.hw = fcmp ogt float %i.hv, -1.000000e+00
  %i.hx = fcmp olt float %i.hv, 2.560000e+02
  %or.cond.i.i68.i = and i1 %i.hw, %i.hx
  %i.hy = fptoui float %i.hv to i8
  br i1 %or.cond.i.i68.i, label %bb.ar, label %.invoke301.i, !prof !16

bb.ar:                                            ; preds = %bb.aq
  %i.hz = extractelement <4 x float> %i.hi, i64 2 ; 3 uses
  %i.ia = fcmp olt float %i.hz, 0.000000e+00
  %i.ib = fcmp ogt float %i.hz, 2.550000e+02
  %..i70.i33 = select i1 %i.ib, float 2.550000e+02, float %i.hz
  %i.ic = call float @llvm.round.f32(float %..i70.i33)
  %i.id = select i1 %i.ia, float 0.000000e+00, float %i.ic ; 3 uses
  %i.ie = fcmp ogt float %i.id, -1.000000e+00
  %i.if = fcmp olt float %i.id, 2.560000e+02
  %or.cond.i.i72.i = and i1 %i.ie, %i.if
  %i.ig = fptoui float %i.id to i8
  br i1 %or.cond.i.i72.i, label %bb.as, label %.invoke301.i, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.ih = extractelement <4 x float> %i.hi, i64 3 ; 3 uses
  %i.ii = fcmp olt float %i.ih, 0.000000e+00
  %i.ij = fcmp ogt float %i.ih, 2.550000e+02
  %..i74.i = select i1 %i.ij, float 2.550000e+02, float %i.ih
  %i.ik = call float @llvm.round.f32(float %..i74.i)
  %i.il = select i1 %i.ii, float 0.000000e+00, float %i.ik ; 3 uses
  %i.im = fcmp ogt float %i.il, -1.000000e+00
  %i.in = fcmp olt float %i.il, 2.560000e+02
  %or.cond.i.i76.i = and i1 %i.im, %i.in
  br i1 %or.cond.i.i76.i, label %bb.at, label %.invoke301.i, !prof !16

.invoke301.i:                                     ; preds = %bb.as, %bb.ar, %bb.aq, %._crit_edge165.i
  %i.io = phi ptr [ @6, %bb.ar ], [ @5, %bb.aq ], [ @4, %._crit_edge165.i ], [ @7, %bb.as ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.io) #21
          to label %.cont302.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.cont302.i:                                       ; preds = %.invoke301.i
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.ip = fptoui float %i.il to i8
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.ip to i32
  %.sroa.6.0.insert.shift.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i, 24
  %.sroa.5.0.insert.ext.i.i = zext i8 %i.ig to i32
  %.sroa.5.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.i, 16
  %.sroa.5.0.insert.insert.i.i = or disjoint i32 %.sroa.6.0.insert.shift.i.i, %.sroa.5.0.insert.shift.i.i
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.hy to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 8
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.5.0.insert.insert.i.i, %.sroa.4.0.insert.shift.i.i
  %.sroa.01.0.insert.ext.i.i = zext i8 %i.hq to i32
  %.sroa.01.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, %.sroa.01.0.insert.ext.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.iq = load i32, ptr %i.fb, align 8, !alias.scope !347, !noalias !343, !noundef !4 ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = icmp samesign uge i64 %indvars.iv238.i, %i.ir
  %i.it = load i32, ptr %i.fc, align 4, !alias.scope !347, !noalias !343 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = icmp samesign uge i64 %indvars.iv233.i, %i.iu
  %or.cond.i78.i = select i1 %i.is, i1 true, i1 %i.iv, !prof !12
  br i1 %or.cond.i78.i, label %bb.aw, label %bb.au, !prof !12

bb.au:                                            ; preds = %bb.at
  %i.iw = mul nuw i64 %indvars.iv233.i, %i.ir
  %i.ix = add nuw i64 %i.iw, %indvars.iv238.i
  %i.iy = shl i64 %i.ix, 2                        ; 3 uses
  %.val15.i79.i = load i64, ptr %i.fd, align 8, !alias.scope !347, !noalias !343, !noundef !4 ; 2 uses
  %i.iz = or disjoint i64 %i.iy, 3
  %or.cond14.not.i80.i = icmp ult i64 %i.iz, %.val15.i79.i
  br i1 %or.cond14.not.i80.i, label %bb.av, label %.invoke299.i, !prof !13

bb.av:                                            ; preds = %bb.au
  %.val.i81.i = load ptr, ptr %i.fe, align 8, !alias.scope !347, !noalias !343, !nonnull !4, !noundef !4
  %i.ja = getelementptr inbounds nuw i8, ptr %.val.i81.i, i64 %i.iy
  %i.jb = invoke noundef nonnull ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.ja, i64 noundef 4)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.invoke299.i:                                     ; preds = %bb.au, %bb.an
  %.lcssa257.sink.i = phi i64 [ %i.hb, %bb.an ], [ %i.iy, %bb.au ] ; 2 uses
  %i.jc = phi i64 [ %.val15.i.i20, %bb.an ], [ %.val15.i79.i, %bb.au ]
  %i.jd = phi ptr [ @9, %bb.an ], [ @8, %bb.au ]
  %i.je = add i64 %.lcssa257.sink.i, 4
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa257.sink.i, i64 noundef %i.je, i64 noundef %i.jc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd) #19
          to label %.cont300.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.cont300.i:                                       ; preds = %.invoke299.i
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.jf = trunc nuw i64 %indvars.iv233.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !348
  store i32 %i.fh, ptr %i.c, align 4, !noalias !348
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.jf, ptr %i.jg, align 4, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !348
  store i32 %i.iq, ptr %i.b, align 4, !noalias !348
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.it, ptr %i.jh, align 4, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !348
  store ptr %i.c, ptr %i.a, align 8, !noalias !348
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.aw, %bb.ap
  %.sink306.i.sroa.phi = phi ptr [ %.sink306.i.sroa.gep, %bb.ap ], [ %.sink306.i.sroa.gep52, %bb.aw ]
  %.sink306.i.sroa.phi53 = phi ptr [ %.sink306.i.sroa.gep54, %bb.ap ], [ %.sink306.i.sroa.gep55, %bb.aw ]
  %.sink306.i.sroa.phi56 = phi ptr [ %.sink306.i.sroa.gep57, %bb.ap ], [ %.sink306.i.sroa.gep58, %bb.aw ]
  %.sink306.i = phi ptr [ %i.d, %bb.ap ], [ %i.a, %bb.aw ]
  %.sink303.i = phi ptr [ %i.e, %bb.ap ], [ %i.b, %bb.aw ]
  %i.ji = phi ptr [ @9, %bb.ap ], [ @8, %bb.aw ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink306.i.sroa.phi, align 8, !noalias !343
  store ptr %.sink303.i, ptr %.sink306.i.sroa.phi53, align 8, !noalias !343
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink306.i.sroa.phi56, align 8, !noalias !343
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink306.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ji) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i: ; preds = %bb.av
  store i32 %.sroa.01.0.insert.insert.i.i, ptr %i.jb, align 1, !noalias !343
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count236.i
  br i1 %exitcond237.not.i, label %.loopexit98.i, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !343
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.he)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.ax:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.jj = load float, ptr %.sroa.0.0158.i, align 4, !noalias !343, !noundef !4
  %i.jk = load <4 x float>, ptr %i.g, align 16, !noalias !343
  %i.jl = insertelement <4 x float> poison, float %i.jj, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fmul <4 x float> %i.jm, %i.jk
  %i.jo = fadd <4 x float> %i.gy, %i.jn           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !343
  %i.jp = icmp eq ptr %i.gz, %i.gv
  br i1 %i.jp, label %._crit_edge165.i, label %bb.am

bb.ay:                                            ; preds = %bb.ak
  %i.jq = load i64, ptr %i.eq, align 8, !alias.scope !349, !noalias !343, !noundef !4 ; 4 uses
  %i.jr = load i64, ptr %i.h, align 8, !range !5, !alias.scope !349, !noalias !343, !noundef !4
  %i.js = icmp eq i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jt = load ptr, ptr %i.ep, align 8, !alias.scope !349, !noalias !343, !nonnull !4, !noundef !4
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jq
  store float %i.gn, ptr %i.ju, align 4, !noalias !343
  %i.jv = add i64 %i.jq, 1                        ; 3 uses
  store i64 %i.jv, ptr %i.eq, align 8, !alias.scope !349, !noalias !343
  %i.jw = fadd float %.sroa.09.0153.i, %i.gn      ; 3 uses
  %exitcond.not.i37 = icmp eq i32 %i.gj, %i.fv
  br i1 %exitcond.not.i37, label %._crit_edge.i38, label %bb.ak

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bd, %bb.bb, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !343
  unreachable

end_hunk_6
begin_hunk_7_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB6_:bb.a
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.loopexit97.i, label %.lr.ph144.i

bb.s:                                             ; preds = %.lr.ph137.i
  store i64 %i.cs, ptr %i.m, align 8, !noalias !380
  %i.dl = invoke noundef i64 @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !381

bb.t:                                             ; preds = %bb.s
  %i.dm = load float, ptr %.sroa.0.0131.i, align 4, !noalias !381, !noundef !4
  %i.dn = bitcast i64 %i.dl to <4 x i16>
  %i.do = uitofp <4 x i16> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.co, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !380
  %i.dt = icmp eq ptr %i.cp, %i.cl
  br i1 %i.dt, label %._crit_edge138.i, label %.lr.ph137.i

bb.u:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.ah, align 8, !alias.scope !385, !noalias !380, !noundef !4 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !385, !noalias !380, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !381

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.ag, align 8, !alias.scope !385, !noalias !380, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  store float %i.ce, ptr %i.dy, align 4, !noalias !381
  %i.dz = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.ah, align 8, !alias.scope !385, !noalias !380
  %i.ea = fadd float %.sroa.03.0126.i, %i.ce      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.k
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body67.i

.body67.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !381
  unreachable

.thread82.i:                                      ; preds = %bb.k, %bb.f, %.thread88.i
  %.pn81.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %lpad.thr_comm.i, %.thread88.i ], [ %lpad.loopexit.split-lp473, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.y, !noalias !381

bb.y:                                             ; preds = %.thread82.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body67.i unwind label %bb.z, !noalias !381

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !381
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.thread82.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body17 unwind label %bb.x, !noalias !381

.body17:                                          ; preds = %bb.bh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.h, %bb.aa, %.body42
  %.pn = phi { ptr, i32 } [ %eh.lpad-body43, %.body42 ], [ %.pn81.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.au, %bb.h ], [ %i.ee, %bb.aa ], [ %i.kb, %bb.bh ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load418) #18
          to label %common.resume unwind label %bb.bo

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i44, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !380
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !alias.scope !386, !noundef !4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !386, !noundef !4 ; 4 uses
  %i.ej = icmp ne i32 %i.eg, 0
  %i.ek = icmp eq i32 %i.ei, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc39 unwind label %bb.bf

.noexc39:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.az, %bb.ak, %.invoke.i, %.invoke302.i, %.invoke304.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !387

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !387

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bc unwind label %bb.bb, !noalias !387

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !387
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !387
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.ei)
          to label %.noexc40 unwind label %bb.bf

.noexc40:                                         ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.en, i64 3, i1 false), !noalias !388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !387
  store i64 0, ptr %i.h, align 8, !noalias !387
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ep, align 8, !noalias !387
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !387
  %i.er = uitofp i32 %i.eg to float
  %i.es = uitofp i32 %2 to float
  %i.et = fdiv float %i.er, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not179.i = icmp eq i32 %2, 0
  br i1 %.not179.i, label %._crit_edge178.i, label %.lr.ph177.i

.lr.ph177.i:                                      ; preds = %.noexc40
  %i.ew = zext i32 %i.eg to i64                   ; 3 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %switch.load418, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val15.i.i20 = load i64, ptr %i.ez, align 8, !alias.scope !386 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i21 = load ptr, ptr %i.fa, align 8, !alias.scope !386, !nonnull !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count244.i = zext i32 %2 to i64
  %wide.trip.count239.i = zext i32 %i.ei to i64
  br label %bb.aj

.loopexit101.i:                                   ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond245.not.i = icmp eq i64 %indvars.iv.next242.i, %wide.trip.count244.i
  br i1 %exitcond245.not.i, label %._crit_edge178.i, label %bb.aj

._crit_edge178.i:                                 ; preds = %.loopexit101.i, %.noexc40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !389
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i unwind label %bb.ah, !noalias !387

bb.ah:                                            ; preds = %._crit_edge178.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body42 unwind label %bb.ai, !noalias !387

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i: ; preds = %._crit_edge178.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bg unwind label %bb.bf

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !387
  unreachable

bb.aj:                                            ; preds = %.loopexit101.i, %.lr.ph177.i
  %indvars.iv241.i = phi i64 [ 0, %.lr.ph177.i ], [ %indvars.iv.next242.i, %.loopexit101.i ] ; 4 uses
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv241.i to i32   ; 2 uses
  %i.fi = uitofp i32 %i.fh to float
  %i.fj = fadd nnan float %i.fi, 5.000000e-01
  %i.fk = fmul float %i.et, %i.fj                 ; 3 uses
  %i.fl = fsub float %i.fk, %i.ev
  %i.fm = call float @llvm.floor.f32(float %i.fl)
  %i.fn = call i64 @llvm.fptosi.sat.i64.f32(float %i.fm) ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fn, i64 range(i64 -1, 4294967296) %i.ex)
  %.sroa.0.0.i.i23 = select i1 %i.fo, i64 0, i64 %..i.i22 ; 3 uses
  %i.fp = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fq = fadd float %i.ev, %i.fk
  %i.fr = call float @llvm.ceil.f32(float %i.fq)
  %i.fs = call i64 @llvm.fptosi.sat.i64.f32(float %i.fr) ; 2 uses
  %i.ft = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fu = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fs, %i.ft
  %..i59.i = call i64 @llvm.smin.i64(i64 %i.fs, i64 range(i64 -1, 4294967296) %i.ew)
  %.sroa.0.0.i60.i = select i1 %.not.i24, i64 %..i59.i, i64 %i.fu
  %i.fv = trunc i64 %.sroa.0.0.i60.i to i32       ; 2 uses
  %i.fw = fadd float %i.fk, -5.000000e-01
  store i64 0, ptr %i.eq, align 8, !noalias !387
  %i.fx = icmp ult i32 %i.fp, %i.fv
  br i1 %i.fx, label %.lr.ph.i35, label %.preheader.i25

.lr.ph.i35:                                       ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.ey, align 8, !invariant.load !4, !noalias !387, !nonnull !4
  br label %bb.ak

._crit_edge.i37:                                  ; preds = %bb.ba
  %i.fz = load ptr, ptr %i.ep, align 8, !noalias !387, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i38 = shl nuw nsw i64 %i.jv, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i38
  %i.gb = icmp eq i64 %i.jv, 0
  br i1 %i.gb, label %.preheader.i25, label %.lr.ph159.i.preheader

.lr.ph159.i.preheader:                            ; preds = %._crit_edge.i37
  %i.gc = and i64 %i.jq, 4611686018427387903      ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check403 = icmp samesign ult i64 %i.gc, 3
  br i1 %min.iters.check403, label %.lr.ph159.i.preheader423, label %vector.ph404

vector.ph404:                                     ; preds = %.lr.ph159.i.preheader
  %n.vec405 = and i64 %i.gd, 9223372036854775804  ; 3 uses
  %i.ge = shl i64 %n.vec405, 2
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  %broadcast.splatinsert406 = insertelement <4 x float> poison, float %i.jw, i64 0
  %broadcast.splat407 = shufflevector <4 x float> %broadcast.splatinsert406, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph404
  %index409 = phi i64 [ 0, %vector.ph404 ], [ %index.next412, %vector.body408 ] ; 2 uses
  %i.gg = shl i64 %index409, 2
  %next.gep410 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %wide.load411 = load <4 x float>, ptr %next.gep410, align 4, !noalias !387
  %i.gh = fdiv <4 x float> %wide.load411, %broadcast.splat407
  store <4 x float> %i.gh, ptr %next.gep410, align 4, !noalias !387
  %index.next412 = add nuw i64 %index409, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next412, %n.vec405
  br i1 %i.gi, label %middle.block413, label %vector.body408, !llvm.loop !368

middle.block413:                                  ; preds = %vector.body408
  %cmp.n414 = icmp eq i64 %i.gd, %n.vec405
  br i1 %cmp.n414, label %.preheader.i25, label %.lr.ph159.i.preheader423

.lr.ph159.i.preheader423:                         ; preds = %.lr.ph159.i.preheader, %middle.block413
  %.sroa.013.0157.i.ph = phi ptr [ %i.fz, %.lr.ph159.i.preheader ], [ %i.gf, %middle.block413 ]
  br label %.lr.ph159.i

bb.ak:                                            ; preds = %bb.ba, %.lr.ph.i35
  %.sroa.09.0156.i = phi float [ 0.000000e+00, %.lr.ph.i35 ], [ %i.jw, %bb.ba ]
  %.sroa.039.0155.i = phi i32 [ %i.fp, %.lr.ph.i35 ], [ %i.gj, %bb.ba ] ; 2 uses
  %i.gj = add nuw i32 %.sroa.039.0155.i, 1        ; 2 uses
  %i.gk = uitofp i32 %.sroa.039.0155.i to float
  %i.gl = fsub float %i.gk, %i.fw
  %i.gm = fdiv float %i.gl, %.sroa.05.0.i
  %i.gn = invoke noundef float %i.fy(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gm)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph159.i, %middle.block413, %._crit_edge.i37, %bb.aj
  br i1 %i.ek, label %.loopexit101.i, label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.preheader.i25
  %i.go = call i32 @llvm.usub.sat.i32(i32 %i.eg, i32 %i.fp)
  %wide.trip.count.i26 = zext i32 %i.go to i64
  br label %bb.al

.lr.ph159.i:                                      ; preds = %.lr.ph159.i.preheader423, %.lr.ph159.i
  %.sroa.013.0157.i = phi ptr [ %i.gp, %.lr.ph159.i ], [ %.sroa.013.0157.i.ph, %.lr.ph159.i.preheader423 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0157.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %.sroa.013.0157.i, align 4, !noalias !387, !noundef !4
  %i.gr = fdiv float %i.gq, %i.jw
  store float %i.gr, ptr %.sroa.013.0157.i, align 4, !noalias !387
  %i.gs = icmp eq ptr %i.gp, %i.ga
  br i1 %i.gs, label %.preheader.i25, label %.lr.ph159.i, !llvm.loop !369

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i, %.lr.ph174.i
  %indvars.iv236.i = phi i64 [ 0, %.lr.ph174.i ], [ %indvars.iv.next237.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next237.i = add nuw nsw i64 %indvars.iv236.i, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.ep, align 8, !noalias !387, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = load i64, ptr %i.eq, align 8, !noalias !387, !noundef !4 ; 2 uses
  %.idx181.i = shl nuw nsw i64 %i.gu, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx181.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %._crit_edge168.i, label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %bb.al
  %i.gx = mul nuw i64 %indvars.iv236.i, %i.ew
  br label %bb.am

bb.am:                                            ; preds = %bb.ax, %.lr.ph167.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph167.i ], [ %indvars.iv.next.i28, %bb.ax ] ; 3 uses
  %.sroa.0.0161.i = phi ptr [ %i.gt, %.lr.ph167.i ], [ %i.gz, %bb.ax ] ; 2 uses
  %i.gy = phi <4 x float> [ zeroinitializer, %.lr.ph167.i ], [ %i.jo, %bb.ax ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0161.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fp                          ; 2 uses
  %exitcond235.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond235.not.i, label %bb.ap, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.ha = add nuw i64 %i.gx, %7
  %i.hb = shl i64 %i.ha, 2                        ; 3 uses
  %i.hc = or disjoint i64 %i.hb, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hc, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %.invoke302.i, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.hb
  %i.he = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hd, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

bb.ap:                                            ; preds = %bb.am
  %i.hf = trunc nuw i64 %indvars.iv236.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !390
  store i32 %6, ptr %i.f, align 4, !noalias !390
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hf, ptr %i.hg, align 4, !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !390
  store i32 %i.eg, ptr %i.e, align 4, !noalias !390
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ei, ptr %i.hh, align 4, !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !390
  store ptr %i.f, ptr %i.d, align 8, !noalias !390
  br label %.invoke.i

._crit_edge168.i:                                 ; preds = %bb.ax, %bb.al
  %i.hi = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.jo, %bb.ax ] ; 4 uses
  %i.hj = extractelement <4 x float> %i.hi, i64 0 ; 3 uses
  %i.hk = fcmp olt float %i.hj, 0.000000e+00
  %i.hl = fcmp ogt float %i.hj, 6.553500e+04
  %..i64.i = select i1 %i.hl, float 6.553500e+04, float %i.hj
  %i.hm = call float @llvm.round.f32(float %..i64.i)
  %i.hn = select i1 %i.hk, float 0.000000e+00, float %i.hm ; 3 uses
  %i.ho = fcmp ogt float %i.hn, -1.000000e+00
  %i.hp = fcmp olt float %i.hn, 6.553600e+04
  %or.cond.i.i.i = and i1 %i.ho, %i.hp
  %i.hq = fptoui float %i.hn to i16
  br i1 %or.cond.i.i.i, label %bb.aq, label %.invoke304.i, !prof !16

bb.aq:                                            ; preds = %._crit_edge168.i
  %i.hr = extractelement <4 x float> %i.hi, i64 1 ; 3 uses
  %i.hs = fcmp olt float %i.hr, 0.000000e+00
  %i.ht = fcmp ogt float %i.hr, 6.553500e+04
  %..i66.i = select i1 %i.ht, float 6.553500e+04, float %i.hr
  %i.hu = call float @llvm.round.f32(float %..i66.i)
  %i.hv = select i1 %i.hs, float 0.000000e+00, float %i.hu ; 3 uses
  %i.hw = fcmp ogt float %i.hv, -1.000000e+00
  %i.hx = fcmp olt float %i.hv, 6.553600e+04
  %or.cond.i.i68.i = and i1 %i.hw, %i.hx
  %i.hy = fptoui float %i.hv to i16
  br i1 %or.cond.i.i68.i, label %bb.ar, label %.invoke304.i, !prof !16

bb.ar:                                            ; preds = %bb.aq
  %i.hz = extractelement <4 x float> %i.hi, i64 2 ; 3 uses
  %i.ia = fcmp olt float %i.hz, 0.000000e+00
  %i.ib = fcmp ogt float %i.hz, 6.553500e+04
  %..i71.i = select i1 %i.ib, float 6.553500e+04, float %i.hz
  %i.ic = call float @llvm.round.f32(float %..i71.i)
  %i.id = select i1 %i.ia, float 0.000000e+00, float %i.ic ; 3 uses
  %i.ie = fcmp ogt float %i.id, -1.000000e+00
  %i.if = fcmp olt float %i.id, 6.553600e+04
  %or.cond.i.i73.i = and i1 %i.ie, %i.if
  %i.ig = fptoui float %i.id to i16
  br i1 %or.cond.i.i73.i, label %bb.as, label %.invoke304.i, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.ih = extractelement <4 x float> %i.hi, i64 3 ; 3 uses
  %i.ii = fcmp olt float %i.ih, 0.000000e+00
  %i.ij = fcmp ogt float %i.ih, 6.553500e+04
  %..i76.i = select i1 %i.ij, float 6.553500e+04, float %i.ih
  %i.ik = call float @llvm.round.f32(float %..i76.i)
  %i.il = select i1 %i.ii, float 0.000000e+00, float %i.ik ; 3 uses
  %i.im = fcmp ogt float %i.il, -1.000000e+00
  %i.in = fcmp olt float %i.il, 6.553600e+04
  %or.cond.i.i78.i = and i1 %i.im, %i.in
  br i1 %or.cond.i.i78.i, label %bb.at, label %.invoke304.i, !prof !16

.invoke304.i:                                     ; preds = %bb.as, %bb.ar, %bb.aq, %._crit_edge168.i
  %i.io = phi ptr [ @6, %bb.ar ], [ @5, %bb.aq ], [ @4, %._crit_edge168.i ], [ @7, %bb.as ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.io) #21
          to label %.cont305.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

.cont305.i:                                       ; preds = %.invoke304.i
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.ip = fptoui float %i.il to i16
  %.sroa.6.0.insert.ext.i.i = zext i16 %i.ip to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw i64 %.sroa.6.0.insert.ext.i.i, 48
  %.sroa.5.0.insert.ext.i.i = zext i16 %i.ig to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.5.0.insert.insert.i.i = or disjoint i64 %.sroa.6.0.insert.shift.i.i, %.sroa.5.0.insert.shift.i.i
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.hy to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.4.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i, %.sroa.4.0.insert.shift.i.i
  %.sroa.01.0.insert.ext.i.i = zext i16 %i.hq to i64
  %.sroa.01.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i, %.sroa.01.0.insert.ext.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.iq = load i32, ptr %i.fb, align 8, !alias.scope !391, !noalias !387, !noundef !4 ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = icmp samesign uge i64 %indvars.iv241.i, %i.ir
  %i.it = load i32, ptr %i.fc, align 4, !alias.scope !391, !noalias !387 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = icmp samesign uge i64 %indvars.iv236.i, %i.iu
  %or.cond.i81.i = select i1 %i.is, i1 true, i1 %i.iv, !prof !12
  br i1 %or.cond.i81.i, label %bb.aw, label %bb.au, !prof !12

bb.au:                                            ; preds = %bb.at
  %i.iw = mul nuw i64 %indvars.iv236.i, %i.ir
  %i.ix = add nuw i64 %i.iw, %indvars.iv241.i
  %i.iy = shl i64 %i.ix, 2                        ; 3 uses
  %.val15.i82.i = load i64, ptr %i.fd, align 8, !alias.scope !391, !noalias !387, !noundef !4 ; 2 uses
  %i.iz = or disjoint i64 %i.iy, 3
  %or.cond14.not.i83.i = icmp ult i64 %i.iz, %.val15.i82.i
  br i1 %or.cond14.not.i83.i, label %bb.av, label %.invoke302.i, !prof !13

bb.av:                                            ; preds = %bb.au
  %.val.i84.i = load ptr, ptr %i.fe, align 8, !alias.scope !391, !noalias !387, !nonnull !4, !noundef !4
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %.val.i84.i, i64 %i.iy
  %i.jb = invoke noundef nonnull align 2 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.ja, i64 noundef 4)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

.invoke302.i:                                     ; preds = %bb.au, %bb.an
  %.lcssa260.sink.i = phi i64 [ %i.hb, %bb.an ], [ %i.iy, %bb.au ] ; 2 uses
  %i.jc = phi i64 [ %.val15.i.i20, %bb.an ], [ %.val15.i82.i, %bb.au ]
  %i.jd = phi ptr [ @9, %bb.an ], [ @8, %bb.au ]
  %i.je = add i64 %.lcssa260.sink.i, 4
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa260.sink.i, i64 noundef %i.je, i64 noundef %i.jc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jd) #19
          to label %.cont303.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

.cont303.i:                                       ; preds = %.invoke302.i
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.jf = trunc nuw i64 %indvars.iv236.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !392
  store i32 %i.fh, ptr %i.c, align 4, !noalias !392
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.jf, ptr %i.jg, align 4, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !392
  store i32 %i.iq, ptr %i.b, align 4, !noalias !392
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.it, ptr %i.jh, align 4, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !392
  store ptr %i.c, ptr %i.a, align 8, !noalias !392
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.aw, %bb.ap
  %.sink309.i.sroa.phi = phi ptr [ %.sink309.i.sroa.gep, %bb.ap ], [ %.sink309.i.sroa.gep51, %bb.aw ]
  %.sink309.i.sroa.phi52 = phi ptr [ %.sink309.i.sroa.gep53, %bb.ap ], [ %.sink309.i.sroa.gep54, %bb.aw ]
  %.sink309.i.sroa.phi55 = phi ptr [ %.sink309.i.sroa.gep56, %bb.ap ], [ %.sink309.i.sroa.gep57, %bb.aw ]
  %.sink309.i = phi ptr [ %i.d, %bb.ap ], [ %i.a, %bb.aw ]
  %.sink306.i = phi ptr [ %i.e, %bb.ap ], [ %i.b, %bb.aw ]
  %i.ji = phi ptr [ @9, %bb.ap ], [ @8, %bb.aw ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink309.i.sroa.phi, align 8, !noalias !387
  store ptr %.sink306.i, ptr %.sink309.i.sroa.phi52, align 8, !noalias !387
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink309.i.sroa.phi55, align 8, !noalias !387
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink309.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ji) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i: ; preds = %bb.av
  store i64 %.sroa.01.0.insert.insert.i.i, ptr %i.jb, align 2, !noalias !387
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next237.i, %wide.trip.count239.i
  br i1 %exitcond240.not.i, label %.loopexit101.i, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !387
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.he)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

bb.ax:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.jj = load float, ptr %.sroa.0.0161.i, align 4, !noalias !387, !noundef !4
  %i.jk = load <4 x float>, ptr %i.g, align 16, !noalias !387
  %i.jl = insertelement <4 x float> poison, float %i.jj, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fmul <4 x float> %i.jm, %i.jk
  %i.jo = fadd <4 x float> %i.gy, %i.jn           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !387
  %i.jp = icmp eq ptr %i.gz, %i.gv
  br i1 %i.jp, label %._crit_edge168.i, label %bb.am

bb.ay:                                            ; preds = %bb.ak
  %i.jq = load i64, ptr %i.eq, align 8, !alias.scope !393, !noalias !387, !noundef !4 ; 4 uses
  %i.jr = load i64, ptr %i.h, align 8, !range !5, !alias.scope !393, !noalias !387, !noundef !4
  %i.js = icmp eq i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jt = load ptr, ptr %i.ep, align 8, !alias.scope !393, !noalias !387, !nonnull !4, !noundef !4
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jq
  store float %i.gn, ptr %i.ju, align 4, !noalias !387
  %i.jv = add i64 %i.jq, 1                        ; 3 uses
  store i64 %i.jv, ptr %i.eq, align 8, !alias.scope !393, !noalias !387
  %i.jw = fadd float %.sroa.09.0156.i, %i.gn      ; 3 uses
  %exitcond.not.i36 = icmp eq i32 %i.gj, %i.fv
  br i1 %exitcond.not.i36, label %._crit_edge.i37, label %bb.ak

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bd, %bb.bb, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !387
  unreachable

end_hunk_7
begin_hunk_8_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB6_:bb.a
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.loopexit97.i, label %.lr.ph144.i

bb.s:                                             ; preds = %.lr.ph137.i
  store i16 %i.cs, ptr %i.m, align 2, !noalias !424
  %i.dl = invoke noundef i32 @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel9channels4B8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !425

bb.t:                                             ; preds = %bb.s
  %i.dm = load float, ptr %.sroa.0.0131.i, align 4, !noalias !425, !noundef !4
  %i.dn = bitcast i32 %i.dl to <4 x i8>
  %i.do = uitofp <4 x i8> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.co, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !424
  %i.dt = icmp eq ptr %i.cp, %i.cl
  br i1 %i.dt, label %._crit_edge138.i, label %.lr.ph137.i

bb.u:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.ah, align 8, !alias.scope !429, !noalias !424, !noundef !4 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !429, !noalias !424, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !425

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.ag, align 8, !alias.scope !429, !noalias !424, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  store float %i.ce, ptr %i.dy, align 4, !noalias !425
  %i.dz = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.ah, align 8, !alias.scope !429, !noalias !424
  %i.ea = fadd float %.sroa.03.0126.i, %i.ce      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.k
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body67.i

.body67.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !425
  unreachable

.thread82.i:                                      ; preds = %bb.k, %bb.f, %.thread88.i
  %.pn81.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %lpad.thr_comm.i, %.thread88.i ], [ %lpad.loopexit.split-lp468, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.y, !noalias !425

bb.y:                                             ; preds = %.thread82.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body67.i unwind label %bb.z, !noalias !425

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !425
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.thread82.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body17 unwind label %bb.x, !noalias !425

.body17:                                          ; preds = %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.h, %bb.aa, %.body43
  %.pn = phi { ptr, i32 } [ %eh.lpad-body44, %.body43 ], [ %.pn81.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.au, %bb.h ], [ %i.ee, %bb.aa ], [ %i.kc, %bb.bj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load414) #18
          to label %common.resume unwind label %bb.bq

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i45, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !424
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !alias.scope !430, !noundef !4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !430, !noundef !4 ; 4 uses
  %i.ej = icmp ne i32 %i.eg, 0
  %i.ek = icmp eq i32 %i.ei, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc40 unwind label %bb.bh

.noexc40:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.bb, %bb.ak, %.invoke.i, %.invoke298.i, %.invoke300.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !431

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !431

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.be unwind label %bb.bd, !noalias !431

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !431
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !431
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.ei)
          to label %.noexc41 unwind label %bb.bh

.noexc41:                                         ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.en, i64 3, i1 false), !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !431
  store i64 0, ptr %i.h, align 8, !noalias !431
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ep, align 8, !noalias !431
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !431
  %i.er = uitofp i32 %i.eg to float
  %i.es = uitofp i32 %2 to float
  %i.et = fdiv float %i.er, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not176.i = icmp eq i32 %2, 0
  br i1 %.not176.i, label %._crit_edge175.i, label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.noexc41
  %i.ew = zext i32 %i.eg to i64                   ; 3 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %switch.load414, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val15.i.i20 = load i64, ptr %i.ez, align 8, !alias.scope !430 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i21 = load ptr, ptr %i.fa, align 8, !alias.scope !430, !nonnull !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count241.i = zext i32 %2 to i64
  %wide.trip.count236.i = zext i32 %i.ei to i64
  br label %bb.aj

.loopexit98.i:                                    ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i, label %._crit_edge175.i, label %bb.aj

._crit_edge175.i:                                 ; preds = %.loopexit98.i, %.noexc41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !433
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i unwind label %bb.ah, !noalias !431

bb.ah:                                            ; preds = %._crit_edge175.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body43 unwind label %bb.ai, !noalias !431

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i: ; preds = %._crit_edge175.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bi unwind label %bb.bh

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !431
  unreachable

bb.aj:                                            ; preds = %.loopexit98.i, %.lr.ph174.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph174.i ], [ %indvars.iv.next239.i, %.loopexit98.i ] ; 4 uses
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv238.i to i32   ; 2 uses
  %i.fi = uitofp i32 %i.fh to float
  %i.fj = fadd nnan float %i.fi, 5.000000e-01
  %i.fk = fmul float %i.et, %i.fj                 ; 3 uses
  %i.fl = fsub float %i.fk, %i.ev
  %i.fm = call float @llvm.floor.f32(float %i.fl)
  %i.fn = call i64 @llvm.fptosi.sat.i64.f32(float %i.fm) ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fn, i64 range(i64 -1, 4294967296) %i.ex)
  %.sroa.0.0.i.i23 = select i1 %i.fo, i64 0, i64 %..i.i22 ; 3 uses
  %i.fp = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fq = fadd float %i.ev, %i.fk
  %i.fr = call float @llvm.ceil.f32(float %i.fq)
  %i.fs = call i64 @llvm.fptosi.sat.i64.f32(float %i.fr) ; 2 uses
  %i.ft = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fu = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fs, %i.ft
  %..i59.i = call i64 @llvm.smin.i64(i64 %i.fs, i64 range(i64 -1, 4294967296) %i.ew)
  %.sroa.0.0.i60.i = select i1 %.not.i24, i64 %..i59.i, i64 %i.fu
  %i.fv = trunc i64 %.sroa.0.0.i60.i to i32       ; 2 uses
  %i.fw = fadd float %i.fk, -5.000000e-01
  store i64 0, ptr %i.eq, align 8, !noalias !431
  %i.fx = icmp ult i32 %i.fp, %i.fv
  br i1 %i.fx, label %.lr.ph.i36, label %.preheader.i25

.lr.ph.i36:                                       ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.ey, align 8, !invariant.load !4, !noalias !431, !nonnull !4
  br label %bb.ak

._crit_edge.i38:                                  ; preds = %bb.bc
  %i.fz = load ptr, ptr %i.ep, align 8, !noalias !431, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i39 = shl nuw nsw i64 %i.jw, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i39
  %i.gb = icmp eq i64 %i.jw, 0
  br i1 %i.gb, label %.preheader.i25, label %.lr.ph156.i.preheader

.lr.ph156.i.preheader:                            ; preds = %._crit_edge.i38
  %i.gc = and i64 %i.jr, 4611686018427387903      ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check399 = icmp samesign ult i64 %i.gc, 3
  br i1 %min.iters.check399, label %.lr.ph156.i.preheader418, label %vector.ph400

vector.ph400:                                     ; preds = %.lr.ph156.i.preheader
  %n.vec401 = and i64 %i.gd, 9223372036854775804  ; 3 uses
  %i.ge = shl i64 %n.vec401, 2
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  %broadcast.splatinsert402 = insertelement <4 x float> poison, float %i.jx, i64 0
  %broadcast.splat403 = shufflevector <4 x float> %broadcast.splatinsert402, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph400
  %index405 = phi i64 [ 0, %vector.ph400 ], [ %index.next408, %vector.body404 ] ; 2 uses
  %i.gg = shl i64 %index405, 2
  %next.gep406 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %wide.load407 = load <4 x float>, ptr %next.gep406, align 4, !noalias !431
  %i.gh = fdiv <4 x float> %wide.load407, %broadcast.splat403
  store <4 x float> %i.gh, ptr %next.gep406, align 4, !noalias !431
  %index.next408 = add nuw i64 %index405, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next408, %n.vec401
  br i1 %i.gi, label %middle.block409, label %vector.body404, !llvm.loop !412

middle.block409:                                  ; preds = %vector.body404
  %cmp.n410 = icmp eq i64 %i.gd, %n.vec401
  br i1 %cmp.n410, label %.preheader.i25, label %.lr.ph156.i.preheader418

.lr.ph156.i.preheader418:                         ; preds = %.lr.ph156.i.preheader, %middle.block409
  %.sroa.013.0154.i.ph = phi ptr [ %i.fz, %.lr.ph156.i.preheader ], [ %i.gf, %middle.block409 ]
  br label %.lr.ph156.i

bb.ak:                                            ; preds = %bb.bc, %.lr.ph.i36
  %.sroa.09.0153.i = phi float [ 0.000000e+00, %.lr.ph.i36 ], [ %i.jx, %bb.bc ]
  %.sroa.039.0152.i = phi i32 [ %i.fp, %.lr.ph.i36 ], [ %i.gj, %bb.bc ] ; 2 uses
  %i.gj = add nuw i32 %.sroa.039.0152.i, 1        ; 2 uses
  %i.gk = uitofp i32 %.sroa.039.0152.i to float
  %i.gl = fsub float %i.gk, %i.fw
  %i.gm = fdiv float %i.gl, %.sroa.05.0.i
  %i.gn = invoke noundef float %i.fy(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gm)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !431 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph156.i, %middle.block409, %._crit_edge.i38, %bb.aj
  br i1 %i.ek, label %.loopexit98.i, label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.preheader.i25
  %i.go = call i32 @llvm.usub.sat.i32(i32 %i.eg, i32 %i.fp)
  %wide.trip.count.i26 = zext i32 %i.go to i64
  br label %bb.al

.lr.ph156.i:                                      ; preds = %.lr.ph156.i.preheader418, %.lr.ph156.i
  %.sroa.013.0154.i = phi ptr [ %i.gp, %.lr.ph156.i ], [ %.sroa.013.0154.i.ph, %.lr.ph156.i.preheader418 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0154.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %.sroa.013.0154.i, align 4, !noalias !431, !noundef !4
  %i.gr = fdiv float %i.gq, %i.jx
  store float %i.gr, ptr %.sroa.013.0154.i, align 4, !noalias !431
  %i.gs = icmp eq ptr %i.gp, %i.ga
  br i1 %i.gs, label %.preheader.i25, label %.lr.ph156.i, !llvm.loop !413

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i, %.lr.ph171.i
  %indvars.iv233.i = phi i64 [ 0, %.lr.ph171.i ], [ %indvars.iv.next234.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.ep, align 8, !noalias !431, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = load i64, ptr %i.eq, align 8, !noalias !431, !noundef !4 ; 2 uses
  %.idx178.i = shl nuw nsw i64 %i.gu, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx178.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %._crit_edge165.i, label %.lr.ph164.i

.lr.ph164.i:                                      ; preds = %bb.al
  %i.gx = mul nuw i64 %indvars.iv233.i, %i.ew
  br label %bb.am

bb.am:                                            ; preds = %bb.az, %.lr.ph164.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph164.i ], [ %indvars.iv.next.i28, %bb.az ] ; 3 uses
  %.sroa.0.0158.i = phi ptr [ %i.gt, %.lr.ph164.i ], [ %i.gz, %bb.az ] ; 2 uses
  %i.gy = phi <4 x float> [ zeroinitializer, %.lr.ph164.i ], [ %i.jp, %bb.az ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0158.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fp                          ; 2 uses
  %exitcond232.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond232.not.i, label %bb.aq, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.ha = add nuw i64 %i.gx, %7
  %i.hb = shl i64 %i.ha, 2                        ; 4 uses
  %i.hc = or disjoint i64 %i.hb, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hc, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.hb
  %i.he = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hd, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !431

bb.ap:                                            ; preds = %bb.an
  %i.hf = add i64 %i.hb, 4
  br label %.invoke298.i

bb.aq:                                            ; preds = %bb.am
  %i.hg = trunc nuw i64 %indvars.iv233.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !434
  store i32 %6, ptr %i.f, align 4, !noalias !434
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hg, ptr %i.hh, align 4, !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !434
  store i32 %i.eg, ptr %i.e, align 4, !noalias !434
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ei, ptr %i.hi, align 4, !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !434
  store ptr %i.f, ptr %i.d, align 8, !noalias !434
  br label %.invoke.i

._crit_edge165.i:                                 ; preds = %bb.az, %bb.al
  %i.hj = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.jp, %bb.az ] ; 4 uses
  %i.hk = extractelement <4 x float> %i.hj, i64 0 ; 3 uses
  %i.hl = fcmp olt float %i.hk, 0.000000e+00
  %i.hm = fcmp ogt float %i.hk, 2.550000e+02
  %..i64.i = select i1 %i.hm, float 2.550000e+02, float %i.hk
  %i.hn = call float @llvm.round.f32(float %..i64.i)
  %i.ho = select i1 %i.hl, float 0.000000e+00, float %i.hn ; 3 uses
  %i.hp = fcmp ogt float %i.ho, -1.000000e+00
  %i.hq = fcmp olt float %i.ho, 2.560000e+02
  %or.cond.i.i.i = and i1 %i.hp, %i.hq
  %i.hr = fptoui float %i.ho to i8
  br i1 %or.cond.i.i.i, label %bb.ar, label %.invoke300.i, !prof !16

bb.ar:                                            ; preds = %._crit_edge165.i
  %i.hs = extractelement <4 x float> %i.hj, i64 1 ; 3 uses
  %i.ht = fcmp olt float %i.hs, 0.000000e+00
  %i.hu = fcmp ogt float %i.hs, 2.550000e+02
  %..i66.i = select i1 %i.hu, float 2.550000e+02, float %i.hs
  %i.hv = call float @llvm.round.f32(float %..i66.i)
  %i.hw = select i1 %i.ht, float 0.000000e+00, float %i.hv ; 3 uses
  %i.hx = fcmp ogt float %i.hw, -1.000000e+00
  %i.hy = fcmp olt float %i.hw, 2.560000e+02
  %or.cond.i.i68.i = and i1 %i.hx, %i.hy
  %i.hz = fptoui float %i.hw to i8
  br i1 %or.cond.i.i68.i, label %bb.as, label %.invoke300.i, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.ia = extractelement <4 x float> %i.hj, i64 2 ; 3 uses
  %i.ib = fcmp olt float %i.ia, 0.000000e+00
  %i.ic = fcmp ogt float %i.ia, 2.550000e+02
  %..i70.i33 = select i1 %i.ic, float 2.550000e+02, float %i.ia
  %i.id = call float @llvm.round.f32(float %..i70.i33)
  %i.ie = select i1 %i.ib, float 0.000000e+00, float %i.id ; 2 uses
  %i.if = fcmp ogt float %i.ie, -1.000000e+00
  %i.ig = fcmp olt float %i.ie, 2.560000e+02
  %or.cond.i.i72.i = and i1 %i.if, %i.ig
  br i1 %or.cond.i.i72.i, label %bb.at, label %.invoke300.i, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.ih = extractelement <4 x float> %i.hj, i64 3 ; 3 uses
  %i.ii = fcmp olt float %i.ih, 0.000000e+00
  %i.ij = fcmp ogt float %i.ih, 2.550000e+02
  %..i74.i = select i1 %i.ij, float 2.550000e+02, float %i.ih
  %i.ik = call float @llvm.round.f32(float %..i74.i)
  %i.il = select i1 %i.ii, float 0.000000e+00, float %i.ik ; 2 uses
  %i.im = fcmp ogt float %i.il, -1.000000e+00
  %i.in = fcmp olt float %i.il, 2.560000e+02
  %or.cond.i.i76.i = and i1 %i.im, %i.in
  br i1 %or.cond.i.i76.i, label %bb.au, label %.invoke300.i, !prof !16

.invoke300.i:                                     ; preds = %bb.at, %bb.as, %bb.ar, %._crit_edge165.i
  %i.io = phi ptr [ @6, %bb.as ], [ @5, %bb.ar ], [ @4, %._crit_edge165.i ], [ @7, %bb.at ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.io) #21
          to label %.cont301.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !431

.cont301.i:                                       ; preds = %.invoke300.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %.sroa.01.0.insert.ext.i.i = zext i8 %i.hr to i16
  %.sroa.01.1.insert.ext.i.i = zext i8 %i.hz to i16
  %.sroa.01.1.insert.shift.i.i = shl nuw i16 %.sroa.01.1.insert.ext.i.i, 8
  %.sroa.01.1.insert.insert.i.i = or disjoint i16 %.sroa.01.1.insert.shift.i.i, %.sroa.01.0.insert.ext.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.ip = load i32, ptr %i.fb, align 8, !alias.scope !435, !noalias !431, !noundef !4 ; 2 uses
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %i.ir = icmp samesign uge i64 %indvars.iv238.i, %i.iq
  %i.is = load i32, ptr %i.fc, align 4, !alias.scope !435, !noalias !431 ; 2 uses
  %i.it = zext i32 %i.is to i64
  %i.iu = icmp samesign uge i64 %indvars.iv233.i, %i.it
  %or.cond.i78.i = select i1 %i.ir, i1 true, i1 %i.iu, !prof !12
  br i1 %or.cond.i78.i, label %bb.ay, label %bb.av, !prof !12

bb.av:                                            ; preds = %bb.au
  %i.iv = mul nuw i64 %indvars.iv233.i, %i.iq
  %i.iw = add nuw i64 %i.iv, %indvars.iv238.i
  %i.ix = shl i64 %i.iw, 1                        ; 4 uses
  %.val15.i79.i = load i64, ptr %i.fd, align 8, !alias.scope !435, !noalias !431, !noundef !4 ; 2 uses
  %i.iy = or disjoint i64 %i.ix, 1
  %or.cond14.not.i80.i = icmp ult i64 %i.iy, %.val15.i79.i
  br i1 %or.cond14.not.i80.i, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %.val.i81.i = load ptr, ptr %i.fe, align 8, !alias.scope !435, !noalias !431, !nonnull !4, !noundef !4
  %i.iz = getelementptr inbounds nuw i8, ptr %.val.i81.i, i64 %i.ix
  %i.ja = invoke noundef nonnull ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel14from_slice_mutB8_(ptr noalias nofree noundef nonnull %i.iz, i64 noundef 2)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !431

bb.ax:                                            ; preds = %bb.av
  %i.jb = add i64 %i.ix, 2
  br label %.invoke298.i

.invoke298.i:                                     ; preds = %bb.ax, %bb.ap
  %i.jc = phi i64 [ %i.ix, %bb.ax ], [ %i.hb, %bb.ap ]
  %i.jd = phi i64 [ %i.jb, %bb.ax ], [ %i.hf, %bb.ap ]
  %i.je = phi i64 [ %.val15.i79.i, %bb.ax ], [ %.val15.i.i20, %bb.ap ]
  %i.jf = phi ptr [ @8, %bb.ax ], [ @9, %bb.ap ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.jc, i64 noundef %i.jd, i64 noundef %i.je, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jf) #19
          to label %.cont299.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !431

.cont299.i:                                       ; preds = %.invoke298.i
  unreachable

bb.ay:                                            ; preds = %bb.au
  %i.jg = trunc nuw i64 %indvars.iv233.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !436
  store i32 %i.fh, ptr %i.c, align 4, !noalias !436
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.jg, ptr %i.jh, align 4, !noalias !436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !436
  store i32 %i.ip, ptr %i.b, align 4, !noalias !436
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.is, ptr %i.ji, align 4, !noalias !436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !436
  store ptr %i.c, ptr %i.a, align 8, !noalias !436
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ay, %bb.aq
  %.sink305.i.sroa.phi = phi ptr [ %.sink305.i.sroa.gep, %bb.aq ], [ %.sink305.i.sroa.gep52, %bb.ay ]
  %.sink305.i.sroa.phi53 = phi ptr [ %.sink305.i.sroa.gep54, %bb.aq ], [ %.sink305.i.sroa.gep55, %bb.ay ]
  %.sink305.i.sroa.phi56 = phi ptr [ %.sink305.i.sroa.gep57, %bb.aq ], [ %.sink305.i.sroa.gep58, %bb.ay ]
  %.sink305.i = phi ptr [ %i.d, %bb.aq ], [ %i.a, %bb.ay ]
  %.sink302.i = phi ptr [ %i.e, %bb.aq ], [ %i.b, %bb.ay ]
  %i.jj = phi ptr [ @9, %bb.aq ], [ @8, %bb.ay ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink305.i.sroa.phi, align 8, !noalias !431
  store ptr %.sink302.i, ptr %.sink305.i.sroa.phi53, align 8, !noalias !431
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink305.i.sroa.phi56, align 8, !noalias !431
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink305.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jj) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !431

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit.i: ; preds = %bb.aw
  store i16 %.sroa.01.1.insert.insert.i.i, ptr %i.ja, align 1, !noalias !431
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count236.i
  br i1 %exitcond237.not.i, label %.loopexit98.i, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !431
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.he)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !431

bb.az:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.jk = load float, ptr %.sroa.0.0158.i, align 4, !noalias !431, !noundef !4
  %i.jl = load <4 x float>, ptr %i.g, align 16, !noalias !431
  %i.jm = insertelement <4 x float> poison, float %i.jk, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = fmul <4 x float> %i.jn, %i.jl
  %i.jp = fadd <4 x float> %i.gy, %i.jo           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !431
  %i.jq = icmp eq ptr %i.gz, %i.gv
  br i1 %i.jq, label %._crit_edge165.i, label %bb.am

bb.ba:                                            ; preds = %bb.ak
  %i.jr = load i64, ptr %i.eq, align 8, !alias.scope !437, !noalias !431, !noundef !4 ; 4 uses
  %i.js = load i64, ptr %i.h, align 8, !range !5, !alias.scope !437, !noalias !431, !noundef !4
  %i.jt = icmp eq i64 %i.jr, %i.js
  br i1 %i.jt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !431

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ju = load ptr, ptr %i.ep, align 8, !alias.scope !437, !noalias !431, !nonnull !4, !noundef !4
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jr
  store float %i.gn, ptr %i.jv, align 4, !noalias !431
  %i.jw = add i64 %i.jr, 1                        ; 3 uses
  store i64 %i.jw, ptr %i.eq, align 8, !alias.scope !437, !noalias !431
  %i.jx = fadd float %.sroa.09.0153.i, %i.gn      ; 3 uses
  %exitcond.not.i37 = icmp eq i32 %i.gj, %i.fv
  br i1 %exitcond.not.i37, label %._crit_edge.i38, label %bb.ak

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bf, %bb.bd, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !431
  unreachable

bb.be:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i31 unwind label %bb.bf, !noalias !431

end_hunk_8
begin_hunk_9_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB6_:bb.a
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.loopexit97.i, label %.lr.ph144.i

bb.s:                                             ; preds = %.lr.ph137.i
  store i32 %i.cs, ptr %i.m, align 4, !noalias !468
  %i.dl = invoke noundef i64 @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAtENtNtB8_6traits5Pixel9channels4B8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !469

bb.t:                                             ; preds = %bb.s
  %i.dm = load float, ptr %.sroa.0.0131.i, align 4, !noalias !469, !noundef !4
  %i.dn = bitcast i64 %i.dl to <4 x i16>
  %i.do = uitofp <4 x i16> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.co, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !468
  %i.dt = icmp eq ptr %i.cp, %i.cl
  br i1 %i.dt, label %._crit_edge138.i, label %.lr.ph137.i

bb.u:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.ah, align 8, !alias.scope !473, !noalias !468, !noundef !4 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !5, !alias.scope !473, !noalias !468, !noundef !4
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !469

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.ag, align 8, !alias.scope !473, !noalias !468, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  store float %i.ce, ptr %i.dy, align 4, !noalias !469
  %i.dz = add i64 %i.du, 1                        ; 3 uses
  store i64 %i.dz, ptr %i.ah, align 8, !alias.scope !473, !noalias !468
  %i.ea = fadd float %.sroa.03.0126.i, %i.ce      ; 3 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.k
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body67.i

.body67.i:                                        ; preds = %bb.y, %bb.x, %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !469
  unreachable

.thread82.i:                                      ; preds = %bb.k, %bb.f, %.thread88.i
  %.pn81.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %lpad.thr_comm.i, %.thread88.i ], [ %lpad.loopexit.split-lp467, %bb.k ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.y, !noalias !469

bb.y:                                             ; preds = %.thread82.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body67.i unwind label %bb.z, !noalias !469

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !469
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.thread82.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body17 unwind label %bb.x, !noalias !469

.body17:                                          ; preds = %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.h, %bb.aa, %.body42
  %.pn = phi { ptr, i32 } [ %eh.lpad-body43, %.body42 ], [ %.pn81.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.au, %bb.h ], [ %i.ee, %bb.aa ], [ %i.kc, %bb.bj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull %switch.load413) #18
          to label %common.resume unwind label %bb.bq

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i44, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i, %switch.lookup
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !468
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !alias.scope !474, !noundef !4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !474, !noundef !4 ; 4 uses
  %i.ej = icmp ne i32 %i.eg, 0
  %i.ek = icmp eq i32 %i.ei, 0                    ; 2 uses
  %or.cond.i19 = or i1 %i.ej, %i.ek
  br i1 %or.cond.i19, label %bb.ag, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.noexc39 unwind label %bb.bh

.noexc39:                                         ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i, %bb.ao, %bb.bb, %bb.ak, %.invoke.i, %.invoke301.i, %.invoke303.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad, !noalias !475

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.af, !noalias !475

bb.ae:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.be unwind label %bb.bd, !noalias !475

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !475
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !475
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, i32 noundef %2, i32 noundef %i.ei)
          to label %.noexc40 unwind label %bb.bh

.noexc40:                                         ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.eo, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.en, i64 3, i1 false), !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !475
  store i64 0, ptr %i.h, align 8, !noalias !475
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ep, align 8, !noalias !475
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !475
  %i.er = uitofp i32 %i.eg to float
  %i.es = uitofp i32 %2 to float
  %i.et = fdiv float %i.er, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 1.000000e+00
  %.sroa.05.0.i = select i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fmul float %switch.load, %.sroa.05.0.i  ; 2 uses
  %.not179.i = icmp eq i32 %2, 0
  br i1 %.not179.i, label %._crit_edge178.i, label %.lr.ph177.i

.lr.ph177.i:                                      ; preds = %.noexc40
  %i.ew = zext i32 %i.eg to i64                   ; 3 uses
  %i.ex = add nsw i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %switch.load413, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val15.i.i20 = load i64, ptr %i.ez, align 8, !alias.scope !474 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i21 = load ptr, ptr %i.fa, align 8, !alias.scope !474, !nonnull !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count244.i = zext i32 %2 to i64
  %wide.trip.count239.i = zext i32 %i.ei to i64
  br label %bb.aj

.loopexit101.i:                                   ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i, %.preheader.i25
  %exitcond245.not.i = icmp eq i64 %indvars.iv.next242.i, %wide.trip.count244.i
  br i1 %exitcond245.not.i, label %._crit_edge178.i, label %bb.aj

._crit_edge178.i:                                 ; preds = %.loopexit101.i, %.noexc40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !477
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i unwind label %bb.ah, !noalias !475

bb.ah:                                            ; preds = %._crit_edge178.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body42 unwind label %bb.ai, !noalias !475

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit58.i: ; preds = %._crit_edge178.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bi unwind label %bb.bh

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !475
  unreachable

bb.aj:                                            ; preds = %.loopexit101.i, %.lr.ph177.i
  %indvars.iv241.i = phi i64 [ 0, %.lr.ph177.i ], [ %indvars.iv.next242.i, %.loopexit101.i ] ; 4 uses
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv241.i to i32   ; 2 uses
  %i.fi = uitofp i32 %i.fh to float
  %i.fj = fadd nnan float %i.fi, 5.000000e-01
  %i.fk = fmul float %i.et, %i.fj                 ; 3 uses
  %i.fl = fsub float %i.fk, %i.ev
  %i.fm = call float @llvm.floor.f32(float %i.fl)
  %i.fn = call i64 @llvm.fptosi.sat.i64.f32(float %i.fm) ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  %..i.i22 = call i64 @llvm.smin.i64(i64 %i.fn, i64 range(i64 -1, 4294967296) %i.ex)
  %.sroa.0.0.i.i23 = select i1 %i.fo, i64 0, i64 %..i.i22 ; 3 uses
  %i.fp = trunc i64 %.sroa.0.0.i.i23 to i32       ; 4 uses
  %i.fq = fadd float %i.ev, %i.fk
  %i.fr = call float @llvm.ceil.f32(float %i.fq)
  %i.fs = call i64 @llvm.fptosi.sat.i64.f32(float %i.fr) ; 2 uses
  %i.ft = and i64 %.sroa.0.0.i.i23, 4294967295
  %i.fu = add nsw i64 %.sroa.0.0.i.i23, 1
  %.not.i24 = icmp sgt i64 %i.fs, %i.ft
  %..i59.i = call i64 @llvm.smin.i64(i64 %i.fs, i64 range(i64 -1, 4294967296) %i.ew)
  %.sroa.0.0.i60.i = select i1 %.not.i24, i64 %..i59.i, i64 %i.fu
  %i.fv = trunc i64 %.sroa.0.0.i60.i to i32       ; 2 uses
  %i.fw = fadd float %i.fk, -5.000000e-01
  store i64 0, ptr %i.eq, align 8, !noalias !475
  %i.fx = icmp ult i32 %i.fp, %i.fv
  br i1 %i.fx, label %.lr.ph.i35, label %.preheader.i25

.lr.ph.i35:                                       ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.ey, align 8, !invariant.load !4, !noalias !475, !nonnull !4
  br label %bb.ak

._crit_edge.i37:                                  ; preds = %bb.bc
  %i.fz = load ptr, ptr %i.ep, align 8, !noalias !475, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.i38 = shl nuw nsw i64 %i.jw, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i38
  %i.gb = icmp eq i64 %i.jw, 0
  br i1 %i.gb, label %.preheader.i25, label %.lr.ph159.i.preheader

.lr.ph159.i.preheader:                            ; preds = %._crit_edge.i37
  %i.gc = and i64 %i.jr, 4611686018427387903      ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check398 = icmp samesign ult i64 %i.gc, 3
  br i1 %min.iters.check398, label %.lr.ph159.i.preheader417, label %vector.ph399

vector.ph399:                                     ; preds = %.lr.ph159.i.preheader
  %n.vec400 = and i64 %i.gd, 9223372036854775804  ; 3 uses
  %i.ge = shl i64 %n.vec400, 2
  %i.gf = getelementptr i8, ptr %i.fz, i64 %i.ge
  %broadcast.splatinsert401 = insertelement <4 x float> poison, float %i.jx, i64 0
  %broadcast.splat402 = shufflevector <4 x float> %broadcast.splatinsert401, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph399
  %index404 = phi i64 [ 0, %vector.ph399 ], [ %index.next407, %vector.body403 ] ; 2 uses
  %i.gg = shl i64 %index404, 2
  %next.gep405 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  %wide.load406 = load <4 x float>, ptr %next.gep405, align 4, !noalias !475
  %i.gh = fdiv <4 x float> %wide.load406, %broadcast.splat402
  store <4 x float> %i.gh, ptr %next.gep405, align 4, !noalias !475
  %index.next407 = add nuw i64 %index404, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next407, %n.vec400
  br i1 %i.gi, label %middle.block408, label %vector.body403, !llvm.loop !456

middle.block408:                                  ; preds = %vector.body403
  %cmp.n409 = icmp eq i64 %i.gd, %n.vec400
  br i1 %cmp.n409, label %.preheader.i25, label %.lr.ph159.i.preheader417

.lr.ph159.i.preheader417:                         ; preds = %.lr.ph159.i.preheader, %middle.block408
  %.sroa.013.0157.i.ph = phi ptr [ %i.fz, %.lr.ph159.i.preheader ], [ %i.gf, %middle.block408 ]
  br label %.lr.ph159.i

bb.ak:                                            ; preds = %bb.bc, %.lr.ph.i35
  %.sroa.09.0156.i = phi float [ 0.000000e+00, %.lr.ph.i35 ], [ %i.jx, %bb.bc ]
  %.sroa.039.0155.i = phi i32 [ %i.fp, %.lr.ph.i35 ], [ %i.gj, %bb.bc ] ; 2 uses
  %i.gj = add nuw i32 %.sroa.039.0155.i, 1        ; 2 uses
  %i.gk = uitofp i32 %.sroa.039.0155.i to float
  %i.gl = fsub float %i.gk, %i.fw
  %i.gm = fdiv float %i.gl, %.sroa.05.0.i
  %i.gn = invoke noundef float %i.fy(ptr noundef nonnull inttoptr (i64 1 to ptr), float noundef %i.gm)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !475 ; 2 uses

.preheader.i25:                                   ; preds = %.lr.ph159.i, %middle.block408, %._crit_edge.i37, %bb.aj
  br i1 %i.ek, label %.loopexit101.i, label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.preheader.i25
  %i.go = call i32 @llvm.usub.sat.i32(i32 %i.eg, i32 %i.fp)
  %wide.trip.count.i26 = zext i32 %i.go to i64
  br label %bb.al

.lr.ph159.i:                                      ; preds = %.lr.ph159.i.preheader417, %.lr.ph159.i
  %.sroa.013.0157.i = phi ptr [ %i.gp, %.lr.ph159.i ], [ %.sroa.013.0157.i.ph, %.lr.ph159.i.preheader417 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0157.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %.sroa.013.0157.i, align 4, !noalias !475, !noundef !4
  %i.gr = fdiv float %i.gq, %i.jx
  store float %i.gr, ptr %.sroa.013.0157.i, align 4, !noalias !475
  %i.gs = icmp eq ptr %i.gp, %i.ga
  br i1 %i.gs, label %.preheader.i25, label %.lr.ph159.i, !llvm.loop !457

bb.al:                                            ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i, %.lr.ph174.i
  %indvars.iv236.i = phi i64 [ 0, %.lr.ph174.i ], [ %indvars.iv.next237.i, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i ] ; 6 uses
  %indvars.iv.next237.i = add nuw nsw i64 %indvars.iv236.i, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.ep, align 8, !noalias !475, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = load i64, ptr %i.eq, align 8, !noalias !475, !noundef !4 ; 2 uses
  %.idx181.i = shl nuw nsw i64 %i.gu, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx181.i
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %._crit_edge168.i, label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %bb.al
  %i.gx = mul nuw i64 %indvars.iv236.i, %i.ew
  br label %bb.am

bb.am:                                            ; preds = %bb.az, %.lr.ph167.i
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph167.i ], [ %indvars.iv.next.i28, %bb.az ] ; 3 uses
  %.sroa.0.0161.i = phi ptr [ %i.gt, %.lr.ph167.i ], [ %i.gz, %bb.az ] ; 2 uses
  %i.gy = phi <4 x float> [ zeroinitializer, %.lr.ph167.i ], [ %i.jp, %bb.az ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0161.i, i64 4 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %5 = trunc nuw i64 %indvars.iv.i27 to i32
  %6 = add i32 %5, %i.fp                          ; 2 uses
  %exitcond235.not.i = icmp eq i64 %indvars.iv.i27, %wide.trip.count.i26
  br i1 %exitcond235.not.i, label %bb.aq, label %bb.an, !prof !12

bb.an:                                            ; preds = %bb.am
  %7 = zext i32 %6 to i64
  %i.ha = add nuw i64 %i.gx, %7
  %i.hb = shl i64 %i.ha, 2                        ; 4 uses
  %i.hc = or disjoint i64 %i.hb, 3
  %or.cond14.not.i.i29 = icmp ult i64 %i.hc, %.val15.i.i20
  br i1 %or.cond14.not.i.i29, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i21, i64 %i.hb
  %i.he = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hd, i64 noundef 4)
          to label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !475

bb.ap:                                            ; preds = %bb.an
  %i.hf = add i64 %i.hb, 4
  br label %.invoke301.i

bb.aq:                                            ; preds = %bb.am
  %i.hg = trunc nuw i64 %indvars.iv236.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !478
  store i32 %6, ptr %i.f, align 4, !noalias !478
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.hg, ptr %i.hh, align 4, !noalias !478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !478
  store i32 %i.eg, ptr %i.e, align 4, !noalias !478
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ei, ptr %i.hi, align 4, !noalias !478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !478
  store ptr %i.f, ptr %i.d, align 8, !noalias !478
  br label %.invoke.i

._crit_edge168.i:                                 ; preds = %bb.az, %bb.al
  %i.hj = phi <4 x float> [ zeroinitializer, %bb.al ], [ %i.jp, %bb.az ] ; 4 uses
  %i.hk = extractelement <4 x float> %i.hj, i64 0 ; 3 uses
  %i.hl = fcmp olt float %i.hk, 0.000000e+00
  %i.hm = fcmp ogt float %i.hk, 6.553500e+04
  %..i64.i = select i1 %i.hm, float 6.553500e+04, float %i.hk
  %i.hn = call float @llvm.round.f32(float %..i64.i)
  %i.ho = select i1 %i.hl, float 0.000000e+00, float %i.hn ; 3 uses
  %i.hp = fcmp ogt float %i.ho, -1.000000e+00
  %i.hq = fcmp olt float %i.ho, 6.553600e+04
  %or.cond.i.i.i = and i1 %i.hp, %i.hq
  %i.hr = fptoui float %i.ho to i16
  br i1 %or.cond.i.i.i, label %bb.ar, label %.invoke303.i, !prof !16

bb.ar:                                            ; preds = %._crit_edge168.i
  %i.hs = extractelement <4 x float> %i.hj, i64 1 ; 3 uses
  %i.ht = fcmp olt float %i.hs, 0.000000e+00
  %i.hu = fcmp ogt float %i.hs, 6.553500e+04
  %..i66.i = select i1 %i.hu, float 6.553500e+04, float %i.hs
  %i.hv = call float @llvm.round.f32(float %..i66.i)
  %i.hw = select i1 %i.ht, float 0.000000e+00, float %i.hv ; 3 uses
  %i.hx = fcmp ogt float %i.hw, -1.000000e+00
  %i.hy = fcmp olt float %i.hw, 6.553600e+04
  %or.cond.i.i68.i = and i1 %i.hx, %i.hy
  %i.hz = fptoui float %i.hw to i16
  br i1 %or.cond.i.i68.i, label %bb.as, label %.invoke303.i, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.ia = extractelement <4 x float> %i.hj, i64 2 ; 3 uses
  %i.ib = fcmp olt float %i.ia, 0.000000e+00
  %i.ic = fcmp ogt float %i.ia, 6.553500e+04
  %..i71.i = select i1 %i.ic, float 6.553500e+04, float %i.ia
  %i.id = call float @llvm.round.f32(float %..i71.i)
  %i.ie = select i1 %i.ib, float 0.000000e+00, float %i.id ; 2 uses
  %i.if = fcmp ogt float %i.ie, -1.000000e+00
  %i.ig = fcmp olt float %i.ie, 6.553600e+04
  %or.cond.i.i73.i = and i1 %i.if, %i.ig
  br i1 %or.cond.i.i73.i, label %bb.at, label %.invoke303.i, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.ih = extractelement <4 x float> %i.hj, i64 3 ; 3 uses
  %i.ii = fcmp olt float %i.ih, 0.000000e+00
  %i.ij = fcmp ogt float %i.ih, 6.553500e+04
  %..i76.i = select i1 %i.ij, float 6.553500e+04, float %i.ih
  %i.ik = call float @llvm.round.f32(float %..i76.i)
  %i.il = select i1 %i.ii, float 0.000000e+00, float %i.ik ; 2 uses
  %i.im = fcmp ogt float %i.il, -1.000000e+00
  %i.in = fcmp olt float %i.il, 6.553600e+04
  %or.cond.i.i78.i = and i1 %i.im, %i.in
  br i1 %or.cond.i.i78.i, label %bb.au, label %.invoke303.i, !prof !16

.invoke303.i:                                     ; preds = %bb.at, %bb.as, %bb.ar, %._crit_edge168.i
  %i.io = phi ptr [ @6, %bb.as ], [ @5, %bb.ar ], [ @4, %._crit_edge168.i ], [ @7, %bb.at ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.io) #21
          to label %.cont304.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !475

.cont304.i:                                       ; preds = %.invoke303.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %.sroa.01.0.insert.ext.i.i = zext i16 %i.hr to i32
  %.sroa.01.2.insert.ext.i.i = zext i16 %i.hz to i32
  %.sroa.01.2.insert.shift.i.i = shl nuw i32 %.sroa.01.2.insert.ext.i.i, 16
  %.sroa.01.2.insert.insert.i.i = or disjoint i32 %.sroa.01.2.insert.shift.i.i, %.sroa.01.0.insert.ext.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.ip = load i32, ptr %i.fb, align 8, !alias.scope !479, !noalias !475, !noundef !4 ; 2 uses
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %i.ir = icmp samesign uge i64 %indvars.iv241.i, %i.iq
  %i.is = load i32, ptr %i.fc, align 4, !alias.scope !479, !noalias !475 ; 2 uses
  %i.it = zext i32 %i.is to i64
  %i.iu = icmp samesign uge i64 %indvars.iv236.i, %i.it
  %or.cond.i81.i = select i1 %i.ir, i1 true, i1 %i.iu, !prof !12
  br i1 %or.cond.i81.i, label %bb.ay, label %bb.av, !prof !12

bb.av:                                            ; preds = %bb.au
  %i.iv = mul nuw i64 %indvars.iv236.i, %i.iq
  %i.iw = add nuw i64 %i.iv, %indvars.iv241.i
  %i.ix = shl i64 %i.iw, 1                        ; 4 uses
  %.val15.i82.i = load i64, ptr %i.fd, align 8, !alias.scope !479, !noalias !475, !noundef !4 ; 2 uses
  %i.iy = or disjoint i64 %i.ix, 1
  %or.cond14.not.i83.i = icmp ult i64 %i.iy, %.val15.i82.i
  br i1 %or.cond14.not.i83.i, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %.val.i84.i = load ptr, ptr %i.fe, align 8, !alias.scope !479, !noalias !475, !nonnull !4, !noundef !4
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %.val.i84.i, i64 %i.ix
  %i.ja = invoke noundef nonnull align 2 ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAtENtNtB8_6traits5Pixel14from_slice_mutB8_(ptr noalias nofree noundef nonnull align 2 %i.iz, i64 noundef 2)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !475

bb.ax:                                            ; preds = %bb.av
  %i.jb = add i64 %i.ix, 2
  br label %.invoke301.i

.invoke301.i:                                     ; preds = %bb.ax, %bb.ap
  %i.jc = phi i64 [ %i.ix, %bb.ax ], [ %i.hb, %bb.ap ]
  %i.jd = phi i64 [ %i.jb, %bb.ax ], [ %i.hf, %bb.ap ]
  %i.je = phi i64 [ %.val15.i82.i, %bb.ax ], [ %.val15.i.i20, %bb.ap ]
  %i.jf = phi ptr [ @8, %bb.ax ], [ @9, %bb.ap ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.jc, i64 noundef %i.jd, i64 noundef %i.je, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jf) #19
          to label %.cont302.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !475

.cont302.i:                                       ; preds = %.invoke301.i
  unreachable

bb.ay:                                            ; preds = %bb.au
  %i.jg = trunc nuw i64 %indvars.iv236.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !480
  store i32 %i.fh, ptr %i.c, align 4, !noalias !480
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.jg, ptr %i.jh, align 4, !noalias !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !480
  store i32 %i.ip, ptr %i.b, align 4, !noalias !480
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.is, ptr %i.ji, align 4, !noalias !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !480
  store ptr %i.c, ptr %i.a, align 8, !noalias !480
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ay, %bb.aq
  %.sink308.i.sroa.phi = phi ptr [ %.sink308.i.sroa.gep, %bb.aq ], [ %.sink308.i.sroa.gep51, %bb.ay ]
  %.sink308.i.sroa.phi52 = phi ptr [ %.sink308.i.sroa.gep53, %bb.aq ], [ %.sink308.i.sroa.gep54, %bb.ay ]
  %.sink308.i.sroa.phi55 = phi ptr [ %.sink308.i.sroa.gep56, %bb.aq ], [ %.sink308.i.sroa.gep57, %bb.ay ]
  %.sink308.i = phi ptr [ %i.d, %bb.aq ], [ %i.a, %bb.ay ]
  %.sink305.i = phi ptr [ %i.e, %bb.aq ], [ %i.b, %bb.ay ]
  %i.jj = phi ptr [ @9, %bb.aq ], [ @8, %bb.ay ]
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink308.i.sroa.phi, align 8, !noalias !475
  store ptr %.sink305.i, ptr %.sink308.i.sroa.phi52, align 8, !noalias !475
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sink308.i.sroa.phi55, align 8, !noalias !475
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %.sink308.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jj) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !475

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit.i: ; preds = %bb.aw
  store i32 %.sroa.01.2.insert.insert.i.i, ptr %i.ja, align 2, !noalias !475
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next237.i, %wide.trip.count239.i
  br i1 %exitcond240.not.i, label %.loopexit101.i, label %bb.al

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !475
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.he)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !475

bb.az:                                            ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE9get_pixelB9_.exit.i
  %i.jk = load float, ptr %.sroa.0.0161.i, align 4, !noalias !475, !noundef !4
  %i.jl = load <4 x float>, ptr %i.g, align 16, !noalias !475
  %i.jm = insertelement <4 x float> poison, float %i.jk, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = fmul <4 x float> %i.jn, %i.jl
  %i.jp = fadd <4 x float> %i.gy, %i.jo           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !475
  %i.jq = icmp eq ptr %i.gz, %i.gv
  br i1 %i.jq, label %._crit_edge168.i, label %bb.am

bb.ba:                                            ; preds = %bb.ak
  %i.jr = load i64, ptr %i.eq, align 8, !alias.scope !481, !noalias !475, !noundef !4 ; 4 uses
  %i.js = load i64, ptr %i.h, align 8, !range !5, !alias.scope !481, !noalias !475, !noundef !4
  %i.jt = icmp eq i64 %i.jr, %i.js
  br i1 %i.jt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs53gkmrwjETj_4tiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !475

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ju = load ptr, ptr %i.ep, align 8, !alias.scope !481, !noalias !475, !nonnull !4, !noundef !4
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jr
  store float %i.gn, ptr %i.jv, align 4, !noalias !475
  %i.jw = add i64 %i.jr, 1                        ; 3 uses
  store i64 %i.jw, ptr %i.eq, align 8, !alias.scope !481, !noalias !475
  %i.jx = fadd float %.sroa.09.0156.i, %i.gn      ; 3 uses
  %exitcond.not.i36 = icmp eq i32 %i.gj, %i.fv
  br i1 %exitcond.not.i36, label %._crit_edge.i37, label %bb.ak

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i.i31, %bb.ae
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bf, %bb.bd, %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !475
  unreachable

bb.be:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i.i31 unwind label %bb.bf, !noalias !475

end_hunk_9
