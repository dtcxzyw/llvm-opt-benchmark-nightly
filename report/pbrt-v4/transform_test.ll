Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform_test?download=true
inline.NumInlined: 468
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN30AnimatedTransform_Randoms_Test8TestBodyEv:bb.a
  br i1 %i.nc, label %_ZN7testing7MessageD2Ev.exit205, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.nd = load ptr, ptr %i.nb, align 8, !tbaa !34
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(128) %i.nb) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit205

bb.ep:                                            ; preds = %bb.em
  %i.ng = landingpad { ptr, i32 }
          catch ptr null
  %i.nh = extractvalue { ptr, i32 } %i.ng, 0
  call void @__clang_call_terminate(ptr %i.nh) #20
  unreachable

_ZN7testing7MessageD2Ev.exit205:                  ; preds = %bb.el, %.noexc.i.i204, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.fc

bb.eq:                                            ; preds = %bb.eh
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit208

bb.er:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.es:                                            ; preds = %bb.ek
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #19
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.pn74 = phi { ptr, i32 } [ %i.nk, %bb.es ], [ %i.nj, %bb.er ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.nl = load ptr, ptr %25, align 8, !tbaa !32
  %.not.i.i.i206 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i206, label %_ZN7testing7MessageD2Ev.exit208, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.nm = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i207 unwind label %bb.ex

.noexc.i.i207:                                    ; preds = %bb.eu
  br i1 %i.nm, label %bb.ev, label %_ZN7testing7MessageD2Ev.exit208

bb.ev:                                            ; preds = %.noexc.i.i207
  %i.nn = load ptr, ptr %25, align 8, !tbaa !32   ; 3 uses
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %_ZN7testing7MessageD2Ev.exit208, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.np = load ptr, ptr %i.nn, align 8, !tbaa !34
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8
  call void %i.nr(ptr noundef nonnull align 8 dereferenceable(128) %i.nn) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit208

bb.ex:                                            ; preds = %bb.eu
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #20
  unreachable

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %bb.ew, %bb.ev, %.noexc.i.i207, %bb.et, %bb.eq
  %.pn74.pn = phi { ptr, i32 } [ %i.ni, %bb.eq ], [ %.pn74, %bb.et ], [ %.pn74, %.noexc.i.i207 ], [ %.pn74, %bb.ev ], [ %.pn74, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.nu = load ptr, ptr %i.q, align 8, !tbaa !25
  %.not.i.i.i209 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i209, label %_ZN7testing15AssertionResultD2Ev.exit214, label %bb.ey

bb.ey:                                            ; preds = %_ZN7testing7MessageD2Ev.exit208
  %i.nv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i210 unwind label %bb.fb

.noexc.i.i210:                                    ; preds = %bb.ey
  br i1 %i.nv, label %bb.ez, label %_ZN7testing15AssertionResultD2Ev.exit214

bb.ez:                                            ; preds = %.noexc.i.i210
  %i.nw = load ptr, ptr %i.q, align 8, !tbaa !25  ; 4 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %_ZN7testing15AssertionResultD2Ev.exit214, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ny = load ptr, ptr %i.nw, align 8, !tbaa !29 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i211: ; preds = %bb.fa
  %i.ob = load i64, ptr %i.nz, align 8, !tbaa !35
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.oc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i212: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i211
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit214

bb.fb:                                            ; preds = %bb.ey
  %i.od = landingpad { ptr, i32 }
          catch ptr null
  %i.oe = extractvalue { ptr, i32 } %i.od, 0
  call void @__clang_call_terminate(ptr %i.oe) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit214:         ; preds = %_ZN7testing7MessageD2Ev.exit208, %.noexc.i.i210, %bb.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.fh

bb.fc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit200, %_ZN7testing7MessageD2Ev.exit205
  %i.of = load ptr, ptr %i.q, align 8, !tbaa !25
  %.not.i.i.i215 = icmp eq ptr %i.of, null
  br i1 %.not.i.i.i215, label %_ZN7testing15AssertionResultD2Ev.exit220, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.og = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i216 unwind label %bb.fg

.noexc.i.i216:                                    ; preds = %bb.fd
  br i1 %i.og, label %bb.fe, label %_ZN7testing15AssertionResultD2Ev.exit220

bb.fe:                                            ; preds = %.noexc.i.i216
  %i.oh = load ptr, ptr %i.q, align 8, !tbaa !25  ; 4 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %_ZN7testing15AssertionResultD2Ev.exit220, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.oj = load ptr, ptr %i.oh, align 8, !tbaa !29 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217: ; preds = %bb.ff
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !35
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i218: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit220

bb.fg:                                            ; preds = %bb.fd
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit220:         ; preds = %bb.fc, %.noexc.i.i216, %bb.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.oq = mul i64 %i.cq, 6364136223846793005
  %i.or = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.os = add i64 %i.oq, %i.or                    ; 3 uses
  %i.ot = lshr i64 %i.cq, 45
  %i.ou = lshr i64 %i.cq, 27
  %i.ov = xor i64 %i.ot, %i.ou
  %i.ow = trunc i64 %i.ov to i32                  ; 2 uses
  %i.ox = lshr i64 %i.cq, 59
  %i.oy = trunc nuw nsw i64 %i.ox to i32
  %i.oz = call noundef i32 @llvm.fshr.i32(i32 %i.ow, i32 %i.ow, i32 %i.oy)
  %i.pa = uitofp i32 %i.oz to float
  %i.pb = fmul nnan float %i.pa, f0x2F800000      ; 2 uses
  %i.pc = fcmp olt float %i.pb, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.pc, float %i.pb, float f0x3F7FFFFF
  %i.pd = fpext nnan ninf float %.sroa.speculated.i to double
  %i.pe = fmul nnan double %i.pd, 1.000000e-02
  %i.pf = fadd double %i.cp, %i.pe                ; 2 uses
  %i.pg = fptrunc double %i.pf to float           ; 2 uses
  %i.ph = fpext float %i.pg to double
  %i.pi = fcmp ugt double %i.pf, f0x3FF0000010000000
  br i1 %i.pi, label %bb.f, label %bb.g, !llvm.loop !50

bb.fh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit214, %_ZN7testing15AssertionResultD2Ev.exit194, %_ZN7testing15AssertionResultD2Ev.exit174, %_ZN7testing15AssertionResultD2Ev.exit154, %_ZN7testing15AssertionResultD2Ev.exit134, %_ZN7testing15AssertionResultD2Ev.exit
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %_ZN7testing15AssertionResultD2Ev.exit214 ], [ %.pn71.pn, %_ZN7testing15AssertionResultD2Ev.exit194 ], [ %.pn68.pn, %_ZN7testing15AssertionResultD2Ev.exit174 ], [ %.pn65.pn, %_ZN7testing15AssertionResultD2Ev.exit154 ], [ %.pn62.pn, %_ZN7testing15AssertionResultD2Ev.exit134 ], [ %.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn74.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15RandomTransformRN4pbrt3RNGE(ptr dead_on_unwind noalias nonnull writable align 4 initializes((0, 128)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %sincos.sin.i25 = alloca float, align 4         ; 4 uses
  %sincos.cos.i26 = alloca float, align 4         ; 4 uses
  %sincos.sin.i = alloca float, align 4           ; 4 uses
  %sincos.cos.i = alloca float, align 4           ; 4 uses
  %2 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %3 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %5 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %6 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 23 uses
  store float 1.000000e+00, ptr %0, align 4, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0..sroa_idx115.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.7.0..sroa_idx116.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.13.0..sroa_idx120.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.16.0..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.18.0..sroa_idx122.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 44
  %.sroa.30.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 76
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 84
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 100
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 108
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 124
  br label %bb.c

bb.b:                                             ; preds = %bb.h
  ret void

bb.c:                                             ; preds = %bb.a, %bb.h
  %.031 = phi i32 [ 0, %bb.a ], [ %i.fj, %bb.h ]
  %i.o = load i64, ptr %i.m, align 8, !tbaa !13   ; 8 uses
  %.promoted.i = load i64, ptr %1, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.r, %bb.d ], [ %.promoted.i, %bb.c ] ; 4 uses
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.o                       ; 5 uses
  %i.s = lshr i64 %i.p, 45
  %i.t = lshr i64 %i.p, 27
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.d, label %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit

_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit: ; preds = %bb.d
  %i.w = lshr i64 %i.p, 59
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = call noundef i32 @llvm.fshr.i32(i32 %i.v, i32 %i.v, i32 %i.x)
  %i.z = urem i32 %i.y, 3
  %i.aa = mul i64 %i.r, 6364136223846793005
  %i.ab = add i64 %i.aa, %i.o                     ; 6 uses
  %i.ac = lshr i64 %i.r, 45
  %i.ad = lshr i64 %i.r, 27
  %i.ae = xor i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = lshr i64 %i.r, 59
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = call noundef i32 @llvm.fshr.i32(i32 %i.af, i32 %i.af, i32 %i.ah)
  %i.aj = uitofp i32 %i.ai to float
  %i.ak = fmul nnan float %i.aj, f0x2F800000      ; 2 uses
  %i.al = fcmp olt float %i.ak, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.al, float %i.ak, float f0x3F7FFFFF
  %i.am = fpext nnan ninf float %.sroa.speculated.i.i to double
  %i.an = fmul nnan double %i.am, 2.000000e+01
  %i.ao = fadd double %i.an, -1.000000e+01        ; 3 uses
  switch i32 %i.z, label %default.unreachable35 [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ap = fptrunc double %i.ao to float
  %i.aq = call float @llvm.fabs.f32(float %i.ap)
  %i.ar = mul i64 %i.ab, 6364136223846793005
  %i.as = add i64 %i.ar, %i.o                     ; 2 uses
  %i.at = mul i64 %i.as, 6364136223846793005
  %i.au = add i64 %i.at, %i.o
  store i64 %i.au, ptr %1, align 8, !tbaa !12
  %i.av = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.aw = insertelement <2 x i64> %i.av, i64 %i.ab, i64 1 ; 3 uses
  %i.ax = lshr <2 x i64> %i.aw, splat (i64 45)
  %i.ay = lshr <2 x i64> %i.aw, splat (i64 27)
  %i.az = xor <2 x i64> %i.ax, %i.ay
  %i.ba = trunc <2 x i64> %i.az to <2 x i32>      ; 2 uses
  %i.bb = lshr <2 x i64> %i.aw, splat (i64 59)
  %i.bc = trunc nuw nsw <2 x i64> %i.bb to <2 x i32>
  %i.bd = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ba, <2 x i32> %i.ba, <2 x i32> %i.bc)
  %i.be = uitofp <2 x i32> %i.bd to <2 x float>
  %i.bf = fmul nnan <2 x float> %i.be, splat (float f0x2F800000) ; 2 uses
  %i.bg = fcmp olt <2 x float> %i.bf, splat (float f0x3F7FFFFF)
  %i.bh = select <2 x i1> %i.bg, <2 x float> %i.bf, <2 x float> splat (float f0x3F7FFFFF)
  %i.bi = fpext nnan ninf <2 x float> %i.bh to <2 x double>
  %i.bj = fmul nnan <2 x double> %i.bi, splat (double 2.000000e+01)
  %i.bk = fadd <2 x double> %i.bj, splat (double -1.000000e+01)
  %i.bl = fptrunc <2 x double> %i.bk to <2 x float>
  %i.bm = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bl) ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  call void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %3, float noundef %i.aq, float noundef %i.bo, float noundef %i.bn)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.h

bb.f:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bp = mul i64 %i.ab, 6364136223846793005
  %i.bq = add i64 %i.bp, %i.o                     ; 2 uses
  %i.br = mul i64 %i.bq, 6364136223846793005
  %i.bs = add i64 %i.br, %i.o
  store i64 %i.bs, ptr %1, align 8, !tbaa !12
  %i.bt = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %i.bu = insertelement <2 x i64> %i.bt, i64 %i.ab, i64 1 ; 3 uses
  %i.bv = lshr <2 x i64> %i.bu, splat (i64 45)
  %i.bw = lshr <2 x i64> %i.bu, splat (i64 27)
  %i.bx = xor <2 x i64> %i.bv, %i.bw
  %i.by = trunc <2 x i64> %i.bx to <2 x i32>      ; 2 uses
  %i.bz = lshr <2 x i64> %i.bu, splat (i64 59)
  %i.ca = trunc nuw nsw <2 x i64> %i.bz to <2 x i32>
  %i.cb = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.by, <2 x i32> %i.by, <2 x i32> %i.ca)
  %i.cc = uitofp <2 x i32> %i.cb to <2 x float>
  %i.cd = fmul nnan <2 x float> %i.cc, splat (float f0x2F800000) ; 2 uses
  %i.ce = fcmp olt <2 x float> %i.cd, splat (float f0x3F7FFFFF)
  %i.cf = select <2 x i1> %i.ce, <2 x float> %i.cd, <2 x float> splat (float f0x3F7FFFFF)
  %i.cg = fpext nnan ninf <2 x float> %i.cf to <2 x double>
  %i.ch = fmul nnan <2 x double> %i.cg, splat (double 2.000000e+01)
  %i.ci = fadd <2 x double> %i.ch, splat (double -1.000000e+01) ; 2 uses
  %i.cj = insertelement <2 x double> %i.ci, double %i.ao, i64 0
  %i.ck = fptrunc <2 x double> %i.cj to <2 x float>
  %i.cl = extractelement <2 x double> %i.ci, i64 0
  %i.cm = fptrunc double %i.cl to float
  call void @_ZN4pbrt9TranslateENS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, <2 x float> %i.ck, float %i.cm)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.h

bb.g:                                             ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cn = fmul nnan double %i.ao, 2.000000e+01
  %i.co = fptrunc nnan double %i.cn to float
  %i.cp = mul i64 %i.ab, 6364136223846793005
  %i.cq = add i64 %i.cp, %i.o                     ; 2 uses
  %i.cr = mul i64 %i.cq, 6364136223846793005
  %i.cs = add i64 %i.cr, %i.o
  store i64 %i.cs, ptr %1, align 8, !tbaa !12
  %i.ct = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %i.cu = insertelement <2 x i64> %i.ct, i64 %i.ab, i64 1 ; 3 uses
  %i.cv = lshr <2 x i64> %i.cu, splat (i64 45)
  %i.cw = lshr <2 x i64> %i.cu, splat (i64 27)
  %i.cx = xor <2 x i64> %i.cv, %i.cw
  %i.cy = trunc <2 x i64> %i.cx to <2 x i32>      ; 2 uses
  %i.cz = lshr <2 x i64> %i.cu, splat (i64 59)
  %i.da = trunc nuw nsw <2 x i64> %i.cz to <2 x i32>
  %i.db = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cy, <2 x i32> %i.cy, <2 x i32> %i.da)
  %i.dc = uitofp <2 x i32> %i.db to <2 x float>
  %i.dd = fmul nnan <2 x float> %i.dc, splat (float f0x2F800000) ; 3 uses
  %i.de = fcmp olt <2 x float> %i.dd, splat (float f0x3F7FFFFF) ; 2 uses
  %i.df = extractelement <2 x i1> %i.de, i64 1
  %i.dg = extractelement <2 x float> %i.dd, i64 1
  %i.dh = extractelement <2 x i1> %i.de, i64 0
  %i.di = extractelement <2 x float> %i.dd, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i)
  %i.dj = fmul nnan float %i.dg, 2.000000e+00
  %i.dk = fsub float 1.000000e+00, %i.dj
  %i.dl = select i1 %i.df, float %i.dk, float f0xBF7FFFFE ; 3 uses
  %i.dm = fmul float %i.dl, %i.dl                 ; 2 uses
  %i.dn = fsub float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = fcmp ogt float %i.dn, 0.000000e+00
  %.sroa.speculated.i.i24 = select i1 %i.do, float %i.dn, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i24) ; 2 uses
  %i.dp = fmul nnan float %i.di, f0x40C90FDB
  %i.dq = select i1 %i.dh, float %i.dp, float f0x40C90FDA
  call void @sincosf(float %i.dq, ptr nonnull %sincos.sin.i, ptr nonnull %sincos.cos.i)
  %sin.i = load float, ptr %sincos.sin.i, align 4
  %cos.i = load float, ptr %sincos.cos.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i25)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i26)
  %i.dr = fmul nnan float %i.co, f0x3C8EFA35
  call void @sincosf(float %i.dr, ptr nonnull %sincos.sin.i25, ptr nonnull %sincos.cos.i26), !noalias !59
  %sin.i27 = load float, ptr %sincos.sin.i25, align 4, !noalias !59 ; 3 uses
  %cos.i28 = load float, ptr %sincos.cos.i26, align 4, !noalias !59 ; 4 uses
  %i.ds = fsub float 1.000000e+00, %cos.i28       ; 3 uses
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx121.i.i, align 4, !alias.scope !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.24.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !60
  store float 1.000000e+00, ptr %.sroa.30.0..sroa_idx.i.i, align 4, !tbaa !35, !alias.scope !60
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !60
  %i.dt = fmul float %sqrt.i.i, %cos.i            ; 3 uses
  %i.du = fmul float %sqrt.i.i, %sin.i            ; 3 uses
  %i.dv = fmul float %i.dt, %i.dt
  %i.dw = fmul float %i.du, %i.du
  %i.dx = fadd float %i.dw, %i.dv
  %i.dy = fadd float %i.dm, %i.dx
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.dy) ; 3 uses
  %i.dz = fdiv float %i.dt, %sqrt.i.i.i.i         ; 5 uses
  %i.ea = fmul float %i.dz, %i.dz                 ; 2 uses
  %i.eb = fsub float 1.000000e+00, %i.ea
  %i.ec = fmul float %i.eb, %cos.i28
  %i.ed = fadd float %i.ea, %i.ec                 ; 2 uses
  %i.ee = fmul float %i.dz, %sin.i27              ; 2 uses
  store float %i.ed, ptr %7, align 4, !alias.scope !60
  %i.ef = fdiv float %i.du, %sqrt.i.i.i.i         ; 5 uses
  %i.eg = fdiv float %i.dl, %sqrt.i.i.i.i         ; 5 uses
  %i.eh = fmul float %i.dz, %i.ef
  %i.ei = fmul float %i.eh, %i.ds                 ; 2 uses
  %i.ej = fmul float %i.eg, %sin.i27              ; 2 uses
  %i.ek = fsub float %i.ei, %i.ej                 ; 2 uses
  %i.el = fmul float %i.dz, %i.eg
  %i.em = fmul float %i.el, %i.ds                 ; 2 uses
  %i.en = fmul float %i.ef, %sin.i27              ; 2 uses
  %i.eo = fadd float %i.en, %i.em                 ; 2 uses
  %i.ep = fadd float %i.ej, %i.ei                 ; 2 uses
  %i.eq = fmul float %i.ef, %i.ef                 ; 2 uses
  %i.er = fsub float 1.000000e+00, %i.eq
  %i.es = fmul float %i.er, %cos.i28
  %i.et = fadd float %i.eq, %i.es                 ; 2 uses
  %i.eu = fmul float %i.ef, %i.eg
  %i.ev = fmul float %i.eu, %i.ds                 ; 2 uses
  %i.ew = fsub float %i.ev, %i.ee                 ; 2 uses
  %i.ex = fsub float %i.em, %i.en                 ; 2 uses
  %i.ey = fadd float %i.ee, %i.ev                 ; 2 uses
  %i.ez = fmul float %i.eg, %i.eg                 ; 2 uses
  %i.fa = fsub float 1.000000e+00, %i.ez
  %i.fb = fmul float %i.fa, %cos.i28
  %i.fc = fadd float %i.ez, %i.fb                 ; 2 uses
  store float %i.ek, ptr %.sroa.5.0..sroa_idx115.i.i, align 4, !alias.scope !60
  %i.fd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.eo, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.ep, i64 2
  %i.ff = insertelement <4 x float> %i.fe, float %i.et, i64 3
  store <4 x float> %i.ff, ptr %.sroa.7.0..sroa_idx116.i.i, align 4, !alias.scope !60
  store float %i.ew, ptr %.sroa.13.0..sroa_idx120.i.i, align 4, !alias.scope !60
  store float %i.ex, ptr %.sroa.18.0..sroa_idx122.i.i, align 4, !alias.scope !60
  store float %i.ey, ptr %.sroa.19.0..sroa_idx.i.i, align 4, !alias.scope !60
  store float %i.fc, ptr %.sroa.21.0..sroa_idx.i.i, align 4, !alias.scope !60
  store float %i.ed, ptr %i.n, align 4, !alias.scope !60
  store float %i.ep, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !60
  store float %i.ex, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !60
  store float %i.ek, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !60
  %i.fg = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.et, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.ey, i64 1
  %i.fi = insertelement <4 x float> %i.fh, float %i.eo, i64 3
  store <4 x float> %i.fi, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !60
  store float %i.ew, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !alias.scope !60
  store float %i.fc, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !alias.scope !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !60
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx.i.i, align 4, !tbaa !35, !alias.scope !60
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i25)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i26)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %6, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %6, i64 128, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.h

default.unreachable35:                            ; preds = %_ZN4pbrt3RNG7UniformIjEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.fj = add nuw nsw i32 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fj, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !57
}

declare void @_ZN4pbrt17AnimatedTransformC1ERKNS_9TransformEfS3_f(ptr noundef nonnull align 4 dereferenceable(696), ptr noundef nonnull align 4 dereferenceable(128), float noundef, ptr noundef nonnull align 4 dereferenceable(128), float noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZNK4pbrt17AnimatedTransform12MotionBoundsERKNS_7Bounds3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(696), ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, ptr noundef nonnull align 4 dereferenceable(696), float noundef) local_unnamed_addr #1

declare void @_ZNK4pbrt9TransformclERKNS_7Bounds3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !36
  store ptr %2, ptr %i.b, align 8, !tbaa !36
  %i.c = load float, ptr %3, align 4, !tbaa !16
  %i.d = load float, ptr %4, align 4, !tbaa !16
  %i.e = fcmp ult float %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(12) @.str.28)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.29)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(12) @.str.30)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.r

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.h
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(5) @.str.31)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15 unwind label %bb.t

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15: ; preds = %bb.j
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.n = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.s = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.z = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.z, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !25  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !35
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
end_hunk_0
begin_hunk_1_@_ZN24RotateFromTo_Simple_Test8TestBodyEv:bb.a
  br i1 %i.ej, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !29 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93: ; preds = %bb.be
  %i.en = load i64, ptr %i.el, align 8, !tbaa !35
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit96

bb.bf:                                            ; preds = %bb.bc
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit96:          ; preds = %bb.bb, %.noexc.i.i92, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  ret void

bb.bg:                                            ; preds = %bb.ba, %bb.ah, %bb.o
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.ba ], [ %.pn54.pn, %bb.ah ], [ %.pn.pn, %bb.o ]
  resume { ptr, i32 } %.pn57.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Transform") align 4 %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #9 comdat {
bb.a:
  %.sroa.072.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = tail call noundef float @llvm.fabs.f32(float %.sroa.072.0.vec.extract)
  %i.b = fcmp olt float %i.a, 7.200000e-01
  %.sroa.068.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.c = tail call float @llvm.fabs.f32(float %.sroa.068.0.vec.extract)
  %i.d = fcmp olt float %i.c, 7.200000e-01
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %..preheader_crit_edge, label %bb.b

..preheader_crit_edge:                            ; preds = %bb.a
  %.pre202 = extractelement <2 x float> %3, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

bb.b:                                             ; preds = %bb.a
  %.sroa.068.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.e = shufflevector <2 x float> %3, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %i.f = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e)
  %i.g = fcmp olt <2 x float> %i.f, splat (float 7.200000e-01) ; 2 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0
  %i.i = extractelement <2 x i1> %i.g, i64 1
  %or.cond166 = select i1 %i.i, i1 %i.h, i1 false ; 2 uses
  %spec.select = select i1 %or.cond166, float 1.000000e+00, float 0.000000e+00
  %spec.select167 = select i1 %or.cond166, float 0.000000e+00, float 1.000000e+00
  %i.j = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.select, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2:   ; preds = %..preheader_crit_edge, %bb.b
  %.sroa.03.4.vec.extract.i77.pre-phi = phi float [ %.pre202, %..preheader_crit_edge ], [ %.sroa.068.4.vec.extract, %bb.b ] ; 2 uses
  %.sroa.14162.0 = phi float [ 0.000000e+00, %..preheader_crit_edge ], [ %spec.select167, %bb.b ] ; 3 uses
  %i.k = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %..preheader_crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = fsub float %.sroa.14162.0, %2            ; 7 uses
  %i.m = insertelement <5 x float> <float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %.sroa.14162.0, i64 2
  %i.n = shufflevector <2 x float> %i.k, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <5 x float> %i.n, <5 x float> %i.m, <5 x i32> <i32 0, i32 1, i32 7, i32 8, i32 9> ; 2 uses
  %i.p = shufflevector <2 x float> %1, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <5 x float> %i.p, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 1, i32 poison, i32 8, i32 9>
  %i.r = insertelement <5 x float> %i.q, float %2, i64 2
  %i.s = fsub <5 x float> %i.o, %i.r
  %i.t = shufflevector <5 x float> %i.s, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.u = fsub float %.sroa.14162.0, %4            ; 7 uses
  %i.v = shufflevector <2 x float> %3, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <5 x float> %i.v, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 poison, i32 poison, i32 8, i32 9>
  %i.x = insertelement <5 x float> %i.w, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 1
  %i.y = insertelement <5 x float> %i.x, float %4, i64 2
  %i.z = fsub <5 x float> %i.o, %i.y
  %i.aa = shufflevector <5 x float> %i.z, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4>
  %i.ab = fmul float %i.l, %i.u
  %i.ac = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.ae = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ag = fsub <4 x float> %i.ad, %i.af           ; 3 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 4 uses
  %i.ai = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.ak = insertelement <4 x float> %i.aj, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 2
  %i.al = fsub <4 x float> %i.ad, %i.ak           ; 3 uses
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 5 uses
  %foldExtExtBinop = fmul <8 x float> %i.ah, %i.am
  %i.an = extractelement <8 x float> %foldExtExtBinop, i64 0
  %i.ao = extractelement <4 x float> %i.ag, i64 2 ; 3 uses
  %i.ap = extractelement <4 x float> %i.al, i64 2 ; 3 uses
  %i.aq = fmul float %i.ao, %i.ap
  %i.ar = fadd float %i.an, %i.aq
  %i.as = fadd float %i.ab, %i.ar
  %i.at = fmul float %i.as, 4.000000e+00
  %i.au = fmul float %i.l, %i.l
  %foldExtExtBinop204 = fmul <8 x float> %i.ah, %i.ah
  %i.av = extractelement <8 x float> %foldExtExtBinop204, i64 0
  %i.aw = fmul float %i.ao, %i.ao
  %i.ax = fadd float %i.av, %i.aw
  %i.ay = fadd float %i.au, %i.ax                 ; 2 uses
  %i.az = fmul float %i.u, %i.u
  %foldExtExtBinop206 = fmul <8 x float> %i.am, %i.am
  %i.ba = extractelement <8 x float> %foldExtExtBinop206, i64 0
  %i.bb = fmul float %i.ap, %i.ap
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = fadd float %i.az, %i.bc                 ; 2 uses
  %i.be = fmul float %i.ay, %i.bd
  %.scalar = fdiv float %i.at, %i.be              ; 2 uses
  %i.bf = insertelement <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.bg = shufflevector <3 x float> %i.bf, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bh = fmul float %.scalar, %i.u
  %.scalar208 = fdiv float 2.000000e+00, %i.ay    ; 2 uses
  %i.bi = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar208, i64 0 ; 2 uses
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bk = fmul float %.scalar208, %i.l
  %i.bl = fmul float %i.bk, %i.l
  %i.bm = fsub float 1.000000e+00, %i.bl
  %.scalar209 = fdiv float 2.000000e+00, %i.bd    ; 2 uses
  %i.bn = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar209, i64 0 ; 2 uses
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bp = fmul float %.scalar209, %i.u
  %i.bq = fmul float %i.bp, %i.u
  %i.br = fsub float %i.bm, %i.bq
  %i.bs = fmul <8 x float> %i.bj, %i.ah
  %i.bt = fmul <8 x float> %i.bs, %i.t
  %i.bu = fsub <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %i.bt
  %i.bv = fmul <8 x float> %i.bo, %i.am
  %i.bw = fmul <8 x float> %i.bv, %i.aa
  %i.bx = fsub <8 x float> %i.bu, %i.bw
  %i.by = fmul <8 x float> %i.bg, %i.am
  %i.bz = fmul <8 x float> %i.by, %i.t
  %i.ca = fadd <8 x float> %i.bx, %i.bz           ; 4 uses
  %i.cb = fmul float %i.bh, %i.l
  %i.cc = fadd float %i.br, %i.cb                 ; 2 uses
  store <8 x float> %i.ca, ptr %0, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = shufflevector <3 x float> %i.bi, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x float> poison, float %i.l, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cd, %i.cf
  %i.ch = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = fsub <2 x float> zeroinitializer, %i.ci
  %i.ck = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cn = fmul <2 x float> %i.ck, %i.cm
  %i.co = shufflevector <4 x float> %i.al, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = fsub <2 x float> %i.cj, %i.cp
  %i.cr = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cm
  %i.ct = fmul <2 x float> %i.cs, %i.ch
  %i.cu = fadd <2 x float> %i.cq, %i.ct           ; 3 uses
  store <2 x float> %i.cu, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cc, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.28.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  store <2 x float> %i.cw, ptr %i.cv, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cx = insertelement <2 x float> %i.cu, float 0.000000e+00, i64 1
  store <2 x float> %i.cx, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cy, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cz = shufflevector <2 x float> %i.cu, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.cz, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.da, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.cc, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25RotateFromTo_Randoms_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %sincos.sin.i58 = alloca float, align 4         ; 4 uses
  %sincos.cos.i59 = alloca float, align 4         ; 4 uses
  %sincos.sin.i = alloca float, align 4           ; 4 uses
  %sincos.cos.i = alloca float, align 4           ; 4 uses
  %1 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit80
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit80
  %.092 = phi i32 [ 0, %bb.a ], [ %i.es, %_ZN7testing15AssertionResultD2Ev.exit80 ]
  %.sroa.084.091 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.ac, %_ZN7testing15AssertionResultD2Ev.exit80 ] ; 2 uses
  %i.j = mul i64 %.sroa.084.091, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i)
  %i.k = add i64 %i.j, -2720673578348880933       ; 2 uses
  %i.l = mul i64 %i.k, 6364136223846793005
  %i.m = add i64 %i.l, -2720673578348880933       ; 2 uses
  %i.n = mul i64 %i.m, 6364136223846793005
  %i.o = add i64 %i.n, -2720673578348880933       ; 2 uses
  %i.p = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.q = insertelement <2 x i64> %i.p, i64 %i.k, i64 1 ; 3 uses
  %i.r = lshr <2 x i64> %i.q, splat (i64 45)
  %i.s = lshr <2 x i64> %i.q, splat (i64 27)
  %i.t = xor <2 x i64> %i.r, %i.s
  %i.u = trunc <2 x i64> %i.t to <2 x i32>        ; 2 uses
  %i.v = lshr <2 x i64> %i.q, splat (i64 59)
  %i.w = trunc nuw nsw <2 x i64> %i.v to <2 x i32>
  %i.x = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.u, <2 x i32> %i.u, <2 x i32> %i.w)
  %i.y = uitofp <2 x i32> %i.x to <2 x float>
  %i.z = fmul nnan <2 x float> %i.y, splat (float f0x2F800000) ; 2 uses
  %i.aa = fcmp olt <2 x float> %i.z, splat (float f0x3F7FFFFF)
  %i.ab = mul i64 %i.o, 6364136223846793005
  %i.ac = add i64 %i.ab, -2720673578348880933
  %i.ad = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %8 = extractelement <2 x float> %i.ad, i64 1
  %9 = fmul nnan float %8, f0x40C90FDB
  call void @sincosf(float %9, ptr nonnull %sincos.sin.i, ptr nonnull %sincos.cos.i)
  %sin.i = load float, ptr %sincos.sin.i, align 4
  %cos.i = load float, ptr %sincos.cos.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i58)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i59)
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %10 = fmul nnan float %i.ae, f0x40C90FDB
  call void @sincosf(float %10, ptr nonnull %sincos.sin.i58, ptr nonnull %sincos.cos.i59)
  %sin.i64 = load float, ptr %sincos.sin.i58, align 4
  %cos.i65 = load float, ptr %sincos.cos.i59, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i58)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i59)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.af = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %i.ag = insertelement <2 x i64> %i.af, i64 %.sroa.084.091, i64 1 ; 3 uses
  %i.ah = lshr <2 x i64> %i.ag, splat (i64 45)
  %i.ai = lshr <2 x i64> %i.ag, splat (i64 27)
  %i.aj = xor <2 x i64> %i.ah, %i.ai
  %i.ak = trunc <2 x i64> %i.aj to <2 x i32>      ; 2 uses
  %i.al = lshr <2 x i64> %i.ag, splat (i64 59)
  %i.am = trunc nuw nsw <2 x i64> %i.al to <2 x i32>
  %i.an = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ak, <2 x i32> %i.ak, <2 x i32> %i.am)
  %i.ao = uitofp <2 x i32> %i.an to <2 x float>
  %i.ap = fmul nnan <2 x float> %i.ao, splat (float f0x2F800000) ; 2 uses
  %i.aq = fcmp olt <2 x float> %i.ap, splat (float f0x3F7FFFFF)
  %i.ar = select <2 x i1> %i.aq, <2 x float> %i.ap, <2 x float> splat (float f0x3F7FFFFF)
  %i.as = fmul nnan <2 x float> %i.ar, splat (float 2.000000e+00)
  %i.at = fsub <2 x float> splat (float 1.000000e+00), %i.as ; 5 uses
  %i.au = fmul <2 x float> %i.at, %i.at
  %i.av = fsub <2 x float> splat (float 1.000000e+00), %i.au ; 2 uses
  %i.aw = fcmp ogt <2 x float> %i.av, zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x float> %i.av, <2 x float> zeroinitializer
  %i.ay = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ax) ; 2 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = insertelement <2 x float> poison, float %sin.i, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %cos.i, i64 1
  %i.bc = fmul <2 x float> %i.az, %i.bb           ; 3 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x float> poison, float %cos.i65, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %sin.i64, i64 1
  %i.bh = fmul <2 x float> %i.be, %i.bg           ; 2 uses
  %i.bi = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.bj = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  call void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %1, <2 x float> %i.bd, float %i.bj, <2 x float> %i.bh, float %i.bi)
  %i.bk = load <5 x float>, ptr %1, align 4, !tbaa !16 ; 3 uses
  %i.bl = shufflevector <5 x float> %i.bk, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.bm = fmul <2 x float> %i.bc, %i.bl
  %i.bn = load <2 x float>, ptr %i.e, align 4, !tbaa !16 ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = shufflevector <5 x float> %i.bo, <5 x float> %i.bk, <2 x i32> <i32 5, i32 0>
  %i.br = fmul <2 x float> %i.bp, %i.bq
  %i.bs = fadd <2 x float> %i.bm, %i.br
  %i.bt = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = shufflevector <2 x float> %i.bn, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bv = shufflevector <5 x float> %i.bk, <5 x float> %i.bu, <2 x i32> <i32 2, i32 6>
  %i.bw = fmul <2 x float> %i.bt, %i.bv
  %i.bx = fadd <2 x float> %i.bs, %i.bw           ; 3 uses
  %i.by = load <2 x float>, ptr %i.f, align 4, !tbaa !16
  %i.bz = fmul <2 x float> %i.bd, %i.by           ; 2 uses
  %shift = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bz, %shift
  %i.ca = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cb = load float, ptr %i.g, align 4, !tbaa !16
  %i.cc = fmul float %i.bj, %i.cb
  %i.cd = fadd float %i.ca, %i.cc                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ce = fmul <2 x float> %i.bx, %i.bx           ; 2 uses
  %shift104 = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop105 = fadd <2 x float> %i.ce, %shift104
  %i.cf = extractelement <2 x float> %foldExtExtBinop105, i64 0
  %i.cg = fmul float %i.cd, %i.cd
  %i.ch = fadd float %i.cf, %i.cg
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ch)
  %i.ci = fadd float %sqrt.i, -1.000000e+00
  %i.cj = call noundef float @llvm.fabs.f32(float %i.ci)
  store float %i.cj, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store float 1.000000e-03, ptr %i.b, align 4, !tbaa !16
  call void @_ZN7testing8internal11CmpHelperLTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ck = load i8, ptr %2, align 8, !tbaa !22, !range !23, !noundef !24
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.co = phi ptr [ %i.cn, %bb.f ], [ @.str.27, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 106, ptr noundef %i.co)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cp = load ptr, ptr %3, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.cq, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !32    ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #20
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %.noexc.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.da, %bb.o ], [ %i.cz, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cy, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ap

bb.r:                                             ; preds = %bb.c, %_ZN7testing7MessageD2Ev.exit
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not.i.i.i68 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i68, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i69 unwind label %bb.v

.noexc.i.i69:                                     ; preds = %bb.s
  br i1 %i.dc, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %.noexc.i.i69
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !25  ; 4 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !29 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !35
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.r, %.noexc.i.i69, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.dm = fmul <2 x float> %i.bh, %i.bx           ; 2 uses
  %shift107 = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop108 = fadd <2 x float> %i.dm, %shift107
  %i.dn = extractelement <2 x float> %foldExtExtBinop108, i64 0
  %i.do = fmul float %i.bi, %i.cd
  %i.dp = fadd float %i.dn, %i.do
  store float %i.dp, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store float 9.990000e-01, ptr %i.d, align 4, !tbaa !16
  call void @_ZN7testing8internal11CmpHelperGTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.dq = load i8, ptr %5, align 8, !tbaa !22, !range !23, !noundef !24
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
end_hunk_1
begin_hunk_2_@_ZN7testing8internal11CmpHelperGTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.s = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.z = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.z, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !25  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !35
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.an, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.al, %bb.s ] ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !35
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.aj, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30AnimatedTransform_Randoms_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24RotateFromTo_Simple_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25RotateFromTo_Randoms_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI30AnimatedTransform_Randoms_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI30AnimatedTransform_Randoms_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30AnimatedTransform_Randoms_Test, i64 16), ptr %i.a, align 8, !tbaa !34
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #21
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, ptr noundef nonnull align 4 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(128)) local_unnamed_addr #1

declare void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @_ZN4pbrt9TranslateENS_7Vector3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, <2 x float>, float) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI24RotateFromTo_Simple_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI24RotateFromTo_Simple_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV24RotateFromTo_Simple_Test, i64 16), ptr %i.a, align 8, !tbaa !34
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #21
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI25RotateFromTo_Randoms_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI25RotateFromTo_Randoms_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV25RotateFromTo_Randoms_Test, i64 16), ptr %i.a, align 8, !tbaa !34
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #21
  resume { ptr, i32 } %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #1

declare void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(12) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(12) %1) #19
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %bb.a
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %0

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %2, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br i1 %i.b, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.f = phi ptr [ %i.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.33, %bb.a ]
  %i.g = phi i64 [ %i.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %bb.a ]
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.f, i64 noundef %i.g)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.i = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.j, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #20
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %0

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(7) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %1) #19
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) %1, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %bb.a
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %0

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_2
begin_hunk_3_@_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #20
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %0

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(5) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %1) #19
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(5) %1, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit:        ; preds = %bb.a
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %0

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.n
}

declare void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !39
  store i8 0, ptr %i.e, align 8, !tbaa !35
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !35
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.d, %bb.c
  store ptr %i.d, ptr %i.a, align 8, !tbaa !25
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit

_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit: ; preds = %bb.f, %bb.b, %bb.a
  %i.p = phi ptr [ %i.d, %bb.f ], [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.q = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #19 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.r
  br i1 %i.v, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.x = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !35
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.h
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.ac
}

declare void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !16
  %i.c = fpext float %i.b to double
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.c)
          to label %_ZN7testing8internal21UniversalTersePrinterIfE5PrintERKfPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIfE5PrintERKfPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !40, !alias.scope !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !39, !alias.scope !69
  store i8 0, ptr %i.e, align 8, !tbaa !35, !alias.scope !69
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44, !noalias !69 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !noalias !69 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIfE5PrintERKfPSo.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45, !noalias !69 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !69 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !tbaa !35, !alias.scope !69
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #21
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIfE5PrintERKfPSo.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !34
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !34
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #19
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !34
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ar) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.r, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperEQIN4pbrt7Vector3IfEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %4, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.a = load <2 x float>, ptr %3, align 4
  %i.b = fcmp oeq <2 x float> %i.a, %.sroa.01.0.copyload ; 2 uses
  %i.c = extractelement <2 x i1> %i.b, i64 0
  %i.d = extractelement <2 x i1> %i.b, i64 1
  %or.cond.i = select i1 %i.c, i1 %i.d, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 4
  %i.g = fcmp oeq float %i.f, %.sroa.22.0.copyload
  %or.cond = select i1 %or.cond.i, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.f

_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN7testing13PrintToStringIN4pbrt7Vector3IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7testing13PrintToStringIN4pbrt7Vector3IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.d

_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.h = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !35
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.m = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !35
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.f

bb.d:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
end_hunk_3
begin_hunk_4_@_ZN7testing13PrintToStringIN4pbrt7Vector3IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
.noexc:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.k = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !35
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.r, align 8, !tbaa !35
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !40, !alias.scope !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !39, !alias.scope !81
  store i8 0, ptr %i.v, align 8, !tbaa !35, !alias.scope !81
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44, !noalias !81 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !81 ; 2 uses
  %i.ab = icmp ugt ptr %i.y, %i.aa
  %.08.i.i.i = select i1 %i.ab, ptr %i.y, ptr %i.aa ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45, !noalias !81 ; 2 uses
  %i.ae = ptrtoint ptr %.08.i.i.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.ag)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !81 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
  br i1 %i.ak, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.al = load i64, ptr %i.v, align 8, !tbaa !35, !alias.scope !81
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #21
  br label %.body

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !34
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !34
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #19
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !34
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bi) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i ], [ %i.bj, %bb.f ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ai, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA6_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(6) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(6) %1) #19
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %bb.a
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %0

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.n
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_transform_test.cpp() #15 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !16
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !16
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !16
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !16
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  %i.c = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30AnimatedTransform_Randoms_TestEE, i64 16), ptr %i.d, align 8, !tbaa !34
  %i.e = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, ptr noundef %i.c, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.d)
  store ptr %i.e, ptr @_ZN30AnimatedTransform_Randoms_Test10test_info_E, align 8, !tbaa !83
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30AnimatedTransform_Randoms_Test10test_info_E) ; 0 uses
  %i.g = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI24RotateFromTo_Simple_TestEE, i64 16), ptr %i.h, align 8, !tbaa !34
  %i.i = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef null, ptr noundef null, ptr noundef %i.g, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.h)
  store ptr %i.i, ptr @_ZN24RotateFromTo_Simple_Test10test_info_E, align 8, !tbaa !83
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN24RotateFromTo_Simple_Test10test_info_E) ; 0 uses
  %i.k = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.l = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25RotateFromTo_Randoms_TestEE, i64 16), ptr %i.l, align 8, !tbaa !34
  %i.m = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, ptr noundef %i.k, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.l)
  store ptr %i.m, ptr @_ZN25RotateFromTo_Randoms_Test10test_info_E, align 8, !tbaa !83
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25RotateFromTo_Randoms_Test10test_info_E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #12

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"_ZTSN4pbrt3RNGE", !10, i64 0, !10, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 8}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"float", !6, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!20 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !19, i64 0}
!21 = !{!"_ZTSN7testing15AssertionResultE", !17, i64 0, !20, i64 8}
!22 = !{!21, !17, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!20, !19, i64 0}
!26 = !{!"p1 omnipotent char", !18, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !10, i64 8, !6, i64 16}
!29 = !{!28, !26, i64 0}
!30 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!31 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"vtable pointer", !5, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!6, !6, i64 0}
!36 = !{!26, !26, i64 0}
!37 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !15, i64 0, !15, i64 4, !15, i64 8}
!38 = !{!37, !15, i64 8}
!39 = !{!28, !10, i64 8}
!40 = !{!27, !26, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!42 = !{!"_ZTSSt6locale", !41, i64 0}
!43 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !42, i64 56}
!44 = !{!43, !26, i64 40}
!45 = !{!43, !26, i64 32}
!46 = !{!"_ZTSSi", !10, i64 8}
!47 = !{!46, !10, i64 8}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !15, i64 0, !15, i64 4, !15, i64 8}
!52 = !{!51, !15, i64 0}
!53 = distinct !{!53, i1 true, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE"}
!54 = distinct !{!54, !53, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZN4pbrt6RotateEffNS_7Vector3IfEE"}
!56 = distinct !{!56, !55, !"_ZN4pbrt6RotateEffNS_7Vector3IfEE: argument 0"}
!57 = distinct !{!57, !14}
!58 = !{i64 0, i64 64, !35, i64 64, i64 64, !35}
!59 = !{!54}
!60 = !{!56, !54}
!61 = distinct !{null, null}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!64 = distinct !{!64, !63, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!65 = distinct !{!65, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!66 = distinct !{!66, !65, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = !{!64}
!68 = !{!66}
!69 = !{!66, !64}
!70 = distinct !{!70, i1 true, !"_ZNK4pbrt6Tuple3INS_7Vector3EfE8ToStringB5cxx11Ev"}
!71 = distinct !{!71, !70, !"_ZNK4pbrt6Tuple3INS_7Vector3EfE8ToStringB5cxx11Ev: argument 0"}
!72 = distinct !{!72, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!73 = distinct !{!73, !72, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!74 = distinct !{!74, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!75 = distinct !{!75, !74, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!76 = !{!37, !15, i64 0}
!77 = !{!71}
!78 = !{!37, !15, i64 4}
!79 = !{!73}
!80 = !{!75}
!81 = !{!75, !73}
!82 = !{!"p1 _ZTSN7testing8TestInfoE", !18, i64 0}
!83 = !{!82, !82, i64 0}
end_hunk_4
