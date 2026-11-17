Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bsdfs_test?download=true
inline.NumInlined: 3152
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEv:bb.a
  br i1 %i.nw, label %bb.by, label %bb.cb, !prof !150

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i168.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #31
  br label %bb.cb

bb.bz:                                            ; preds = %.loopexit.split-lp.i, %bb.ab, %bb.y
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn76.pn.pn.pn.i, %.loopexit.split-lp.i ], [ %.pn.pn.pn.i, %bb.y ], [ %i.dm, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @_ZNSt12__shared_ptrIN4pbrt4DiskELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #31
  br label %.body.i

.body.i:                                          ; preds = %bb.bz, %bb.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4pbrt4DiskESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bz ], [ %i.at, %bb.f ], [ %i.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4pbrt4DiskESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @_ZNSt12__shared_ptrIKN4pbrt9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #31
  br label %bb.ca

bb.ca:                                            ; preds = %.body.i, %bb.e
  %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.body.i ], [ %i.as, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @_ZNSt12__shared_ptrIKN4pbrt9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.body

bb.cb:                                            ; preds = %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i168.i, %bb.bu, %_ZNSt12__shared_ptrIKN4pbrt9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.nx = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %.not.i = icmp eq ptr %i.nx, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ny = invoke noundef zeroext i1 %i.nx(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.cd ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.cb, %bb.cc
  ret void

bb.ce:                                            ; preds = %.noexc, %bb.a
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ca, %bb.ce
  %eh.lpad-body = phi { ptr, i32 } [ %i.ob, %bb.ce ], [ %.pn76.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ca ]
  %i.oc = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %.not.i2 = icmp eq ptr %i.oc, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.cf

bb.cf:                                            ; preds = %.body
  %i.od = invoke noundef zeroext i1 %i.oc(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.cg ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.oe = landingpad { ptr, i32 }
          catch ptr null
  %i.of = extractvalue { ptr, i32 } %i.oe, 0
  call void @__clang_call_terminate(ptr %i.of) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %.body, %bb.cf
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22Hair_WhiteFurnace_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::SampledWavelengths", align 4 ; 11 uses
  %2 = alloca %"class.pbrt::SampledSpectrum", align 4 ; 4 uses
  %3 = alloca %"class.pbrt::HairBxDF", align 4    ; 4 uses
  %4 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.testing::Message", align 8  ; 9 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load <4 x i32>, ptr @_ZN4pbrt6PrimesE, align 16 ; 5 uses
  %i.i = extractelement <4 x i32> %i.h, i64 0
  %i.j = zext i32 %i.i to i64                     ; 5 uses
  %i.k = udiv i64 -1, %i.j
  %i.l = sub nuw i64 %i.k, %i.j
  %i.m = uitofp <4 x i32> %i.h to <4 x float>
  %i.n = extractelement <4 x i32> %i.h, i64 1
  %i.o = zext i32 %i.n to i64                     ; 5 uses
  %i.p = udiv i64 -1, %i.o
  %i.q = sub nuw i64 %i.p, %i.o
  %i.r = extractelement <4 x i32> %i.h, i64 2
  %i.s = zext i32 %i.r to i64                     ; 5 uses
  %i.t = extractelement <4 x i32> %i.h, i64 3
  %i.u = zext i32 %i.t to i64                     ; 5 uses
  %i.v = fdiv nnan <4 x float> splat (float 1.000000e+00), %i.m ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.z = extractelement <4 x float> %i.v, i64 0
  %i.aa = extractelement <4 x float> %i.v, i64 1
  %i.ab = extractelement <4 x float> %i.v, i64 2
  %i.ac = extractelement <4 x float> %i.v, i64 3
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.044120 = phi float [ 1.000000e-01, %bb.a ], [ %i.ag, %bb.c ] ; 3 uses
  %i.ad = fcmp olt float %.044120, 5.000000e-01
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ae = fpext float %.044120 to double
  %i.af = fadd double %i.ae, 2.000000e-01         ; 2 uses
  %i.ag = fptrunc double %i.af to float
  %i.ah = fcmp olt double %i.af, f0x3FEFFFFFF0000000
  br i1 %i.ah, label %.preheader, label %bb.b, !llvm.loop !309

bb.d:                                             ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit
  %.045119 = phi float [ 1.000000e-01, %.preheader ], [ %i.he, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.ai = fcmp olt float %.045119, 5.000000e-01
  %i.aj = or i1 %i.ad, %i.ai
  %i.ak = select i1 %i.aj, i32 100000, i32 20000  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ak to i64
  br label %bb.f

bb.e:                                             ; preds = %_ZN4pbrt14RadicalInverseEim.exit84
  %i.al = fpext float %.045119 to double
  %i.am = uitofp nneg i32 %i.ak to float
  %i.an = fmul nnan float %i.am, f0x3DA2F983
  %i.ao = fdiv float %i.fs, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = fcmp oge double %i.ap, f0x3FEE666666666666
  %i.ar = fcmp ole double %i.ap, 1.050000e+00
  %i.as = and i1 %i.aq, %i.ar                     ; 2 uses
  %i.at = zext i1 %i.as to i8
  store i8 %i.at, ptr %5, align 8, !tbaa !121
  store ptr null, ptr %i.x, align 8, !tbaa !122
  br i1 %i.as, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.k

bb.f:                                             ; preds = %bb.d, %_ZN4pbrt14RadicalInverseEim.exit84
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %_ZN4pbrt14RadicalInverseEim.exit84 ] ; 6 uses
  %.046118 = phi float [ 0.000000e+00, %bb.d ], [ %i.fs, %_ZN4pbrt14RadicalInverseEim.exit84 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %.not.i = icmp eq i64 %indvars.iv, 0            ; 3 uses
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.023.i = phi i64 [ %i.au, %.lr.ph.i ], [ %indvars.iv, %bb.f ] ; 3 uses
  %.01922.i = phi i64 [ %i.av, %.lr.ph.i ], [ 0, %bb.f ]
  %.02021.i = phi float [ %i.aw, %.lr.ph.i ], [ 1.000000e+00, %bb.f ]
  %i.au = udiv i64 %.023.i, %i.j                  ; 2 uses
  %reass.add.i = sub i64 %.01922.i, %i.au
  %reass.mul.i = mul i64 %reass.add.i, %i.j
  %i.av = add i64 %reass.mul.i, %.023.i           ; 3 uses
  %i.aw = fmul float %i.z, %.02021.i              ; 2 uses
  %i.ax = icmp samesign uge i64 %.023.i, %i.j
  %i.ay = icmp ult i64 %i.av, %i.l
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !3

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ba = uitofp i64 %i.av to float
  %i.bb = fmul float %i.aw, %i.ba
  br label %_ZN4pbrt14RadicalInverseEim.exit

_ZN4pbrt14RadicalInverseEim.exit:                 ; preds = %bb.f, %._crit_edge.loopexit.i
  %i.bc = phi float [ 0.000000e+00, %bb.f ], [ %i.bb, %._crit_edge.loopexit.i ] ; 2 uses
  %i.bd = fcmp ogt float %i.bc, f0x3F7FFFFF
  %.sroa.speculated.i54 = select i1 %i.bd, float f0x3F7FFFFF, float %i.bc ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !alias.scope !314
  %i.be = fadd float %.sroa.speculated.i54, 0.000000e+00 ; 2 uses
  %i.bf = fcmp ogt float %.sroa.speculated.i54, 1.000000e+00
  %i.bg = fadd float %i.be, -1.000000e+00
  %spec.select.i = select i1 %i.bf, float %i.bg, float %i.be
  %i.bh = fmul float %spec.select.i, f0x3FE9EB96
  %i.bi = fsub float f0x3F5B5E7F, %i.bh
  %i.bj = call noundef float @atanhf(float noundef %i.bi) #31, !noalias !314
  %i.bk = fmul float %i.bj, f0x430AE38E
  %i.bl = fsub float 5.380000e+02, %i.bk          ; 4 uses
  store float %i.bl, ptr %1, align 4, !tbaa !28, !alias.scope !314
  %i.bm = fcmp olt float %i.bl, 3.600000e+02
  %i.bn = fcmp ogt float %i.bl, 8.300000e+02
  %or.cond.i.i = or i1 %i.bm, %i.bn
  br i1 %or.cond.i.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt14RadicalInverseEim.exit
  %i.bo = fadd float %i.bl, -5.380000e+02
  %i.bp = fmul float %i.bo, 7.200000e-03
  %i.bq = call noundef float @coshf(float noundef %i.bp) #31, !noalias !314 ; 2 uses
  %i.br = fmul float %i.bq, %i.bq
  %i.bs = fdiv float f0x3B811979, %i.br
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i:         ; preds = %bb.g, %_ZN4pbrt14RadicalInverseEim.exit
  %.0.i.i = phi float [ %i.bs, %bb.g ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit ]
  store float %.0.i.i, ptr %i.b, align 4, !tbaa !28, !alias.scope !314
  %i.bt = fadd float %.sroa.speculated.i54, 2.500000e-01 ; 3 uses
  %i.bu = fcmp ogt float %i.bt, 1.000000e+00
  %i.bv = fadd float %i.bt, -1.000000e+00
  %spec.select.1.i = select i1 %i.bu, float %i.bv, float %i.bt
  %i.bw = fmul float %spec.select.1.i, f0x3FE9EB96
  %i.bx = fsub float f0x3F5B5E7F, %i.bw
  %i.by = call noundef float @atanhf(float noundef %i.bx) #31, !noalias !314
  %i.bz = fmul float %i.by, f0x430AE38E
  %i.ca = fsub float 5.380000e+02, %i.bz          ; 4 uses
  store float %i.ca, ptr %i.c, align 4, !tbaa !28, !alias.scope !314
  %i.cb = fcmp olt float %i.ca, 3.600000e+02
  %i.cc = fcmp ogt float %i.ca, 8.300000e+02
  %or.cond.i.1.i = or i1 %i.cb, %i.cc
  br i1 %or.cond.i.1.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i
  %i.cd = fadd float %i.ca, -5.380000e+02
  %i.ce = fmul float %i.cd, 7.200000e-03
  %i.cf = call noundef float @coshf(float noundef %i.ce) #31, !noalias !314 ; 2 uses
  %i.cg = fmul float %i.cf, %i.cf
  %i.ch = fdiv float f0x3B811979, %i.cg
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i:       ; preds = %bb.h, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i
  %.0.i.1.i = phi float [ %i.ch, %bb.h ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i ]
  store float %.0.i.1.i, ptr %i.d, align 4, !tbaa !28, !alias.scope !314
  %i.ci = fadd float %.sroa.speculated.i54, 5.000000e-01 ; 3 uses
  %i.cj = fcmp ogt float %i.ci, 1.000000e+00
  %i.ck = fadd float %i.ci, -1.000000e+00
  %spec.select.2.i = select i1 %i.cj, float %i.ck, float %i.ci
  %i.cl = fmul float %spec.select.2.i, f0x3FE9EB96
  %i.cm = fsub float f0x3F5B5E7F, %i.cl
  %i.cn = call noundef float @atanhf(float noundef %i.cm) #31, !noalias !314
  %i.co = fmul float %i.cn, f0x430AE38E
  %i.cp = fsub float 5.380000e+02, %i.co          ; 4 uses
  store float %i.cp, ptr %i.e, align 4, !tbaa !28, !alias.scope !314
  %i.cq = fcmp olt float %i.cp, 3.600000e+02
  %i.cr = fcmp ogt float %i.cp, 8.300000e+02
  %or.cond.i.2.i = or i1 %i.cq, %i.cr
  br i1 %or.cond.i.2.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i
  %i.cs = fadd float %i.cp, -5.380000e+02
  %i.ct = fmul float %i.cs, 7.200000e-03
  %i.cu = call noundef float @coshf(float noundef %i.ct) #31, !noalias !314 ; 2 uses
  %i.cv = fmul float %i.cu, %i.cu
  %i.cw = fdiv float f0x3B811979, %i.cv
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i:       ; preds = %bb.i, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i
  %.0.i.2.i = phi float [ %i.cw, %bb.i ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i ]
  store float %.0.i.2.i, ptr %i.f, align 4, !tbaa !28, !alias.scope !314
  %i.cx = fadd float %.sroa.speculated.i54, 7.500000e-01 ; 3 uses
  %i.cy = fcmp ogt float %i.cx, 1.000000e+00
  %i.cz = fadd float %i.cx, -1.000000e+00
  %spec.select.3.i = select i1 %i.cy, float %i.cz, float %i.cx
  %i.da = fmul float %spec.select.3.i, f0x3FE9EB96
  %i.db = fsub float f0x3F5B5E7F, %i.da
  %i.dc = call noundef float @atanhf(float noundef %i.db) #31, !noalias !314
  %i.dd = fmul float %i.dc, f0x430AE38E
  %i.de = fsub float 5.380000e+02, %i.dd          ; 4 uses
  store float %i.de, ptr %i.a, align 4, !tbaa !28, !alias.scope !314
  %i.df = fcmp olt float %i.de, 3.600000e+02
  %i.dg = fcmp ogt float %i.de, 8.300000e+02
  %or.cond.i.3.i = or i1 %i.df, %i.dg
  br i1 %or.cond.i.3.i, label %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i
  %i.dh = fadd float %i.de, -5.380000e+02
  %i.di = fmul float %i.dh, 7.200000e-03
  %i.dj = call noundef float @coshf(float noundef %i.di) #31, !noalias !314 ; 2 uses
  %i.dk = fmul float %i.dj, %i.dj
  %i.dl = fdiv float f0x3B811979, %i.dk
  br label %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit

_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit: ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i, %bb.j
  %.0.i.3.i = phi float [ %i.dl, %bb.j ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i ]
  store float %.0.i.3.i, ptr %i.g, align 4, !tbaa !28, !alias.scope !314
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit64, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, %.lr.ph.i56
  %.023.i57 = phi i64 [ %i.dm, %.lr.ph.i56 ], [ %indvars.iv, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ] ; 3 uses
  %.01922.i58 = phi i64 [ %i.dn, %.lr.ph.i56 ], [ 0, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ]
  %.02021.i59 = phi float [ %i.do, %.lr.ph.i56 ], [ 1.000000e+00, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ]
  %i.dm = udiv i64 %.023.i57, %i.o                ; 2 uses
  %reass.add.i60 = sub i64 %.01922.i58, %i.dm
  %reass.mul.i61 = mul i64 %reass.add.i60, %i.o
  %i.dn = add i64 %reass.mul.i61, %.023.i57       ; 3 uses
  %i.do = fmul float %i.aa, %.02021.i59           ; 2 uses
  %i.dp = icmp samesign uge i64 %.023.i57, %i.o
  %i.dq = icmp ult i64 %i.dn, %i.q
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph.i56, label %._crit_edge.loopexit.i62, !llvm.loop !3

._crit_edge.loopexit.i62:                         ; preds = %.lr.ph.i56
  %i.ds = uitofp i64 %i.dn to float
  %i.dt = fmul float %i.do, %i.ds
  br label %_ZN4pbrt14RadicalInverseEim.exit64

_ZN4pbrt14RadicalInverseEim.exit64:               ; preds = %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, %._crit_edge.loopexit.i62
  %i.du = phi float [ 0.000000e+00, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ], [ %i.dt, %._crit_edge.loopexit.i62 ] ; 2 uses
  %i.dv = fcmp ogt float %i.du, f0x3F7FFFFF
  %.sroa.speculated.i63 = select i1 %i.dv, float f0x3F7FFFFF, float %i.du
  %i.dw = fpext float %.sroa.speculated.i63 to double
  %i.dx = fmul double %i.dw, 2.000000e+00
  %i.dy = fadd double %i.dx, -1.000000e+00        ; 3 uses
  %i.dz = fcmp olt double %i.dy, f0xBFEFFFFDE7210BE9
  %i.ea = fcmp ogt double %i.dy, f0x3FEFFFFDE7210BE9
  %..i = select i1 %i.ea, double f0x3FEFFFFDE7210BE9, double %i.dy
  %.0.i = select i1 %i.dz, double f0xBFEFFFFDE7210BE9, double %..i
  %i.eb = fptrunc double %.0.i to float
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4pbrt8HairBxDFC1EffRKNS_15SampledSpectrumEfff(ptr noundef nonnull align 4 dereferenceable(76) %3, float noundef %i.eb, float noundef 1.550000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %.044120, float noundef %.045119, float noundef 0.000000e+00)
  %i.ec = udiv i64 -1, %i.s
  %i.ed = sub nuw i64 %i.ec, %i.s
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit84, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %_ZN4pbrt14RadicalInverseEim.exit64, %.lr.ph.i66
  %.023.i67 = phi i64 [ %i.ee, %.lr.ph.i66 ], [ %indvars.iv, %_ZN4pbrt14RadicalInverseEim.exit64 ] ; 3 uses
  %.01922.i68 = phi i64 [ %i.ef, %.lr.ph.i66 ], [ 0, %_ZN4pbrt14RadicalInverseEim.exit64 ]
  %.02021.i69 = phi float [ %i.eg, %.lr.ph.i66 ], [ 1.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit64 ]
  %i.ee = udiv i64 %.023.i67, %i.s                ; 2 uses
  %reass.add.i70 = sub i64 %.01922.i68, %i.ee
  %reass.mul.i71 = mul i64 %reass.add.i70, %i.s
  %i.ef = add i64 %reass.mul.i71, %.023.i67       ; 3 uses
  %i.eg = fmul float %i.ab, %.02021.i69           ; 2 uses
  %i.eh = icmp samesign uge i64 %.023.i67, %i.s
  %i.ei = icmp ult i64 %i.ef, %i.ed
  %i.ej = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %i.ej, label %.lr.ph.i66, label %.lr.ph.i76.preheader, !llvm.loop !3

.lr.ph.i76.preheader:                             ; preds = %.lr.ph.i66
  %i.ek = uitofp i64 %i.ef to float
  %i.el = fmul float %i.eg, %i.ek                 ; 2 uses
  %i.em = fcmp ogt float %i.el, f0x3F7FFFFF
  %.sroa.speculated.i73 = select i1 %i.em, float f0x3F7FFFFF, float %i.el
  %i.en = udiv i64 -1, %i.u
  %i.eo = sub nuw i64 %i.en, %i.u
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.preheader, %.lr.ph.i76
  %.023.i77 = phi i64 [ %i.ep, %.lr.ph.i76 ], [ %indvars.iv, %.lr.ph.i76.preheader ] ; 3 uses
  %.01922.i78 = phi i64 [ %i.eq, %.lr.ph.i76 ], [ 0, %.lr.ph.i76.preheader ]
  %.02021.i79 = phi float [ %i.er, %.lr.ph.i76 ], [ 1.000000e+00, %.lr.ph.i76.preheader ]
  %i.ep = udiv i64 %.023.i77, %i.u                ; 2 uses
  %reass.add.i80 = sub i64 %.01922.i78, %i.ep
  %reass.mul.i81 = mul i64 %reass.add.i80, %i.u
  %i.eq = add i64 %reass.mul.i81, %.023.i77       ; 3 uses
  %i.er = fmul float %i.ac, %.02021.i79           ; 2 uses
  %i.es = icmp samesign uge i64 %.023.i77, %i.u
  %i.et = icmp ult i64 %i.eq, %i.eo
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  br i1 %i.eu, label %.lr.ph.i76, label %._crit_edge.loopexit.i82, !llvm.loop !3

._crit_edge.loopexit.i82:                         ; preds = %.lr.ph.i76
  %i.ev = uitofp i64 %i.eq to float
  %i.ew = fmul float %i.er, %i.ev
  %i.ex = fmul float %.sroa.speculated.i73, 2.000000e+00
  br label %_ZN4pbrt14RadicalInverseEim.exit84

_ZN4pbrt14RadicalInverseEim.exit84:               ; preds = %_ZN4pbrt14RadicalInverseEim.exit64, %._crit_edge.loopexit.i82
  %.sroa.speculated.i73141 = phi float [ %i.ex, %._crit_edge.loopexit.i82 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit64 ]
  %i.ey = phi float [ %i.ew, %._crit_edge.loopexit.i82 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit64 ] ; 2 uses
  %i.ez = fcmp ogt float %i.ey, f0x3F7FFFFF
  %.sroa.speculated.i83 = select i1 %i.ez, float f0x3F7FFFFF, float %i.ey
  %i.fa = fsub float 1.000000e+00, %.sroa.speculated.i73141 ; 4 uses
  %i.fb = fmul float %i.fa, %i.fa
  %i.fc = fsub float 1.000000e+00, %i.fb          ; 2 uses
  %i.fd = fcmp ogt float %i.fc, 0.000000e+00
  %.sroa.speculated.i.i86 = select i1 %i.fd, float %i.fc, float 0.000000e+00
  %sqrt.i.i87 = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i86) ; 2 uses
  %i.fe = fmul float %.sroa.speculated.i83, f0x40C90FDB ; 2 uses
  %i.ff = call noundef float @cosf(float noundef %i.fe) #31
  %i.fg = fmul float %sqrt.i.i87, %i.ff
  %i.fh = call noundef float @sinf(float noundef %i.fe) #31
  %i.fi = fmul float %sqrt.i.i87, %i.fh
  %.sroa.06.0.vec.insert.i89 = insertelement <2 x float> poison, float %i.fg, i64 0
  %.sroa.06.4.vec.insert.i90 = insertelement <2 x float> %.sroa.06.0.vec.insert.i89, float %i.fi, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.fj = call { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(76) %3, <2 x float> <float f0x3F0CC442, float f0x3D0995D9>, float f0x3F55A6B1, <2 x float> %.sroa.06.4.vec.insert.i90, float %i.fa, i32 noundef 0) ; 2 uses
  %i.fk = extractvalue { <2 x float>, <2 x float> } %i.fj, 0
  %i.fl = extractvalue { <2 x float>, <2 x float> } %i.fj, 1
  %i.fm = call noundef float @llvm.fabs.f32(float %i.fa)
  %i.fn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fp = fmul <2 x float> %i.fo, %i.fk
  %i.fq = fmul <2 x float> %i.fo, %i.fl
  store <2 x float> %i.fp, ptr %4, align 8
  store <2 x float> %i.fq, ptr %i.w, align 8
  %i.fr = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.fs = fadd float %.046118, %i.fr              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !312

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ft = load ptr, ptr %6, align 8, !tbaa !125
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, double noundef %i.ap)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.fw = load ptr, ptr %8, align 8, !tbaa !88
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 702, ptr noundef %i.fw)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  %i.fx = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.y
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.fz = load i64, ptr %i.y, align 8, !tbaa !77
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.gb = load ptr, ptr %6, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.s

.noexc.i.i:                                       ; preds = %bb.p
  br i1 %i.gc, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %.noexc.i.i
  %i.gd = load ptr, ptr %6, align 8, !tbaa !125   ; 3 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !68
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(128) %i.gd) #31, !inline_history !0
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #34
  unreachable

bb.t:                                             ; preds = %bb.k
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.u:                                             ; preds = %bb.l
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.w:                                             ; preds = %bb.m
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.n
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.go, %bb.x ], [ %i.gn, %bb.w ] ; 2 uses
  %i.gp = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.y
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.y
  %i.gr = load i64, ptr %i.y, align 8, !tbaa !77
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.v ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.gl, %bb.u ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.z ], [ %i.gk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ab:                                            ; preds = %bb.r, %bb.q, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.pr = load ptr, ptr %i.x, align 8, !tbaa !122
  %.not.i.i.i100 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i100, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i101 unwind label %bb.af

.noexc.i.i101:                                    ; preds = %bb.ac
  br i1 %i.gt, label %bb.ad, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ad:                                            ; preds = %.noexc.i.i101
  %i.gu = load ptr, ptr %i.x, align 8, !tbaa !122 ; 4 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !88 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !77
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.af:                                            ; preds = %bb.ac
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #34
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.e, %bb.ab, %.noexc.i.i101, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.hd = fadd double %i.al, 2.000000e-01         ; 2 uses
  %i.he = fptrunc double %i.hd to float
  %i.hf = fcmp olt double %i.hd, f0x3FEFFFFFF0000000
  br i1 %i.hf, label %bb.d, label %bb.c, !llvm.loop !313
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt18SampledWavelengths13SampleVisibleEf(ptr dead_on_unwind noalias writable sret(%"class.pbrt::SampledWavelengths") align 4 %0, float noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = fadd float %1, 0.000000e+00              ; 2 uses
  %i.d = fcmp ogt float %1, 1.000000e+00
  %i.e = fadd float %i.c, -1.000000e+00
  %spec.select = select i1 %i.d, float %i.e, float %i.c
  %i.f = fmul float %spec.select, f0x3FE9EB96
  %i.g = fsub float f0x3F5B5E7F, %i.f
  %i.h = tail call noundef float @atanhf(float noundef %i.g) #31
  %i.i = fmul float %i.h, f0x430AE38E
  %i.j = fsub float 5.380000e+02, %i.i            ; 4 uses
  store float %i.j, ptr %0, align 4, !tbaa !28
  %i.k = fcmp olt float %i.j, 3.600000e+02
  %i.l = fcmp ogt float %i.j, 8.300000e+02
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fadd float %i.j, -5.380000e+02
  %i.n = fmul float %i.m, 7.200000e-03
  %i.o = tail call noundef float @coshf(float noundef %i.n) #31 ; 2 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = fdiv float f0x3B811979, %i.p
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit

_ZN4pbrt21VisibleWavelengthsPDFEf.exit:           ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.q, %bb.b ], [ 0.000000e+00, %bb.a ]
  store float %.0.i, ptr %i.b, align 4, !tbaa !28
  %i.r = fadd float %1, 2.500000e-01              ; 3 uses
  %i.s = fcmp ogt float %i.r, 1.000000e+00
  %i.t = fadd float %i.r, -1.000000e+00
  %spec.select.1 = select i1 %i.s, float %i.t, float %i.r
  %i.u = fmul float %spec.select.1, f0x3FE9EB96
  %i.v = fsub float f0x3F5B5E7F, %i.u
  %i.w = tail call noundef float @atanhf(float noundef %i.v) #31
  %i.x = fmul float %i.w, f0x430AE38E
  %i.y = fsub float 5.380000e+02, %i.x            ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.y, ptr %i.z, align 4, !tbaa !28
  %i.aa = fcmp olt float %i.y, 3.600000e+02
  %i.ab = fcmp ogt float %i.y, 8.300000e+02
  %or.cond.i.1 = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.1, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit
  %i.ac = fadd float %i.y, -5.380000e+02
  %i.ad = fmul float %i.ac, 7.200000e-03
  %i.ae = tail call noundef float @coshf(float noundef %i.ad) #31 ; 2 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = fdiv float f0x3B811979, %i.af
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1:         ; preds = %bb.c, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit
  %.0.i.1 = phi float [ %i.ag, %bb.c ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.0.i.1, ptr %i.ah, align 4, !tbaa !28
  %i.ai = fadd float %1, 5.000000e-01             ; 3 uses
  %i.aj = fcmp ogt float %i.ai, 1.000000e+00
  %i.ak = fadd float %i.ai, -1.000000e+00
  %spec.select.2 = select i1 %i.aj, float %i.ak, float %i.ai
  %i.al = fmul float %spec.select.2, f0x3FE9EB96
  %i.am = fsub float f0x3F5B5E7F, %i.al
  %i.an = tail call noundef float @atanhf(float noundef %i.am) #31
  %i.ao = fmul float %i.an, f0x430AE38E
  %i.ap = fsub float 5.380000e+02, %i.ao          ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !28
  %i.ar = fcmp olt float %i.ap, 3.600000e+02
  %i.as = fcmp ogt float %i.ap, 8.300000e+02
  %or.cond.i.2 = or i1 %i.ar, %i.as
  br i1 %or.cond.i.2, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1
  %i.at = fadd float %i.ap, -5.380000e+02
  %i.au = fmul float %i.at, 7.200000e-03
  %i.av = tail call noundef float @coshf(float noundef %i.au) #31 ; 2 uses
  %i.aw = fmul float %i.av, %i.av
  %i.ax = fdiv float f0x3B811979, %i.aw
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2:         ; preds = %bb.d, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1
  %.0.i.2 = phi float [ %i.ax, %bb.d ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.0.i.2, ptr %i.ay, align 4, !tbaa !28
  %i.az = fadd float %1, 7.500000e-01             ; 3 uses
  %i.ba = fcmp ogt float %i.az, 1.000000e+00
  %i.bb = fadd float %i.az, -1.000000e+00
  %spec.select.3 = select i1 %i.ba, float %i.bb, float %i.az
  %i.bc = fmul float %spec.select.3, f0x3FE9EB96
  %i.bd = fsub float f0x3F5B5E7F, %i.bc
  %i.be = tail call noundef float @atanhf(float noundef %i.bd) #31
  %i.bf = fmul float %i.be, f0x430AE38E
  %i.bg = fsub float 5.380000e+02, %i.bf          ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bg, ptr %i.bh, align 4, !tbaa !28
  %i.bi = fcmp olt float %i.bg, 3.600000e+02
  %i.bj = fcmp ogt float %i.bg, 8.300000e+02
  %or.cond.i.3 = or i1 %i.bi, %i.bj
  br i1 %or.cond.i.3, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2
  %i.bk = fadd float %i.bg, -5.380000e+02
  %i.bl = fmul float %i.bk, 7.200000e-03
  %i.bm = tail call noundef float @coshf(float noundef %i.bl) #31 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = fdiv float f0x3B811979, %i.bn
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.3

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.3:         ; preds = %bb.e, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2
  %.0.i.3 = phi float [ %i.bo, %bb.e ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %.0.i.3, ptr %i.bp, align 4, !tbaa !28
  ret void
}

declare void @_ZN4pbrt8HairBxDFC1EffRKNS_15SampledSpectrumEfff(ptr noundef nonnull align 4 dereferenceable(76), float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(16), float noundef, float noundef, float noundef) unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(76), <2 x float>, float, <2 x float>, float, i32 noundef) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20Hair_HOnTheEdge_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pbrt::SampledSpectrum", align 4 ; 4 uses
  %2 = alloca %"class.pbrt::HairBxDF", align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN4pbrt8HairBxDFC1EffRKNS_15SampledSpectrumEfff(ptr noundef nonnull align 4 dereferenceable(76) %2, float noundef -1.000000e+00, float noundef 1.550000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef 1.000000e-01, float noundef 1.000000e-01, float noundef 0.000000e+00)
  %i.a = call { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(76) %2, <2 x float> <float f0x3F0CC442, float f0x3D0995D9>, float f0x3F55A6B1, <2 x float> <float f0xBEBF671D, float f0xBF6B50BF>, float f0x3DFD7988, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29Hair_WhiteFurnaceSampled_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::SampledWavelengths", align 4 ; 11 uses
  %2 = alloca %"class.pbrt::SampledSpectrum", align 4 ; 4 uses
  %3 = alloca %"class.pbrt::HairBxDF", align 4    ; 4 uses
  %4 = alloca %"class.pstd::optional", align 8    ; 8 uses
  %5 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 9 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load <4 x i32>, ptr @_ZN4pbrt6PrimesE, align 16 ; 5 uses
  %i.i = extractelement <4 x i32> %i.h, i64 0
  %i.j = zext i32 %i.i to i64                     ; 5 uses
  %i.k = udiv i64 -1, %i.j
  %i.l = sub nuw i64 %i.k, %i.j
  %i.m = uitofp <4 x i32> %i.h to <4 x float>
  %i.n = extractelement <4 x i32> %i.h, i64 1
  %i.o = zext i32 %i.n to i64                     ; 5 uses
  %i.p = udiv i64 -1, %i.o
  %i.q = sub nuw i64 %i.p, %i.o
  %i.r = extractelement <4 x i32> %i.h, i64 2
  %i.s = zext i32 %i.r to i64                     ; 5 uses
  %i.t = extractelement <4 x i32> %i.h, i64 3
  %i.u = zext i32 %i.t to i64                     ; 5 uses
  %i.v = fdiv nnan <4 x float> splat (float 1.000000e+00), %i.m ; 4 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt6PrimesE, i64 16), align 16 ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %i.y = uitofp i32 %i.w to float
  %i.z = fdiv nnan float 1.000000e+00, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.af = extractelement <4 x float> %i.v, i64 0
  %i.ag = extractelement <4 x float> %i.v, i64 1
  %i.ah = extractelement <4 x float> %i.v, i64 2
  %i.ai = extractelement <4 x float> %i.v, i64 3
  br label %.preheader118

.preheader118:                                    ; preds = %bb.a, %bb.c
  %.0131 = phi float [ 1.000000e-01, %bb.a ], [ %i.al, %bb.c ] ; 2 uses
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  ret void

.preheader:                                       ; preds = %.preheader118, %_ZN7testing15AssertionResultD2Ev.exit
  %.037130 = phi float [ 1.000000e-01, %.preheader118 ], [ %i.hi, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.aj = fpext float %.0131 to double
  %i.ak = fadd double %i.aj, 2.000000e-01         ; 2 uses
  %i.al = fptrunc double %i.ak to float
  %i.am = fcmp olt double %i.ak, f0x3FEFFFFFF0000000
  br i1 %i.am, label %.preheader118, label %bb.b, !llvm.loop !315

bb.d:                                             ; preds = %bb.k
  %i.an = fdiv float %.139, 1.000000e+04
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ao = fpext float %i.an to double             ; 3 uses
  %i.ap = fcmp oge double %i.ao, f0x3FEFAE147AE147AE
  %i.aq = fcmp ole double %i.ao, 1.010000e+00
  %i.ar = and i1 %i.ap, %i.aq                     ; 2 uses
  %i.as = zext i1 %i.ar to i8
  store i8 %i.as, ptr %6, align 8, !tbaa !121
  store ptr null, ptr %i.ad, align 8, !tbaa !122
  br i1 %i.ar, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.e:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 7 uses
  %.038129 = phi float [ 0.000000e+00, %.preheader ], [ %.139, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %.not.i = icmp eq i64 %indvars.iv, 0            ; 3 uses
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.023.i = phi i64 [ %i.at, %.lr.ph.i ], [ %indvars.iv, %bb.e ] ; 3 uses
  %.01922.i = phi i64 [ %i.au, %.lr.ph.i ], [ 0, %bb.e ]
  %.02021.i = phi float [ %i.av, %.lr.ph.i ], [ 1.000000e+00, %bb.e ]
  %i.at = udiv i64 %.023.i, %i.j                  ; 2 uses
  %reass.add.i = sub i64 %.01922.i, %i.at
  %reass.mul.i = mul i64 %reass.add.i, %i.j
  %i.au = add i64 %reass.mul.i, %.023.i           ; 3 uses
  %i.av = fmul float %i.af, %.02021.i             ; 2 uses
  %i.aw = icmp samesign uge i64 %.023.i, %i.j
  %i.ax = icmp ult i64 %i.au, %i.l
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !3

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.az = uitofp i64 %i.au to float
  %i.ba = fmul float %i.av, %i.az
  br label %_ZN4pbrt14RadicalInverseEim.exit

_ZN4pbrt14RadicalInverseEim.exit:                 ; preds = %bb.e, %._crit_edge.loopexit.i
  %i.bb = phi float [ 0.000000e+00, %bb.e ], [ %i.ba, %._crit_edge.loopexit.i ] ; 2 uses
  %i.bc = fcmp ogt float %i.bb, f0x3F7FFFFF
  %.sroa.speculated.i49 = select i1 %i.bc, float f0x3F7FFFFF, float %i.bb ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !alias.scope !320
  %i.bd = fadd float %.sroa.speculated.i49, 0.000000e+00 ; 2 uses
  %i.be = fcmp ogt float %.sroa.speculated.i49, 1.000000e+00
  %i.bf = fadd float %i.bd, -1.000000e+00
  %spec.select.i = select i1 %i.be, float %i.bf, float %i.bd
  %i.bg = fmul float %spec.select.i, f0x3FE9EB96
  %i.bh = fsub float f0x3F5B5E7F, %i.bg
  %i.bi = call noundef float @atanhf(float noundef %i.bh) #31, !noalias !320
  %i.bj = fmul float %i.bi, f0x430AE38E
  %i.bk = fsub float 5.380000e+02, %i.bj          ; 4 uses
  store float %i.bk, ptr %1, align 4, !tbaa !28, !alias.scope !320
  %i.bl = fcmp olt float %i.bk, 3.600000e+02
  %i.bm = fcmp ogt float %i.bk, 8.300000e+02
  %or.cond.i.i = or i1 %i.bl, %i.bm
  br i1 %or.cond.i.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt14RadicalInverseEim.exit
  %i.bn = fadd float %i.bk, -5.380000e+02
  %i.bo = fmul float %i.bn, 7.200000e-03
  %i.bp = call noundef float @coshf(float noundef %i.bo) #31, !noalias !320 ; 2 uses
  %i.bq = fmul float %i.bp, %i.bp
  %i.br = fdiv float f0x3B811979, %i.bq
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i:         ; preds = %bb.f, %_ZN4pbrt14RadicalInverseEim.exit
  %.0.i.i = phi float [ %i.br, %bb.f ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit ]
  store float %.0.i.i, ptr %i.b, align 4, !tbaa !28, !alias.scope !320
  %i.bs = fadd float %.sroa.speculated.i49, 2.500000e-01 ; 3 uses
  %i.bt = fcmp ogt float %i.bs, 1.000000e+00
  %i.bu = fadd float %i.bs, -1.000000e+00
  %spec.select.1.i = select i1 %i.bt, float %i.bu, float %i.bs
  %i.bv = fmul float %spec.select.1.i, f0x3FE9EB96
  %i.bw = fsub float f0x3F5B5E7F, %i.bv
  %i.bx = call noundef float @atanhf(float noundef %i.bw) #31, !noalias !320
  %i.by = fmul float %i.bx, f0x430AE38E
  %i.bz = fsub float 5.380000e+02, %i.by          ; 4 uses
  store float %i.bz, ptr %i.c, align 4, !tbaa !28, !alias.scope !320
  %i.ca = fcmp olt float %i.bz, 3.600000e+02
  %i.cb = fcmp ogt float %i.bz, 8.300000e+02
  %or.cond.i.1.i = or i1 %i.ca, %i.cb
  br i1 %or.cond.i.1.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i
  %i.cc = fadd float %i.bz, -5.380000e+02
  %i.cd = fmul float %i.cc, 7.200000e-03
  %i.ce = call noundef float @coshf(float noundef %i.cd) #31, !noalias !320 ; 2 uses
  %i.cf = fmul float %i.ce, %i.ce
  %i.cg = fdiv float f0x3B811979, %i.cf
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i:       ; preds = %bb.g, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i
  %.0.i.1.i = phi float [ %i.cg, %bb.g ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i ]
  store float %.0.i.1.i, ptr %i.d, align 4, !tbaa !28, !alias.scope !320
  %i.ch = fadd float %.sroa.speculated.i49, 5.000000e-01 ; 3 uses
  %i.ci = fcmp ogt float %i.ch, 1.000000e+00
  %i.cj = fadd float %i.ch, -1.000000e+00
  %spec.select.2.i = select i1 %i.ci, float %i.cj, float %i.ch
  %i.ck = fmul float %spec.select.2.i, f0x3FE9EB96
  %i.cl = fsub float f0x3F5B5E7F, %i.ck
  %i.cm = call noundef float @atanhf(float noundef %i.cl) #31, !noalias !320
  %i.cn = fmul float %i.cm, f0x430AE38E
  %i.co = fsub float 5.380000e+02, %i.cn          ; 4 uses
  store float %i.co, ptr %i.e, align 4, !tbaa !28, !alias.scope !320
  %i.cp = fcmp olt float %i.co, 3.600000e+02
  %i.cq = fcmp ogt float %i.co, 8.300000e+02
  %or.cond.i.2.i = or i1 %i.cp, %i.cq
  br i1 %or.cond.i.2.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i
  %i.cr = fadd float %i.co, -5.380000e+02
  %i.cs = fmul float %i.cr, 7.200000e-03
  %i.ct = call noundef float @coshf(float noundef %i.cs) #31, !noalias !320 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ct
  %i.cv = fdiv float f0x3B811979, %i.cu
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i:       ; preds = %bb.h, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i
  %.0.i.2.i = phi float [ %i.cv, %bb.h ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i ]
  store float %.0.i.2.i, ptr %i.f, align 4, !tbaa !28, !alias.scope !320
  %i.cw = fadd float %.sroa.speculated.i49, 7.500000e-01 ; 3 uses
  %i.cx = fcmp ogt float %i.cw, 1.000000e+00
  %i.cy = fadd float %i.cw, -1.000000e+00
  %spec.select.3.i = select i1 %i.cx, float %i.cy, float %i.cw
  %i.cz = fmul float %spec.select.3.i, f0x3FE9EB96
  %i.da = fsub float f0x3F5B5E7F, %i.cz
  %i.db = call noundef float @atanhf(float noundef %i.da) #31, !noalias !320
  %i.dc = fmul float %i.db, f0x430AE38E
  %i.dd = fsub float 5.380000e+02, %i.dc          ; 4 uses
  store float %i.dd, ptr %i.a, align 4, !tbaa !28, !alias.scope !320
  %i.de = fcmp olt float %i.dd, 3.600000e+02
  %i.df = fcmp ogt float %i.dd, 8.300000e+02
  %or.cond.i.3.i = or i1 %i.de, %i.df
  br i1 %or.cond.i.3.i, label %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i
  %i.dg = fadd float %i.dd, -5.380000e+02
  %i.dh = fmul float %i.dg, 7.200000e-03
  %i.di = call noundef float @coshf(float noundef %i.dh) #31, !noalias !320 ; 2 uses
  %i.dj = fmul float %i.di, %i.di
  %i.dk = fdiv float f0x3B811979, %i.dj
  br label %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit

_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit: ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i, %bb.i
  %.0.i.3.i = phi float [ %i.dk, %bb.i ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i ]
  store float %.0.i.3.i, ptr %i.g, align 4, !tbaa !28, !alias.scope !320
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit59, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, %.lr.ph.i51
  %.023.i52 = phi i64 [ %i.dl, %.lr.ph.i51 ], [ %indvars.iv, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ] ; 3 uses
  %.01922.i53 = phi i64 [ %i.dm, %.lr.ph.i51 ], [ 0, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ]
  %.02021.i54 = phi float [ %i.dn, %.lr.ph.i51 ], [ 1.000000e+00, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ]
  %i.dl = udiv i64 %.023.i52, %i.o                ; 2 uses
  %reass.add.i55 = sub i64 %.01922.i53, %i.dl
  %reass.mul.i56 = mul i64 %reass.add.i55, %i.o
  %i.dm = add i64 %reass.mul.i56, %.023.i52       ; 3 uses
  %i.dn = fmul float %i.ag, %.02021.i54           ; 2 uses
  %i.do = icmp samesign uge i64 %.023.i52, %i.o
  %i.dp = icmp ult i64 %i.dm, %i.q
  %i.dq = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %i.dq, label %.lr.ph.i51, label %._crit_edge.loopexit.i57, !llvm.loop !3

._crit_edge.loopexit.i57:                         ; preds = %.lr.ph.i51
  %i.dr = uitofp i64 %i.dm to float
  %i.ds = fmul float %i.dn, %i.dr
  br label %_ZN4pbrt14RadicalInverseEim.exit59

_ZN4pbrt14RadicalInverseEim.exit59:               ; preds = %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit, %._crit_edge.loopexit.i57
  %i.dt = phi float [ 0.000000e+00, %_ZN4pbrt18SampledWavelengths13SampleVisibleEf.exit ], [ %i.ds, %._crit_edge.loopexit.i57 ] ; 2 uses
  %i.du = fcmp ogt float %i.dt, f0x3F7FFFFF
  %.sroa.speculated.i58 = select i1 %i.du, float f0x3F7FFFFF, float %i.dt
  %i.dv = fpext float %.sroa.speculated.i58 to double
  %i.dw = fmul double %i.dv, 2.000000e+00
  %i.dx = fadd double %i.dw, -1.000000e+00        ; 3 uses
  %i.dy = fcmp olt double %i.dx, f0xBFEFFFFDE7210BE9
  %i.dz = fcmp ogt double %i.dx, f0x3FEFFFFDE7210BE9
  %..i = select i1 %i.dz, double f0x3FEFFFFDE7210BE9, double %i.dx
  %.0.i = select i1 %i.dy, double f0xBFEFFFFDE7210BE9, double %..i
  %i.ea = fptrunc double %.0.i to float
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4pbrt8HairBxDFC1EffRKNS_15SampledSpectrumEfff(ptr noundef nonnull align 4 dereferenceable(76) %3, float noundef %i.ea, float noundef 1.550000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %.0131, float noundef %.037130, float noundef 0.000000e+00)
  %i.eb = udiv i64 -1, %i.s
  %i.ec = sub nuw i64 %i.eb, %i.s
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit89, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %_ZN4pbrt14RadicalInverseEim.exit59, %.lr.ph.i61
  %.023.i62 = phi i64 [ %i.ed, %.lr.ph.i61 ], [ %indvars.iv, %_ZN4pbrt14RadicalInverseEim.exit59 ] ; 3 uses
  %.01922.i63 = phi i64 [ %i.ee, %.lr.ph.i61 ], [ 0, %_ZN4pbrt14RadicalInverseEim.exit59 ]
  %.02021.i64 = phi float [ %i.ef, %.lr.ph.i61 ], [ 1.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit59 ]
  %i.ed = udiv i64 %.023.i62, %i.s                ; 2 uses
  %reass.add.i65 = sub i64 %.01922.i63, %i.ed
  %reass.mul.i66 = mul i64 %reass.add.i65, %i.s
  %i.ee = add i64 %reass.mul.i66, %.023.i62       ; 3 uses
  %i.ef = fmul float %i.ah, %.02021.i64           ; 2 uses
  %i.eg = icmp samesign uge i64 %.023.i62, %i.s
  %i.eh = icmp ult i64 %i.ee, %i.ec
  %i.ei = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %i.ei, label %.lr.ph.i61, label %.lr.ph.i71.preheader, !llvm.loop !3

.lr.ph.i71.preheader:                             ; preds = %.lr.ph.i61
  %i.ej = uitofp i64 %i.ee to float
  %i.ek = fmul float %i.ef, %i.ej                 ; 2 uses
  %i.el = fcmp ogt float %i.ek, f0x3F7FFFFF
  %.sroa.speculated.i68 = select i1 %i.el, float f0x3F7FFFFF, float %i.ek
  %i.em = udiv i64 -1, %i.u
  %i.en = sub nuw i64 %i.em, %i.u
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.023.i72 = phi i64 [ %i.eo, %.lr.ph.i71 ], [ %indvars.iv, %.lr.ph.i71.preheader ] ; 3 uses
  %.01922.i73 = phi i64 [ %i.ep, %.lr.ph.i71 ], [ 0, %.lr.ph.i71.preheader ]
  %.02021.i74 = phi float [ %i.eq, %.lr.ph.i71 ], [ 1.000000e+00, %.lr.ph.i71.preheader ]
  %i.eo = udiv i64 %.023.i72, %i.u                ; 2 uses
  %reass.add.i75 = sub i64 %.01922.i73, %i.eo
  %reass.mul.i76 = mul i64 %reass.add.i75, %i.u
  %i.ep = add i64 %reass.mul.i76, %.023.i72       ; 3 uses
  %i.eq = fmul float %i.ai, %.02021.i74           ; 2 uses
  %i.er = icmp samesign uge i64 %.023.i72, %i.u
  %i.es = icmp ult i64 %i.ep, %i.en
  %i.et = select i1 %i.er, i1 %i.es, i1 false
  br i1 %i.et, label %.lr.ph.i71, label %.lr.ph.i81.preheader, !llvm.loop !3

.lr.ph.i81.preheader:                             ; preds = %.lr.ph.i71
  %i.eu = uitofp i64 %i.ep to float
  %i.ev = fmul float %i.eq, %i.eu                 ; 2 uses
  %i.ew = fcmp ogt float %i.ev, f0x3F7FFFFF
  %.sroa.speculated.i78 = select i1 %i.ew, float f0x3F7FFFFF, float %i.ev
  %i.ex = udiv i64 -1, %i.x
  %i.ey = sub nuw i64 %i.ex, %i.x
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader, %.lr.ph.i81
  %.023.i82 = phi i64 [ %i.ez, %.lr.ph.i81 ], [ %indvars.iv, %.lr.ph.i81.preheader ] ; 3 uses
  %.01922.i83 = phi i64 [ %i.fa, %.lr.ph.i81 ], [ 0, %.lr.ph.i81.preheader ]
  %.02021.i84 = phi float [ %i.fb, %.lr.ph.i81 ], [ 1.000000e+00, %.lr.ph.i81.preheader ]
  %i.ez = udiv i64 %.023.i82, %i.x                ; 2 uses
  %reass.add.i85 = sub i64 %.01922.i83, %i.ez
  %reass.mul.i86 = mul i64 %reass.add.i85, %i.x
  %i.fa = add i64 %reass.mul.i86, %.023.i82       ; 3 uses
  %i.fb = fmul float %i.z, %.02021.i84            ; 2 uses
  %i.fc = icmp samesign uge i64 %.023.i82, %i.x
  %i.fd = icmp ult i64 %i.fa, %i.ey
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %i.fe, label %.lr.ph.i81, label %._crit_edge.loopexit.i87, !llvm.loop !3

._crit_edge.loopexit.i87:                         ; preds = %.lr.ph.i81
  %i.ff = uitofp i64 %i.fa to float
  %i.fg = fmul float %i.fb, %i.ff
  br label %_ZN4pbrt14RadicalInverseEim.exit89

_ZN4pbrt14RadicalInverseEim.exit89:               ; preds = %_ZN4pbrt14RadicalInverseEim.exit59, %._crit_edge.loopexit.i87
  %.sroa.speculated.i78157 = phi float [ %.sroa.speculated.i78, %._crit_edge.loopexit.i87 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit59 ]
  %.sroa.speculated.i68153156 = phi float [ %.sroa.speculated.i68, %._crit_edge.loopexit.i87 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit59 ]
  %i.fh = phi float [ %i.fg, %._crit_edge.loopexit.i87 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit59 ] ; 2 uses
  %i.fi = fcmp ogt float %i.fh, f0x3F7FFFFF
  %.sroa.speculated.i88 = select i1 %i.fi, float f0x3F7FFFFF, float %i.fh
  %.sroa.0110.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated.i78157, i64 0
  %.sroa.0110.4.vec.insert = insertelement <2 x float> %.sroa.0110.0.vec.insert, float %.sroa.speculated.i88, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %4, ptr noundef nonnull align 4 dereferenceable(76) %3, <2 x float> <float f0x3F0CC442, float f0x3D0995D9>, float f0x3F55A6B1, float noundef %.sroa.speculated.i68153156, <2 x float> %.sroa.0110.4.vec.insert, i32 noundef 0, i32 noundef 3)
  %i.fj = load i8, ptr %i.aa, align 4, !tbaa !41, !range !42, !noundef !43
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt14RadicalInverseEim.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 8
  %i.fl = call noundef float @llvm.fabs.f32(float %.sroa.22.0.copyload)
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %4, align 8
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !77
  %i.fm = load <1 x float>, ptr %i.ab, align 4
  %i.fn = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fp = fmul <2 x float> %i.fo, %.sroa.0.0.copyload.i
  %i.fq = shufflevector <1 x float> %i.fm, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fr = fdiv <2 x float> %i.fp, %i.fq
  %i.fs = fmul <2 x float> %i.fo, %.sroa.6.0.copyload.i
  %i.ft = fdiv <2 x float> %i.fs, %i.fq
  store <2 x float> %i.fr, ptr %5, align 8
  store <2 x float> %i.ft, ptr %i.ac, align 8
  %i.fu = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.fv = fadd float %.038129, %i.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4pbrt14RadicalInverseEim.exit89
  %.139 = phi float [ %i.fv, %bb.j ], [ %.038129, %_ZN4pbrt14RadicalInverseEim.exit89 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !318

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.fw = load ptr, ptr %7, align 8, !tbaa !125
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, double noundef %i.ao)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.v ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.fz = load ptr, ptr %9, align 8, !tbaa !88
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 745, ptr noundef %i.fz)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #31
  %i.ga = load ptr, ptr %9, align 8, !tbaa !88    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ae
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.gc = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
end_hunk_0
begin_hunk_1_@_ZN25Hair_SamplingWeights_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN4pbrt8HairBxDFC1EffRKNS_15SampledSpectrumEfff(ptr noundef nonnull align 4 dereferenceable(76) %2, float noundef %i.bl, float noundef 1.550000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %.0166, float noundef %.035165, float noundef 0.000000e+00)
  %i.bm = udiv i64 -1, %i.k
  %i.bn = sub nuw i64 %i.bm, %i.k
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit84, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %_ZN4pbrt14RadicalInverseEim.exit, %.lr.ph.i66
  %.023.i67 = phi i64 [ %i.bo, %.lr.ph.i66 ], [ %indvars.iv, %_ZN4pbrt14RadicalInverseEim.exit ] ; 3 uses
  %.01922.i68 = phi i64 [ %i.bp, %.lr.ph.i66 ], [ 0, %_ZN4pbrt14RadicalInverseEim.exit ]
  %.02021.i69 = phi float [ %i.bq, %.lr.ph.i66 ], [ 1.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit ]
  %i.bo = udiv i64 %.023.i67, %i.k                ; 2 uses
  %reass.add.i70 = sub i64 %.01922.i68, %i.bo
  %reass.mul.i71 = mul i64 %reass.add.i70, %i.k
  %i.bp = add i64 %reass.mul.i71, %.023.i67       ; 3 uses
  %i.bq = fmul float %i.aj, %.02021.i69           ; 2 uses
  %i.br = icmp samesign uge i64 %.023.i67, %i.k
  %i.bs = icmp ult i64 %i.bp, %i.bn
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph.i66, label %.lr.ph.i76.preheader, !llvm.loop !3

.lr.ph.i76.preheader:                             ; preds = %.lr.ph.i66
  %i.bu = uitofp i64 %i.bp to float
  %i.bv = fmul float %i.bq, %i.bu                 ; 2 uses
  %i.bw = fcmp ogt float %i.bv, f0x3F7FFFFF
  %.sroa.speculated.i73 = select i1 %i.bw, float f0x3F7FFFFF, float %i.bv
  %i.bx = udiv i64 -1, %i.m
  %i.by = sub nuw i64 %i.bx, %i.m
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.preheader, %.lr.ph.i76
  %.023.i77 = phi i64 [ %i.bz, %.lr.ph.i76 ], [ %indvars.iv, %.lr.ph.i76.preheader ] ; 3 uses
  %.01922.i78 = phi i64 [ %i.ca, %.lr.ph.i76 ], [ 0, %.lr.ph.i76.preheader ]
  %.02021.i79 = phi float [ %i.cb, %.lr.ph.i76 ], [ 1.000000e+00, %.lr.ph.i76.preheader ]
  %i.bz = udiv i64 %.023.i77, %i.m                ; 2 uses
  %reass.add.i80 = sub i64 %.01922.i78, %i.bz
  %reass.mul.i81 = mul i64 %reass.add.i80, %i.m
  %i.ca = add i64 %reass.mul.i81, %.023.i77       ; 3 uses
  %i.cb = fmul float %i.ak, %.02021.i79           ; 2 uses
  %i.cc = icmp samesign uge i64 %.023.i77, %i.m
  %i.cd = icmp ult i64 %i.ca, %i.by
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %.lr.ph.i76, label %._crit_edge.loopexit.i82, !llvm.loop !3

._crit_edge.loopexit.i82:                         ; preds = %.lr.ph.i76
  %i.cf = uitofp i64 %i.ca to float
  %i.cg = fmul float %i.cb, %i.cf
  %i.ch = fmul float %.sroa.speculated.i73, 2.000000e+00
  br label %_ZN4pbrt14RadicalInverseEim.exit84

_ZN4pbrt14RadicalInverseEim.exit84:               ; preds = %_ZN4pbrt14RadicalInverseEim.exit, %._crit_edge.loopexit.i82
  %.sroa.speculated.i73195 = phi float [ %i.ch, %._crit_edge.loopexit.i82 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit ]
  %i.ci = phi float [ %i.cg, %._crit_edge.loopexit.i82 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit ] ; 2 uses
  %i.cj = fcmp ogt float %i.ci, f0x3F7FFFFF
  %.sroa.speculated.i83 = select i1 %i.cj, float f0x3F7FFFFF, float %i.ci
  %i.ck = fsub float 1.000000e+00, %.sroa.speculated.i73195 ; 3 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = fsub float 1.000000e+00, %i.cl          ; 2 uses
  %i.cn = fcmp ogt float %i.cm, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.cn, float %i.cm, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.co = fmul float %.sroa.speculated.i83, f0x40C90FDB ; 2 uses
  %i.cp = call noundef float @cosf(float noundef %i.co) #31
  %i.cq = fmul float %sqrt.i.i, %i.cp
  %i.cr = call noundef float @sinf(float noundef %i.co) #31
  %i.cs = fmul float %sqrt.i.i, %i.cr
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.cq, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.cs, i64 1
  %i.ct = udiv i64 -1, %i.o
  %i.cu = sub nuw i64 %i.ct, %i.o
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit114, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %_ZN4pbrt14RadicalInverseEim.exit84, %.lr.ph.i86
  %.023.i87 = phi i64 [ %i.cv, %.lr.ph.i86 ], [ %indvars.iv, %_ZN4pbrt14RadicalInverseEim.exit84 ] ; 3 uses
  %.01922.i88 = phi i64 [ %i.cw, %.lr.ph.i86 ], [ 0, %_ZN4pbrt14RadicalInverseEim.exit84 ]
  %.02021.i89 = phi float [ %i.cx, %.lr.ph.i86 ], [ 1.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit84 ]
  %i.cv = udiv i64 %.023.i87, %i.o                ; 2 uses
  %reass.add.i90 = sub i64 %.01922.i88, %i.cv
  %reass.mul.i91 = mul i64 %reass.add.i90, %i.o
  %i.cw = add i64 %reass.mul.i91, %.023.i87       ; 3 uses
  %i.cx = fmul float %i.al, %.02021.i89           ; 2 uses
  %i.cy = icmp samesign uge i64 %.023.i87, %i.o
  %i.cz = icmp ult i64 %i.cw, %i.cu
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph.i86, label %.lr.ph.i96.preheader, !llvm.loop !3

.lr.ph.i96.preheader:                             ; preds = %.lr.ph.i86
  %i.db = uitofp i64 %i.cw to float
  %i.dc = fmul float %i.cx, %i.db                 ; 2 uses
  %i.dd = fcmp ogt float %i.dc, f0x3F7FFFFF
  %.sroa.speculated.i93 = select i1 %i.dd, float f0x3F7FFFFF, float %i.dc
  %i.de = udiv i64 -1, %i.s
  %i.df = sub nuw i64 %i.de, %i.s
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.preheader, %.lr.ph.i96
  %.023.i97 = phi i64 [ %i.dg, %.lr.ph.i96 ], [ %indvars.iv, %.lr.ph.i96.preheader ] ; 3 uses
  %.01922.i98 = phi i64 [ %i.dh, %.lr.ph.i96 ], [ 0, %.lr.ph.i96.preheader ]
  %.02021.i99 = phi float [ %i.di, %.lr.ph.i96 ], [ 1.000000e+00, %.lr.ph.i96.preheader ]
  %i.dg = udiv i64 %.023.i97, %i.s                ; 2 uses
  %reass.add.i100 = sub i64 %.01922.i98, %i.dg
  %reass.mul.i101 = mul i64 %reass.add.i100, %i.s
  %i.dh = add i64 %reass.mul.i101, %.023.i97      ; 3 uses
  %i.di = fmul float %i.am, %.02021.i99           ; 2 uses
  %i.dj = icmp samesign uge i64 %.023.i97, %i.s
  %i.dk = icmp ult i64 %i.dh, %i.df
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph.i96, label %.lr.ph.i106.preheader, !llvm.loop !3

.lr.ph.i106.preheader:                            ; preds = %.lr.ph.i96
  %i.dm = uitofp i64 %i.dh to float
  %i.dn = fmul float %i.di, %i.dm                 ; 2 uses
  %i.do = fcmp ogt float %i.dn, f0x3F7FFFFF
  %.sroa.speculated.i103 = select i1 %i.do, float f0x3F7FFFFF, float %i.dn
  %i.dp = udiv i64 -1, %i.v
  %i.dq = sub nuw i64 %i.dp, %i.v
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106.preheader, %.lr.ph.i106
  %.023.i107 = phi i64 [ %i.dr, %.lr.ph.i106 ], [ %indvars.iv, %.lr.ph.i106.preheader ] ; 3 uses
  %.01922.i108 = phi i64 [ %i.ds, %.lr.ph.i106 ], [ 0, %.lr.ph.i106.preheader ]
  %.02021.i109 = phi float [ %i.dt, %.lr.ph.i106 ], [ 1.000000e+00, %.lr.ph.i106.preheader ]
  %i.dr = udiv i64 %.023.i107, %i.v               ; 2 uses
  %reass.add.i110 = sub i64 %.01922.i108, %i.dr
  %reass.mul.i111 = mul i64 %reass.add.i110, %i.v
  %i.ds = add i64 %reass.mul.i111, %.023.i107     ; 3 uses
  %i.dt = fmul float %i.an, %.02021.i109          ; 2 uses
  %i.du = icmp samesign uge i64 %.023.i107, %i.v
  %i.dv = icmp ult i64 %i.ds, %i.dq
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %.lr.ph.i106, label %._crit_edge.loopexit.i112, !llvm.loop !3

._crit_edge.loopexit.i112:                        ; preds = %.lr.ph.i106
  %i.dx = uitofp i64 %i.ds to float
  %i.dy = fmul float %i.dt, %i.dx
  br label %_ZN4pbrt14RadicalInverseEim.exit114

_ZN4pbrt14RadicalInverseEim.exit114:              ; preds = %_ZN4pbrt14RadicalInverseEim.exit84, %._crit_edge.loopexit.i112
  %.sroa.speculated.i103201 = phi float [ %.sroa.speculated.i103, %._crit_edge.loopexit.i112 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit84 ]
  %.sroa.speculated.i93197200 = phi float [ %.sroa.speculated.i93, %._crit_edge.loopexit.i112 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit84 ]
  %i.dz = phi float [ %i.dy, %._crit_edge.loopexit.i112 ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit84 ] ; 2 uses
  %i.ea = fcmp ogt float %i.dz, f0x3F7FFFFF
  %.sroa.speculated.i113 = select i1 %i.ea, float f0x3F7FFFFF, float %i.dz
  %.sroa.0141.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated.i103201, i64 0
  %.sroa.0141.4.vec.insert = insertelement <2 x float> %.sroa.0141.0.vec.insert, float %.sroa.speculated.i113, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %3, ptr noundef nonnull align 4 dereferenceable(76) %2, <2 x float> %.sroa.06.4.vec.insert.i, float %i.ck, float noundef %.sroa.speculated.i93197200, <2 x float> %.sroa.0141.4.vec.insert, i32 noundef 0, i32 noundef 3)
  %i.eb = load i8, ptr %i.x, align 4, !tbaa !41, !range !42, !noundef !43
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.preheader, label %bb.be

bb.f:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.ed = fdiv float %i.hh, 2.000000e+01
  store float %i.ed, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store double f0x3FEFAE147AE147AE, ptr %i.b, align 8, !tbaa !155
  invoke void @_ZN7testing8internal11CmpHelperGTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %bb.m

.preheader:                                       ; preds = %_ZN4pbrt14RadicalInverseEim.exit114, %bb.k
  %.036163 = phi float [ %i.hh, %bb.k ], [ 0.000000e+00, %_ZN4pbrt14RadicalInverseEim.exit114 ]
  %.sroa.0133.0162 = phi i32 [ %i.hi, %bb.k ], [ 0, %_ZN4pbrt14RadicalInverseEim.exit114 ] ; 2 uses
  %.sroa.10.0161 = phi i64 [ %i.eg, %bb.k ], [ 6364136223846793006, %_ZN4pbrt14RadicalInverseEim.exit114 ] ; 4 uses
  %i.ee = uitofp nneg i32 %.sroa.0133.0162 to float
  %i.ef = mul i64 %.sroa.10.0161, 6364136223846793005
  %i.eg = add i64 %i.ef, 1
  %i.eh = lshr i64 %.sroa.10.0161, 45
  %i.ei = lshr i64 %.sroa.10.0161, 27
  %i.ej = xor i64 %i.eh, %i.ei
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %i.el = lshr i64 %.sroa.10.0161, 59
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = call noundef i32 @llvm.fshr.i32(i32 %i.ek, i32 %i.ek, i32 %i.em)
  %i.eo = uitofp i32 %i.en to float
  %i.ep = fmul nnan float %i.eo, f0x2F800000      ; 2 uses
  %i.eq = fcmp olt float %i.ep, f0x3F7FFFFF
  %.sroa.speculated.i.i115 = select i1 %i.eq, float %i.ep, float f0x3F7FFFFF
  %i.er = fadd float %.sroa.speculated.i.i115, %i.ee
  %i.es = fdiv float %i.er, 2.000000e+01          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, i8 0, i64 20, i1 false), !alias.scope !326
  %i.et = fcmp ogt float %i.es, 1.000000e+00
  %i.eu = fadd float %i.es, -1.000000e+00
  %spec.select.i = select i1 %i.et, float %i.eu, float %i.es
  %i.ev = fmul float %spec.select.i, f0x3FE9EB96
  %i.ew = fsub float f0x3F5B5E7F, %i.ev
  %i.ex = call noundef float @atanhf(float noundef %i.ew) #31, !noalias !326
  %i.ey = fmul float %i.ex, f0x430AE38E
  %i.ez = fsub float 5.380000e+02, %i.ey          ; 4 uses
  store float %i.ez, ptr %4, align 4, !tbaa !28, !alias.scope !326
  %i.fa = fcmp olt float %i.ez, 3.600000e+02
  %i.fb = fcmp ogt float %i.ez, 8.300000e+02
  %or.cond.i.i = or i1 %i.fa, %i.fb
  br i1 %or.cond.i.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.fc = fadd float %i.ez, -5.380000e+02
  %i.fd = fmul float %i.fc, 7.200000e-03
  %i.fe = call noundef float @coshf(float noundef %i.fd) #31, !noalias !326 ; 2 uses
  %i.ff = fmul float %i.fe, %i.fe
  %i.fg = fdiv float f0x3B811979, %i.ff
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i:         ; preds = %bb.g, %.preheader
  %.0.i.i = phi float [ %i.fg, %bb.g ], [ 0.000000e+00, %.preheader ]
  store float %.0.i.i, ptr %i.z, align 4, !tbaa !28, !alias.scope !326
  %i.fh = fadd float %i.es, 2.500000e-01          ; 3 uses
  %i.fi = fcmp ogt float %i.fh, 1.000000e+00
  %i.fj = fadd float %i.fh, -1.000000e+00
  %spec.select.1.i = select i1 %i.fi, float %i.fj, float %i.fh
  %i.fk = fmul float %spec.select.1.i, f0x3FE9EB96
  %i.fl = fsub float f0x3F5B5E7F, %i.fk
  %i.fm = call noundef float @atanhf(float noundef %i.fl) #31, !noalias !326
  %i.fn = fmul float %i.fm, f0x430AE38E
  %i.fo = fsub float 5.380000e+02, %i.fn          ; 4 uses
  store float %i.fo, ptr %i.aa, align 4, !tbaa !28, !alias.scope !326
  %i.fp = fcmp olt float %i.fo, 3.600000e+02
  %i.fq = fcmp ogt float %i.fo, 8.300000e+02
  %or.cond.i.1.i = or i1 %i.fp, %i.fq
  br i1 %or.cond.i.1.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i
  %i.fr = fadd float %i.fo, -5.380000e+02
  %i.fs = fmul float %i.fr, 7.200000e-03
  %i.ft = call noundef float @coshf(float noundef %i.fs) #31, !noalias !326 ; 2 uses
  %i.fu = fmul float %i.ft, %i.ft
  %i.fv = fdiv float f0x3B811979, %i.fu
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i:       ; preds = %bb.h, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i
  %.0.i.1.i = phi float [ %i.fv, %bb.h ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.i ]
  store float %.0.i.1.i, ptr %i.ab, align 4, !tbaa !28, !alias.scope !326
  %i.fw = fadd float %i.es, 5.000000e-01          ; 3 uses
  %i.fx = fcmp ogt float %i.fw, 1.000000e+00
  %i.fy = fadd float %i.fw, -1.000000e+00
  %spec.select.2.i = select i1 %i.fx, float %i.fy, float %i.fw
  %i.fz = fmul float %spec.select.2.i, f0x3FE9EB96
  %i.ga = fsub float f0x3F5B5E7F, %i.fz
  %i.gb = call noundef float @atanhf(float noundef %i.ga) #31, !noalias !326
  %i.gc = fmul float %i.gb, f0x430AE38E
  %i.gd = fsub float 5.380000e+02, %i.gc          ; 4 uses
  store float %i.gd, ptr %i.ac, align 4, !tbaa !28, !alias.scope !326
  %i.ge = fcmp olt float %i.gd, 3.600000e+02
  %i.gf = fcmp ogt float %i.gd, 8.300000e+02
  %or.cond.i.2.i = or i1 %i.ge, %i.gf
  br i1 %or.cond.i.2.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i
  %i.gg = fadd float %i.gd, -5.380000e+02
  %i.gh = fmul float %i.gg, 7.200000e-03
  %i.gi = call noundef float @coshf(float noundef %i.gh) #31, !noalias !326 ; 2 uses
  %i.gj = fmul float %i.gi, %i.gi
  %i.gk = fdiv float f0x3B811979, %i.gj
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i:       ; preds = %bb.i, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i
  %.0.i.2.i = phi float [ %i.gk, %bb.i ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1.i ]
  store float %.0.i.2.i, ptr %i.ad, align 4, !tbaa !28, !alias.scope !326
  %i.gl = fadd float %i.es, 7.500000e-01          ; 3 uses
  %i.gm = fcmp ogt float %i.gl, 1.000000e+00
  %i.gn = fadd float %i.gl, -1.000000e+00
  %spec.select.3.i = select i1 %i.gm, float %i.gn, float %i.gl
  %i.go = fmul float %spec.select.3.i, f0x3FE9EB96
  %i.gp = fsub float f0x3F5B5E7F, %i.go
  %i.gq = call noundef float @atanhf(float noundef %i.gp) #31, !noalias !326
  %i.gr = fmul float %i.gq, f0x430AE38E
  %i.gs = fsub float 5.380000e+02, %i.gr          ; 4 uses
  store float %i.gs, ptr %i.y, align 4, !tbaa !28, !alias.scope !326
  %i.gt = fcmp olt float %i.gs, 3.600000e+02
  %i.gu = fcmp ogt float %i.gs, 8.300000e+02
  %or.cond.i.3.i = or i1 %i.gt, %i.gu
  br i1 %or.cond.i.3.i, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i
  %i.gv = fadd float %i.gs, -5.380000e+02
  %i.gw = fmul float %i.gv, 7.200000e-03
  %i.gx = call noundef float @coshf(float noundef %i.gw) #31, !noalias !326 ; 2 uses
  %i.gy = fmul float %i.gx, %i.gx
  %i.gz = fdiv float f0x3B811979, %i.gy
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit:  ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i, %bb.j
  %.0.i.3.i = phi float [ %i.gz, %bb.j ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2.i ]
  store float %.0.i.3.i, ptr %i.ae, align 4, !tbaa !28, !alias.scope !326
  %i.ha = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(32) %4)
  %i.hb = load i8, ptr %i.x, align 4, !tbaa !41, !range !42, !noundef !43
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.k, label %.noexc116

.noexc116:                                        ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 235, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(4) @.str.79) #32
  unreachable

bb.k:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.hd = call noundef float @llvm.fabs.f32(float %.sroa.22.0.copyload)
  %i.he = fmul float %i.ha, %i.hd
  %i.hf = load float, ptr %i.af, align 4, !tbaa !156
  %i.hg = fdiv float %i.he, %i.hf
  %i.hh = fadd float %.036163, %i.hg              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.hi = add nuw nsw i32 %.sroa.0133.0162, 1     ; 2 uses
  %.not = icmp eq i32 %i.hi, 20
  br i1 %.not, label %bb.f, label %.preheader

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.hj = load i8, ptr %5, align 8, !tbaa !121, !range !42, !noundef !43
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.ab, label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.ah

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.hm = load ptr, ptr %i.ag, align 8, !tbaa !122 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !88
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.p, %bb.o
  %i.ho = phi ptr [ %i.hn, %bb.p ], [ @.str.20, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 779, ptr noundef %i.ho)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.hp = load ptr, ptr %6, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.v

.noexc.i.i:                                       ; preds = %bb.s
  br i1 %i.hq, label %bb.t, label %_ZN7testing7MessageD2Ev.exit

bb.t:                                             ; preds = %.noexc.i.i
  %i.hr = load ptr, ptr %6, align 8, !tbaa !125   ; 3 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_ZN7testing7MessageD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !68
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(128) %i.hr) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #34
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.r, %.noexc.i.i, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ab

bb.w:                                             ; preds = %bb.n
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.q
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.y ], [ %i.hz, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.hy, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  br label %bb.ah

bb.ab:                                            ; preds = %bb.l, %_ZN7testing7MessageD2Ev.exit
  %i.ib = load ptr, ptr %i.ag, align 8, !tbaa !122
  %.not.i.i.i120 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i120, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i121 unwind label %bb.af

.noexc.i.i121:                                    ; preds = %bb.ac
  br i1 %i.ic, label %bb.ad, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ad:                                            ; preds = %.noexc.i.i121
  %i.id = load ptr, ptr %i.ag, align 8, !tbaa !122 ; 4 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !88 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !77
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.af:                                            ; preds = %bb.ac
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #34
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %.noexc.i.i121, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store double 1.010000e+00, ptr %i.c, align 8, !tbaa !155
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.im = load i8, ptr %8, align 8, !tbaa !121, !range !42, !noundef !43
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.ax, label %bb.aj

bb.ah:                                            ; preds = %bb.aa, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.hl, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bd

bb.ai:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.bc

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ak unwind label %bb.as
end_hunk_1
begin_hunk_2_@llvm.fabs.f32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEEENUlRNS_16StatsAccumulatorEE_8__invokeES6_(ptr noundef nonnull align 8 dereferenceable(8) %0) #12 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEEE7numTrue) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEEE5total) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79
  tail call void @_ZN4pbrt16StatsAccumulator15ReportRareCheckEPKcfll(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.80, float noundef f0x3727C5AC, i64 noundef %i.b, i64 noundef %i.d)
  store i64 0, ptr %i.c, align 8, !tbaa !79
  store i64 0, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(8) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = fmul float %2, %2                        ; 2 uses
  %i.b = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.c, float %i.b, float 0.000000e+00 ; 2 uses
  %i.d = fdiv float %.sroa.speculated.i.i.i.i, %i.a ; 2 uses
  %i.e = tail call float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp oeq float %i.e, +inf
  br i1 %i.f, label %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef float @sqrtf(float noundef %.sroa.speculated.i.i.i.i) #31 ; 2 uses
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i, label %bb.c

_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i:  ; preds = %bb.b
  %i.i = load float, ptr %0, align 4, !tbaa !163  ; 2 uses
  %i.j = fmul float %i.i, %i.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = load float, ptr %0, align 4, !tbaa !163
  %i.l = insertelement <2 x float> poison, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %1, %i.m                ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.p = fcmp olt float %i.o, -1.000000e+00
  %i.q = fcmp ogt <2 x float> %i.n, splat (float 1.000000e+00) ; 2 uses
  %i.r = extractelement <2 x i1> %i.q, i64 0
  %..i.i.i.i = select i1 %i.r, float 1.000000e+00, float %i.o
  %.0.i.i.i.i = select i1 %i.p, float -1.000000e+00, float %..i.i.i.i
  %i.s = fmul float %.0.i.i.i.i, %i.k             ; 2 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.v = fcmp olt float %i.u, -1.000000e+00
  %i.w = extractelement <2 x i1> %i.q, i64 1
  %..i.i21.i.i = select i1 %i.w, float 1.000000e+00, float %i.u
  %.0.i.i22.i.i = select i1 %i.v, float -1.000000e+00, float %..i.i21.i.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i:         ; preds = %bb.c, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i
  %i.x = phi float [ %i.t, %bb.c ], [ %i.j, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i ]
  %i.y = phi float [ %.0.i.i22.i.i, %bb.c ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !164
  %i.ab = fmul float %i.y, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = fadd float %i.x, %i.ac
  %i.ae = fmul float %i.d, %i.ad
  %i.af = fadd float %i.ae, 1.000000e+00
  %i.ag = tail call noundef float @sqrtf(float noundef %i.af) #31
  %i.ah = fadd float %i.ag, -1.000000e+00
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = fadd float %i.ai, 1.000000e+00
  br label %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit

_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit: ; preds = %bb.a, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i
  %.0.i.i = phi float [ %i.aj, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i.i ], [ 1.000000e+00, %bb.a ]
  %i.ak = fmul float %4, %4                       ; 4 uses
  %i.al = fsub float 1.000000e+00, %i.ak          ; 2 uses
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.am, float %i.al, float 0.000000e+00 ; 2 uses
  %i.an = fdiv float %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.ao = tail call float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit
  %i.aq = fmul float %i.ak, %i.ak                 ; 2 uses
  %i.ar = fcmp olt float %i.aq, 1.000000e-16
  br i1 %i.ar, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = tail call noundef float @sqrtf(float noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %i.at = fcmp oeq float %i.as, 0.000000e+00
  br i1 %i.at, label %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i, label %bb.f

_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i:    ; preds = %bb.e
  %i.au = load float, ptr %0, align 4, !tbaa !163 ; 2 uses
  %i.av = fdiv float 1.000000e+00, %i.au          ; 2 uses
  %i.aw = fmul float %i.av, %i.av
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ax = load float, ptr %0, align 4, !tbaa !163 ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.as, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %3, %i.az              ; 3 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bc = fcmp olt float %i.bb, -1.000000e+00
  %i.bd = fcmp ogt <2 x float> %i.ba, splat (float 1.000000e+00) ; 2 uses
  %i.be = extractelement <2 x i1> %i.bd, i64 0
  %..i.i.i = select i1 %i.be, float 1.000000e+00, float %i.bb
  %.0.i.i.i = select i1 %i.bc, float -1.000000e+00, float %..i.i.i
  %i.bf = fdiv float %.0.i.i.i, %i.ax             ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf
  %i.bh = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bi = fcmp olt float %i.bh, -1.000000e+00
  %i.bj = extractelement <2 x i1> %i.bd, i64 1
  %..i.i29.i = select i1 %i.bj, float 1.000000e+00, float %i.bh
  %.0.i.i30.i = select i1 %i.bi, float -1.000000e+00, float %..i.i29.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i:           ; preds = %bb.f, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i
  %i.bk = phi float [ %i.bg, %bb.f ], [ %i.aw, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bl = phi float [ %i.ax, %bb.f ], [ %i.au, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bm = phi float [ %.0.i.i30.i, %bb.f ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !164 ; 2 uses
  %i.bp = fdiv float %i.bm, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.bp, %i.bp
  %i.br = fadd float %i.bk, %i.bq
  %i.bs = fmul float %i.an, %i.br
  %i.bt = fmul float %i.bl, f0x40490FDB
  %i.bu = fmul float %i.bt, %i.bo
  %i.bv = fmul float %i.aq, %i.bu
  %i.bw = fadd float %i.bs, 1.000000e+00          ; 2 uses
  %i.bx = fmul float %i.bw, %i.bw
  %i.by = fmul float %i.bv, %i.bx
  %i.bz = fdiv float 1.000000e+00, %i.by
  br label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit

_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit: ; preds = %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit, %bb.d, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i
  %.1.i = phi float [ 0.000000e+00, %_ZNK4pbrt27TrowbridgeReitzDistribution2G1ENS_7Vector3IfEE.exit ], [ %i.bz, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i ], [ 0.000000e+00, %bb.d ]
  %i.ca = fdiv float 1.000000e+00, %.0.i.i
  %i.cb = tail call noundef float @llvm.fabs.f32(float %2)
  %i.cc = fdiv float %i.ca, %i.cb
  %i.cd = fmul float %i.cc, %.1.i
  %i.ce = fmul <2 x float> %1, %3                 ; 2 uses
  %shift = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ce, %shift
  %i.cf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cg = fmul float %2, %4
  %i.ch = fadd float %i.cg, %i.cf
  %i.ci = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.cj = fmul float %i.ci, %i.cd
  ret float %i.cj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18ThinDielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %3) ; 4 uses
  %i.b = load float, ptr %1, align 4, !tbaa !391  ; 4 uses
  %i.c = fcmp ogt float %i.a, 1.000000e+00
  %..i.i = select i1 %i.c, float 1.000000e+00, float %i.a ; 5 uses
  %i.d = fmul float %..i.i, %..i.i
  %i.e = fsub float 1.000000e+00, %i.d
  %i.f = fmul float %i.b, %i.b
  %i.g = fdiv float %i.e, %i.f                    ; 2 uses
  %i.h = fcmp ult float %i.g, 1.000000e+00
  br i1 %i.h, label %_ZN4pbrt12FrDielectricEff.exit, label %_ZN4pbrt12FrDielectricEff.exit.thread

_ZN4pbrt12FrDielectricEff.exit:                   ; preds = %bb.a
  %i.i = fsub float 1.000000e+00, %i.g            ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.j, float %i.i, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.k = fmul float %..i.i, %i.b                  ; 2 uses
  %i.l = fsub float %i.k, %sqrt.i.i
  %i.m = fadd float %i.k, %sqrt.i.i
  %i.n = fdiv float %i.l, %i.m                    ; 2 uses
  %i.o = fmul float %i.b, %sqrt.i.i               ; 2 uses
  %i.p = fsub float %..i.i, %i.o
  %i.q = fadd float %..i.i, %i.o
  %i.r = fdiv float %i.p, %i.q                    ; 2 uses
  %i.s = fmul float %i.n, %i.n
  %i.t = fmul float %i.r, %i.r
  %i.u = fadd float %i.s, %i.t
  %i.v = fmul float %i.u, 5.000000e-01            ; 7 uses
  %i.w = fsub float 1.000000e+00, %i.v            ; 3 uses
  %i.x = fcmp olt float %i.v, 1.000000e+00
  br i1 %i.x, label %bb.b, label %_ZN4pbrt12FrDielectricEff.exit.thread

bb.b:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit
  %i.y = fmul float %i.w, %i.w
  %i.z = fmul float %i.v, %i.y
  %i.aa = fmul nnan float %i.v, %i.v
  %i.ab = fsub float 1.000000e+00, %i.aa
  %i.ac = fdiv float %i.z, %i.ab
  %i.ad = fadd float %i.v, %i.ac                  ; 2 uses
  %i.ae = fsub float 1.000000e+00, %i.ad
  br label %_ZN4pbrt12FrDielectricEff.exit.thread

_ZN4pbrt12FrDielectricEff.exit.thread:            ; preds = %bb.a, %bb.b, %_ZN4pbrt12FrDielectricEff.exit
  %.055 = phi float [ %i.ae, %bb.b ], [ %i.w, %_ZN4pbrt12FrDielectricEff.exit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.0 = phi float [ %i.ad, %bb.b ], [ %i.v, %_ZN4pbrt12FrDielectricEff.exit ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.af = and i32 %7, 1
  %.not = icmp eq i32 %i.af, 0
  %spec.select = select i1 %.not, float 0.000000e+00, float %.0 ; 3 uses
  %i.ag = and i32 %7, 2
  %.not60 = icmp eq i32 %i.ag, 0
  %.057 = select i1 %.not60, float 0.000000e+00, float %.055 ; 3 uses
  %i.ah = fcmp oeq float %spec.select, 0.000000e+00
  %i.ai = fcmp oeq float %.057, 0.000000e+00
  %or.cond = and i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread
  %i.aj = fadd float %.057, %spec.select          ; 2 uses
  %i.ak = fdiv float %spec.select, %i.aj          ; 2 uses
  %i.al = fcmp olt float %4, %i.ak
  %i.am = fneg <2 x float> %2                     ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = fdiv float %.0, %i.a
  %.sroa.076.0.vec.insert = insertelement <2 x float> poison, float %i.an, i64 0
  %.sroa.076.4.vec.insert = shufflevector <2 x float> %.sroa.076.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.ao, align 4, !tbaa !41
  store <2 x float> %.sroa.076.4.vec.insert, ptr %0, align 4
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.076.4.vec.insert, ptr %.sroa.468.0..sroa_idx, align 4
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.am, ptr %.sroa.569.0..sroa_idx, align 4
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %.sroa.670.0..sroa_idx, align 4
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ak, ptr %.sroa.771.0..sroa_idx, align 4
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 17, ptr %.sroa.872.0..sroa_idx, align 4
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.973.0..sroa_idx, align 4
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.1074.0..sroa_idx, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = fneg float %3
  %i.aq = fdiv float %.055, %i.a
  %.sroa.063.0.vec.insert = insertelement <2 x float> poison, float %i.aq, i64 0
  %.sroa.063.4.vec.insert = shufflevector <2 x float> %.sroa.063.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fdiv float %.057, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.as, align 4, !tbaa !41
  store <2 x float> %.sroa.063.4.vec.insert, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.063.4.vec.insert, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.am, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ap, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ar, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 18, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

declare void @_ZNK4pbrt12MeasuredBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 4, ptr noundef nonnull align 8 dereferenceable(40), <2 x float>, float, float noundef, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt21NormalizedFresnelBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::BSDFSample") align 4 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = and i32 %7, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !392
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = fmul <2 x float> %5, splat (float 2.000000e+00)
  %i.d = fadd <2 x float> %i.c, splat (float -1.000000e+00) ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0   ; 4 uses
  %i.f = fcmp oeq float %i.e, 0.000000e+00
  %i.g = extractelement <2 x float> %i.d, i64 1   ; 4 uses
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  %or.cond.i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.d) ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = fcmp ogt <2 x float> %i.i, %shift
  %i.k = extractelement <2 x i1> %i.j, i64 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = fdiv float %i.g, %i.e
  %i.m = fmul float %i.l, f0x3F490FDB
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = fdiv float %i.e, %i.g
  %i.o = fmul float %i.n, f0x3F490FDB
  %i.p = fsub float f0x3FC90FDB, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024.i.i = phi float [ %i.m, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %.0.i.i = phi float [ %i.e, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.q = tail call noundef float @cosf(float noundef %.024.i.i) #31
  %i.r = tail call noundef float @sinf(float noundef %.024.i.i) #31
  %i.s = fmul float %.0.i.i, %i.q
  %i.t = fmul float %.0.i.i, %i.r
  %.sroa.0.0.vec.insert.i.i29.i.i = insertelement <2 x float> poison, float %i.s, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i, float %i.t, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit: ; preds = %bb.c, %bb.g
  %.sroa.035.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i, %bb.g ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.u = fmul <2 x float> %.sroa.035.0.i.i, %.sroa.035.0.i.i ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = fsub float 1.000000e+00, %i.v
  %i.x = extractelement <2 x float> %i.u, i64 1
  %i.y = fsub float %i.w, %i.x                    ; 2 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.z, float %i.y, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.aa = fcmp olt float %3, 0.000000e+00
  %i.ab = fneg float %sqrt.i.i
  %spec.select = select i1 %i.aa, float %i.ab, float %sqrt.i.i ; 5 uses
  %i.ac = fmul float %3, %spec.select
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00      ; 2 uses
  br i1 %i.ad, label %bb.h, label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

bb.h:                                             ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit
  %i.ae = load float, ptr %1, align 4, !tbaa !394
  %i.af = fdiv float 1.000000e+00, %i.ae
  %i.ag = tail call noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef %i.af)
  %i.ah = fmul float %i.ag, 2.000000e+00
  %i.ai = fsub float 1.000000e+00, %i.ah
  %i.aj = load float, ptr %1, align 4, !tbaa !394 ; 4 uses
  %i.ak = fcmp olt float %spec.select, -1.000000e+00
  %i.al = fcmp ogt float %spec.select, 1.000000e+00
  %..i.i.i = select i1 %i.al, float 1.000000e+00, float %spec.select
  %.0.i.i.i = select i1 %i.ak, float -1.000000e+00, float %..i.i.i ; 3 uses
  %i.am = fcmp olt float %.0.i.i.i, 0.000000e+00  ; 2 uses
  %i.an = fdiv float 1.000000e+00, %i.aj
  %i.ao = fneg float %.0.i.i.i
  %.025.i.i = select i1 %i.am, float %i.an, float %i.aj ; 4 uses
  %.024.i.i37 = select i1 %i.am, float %i.ao, float %.0.i.i.i ; 5 uses
  %i.ap = fmul float %.024.i.i37, %.024.i.i37
  %i.aq = fsub float 1.000000e+00, %i.ap
  %i.ar = fmul float %.025.i.i, %.025.i.i
  %i.as = fdiv float %i.aq, %i.ar                 ; 2 uses
  %i.at = fcmp ult float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.i, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.i:                                             ; preds = %bb.h
  %i.au = fsub float 1.000000e+00, %i.as          ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.av, float %i.au, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.aw = fmul float %.024.i.i37, %.025.i.i       ; 2 uses
  %i.ax = fsub float %i.aw, %sqrt.i.i.i
  %i.ay = fadd float %i.aw, %sqrt.i.i.i
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fmul float %.025.i.i, %sqrt.i.i.i       ; 2 uses
  %i.bb = fsub float %.024.i.i37, %i.ba
  %i.bc = fadd float %.024.i.i37, %i.ba
  %i.bd = fdiv float %i.bb, %i.bc                 ; 2 uses
  %i.be = fmul float %i.az, %i.az
  %i.bf = fmul float %i.bd, %i.bd
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = fmul float %i.bg, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

_ZN4pbrt12FrDielectricEff.exit.i:                 ; preds = %bb.i, %bb.h
  %.0.i.i38 = phi float [ %i.bh, %bb.i ], [ 1.000000e+00, %bb.h ]
end_hunk_2
