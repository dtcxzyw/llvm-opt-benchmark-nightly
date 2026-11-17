Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes_test?download=true
inline.NumInlined: 2888
inline.NumDeleted: 834
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN25Triangle_Reintersect_Test8TestBodyEv:bb.a
  store ptr %2, ptr %3, align 8, !tbaa !219, !noalias !218
  %i.bs = inttoptr i64 %i.at to ptr               ; 14 uses
  %i.bt = lshr i64 %i.ao, 57
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = or i32 %i.bu, 4
  %i.bw = add nsw i32 %i.bv, -1                   ; 6 uses
  call void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape6SampleENS_6Point2IfEEEUlT_E_N4pstd8optionalINS_11ShapeSampleEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS5_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.bs, i32 noundef %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bx = load i8, ptr %i.g, align 8, !tbaa !77, !range !53, !noundef !54 ; 2 uses
  store i8 %i.bx, ptr %7, align 8, !tbaa !52
  store ptr null, ptr %i.h, align 8, !tbaa !55
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %10, align 8, !tbaa !59
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 168, ptr noundef %i.bz)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  %i.ca = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !65
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.cf = load ptr, ptr %8, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.r

.noexc.i.i:                                       ; preds = %bb.o
  br i1 %i.cg, label %bb.p, label %_ZN7testing7MessageD2Ev.exit

bb.p:                                             ; preds = %.noexc.i.i
  %i.ch = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN7testing7MessageD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #32
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !55
  %.not.i.i.i130 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i130, label %.thread453, label %bb.s

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i131 unwind label %bb.v

.noexc.i.i131:                                    ; preds = %bb.s
  br i1 %i.cp, label %bb.t, label %.thread453

bb.t:                                             ; preds = %.noexc.i.i131
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !55  ; 4 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread453, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !59 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !65
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 32) #31
  br label %.thread453

bb.v:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #32
  unreachable

.thread453:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.t, %.noexc.i.i131, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.loopexit461

bb.w:                                             ; preds = %bb.j
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.x:                                             ; preds = %bb.k
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.y:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.m
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.z ], [ %i.db, %bb.y ] ; 2 uses
  %i.dd = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.aa
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !65
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.da, %bb.x ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.cz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.er

bb.ac:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.di = load i64, ptr %i.b, align 8, !tbaa !72  ; 3 uses
  %.promoted = load i64, ptr %4, align 8, !tbaa !73 ; 2 uses
  %i.dj = mul i64 %.promoted, 6364136223846793005
  %i.dk = add i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = mul i64 %i.dk, 6364136223846793005
  %i.dm = add i64 %i.dl, %i.di                    ; 4 uses
  %i.dn = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.do = insertelement <2 x i64> %i.dn, i64 %.promoted, i64 1 ; 3 uses
  %i.dp = lshr <2 x i64> %i.do, splat (i64 45)
  %i.dq = lshr <2 x i64> %i.do, splat (i64 27)
  %i.dr = xor <2 x i64> %i.dp, %i.dq
  %i.ds = trunc <2 x i64> %i.dr to <2 x i32>      ; 2 uses
  %i.dt = lshr <2 x i64> %i.do, splat (i64 59)
  %i.du = trunc nuw nsw <2 x i64> %i.dt to <2 x i32>
  %i.dv = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ds, <2 x i32> %i.ds, <2 x i32> %i.du)
  %i.dw = uitofp <2 x i32> %i.dv to <2 x float>
  %i.dx = fmul nnan <2 x float> %i.dw, splat (float f0x2F800000) ; 3 uses
  %i.dy = fcmp olt <2 x float> %i.dx, splat (float f0x3F7FFFFF) ; 2 uses
  %i.dz = extractelement <2 x i1> %i.dy, i64 1
  %i.ea = extractelement <2 x float> %i.dx, i64 1
  %.sroa.speculated.i.i = select i1 %i.dz, float %i.ea, float f0x3F7FFFFF ; 2 uses
  %i.eb = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.ec = fmul nnan float %.sroa.speculated.i.i, 8.000000e+00
  %i.ed = fmul nnan float %i.eb, 8.000000e+00
  %i.ee = fsub float %i.ec, %i.ed
  %i.ef = fpext float %i.ee to double
  %i.eg = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ef) #29
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = mul i64 %i.dm, 6364136223846793005
  %i.ej = add i64 %i.ei, %i.di
  %i.ek = lshr i64 %i.dm, 45
  %i.el = lshr i64 %i.dm, 27
  %i.em = xor i64 %i.ek, %i.el
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = lshr i64 %i.dm, 59
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = call noundef i32 @llvm.fshr.i32(i32 %i.en, i32 %i.en, i32 %i.ep)
  %i.er = uitofp i32 %i.eq to float
  %i.es = fmul nnan float %i.er, f0x2F800000      ; 2 uses
  %i.et = fcmp olt float %i.es, f0x3F7FFFFF
  %i.eu = insertelement <2 x i1> %i.dy, i1 %i.et, i64 1
  %i.ev = insertelement <2 x float> %i.dx, float %i.es, i64 1
  %i.ew = select <2 x i1> %i.eu, <2 x float> %i.ev, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ex = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ew
  %i.ey = fmul nnan <2 x float> %i.ew, splat (float 8.000000e+00)
  %i.ez = fmul nnan <2 x float> %i.ex, splat (float 8.000000e+00)
  %i.fa = fsub <2 x float> %i.ey, %i.ez
  %i.fb = fpext <2 x float> %i.fa to <2 x double> ; 2 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 0
  %i.fd = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fc) #29
  %i.fe = insertelement <2 x double> %i.eh, double %i.fd, i64 1
  %i.ff = fptrunc <2 x double> %i.fe to <2 x float> ; 2 uses
  %i.fg = extractelement <2 x double> %i.fb, i64 1
  %i.fh = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fg) #29
  %i.fi = fptrunc double %i.fh to float           ; 2 uses
  store i64 %i.ej, ptr %4, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 16
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.fj = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.fk = fmul float %i.fj, 5.000000e-01
  %i.fl = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.fm = load <4 x float>, ptr %6, align 16
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fo = fadd <2 x float> %i.fl, %i.fn
  %i.fp = fmul <2 x float> %i.fo, splat (float 5.000000e-01)
  %i.fq = fsub <2 x float> %i.fp, %i.ff
  %i.fr = fsub float %i.fk, %i.fi
  store <2 x float> %i.ff, ptr %11, align 8
  store float %i.fi, ptr %.sroa.27.0..sroa_idx.i, align 8
  store <2 x float> %i.fq, ptr %i.i, align 4
  store float %i.fr, ptr %.sroa.23.0..sroa_idx.i, align 4
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !85
  store i64 0, ptr %i.k, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float +inf, ptr %i.a, align 4, !tbaa !17, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !220
  store ptr %11, ptr %1, align 8, !tbaa !88, !noalias !220
  store ptr %i.a, ptr %i.l, align 8, !tbaa !90, !noalias !220
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_N4pstd8optionalINS_17ShapeIntersectionEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.34") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bs, i32 noundef %i.bw)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fs = load i8, ptr %i.m, align 8, !tbaa !92, !range !53, !noundef !54
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader, label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader: ; preds = %bb.ad, %_ZN7testing15AssertionResultD2Ev.exit230
  %.086542 = phi i32 [ %i.uq, %_ZN7testing15AssertionResultD2Ev.exit230 ], [ 0, %bb.ad ]
  %i.fv = load i64, ptr %4, align 8, !tbaa !73    ; 2 uses
  %i.fw = mul i64 %i.fv, 6364136223846793005
  %i.fx = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.fy = add i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = mul i64 %i.fy, 6364136223846793005
  %i.ga = add i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %4, align 8, !tbaa !73
  %i.gb = insertelement <2 x i64> poison, i64 %i.fy, i64 0
  %i.gc = insertelement <2 x i64> %i.gb, i64 %i.fv, i64 1 ; 3 uses
  %i.gd = lshr <2 x i64> %i.gc, splat (i64 45)
  %i.ge = lshr <2 x i64> %i.gc, splat (i64 27)
  %i.gf = xor <2 x i64> %i.gd, %i.ge
  %i.gg = trunc <2 x i64> %i.gf to <2 x i32>      ; 2 uses
  %i.gh = lshr <2 x i64> %i.gc, splat (i64 59)
  %i.gi = trunc nuw nsw <2 x i64> %i.gh to <2 x i32>
  %i.gj = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gg, <2 x i32> %i.gg, <2 x i32> %i.gi)
  %i.gk = uitofp <2 x i32> %i.gj to <2 x float>
  %i.gl = fmul nnan <2 x float> %i.gk, splat (float f0x2F800000) ; 3 uses
  %i.gm = fcmp olt <2 x float> %i.gl, splat (float f0x3F7FFFFF) ; 2 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 1
  %i.go = extractelement <2 x float> %i.gl, i64 1
  %i.gp = extractelement <2 x i1> %i.gm, i64 0
  %i.gq = extractelement <2 x float> %i.gl, i64 0
  %i.gr = fmul nnan float %i.go, 2.000000e+00
  %i.gs = fsub float 1.000000e+00, %i.gr
  %i.gt = select i1 %i.gn, float %i.gs, float f0xBF7FFFFE ; 5 uses
  %i.gu = fmul float %i.gt, %i.gt
  %i.gv = fsub float 1.000000e+00, %i.gu          ; 2 uses
  %i.gw = fcmp ogt float %i.gv, 0.000000e+00
  %.sroa.speculated.i.i147 = select i1 %i.gw, float %i.gv, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i147) ; 2 uses
  %i.gx = fmul nnan float %i.gq, f0x40C90FDB
  %i.gy = select i1 %i.gp, float %i.gx, float f0x40C90FDA ; 2 uses
  %i.gz = call noundef float @cosf(float noundef %i.gy) #29
  %i.ha = fmul float %i.gz, %sqrt.i.i             ; 2 uses
  %i.hb = call noundef float @sinf(float noundef %i.gy) #29
  %i.hc = fmul float %i.hb, %sqrt.i.i             ; 2 uses
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.ha, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.hc, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.n, align 8, !noalias !221 ; 3 uses
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !221 ; 4 uses
  %.sroa.0410.0.copyload = load float, ptr %12, align 8 ; 2 uses
  %.sroa.6413.0.copyload = load float, ptr %.sroa.6413.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7414.0.copyload = load float, ptr %.sroa.7414.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8415.0.copyload = load float, ptr %.sroa.8415.0..sroa_idx, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i, i64 0 ; 2 uses
  %i.hd = call noundef float @llvm.fabs.f32(float %.sroa.03.0.vec.extract.i.i)
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i, i64 1 ; 2 uses
  %i.he = call noundef float @llvm.fabs.f32(float %.sroa.03.4.vec.extract.i.i)
  %i.hf = call noundef float @llvm.fabs.f32(float %.sroa.210.0.copyload.i.i) ; 2 uses
  %i.hg = fsub float %.sroa.8415.0.copyload, %.sroa.7414.0.copyload
  %i.hh = fmul float %i.hg, 5.000000e-01          ; 2 uses
  %i.hi = fmul float %i.hf, %i.hh                 ; 2 uses
  %i.hj = fneg float %i.hi
  %i.hk = call noundef float @llvm.fma.f32(float %i.hf, float %i.hh, float %i.hj)
  %i.hl = fmul float %.sroa.210.0.copyload.i.i, %i.gt ; 2 uses
  %i.hm = call noundef float @llvm.fma.f32(float %.sroa.03.4.vec.extract.i.i, float %i.hc, float %i.hl)
  %i.hn = fneg float %i.hl
  %i.ho = call noundef float @llvm.fma.f32(float %.sroa.210.0.copyload.i.i, float %i.gt, float %i.hn)
  %i.hp = fadd float %i.ho, %i.hm
  %i.hq = call noundef float @llvm.fma.f32(float %.sroa.03.0.vec.extract.i.i, float %i.ha, float %i.hp) ; 2 uses
  %i.hr = fcmp olt float %i.hq, 0.000000e+00      ; 2 uses
  %i.hs = fadd float %.sroa.7414.0.copyload, %.sroa.8415.0.copyload
  %i.ht = fmul float %i.hs, 5.000000e-01
  %i.hu = load <2 x float>, ptr %.sroa.4411.0..sroa_idx, align 4 ; 3 uses
  %i.hv = extractelement <2 x float> %i.hu, i64 0
  %i.hw = fsub float %i.hv, %.sroa.0410.0.copyload
  %i.hx = fmul float %i.hw, 5.000000e-01
  %i.hy = extractelement <2 x float> %i.hu, i64 1
  %i.hz = fsub float %.sroa.6413.0.copyload, %i.hy
  %i.ia = fmul float %i.hz, 5.000000e-01
  %i.ib = call noundef float @llvm.fma.f32(float %i.he, float %i.ia, float %i.hi)
  %i.ic = fadd float %i.ib, %i.hk
  %i.id = call noundef float @llvm.fma.f32(float %i.hd, float %i.hx, float %i.ic) ; 2 uses
  %i.ie = fmul float %.sroa.210.0.copyload.i.i, %i.id ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x float> %.sroa.09.0.copyload.i.i, %i.ig ; 2 uses
  %i.ii = fneg <2 x float> %i.ih
  %i.ij = fneg float %i.ie
  %.sroa.11.0.i = select i1 %i.hr, float %i.ij, float %i.ie ; 3 uses
  %.sroa.0106.0.i = select i1 %i.hr, <2 x float> %i.ii, <2 x float> %i.ih ; 3 uses
  %i.ik = insertelement <2 x float> poison, float %.sroa.0410.0.copyload, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %.sroa.6413.0.copyload, i64 1
  %i.im = fadd <2 x float> %i.hu, %i.il
  %i.in = fmul <2 x float> %i.im, splat (float 5.000000e-01)
  %.sroa.03.0.vec.extract.i83.i = extractelement <2 x float> %.sroa.0106.0.i, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i84.i = extractelement <2 x float> %.sroa.0106.0.i, i64 1 ; 2 uses
  %i.io = fadd <2 x float> %i.in, %.sroa.0106.0.i ; 4 uses
  %i.ip = fadd float %i.ht, %.sroa.11.0.i         ; 7 uses
  %i.iq = fcmp ogt float %.sroa.03.0.vec.extract.i83.i, 0.000000e+00
  br i1 %i.iq, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i:         ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader
  %i.ir = extractelement <2 x float> %i.io, i64 0 ; 3 uses
  %or.cond.i.i = fcmp oeq float %i.ir, +inf
  br i1 %or.cond.i.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i, label %bb.af

bb.af:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i
  %i.is = fcmp oeq float %i.ir, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.is, float 0.000000e+00, float %i.ir ; 2 uses
  %i.it = bitcast float %spec.store.select.i.i to i32
  %i.iu = fcmp ult float %spec.store.select.i.i, 0.000000e+00
  %.0.v.i.i = select i1 %i.iu, i32 -1, i32 1
  %.0.i90.i = add i32 %.0.v.i.i, %i.it
  %i.iv = bitcast i32 %.0.i90.i to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i:      ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader
  %i.iw = fcmp olt float %.sroa.03.0.vec.extract.i83.i, 0.000000e+00
  br i1 %i.iw, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i:       ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i
  %i.ix = extractelement <2 x float> %i.io, i64 0 ; 3 uses
  %or.cond.i97.i = fcmp oeq float %i.ix, -inf
  br i1 %or.cond.i97.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i
  %i.iy = fcmp oeq float %i.ix, 0.000000e+00
  %spec.store.select.i98.i = select i1 %i.iy, float -0.000000e+00, float %i.ix ; 2 uses
  %i.iz = bitcast float %spec.store.select.i98.i to i32
  %i.ja = fcmp ogt float %spec.store.select.i98.i, 0.000000e+00
  %.0.v.i99.i = select i1 %i.ja, i32 -1, i32 1
  %.0.i100.i = add i32 %.0.v.i99.i, %i.iz
  %i.jb = bitcast i32 %.0.i100.i to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i: ; preds = %bb.ag, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i, %bb.af, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i
  %.010.i.sink.i = phi float [ +inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i ], [ %i.iv, %bb.af ], [ %i.jb, %bb.ag ], [ -inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i ]
  %.sroa.0122.i.0.vec.insert = insertelement <2 x float> %i.io, float %.010.i.sink.i, i64 0
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i:      ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i
  %.sroa.0122.i.0 = phi <2 x float> [ %.sroa.0122.i.0.vec.insert, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i ], [ %i.io, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i ] ; 4 uses
  %i.jc = fcmp ogt float %.sroa.03.4.vec.extract.i84.i, 0.000000e+00
  br i1 %i.jc, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i:    ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i
  %i.jd = fcmp olt float %.sroa.03.4.vec.extract.i84.i, 0.000000e+00
  br i1 %i.jd, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.i

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i:     ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i
  %.sroa.0122.i.4.vec.extract = extractelement <2 x float> %.sroa.0122.i.0, i64 1 ; 3 uses
  %or.cond.i97.1.i = fcmp oeq float %.sroa.0122.i.4.vec.extract, -inf
  br i1 %or.cond.i97.1.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i, label %bb.ah

end_hunk_0
begin_hunk_1_@_ZN25Triangle_Reintersect_Test8TestBodyEv:bb.a
.noexc.i.i179:                                    ; preds = %bb.cf
  br i1 %i.mk, label %bb.cg, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit196.2

bb.cg:                                            ; preds = %.noexc.i.i179
  %i.ml = load ptr, ptr %i.v, align 8, !tbaa !55  ; 4 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit196.2, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mn = load ptr, ptr %i.ml, align 8, !tbaa !59 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180: ; preds = %bb.ch
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !65
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i181: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef 32) #31
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit196.2

bb.ci:                                            ; preds = %bb.cf
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #32
  unreachable

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i305:      ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit196.2
  %i.mu = extractelement <2 x float> %i.rs, i64 0 ; 3 uses
  %or.cond.i.i306 = fcmp oeq float %i.mu, +inf
  br i1 %or.cond.i.i306, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i303, label %bb.cj

bb.cj:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i305
  %i.mv = fcmp oeq float %i.mu, 0.000000e+00
  %spec.store.select.i.i307 = select i1 %i.mv, float 0.000000e+00, float %i.mu ; 2 uses
  %i.mw = bitcast float %spec.store.select.i.i307 to i32
  %i.mx = fcmp ult float %spec.store.select.i.i307, 0.000000e+00
  %.0.v.i.i308 = select i1 %i.mx, i32 -1, i32 1
  %.0.i90.i309 = add i32 %.0.v.i.i308, %i.mw
  %i.my = bitcast i32 %.0.i90.i309 to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i303

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i265:   ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit196.2
  %i.mz = fcmp olt float %.sroa.03.0.vec.extract.i83.i260, 0.000000e+00
  br i1 %i.mz, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i298, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i266

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i298:    ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i265
  %i.na = extractelement <2 x float> %i.rs, i64 0 ; 3 uses
  %or.cond.i97.i299 = fcmp oeq float %i.na, -inf
  br i1 %or.cond.i97.i299, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i303, label %bb.ck

bb.ck:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i298
  %i.nb = fcmp oeq float %i.na, 0.000000e+00
  %spec.store.select.i98.i300 = select i1 %i.nb, float -0.000000e+00, float %i.na ; 2 uses
  %i.nc = bitcast float %spec.store.select.i98.i300 to i32
  %i.nd = fcmp ogt float %spec.store.select.i98.i300, 0.000000e+00
  %.0.v.i99.i301 = select i1 %i.nd, i32 -1, i32 1
  %.0.i100.i302 = add i32 %.0.v.i99.i301, %i.nc
  %i.ne = bitcast i32 %.0.i100.i302 to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i303

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i303: ; preds = %bb.ck, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i298, %bb.cj, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i305
  %.010.i.sink.i304 = phi float [ +inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i305 ], [ %i.my, %bb.cj ], [ %i.ne, %bb.ck ], [ -inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i298 ]
  %.sroa.0122.i248.0.vec.insert = insertelement <2 x float> %i.rs, float %.010.i.sink.i304, i64 0
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i266

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i266:   ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i303, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i265
  %.sroa.0122.i248.0 = phi <2 x float> [ %.sroa.0122.i248.0.vec.insert, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i303 ], [ %i.rs, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i265 ] ; 4 uses
  %i.nf = fcmp ogt float %.sroa.03.4.vec.extract.i84.i261, 0.000000e+00
  br i1 %i.nf, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i293, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i267

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i267: ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i266
  %i.ng = fcmp olt float %.sroa.03.4.vec.extract.i84.i261, 0.000000e+00
  br i1 %i.ng, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i286, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.i268

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i286:  ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i267
  %.sroa.0122.i248.4.vec.extract = extractelement <2 x float> %.sroa.0122.i248.0, i64 1 ; 3 uses
  %or.cond.i97.1.i287 = fcmp oeq float %.sroa.0122.i248.4.vec.extract, -inf
  br i1 %or.cond.i97.1.i287, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i291, label %bb.cl

bb.cl:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i286
  %i.nh = fcmp oeq float %.sroa.0122.i248.4.vec.extract, 0.000000e+00
  %spec.store.select.i98.1.i288 = select i1 %i.nh, float -0.000000e+00, float %.sroa.0122.i248.4.vec.extract ; 2 uses
  %i.ni = bitcast float %spec.store.select.i98.1.i288 to i32
  %i.nj = fcmp ogt float %spec.store.select.i98.1.i288, 0.000000e+00
  %.0.v.i99.1.i289 = select i1 %i.nj, i32 -1, i32 1
  %.0.i100.1.i290 = add i32 %.0.v.i99.1.i289, %i.ni
  %i.nk = bitcast i32 %.0.i100.1.i290 to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i291

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i293:    ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i266
  %.sroa.0122.i248.4.vec.extract437 = extractelement <2 x float> %.sroa.0122.i248.0, i64 1 ; 3 uses
  %or.cond.i.1.i294 = fcmp oeq float %.sroa.0122.i248.4.vec.extract437, +inf
  br i1 %or.cond.i.1.i294, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i291, label %bb.cm

bb.cm:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i293
  %i.nl = fcmp oeq float %.sroa.0122.i248.4.vec.extract437, 0.000000e+00
  %spec.store.select.i.1.i295 = select i1 %i.nl, float 0.000000e+00, float %.sroa.0122.i248.4.vec.extract437 ; 2 uses
  %i.nm = bitcast float %spec.store.select.i.1.i295 to i32
  %i.nn = fcmp ult float %spec.store.select.i.1.i295, 0.000000e+00
  %.0.v.i.1.i296 = select i1 %i.nn, i32 -1, i32 1
  %.0.i90.1.i297 = add i32 %.0.v.i.1.i296, %i.nm
  %i.no = bitcast i32 %.0.i90.1.i297 to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i291

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i291: ; preds = %bb.cm, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i293, %bb.cl, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i286
  %.010.i.1.sink.i292 = phi float [ -inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i286 ], [ %i.nk, %bb.cl ], [ %i.no, %bb.cm ], [ +inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i293 ]
  %.sroa.0122.i248.4.vec.insert = insertelement <2 x float> %.sroa.0122.i248.0, float %.010.i.1.sink.i292, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.i268

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.i268:   ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i291, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i267
  %.sroa.0122.i248.1 = phi <2 x float> [ %.sroa.0122.i248.4.vec.insert, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i291 ], [ %.sroa.0122.i248.0, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i267 ]
  %i.np = fcmp ogt float %.sroa.11.0.i258, 0.000000e+00
  br i1 %i.np, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.i281, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.2.i269

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.2.i269: ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.i268
  %i.nq = fcmp olt float %.sroa.11.0.i258, 0.000000e+00
  br i1 %i.nq, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.2.i274, label %.noexc193

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.2.i274:  ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.2.i269
  %or.cond.i97.2.i275 = fcmp oeq float %i.rt, -inf
  br i1 %or.cond.i97.2.i275, label %.noexc193, label %bb.cn

bb.cn:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.2.i274
  %i.nr = fcmp oeq float %i.rt, 0.000000e+00
  %spec.store.select.i98.2.i276 = select i1 %i.nr, float -0.000000e+00, float %i.rt ; 2 uses
  %i.ns = bitcast float %spec.store.select.i98.2.i276 to i32
  %i.nt = fcmp ogt float %spec.store.select.i98.2.i276, 0.000000e+00
  %.0.v.i99.2.i277 = select i1 %i.nt, i32 -1, i32 1
  %.0.i100.2.i278 = add i32 %.0.v.i99.2.i277, %i.ns
  %i.nu = bitcast i32 %.0.i100.2.i278 to float
  br label %.noexc193

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.i281:    ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.i268
  %or.cond.i.2.i282 = fcmp oeq float %i.rt, +inf
  br i1 %or.cond.i.2.i282, label %.noexc193, label %bb.co

bb.co:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.i281
  %i.nv = fcmp oeq float %i.rt, 0.000000e+00
  %spec.store.select.i.2.i283 = select i1 %i.nv, float 0.000000e+00, float %i.rt ; 2 uses
  %i.nw = bitcast float %spec.store.select.i.2.i283 to i32
  %i.nx = fcmp ult float %spec.store.select.i.2.i283, 0.000000e+00
  %.0.v.i.2.i284 = select i1 %i.nx, i32 -1, i32 1
  %.0.i90.2.i285 = add i32 %.0.v.i.2.i284, %i.nw
  %i.ny = bitcast i32 %.0.i90.2.i285 to float
  br label %.noexc193

.noexc193:                                        ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.2.i269, %bb.co, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.i281, %bb.cn, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.2.i274
  %.sroa.10.i249.0 = phi float [ %i.rt, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.2.i269 ], [ -inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.2.i274 ], [ %i.nu, %bb.cn ], [ %i.ny, %bb.co ], [ +inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.i281 ]
  %i.nz = load ptr, ptr %i.p, align 8, !tbaa !104, !noalias !223 ; 2 uses
  %.not.i.i184 = icmp eq ptr %i.nz, null
  %i.oa = fcmp ogt float %i.rl, 0.000000e+00
  %spec.select.idx.i.i189 = select i1 %i.oa, i64 8, i64 0
  %spec.select.i.i190 = getelementptr inbounds nuw i8, ptr %i.nz, i64 %spec.select.idx.i.i189
  %storemerge.in.i.i191 = select i1 %.not.i.i184, ptr %i.q, ptr %spec.select.i.i190
  %storemerge.i.i192 = load i64, ptr %storemerge.in.i.i191, align 8, !tbaa !86, !noalias !223
  store <2 x float> %.sroa.0122.i248.1, ptr %13, align 8
  store float %.sroa.10.i249.0, ptr %.sroa.5369.0..sroa_idx, align 8
  store <2 x float> %i.qw, ptr %.sroa.6370.0..sroa_idx, align 4
  store float %i.qf, ptr %.sroa.7371.0..sroa_idx, align 4
  store float %i.qc, ptr %.sroa.8372.0..sroa_idx, align 8
  store i64 %storemerge.i.i192, ptr %i.r, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  switch i32 %i.bw, label %bb.cs [
    i32 4, label %bb.cr
    i32 3, label %bb.cq
  ]

bb.cp:                                            ; preds = %bb.cd, %.loopexit.split-lp
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn, %bb.cd ], [ %lpad.loopexit, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.ep

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit196.2:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i181, %bb.cg, %.noexc.i.i179, %bb.ce, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.ob = load i64, ptr %i.b, align 8, !tbaa !72  ; 3 uses
  %.promoted539 = load i64, ptr %4, align 8, !tbaa !73 ; 2 uses
  %i.oc = mul i64 %.promoted539, 6364136223846793005
  %i.od = add i64 %i.oc, %i.ob                    ; 2 uses
  %i.oe = mul i64 %i.od, 6364136223846793005
  %i.of = add i64 %i.oe, %i.ob                    ; 4 uses
  %i.og = insertelement <2 x i64> poison, i64 %i.od, i64 0
  %i.oh = insertelement <2 x i64> %i.og, i64 %.promoted539, i64 1 ; 3 uses
  %i.oi = lshr <2 x i64> %i.oh, splat (i64 45)
  %i.oj = lshr <2 x i64> %i.oh, splat (i64 27)
  %i.ok = xor <2 x i64> %i.oi, %i.oj
  %i.ol = trunc <2 x i64> %i.ok to <2 x i32>      ; 2 uses
  %i.om = lshr <2 x i64> %i.oh, splat (i64 59)
  %i.on = trunc nuw nsw <2 x i64> %i.om to <2 x i32>
  %i.oo = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ol, <2 x i32> %i.ol, <2 x i32> %i.on)
  %i.op = uitofp <2 x i32> %i.oo to <2 x float>
  %i.oq = fmul nnan <2 x float> %i.op, splat (float f0x2F800000) ; 3 uses
  %i.or = fcmp olt <2 x float> %i.oq, splat (float f0x3F7FFFFF) ; 2 uses
  %i.os = extractelement <2 x i1> %i.or, i64 1
  %i.ot = extractelement <2 x float> %i.oq, i64 1
  %.sroa.speculated.i.i194 = select i1 %i.os, float %i.ot, float f0x3F7FFFFF ; 2 uses
  %i.ou = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i194
  %i.ov = fmul nnan float %.sroa.speculated.i.i194, 8.000000e+00
  %i.ow = fmul nnan float %i.ou, 8.000000e+00
  %i.ox = fsub float %i.ov, %i.ow
  %i.oy = fpext float %i.ox to double
  %i.oz = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.oy) #29
  %i.pa = insertelement <2 x double> poison, double %i.oz, i64 0
  %i.pb = mul i64 %i.of, 6364136223846793005
  %i.pc = add i64 %i.pb, %i.ob
  %i.pd = lshr i64 %i.of, 45
  %i.pe = lshr i64 %i.of, 27
  %i.pf = xor i64 %i.pd, %i.pe
  %i.pg = trunc i64 %i.pf to i32                  ; 2 uses
  %i.ph = lshr i64 %i.of, 59
  %i.pi = trunc nuw nsw i64 %i.ph to i32
  %i.pj = call noundef i32 @llvm.fshr.i32(i32 %i.pg, i32 %i.pg, i32 %i.pi)
  %i.pk = uitofp i32 %i.pj to float
  %i.pl = fmul nnan float %i.pk, f0x2F800000      ; 2 uses
  %i.pm = fcmp olt float %i.pl, f0x3F7FFFFF
  %i.pn = insertelement <2 x i1> %i.or, i1 %i.pm, i64 1
  %i.po = insertelement <2 x float> %i.oq, float %i.pl, i64 1
  %i.pp = select <2 x i1> %i.pn, <2 x float> %i.po, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.pq = fsub nnan <2 x float> splat (float 1.000000e+00), %i.pp
  %i.pr = fmul nnan <2 x float> %i.pp, splat (float 8.000000e+00)
  %i.ps = fmul nnan <2 x float> %i.pq, splat (float 8.000000e+00)
  %i.pt = fsub <2 x float> %i.pr, %i.ps
  %i.pu = fpext <2 x float> %i.pt to <2 x double> ; 2 uses
  %i.pv = extractelement <2 x double> %i.pu, i64 0
  %i.pw = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.pv) #29
  %i.px = insertelement <2 x double> %i.pa, double %i.pw, i64 1
  %i.py = fptrunc <2 x double> %i.px to <2 x float>
  %i.pz = extractelement <2 x double> %i.pu, i64 1
  %i.qa = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.pz) #29
  %i.qb = fptrunc double %i.qa to float
  store i64 %i.pc, ptr %4, align 8, !tbaa !73
  %.sroa.0400.0.copyload = load float, ptr %12, align 8, !noalias !224 ; 2 uses
  %.sroa.6403.0.copyload = load float, ptr %.sroa.6413.0..sroa_idx, align 4, !noalias !224 ; 2 uses
  %.sroa.7404.0.copyload = load float, ptr %.sroa.7414.0..sroa_idx, align 8, !noalias !224 ; 2 uses
  %.sroa.8405.0.copyload = load float, ptr %.sroa.8415.0..sroa_idx, align 4, !noalias !224 ; 2 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.n, align 8, !noalias !224 ; 3 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !224 ; 4 uses
  %i.qc = load float, ptr %i.o, align 8, !tbaa !103, !noalias !224
  %i.qd = fadd float %.sroa.7404.0.copyload, %.sroa.8405.0.copyload
  %i.qe = fmul float %i.qd, 5.000000e-01          ; 2 uses
  %i.qf = fsub float %i.qb, %i.qe                 ; 3 uses
  %.sroa.03.0.vec.extract.i.i250 = extractelement <2 x float> %.sroa.09.0.copyload.i, i64 0 ; 2 uses
  %i.qg = call noundef float @llvm.fabs.f32(float %.sroa.03.0.vec.extract.i.i250)
  %.sroa.03.4.vec.extract.i.i251 = extractelement <2 x float> %.sroa.09.0.copyload.i, i64 1 ; 2 uses
  %i.qh = call noundef float @llvm.fabs.f32(float %.sroa.03.4.vec.extract.i.i251)
  %i.qi = call noundef float @llvm.fabs.f32(float %.sroa.210.0.copyload.i) ; 2 uses
  %i.qj = fsub float %.sroa.8405.0.copyload, %.sroa.7404.0.copyload
  %i.qk = fmul float %i.qj, 5.000000e-01          ; 2 uses
  %i.ql = fmul float %i.qk, %i.qi                 ; 2 uses
  %i.qm = fneg float %i.ql
  %i.qn = call noundef float @llvm.fma.f32(float %i.qi, float %i.qk, float %i.qm)
  %i.qo = fmul float %.sroa.210.0.copyload.i, %i.qf ; 2 uses
  %i.qp = fneg float %i.qo
  %i.qq = call noundef float @llvm.fma.f32(float %.sroa.210.0.copyload.i, float %i.qf, float %i.qp)
  %i.qr = load <2 x float>, ptr %.sroa.4411.0..sroa_idx, align 4, !noalias !224 ; 3 uses
  %i.qs = insertelement <2 x float> poison, float %.sroa.0400.0.copyload, i64 0
  %i.qt = insertelement <2 x float> %i.qs, float %.sroa.6403.0.copyload, i64 1
  %i.qu = fadd <2 x float> %i.qr, %i.qt
  %i.qv = fmul <2 x float> %i.qu, splat (float 5.000000e-01) ; 2 uses
  %i.qw = fsub <2 x float> %i.py, %i.qv           ; 3 uses
  %i.qx = extractelement <2 x float> %i.qr, i64 0
  %i.qy = fsub float %i.qx, %.sroa.0400.0.copyload
  %i.qz = fmul float %i.qy, 5.000000e-01
  %i.ra = extractelement <2 x float> %i.qr, i64 1
  %i.rb = fsub float %.sroa.6403.0.copyload, %i.ra
  %i.rc = fmul float %i.rb, 5.000000e-01
  %i.rd = call noundef float @llvm.fma.f32(float %i.qh, float %i.rc, float %i.ql)
  %i.re = fadd float %i.rd, %i.qn
  %i.rf = call noundef float @llvm.fma.f32(float %i.qg, float %i.qz, float %i.re) ; 2 uses
  %i.rg = fmul float %.sroa.210.0.copyload.i, %i.rf ; 2 uses
  %i.rh = extractelement <2 x float> %i.qw, i64 1
  %i.ri = call noundef float @llvm.fma.f32(float %.sroa.03.4.vec.extract.i.i251, float %i.rh, float %i.qo)
  %i.rj = fadd float %i.ri, %i.qq
  %i.rk = extractelement <2 x float> %i.qw, i64 0
  %i.rl = call noundef float @llvm.fma.f32(float %.sroa.03.0.vec.extract.i.i250, float %i.rk, float %i.rj) ; 2 uses
  %i.rm = fcmp olt float %i.rl, 0.000000e+00      ; 2 uses
  %i.rn = insertelement <2 x float> poison, float %i.rf, i64 0
  %i.ro = shufflevector <2 x float> %i.rn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rp = fmul <2 x float> %.sroa.09.0.copyload.i, %i.ro ; 2 uses
  %i.rq = fneg <2 x float> %i.rp
  %i.rr = fneg float %i.rg
  %.sroa.11.0.i258 = select i1 %i.rm, float %i.rr, float %i.rg ; 3 uses
  %.sroa.0106.0.i259 = select i1 %i.rm, <2 x float> %i.rq, <2 x float> %i.rp ; 3 uses
  %.sroa.03.0.vec.extract.i83.i260 = extractelement <2 x float> %.sroa.0106.0.i259, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i84.i261 = extractelement <2 x float> %.sroa.0106.0.i259, i64 1 ; 2 uses
  %i.rs = fadd <2 x float> %i.qv, %.sroa.0106.0.i259 ; 4 uses
  %i.rt = fadd float %i.qe, %.sroa.11.0.i258      ; 7 uses
  %i.ru = fcmp ogt float %.sroa.03.0.vec.extract.i83.i260, 0.000000e+00
  br i1 %i.ru, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i305, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i265

bb.cq:                                            ; preds = %.noexc193
  %i.rv = invoke noundef zeroext i1 @_ZNK4pbrt8Triangle10IntersectPERKNS_3RayEf(ptr noundef nonnull align 4 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef 1.000000e+00)
          to label %bb.ct unwind label %bb.cu

bb.cr:                                            ; preds = %.noexc193
  %i.rw = invoke noundef zeroext i1 @_ZNK4pbrt13BilinearPatch10IntersectPERKNS_3RayEf(ptr noundef nonnull align 4 dereferenceable(12) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef 1.000000e+00)
          to label %bb.ct unwind label %bb.cu

bb.cs:                                            ; preds = %.noexc193
  %i.rx = invoke noundef zeroext i1 @_ZNK4pbrt5Curve10IntersectPERKNS_3RayEf(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef 1.000000e+00)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cq, %bb.cr, %bb.cs
  %.0.i311 = phi i1 [ %i.rw, %bb.cr ], [ %i.rx, %bb.cs ], [ %i.rv, %bb.cq ] ; 2 uses
  %i.ry = xor i1 %.0.i311, true
  %i.rz = zext i1 %i.ry to i8
  store i8 %i.rz, ptr %23, align 8, !tbaa !52
  store ptr null, ptr %i.x, align 8, !tbaa !55
  br i1 %.0.i311, label %bb.cv, label %_ZN7testing15AssertionResultD2Ev.exit213

bb.cu:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.cw unwind label %bb.de

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10)
          to label %bb.cx unwind label %bb.df

bb.cx:                                            ; preds = %bb.cw
  %i.sb = load ptr, ptr %26, align 8, !tbaa !59
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 202, ptr noundef %i.sb)
          to label %bb.cy unwind label %bb.dg

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.cz unwind label %bb.dh

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #29
  %i.sc = load ptr, ptr %26, align 8, !tbaa !59   ; 2 uses
  %i.sd = icmp eq ptr %i.sc, %i.y
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.cz
  %i.se = load i64, ptr %i.y, align 8, !tbaa !65
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  %i.sg = load ptr, ptr %24, align 8, !tbaa !62
  %.not.i.i.i202 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i.i202, label %bb.dk, label %bb.da

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.sh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i203 unwind label %bb.dd

.noexc.i.i203:                                    ; preds = %bb.da
  br i1 %i.sh, label %bb.db, label %bb.dk

bb.db:                                            ; preds = %.noexc.i.i203
  %i.si = load ptr, ptr %24, align 8, !tbaa !62   ; 3 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %bb.dk, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.sk = load ptr, ptr %i.si, align 8, !tbaa !64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(128) %i.si) #29, !inline_history !0
  br label %bb.dk

bb.dd:                                            ; preds = %bb.da
  %i.sn = landingpad { ptr, i32 }
          catch ptr null
  %i.so = extractvalue { ptr, i32 } %i.sn, 0
  call void @__clang_call_terminate(ptr %i.so) #32
  unreachable

bb.de:                                            ; preds = %bb.cv
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.df:                                            ; preds = %bb.cw
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

bb.dg:                                            ; preds = %bb.cx
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.cy
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #29
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn103 = phi { ptr, i32 } [ %i.ss, %bb.dh ], [ %i.sr, %bb.dg ] ; 2 uses
  %i.st = load ptr, ptr %26, align 8, !tbaa !59   ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.y
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %bb.di
  %i.sv = load i64, ptr %i.y, align 8, !tbaa !65
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205, %bb.df
  %.pn103.pn = phi { ptr, i32 } [ %i.sq, %bb.df ], [ %.pn103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ], [ %.pn103, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #29
  br label %bb.dj
end_hunk_1
begin_hunk_2_@_ZN25Triangle_Reintersect_Test8TestBodyEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i228: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i227
  call void @_ZdlPvm(ptr noundef nonnull %i.uh, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit230

bb.en:                                            ; preds = %bb.ek
  %i.uo = landingpad { ptr, i32 }
          catch ptr null
  %i.up = extractvalue { ptr, i32 } %i.uo, 0
  call void @__clang_call_terminate(ptr %i.up) #32
  unreachable

_ZN7testing15AssertionResultD2Ev.exit230:         ; preds = %bb.ds, %bb.ej, %.noexc.i.i226, %bb.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.uq = add nuw nsw i32 %.086542, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.uq, 1000
  br i1 %exitcond.not, label %.loopexit, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader, !llvm.loop !216

bb.eo:                                            ; preds = %bb.ei, %.loopexit.split-lp457
  %.pn110.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn, %bb.ei ], [ %lpad.loopexit545, %.loopexit.split-lp457 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.ep

bb.ep:                                            ; preds = %bb.dt, %bb.eo, %bb.cp, %bb.bo
  %.pn115.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn, %bb.bo ], [ %.pn98.pn.pn.pn, %bb.cp ], [ %.pn103.pn.pn.pn, %bb.dt ], [ %.pn110.pn.pn.pn, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.eq

.loopexit:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit230, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.thread451

.thread451:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond549.not = icmp eq i64 %indvars.iv.next, 1000
  br i1 %exitcond549.not, label %.loopexit461, label %bb.b, !llvm.loop !217

bb.eq:                                            ; preds = %bb.ae, %bb.ep
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fu, %bb.ae ], [ %.pn115.pn, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ab
  %.pn123.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn.pn.pn, %bb.eq ], [ %.pn.pn.pn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZNSt14_Function_baseD2Ev.exit128

_ZNSt14_Function_baseD2Ev.exit128:                ; preds = %bb.g, %bb.f, %bb.er
  %.pn123.pn.pn = phi { ptr, i32 } [ %.pn123.pn, %bb.er ], [ %i.au, %bb.f ], [ %i.au, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn123.pn.pn

.loopexit461:                                     ; preds = %.thread451, %.thread453
  ret void
}

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24Triangle_SolidAngle_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %2 = alloca %"class.pbrt::RNG", align 8         ; 9 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %.sroa.0128 = alloca <2 x float>, align 8       ; 10 uses
  %.sroa.12 = alloca float, align 4               ; 7 uses
  %4 = alloca %"struct.pbrt::ShapeSampleContext", align 8 ; 9 uses
  %5 = alloca %"class.pstd::optional", align 8    ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %14 = alloca %"class.testing::Message", align 8 ; 16 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0128.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0128, i64 4
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load <2 x i32>, ptr @_ZN4pbrt6PrimesE, align 16 ; 3 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = zext i32 %i.j to i64                     ; 5 uses
  %i.l = uitofp <2 x i32> %i.i to <2 x float>
  %i.m = extractelement <2 x i32> %i.i, i64 1
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.sroa.0128.4..sroa_idx257 = getelementptr inbounds nuw i8, ptr %.sroa.0128, i64 4
  %i.w = extractelement <2 x float> %i.o, i64 0
  %i.x = extractelement <2 x float> %i.o, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread148
  %indvars.iv208 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next209, %.thread148 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store float 1.000000e+01, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.y = add nuw nsw i64 %indvars.iv208, 100      ; 2 uses
  %i.z = mul i64 %i.y, 9202493588570546565        ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -9089707755183418291     ; 2 uses
  %i.ad = lshr i64 %i.ac, 33
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = shl nuw nsw i64 %i.y, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 3 uses
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !72
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = mul i64 %i.ah, 6364136223846793005
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %2, align 8, !tbaa !73
  store ptr %2, ptr %3, align 8, !tbaa !75
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !90
  store ptr @"_ZNSt17_Function_handlerIFfvEZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.g, align 8, !tbaa !15
  store ptr @"_ZNSt17_Function_handlerIFfvEZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", ptr %i.f, align 8, !tbaa !13
  %i.ak = invoke noundef ptr @_Z17GetRandomTriangleSt8functionIFfvEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %.thread148, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not.i59 = icmp eq ptr %i.aq, null
  br i1 %.not.i59, label %_ZNSt14_Function_baseD2Ev.exit60, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit60 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0128)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.au = load i64, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.av = mul i64 %i.au, 6364136223846793005
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !72  ; 5 uses
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = mul i64 %i.ax, 6364136223846793005
  %i.az = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.ba = insertelement <2 x i64> %i.az, i64 %i.ax, i64 1 ; 3 uses
  %i.bb = lshr <2 x i64> %i.ba, splat (i64 45)
  %i.bc = lshr <2 x i64> %i.ba, splat (i64 27)
  %i.bd = xor <2 x i64> %i.bb, %i.bc
  %i.be = trunc <2 x i64> %i.bd to <2 x i32>      ; 2 uses
  %i.bf = lshr <2 x i64> %i.ba, splat (i64 59)
  %i.bg = trunc nuw nsw <2 x i64> %i.bf to <2 x i32>
  %i.bh = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.be, <2 x i32> %i.be, <2 x i32> %i.bg)
  %i.bi = uitofp <2 x i32> %i.bh to <2 x float>
  %i.bj = fmul nnan <2 x float> %i.bi, splat (float f0x2F800000) ; 2 uses
  %i.bk = fcmp olt <2 x float> %i.bj, splat (float f0x3F7FFFFF)
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bj, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.bm = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bl
  %i.bn = fmul nnan <2 x float> %i.bm, splat (float 1.000000e+01)
  %i.bo = fmul nnan <2 x float> %i.bl, splat (float 1.000000e+01)
  %i.bp = fsub <2 x float> %i.bo, %i.bn
  store <2 x float> %i.bp, ptr %.sroa.0128, align 8, !tbaa !17
  %i.bq = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.br = mul i64 %i.bq, 6364136223846793005
  %i.bs = add i64 %i.br, %i.aw                    ; 2 uses
  %i.bt = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.bu = insertelement <2 x i64> %i.bt, i64 %i.bq, i64 1 ; 3 uses
  %i.bv = lshr <2 x i64> %i.bu, splat (i64 45)
  %i.bw = lshr <2 x i64> %i.bu, splat (i64 27)
  %i.bx = xor <2 x i64> %i.bv, %i.bw
  %i.by = trunc <2 x i64> %i.bx to <2 x i32>      ; 2 uses
  %i.bz = lshr <2 x i64> %i.bu, splat (i64 59)
  %i.ca = trunc nuw nsw <2 x i64> %i.bz to <2 x i32>
  %i.cb = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.by, <2 x i32> %i.by, <2 x i32> %i.ca)
  %i.cc = uitofp <2 x i32> %i.cb to <2 x float>
  %i.cd = fmul nnan <2 x float> %i.cc, splat (float f0x2F800000) ; 3 uses
  %i.ce = fcmp olt <2 x float> %i.cd, splat (float f0x3F7FFFFF) ; 2 uses
  %i.cf = extractelement <2 x i1> %i.ce, i64 1
  %i.cg = extractelement <2 x float> %i.cd, i64 1
  %.sroa.speculated.i.i62 = select i1 %i.cf, float %i.cg, float f0x3F7FFFFF ; 2 uses
  %i.ch = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i62
  %i.ci = fmul nnan float %i.ch, 1.000000e+01
  %i.cj = fmul nnan float %.sroa.speculated.i.i62, 1.000000e+01
  %i.ck = fsub float %i.cj, %i.ci
  store float %i.ck, ptr %.sroa.12, align 4, !tbaa !106
  %i.cl = mul i64 %i.bs, 6364136223846793005
  %i.cm = add i64 %i.cl, %i.aw                    ; 4 uses
  %i.cn = extractelement <2 x i1> %i.ce, i64 0
  %i.co = extractelement <2 x float> %i.cd, i64 0
  %i.cp = fcmp ule float %i.co, 5.000000e-01
  %.not252 = select i1 %i.cn, i1 %i.cp, i1 false
  %i.cq = select i1 %.not252, float 1.300000e+01, float -1.300000e+01
  %i.cr = mul i64 %i.cm, 6364136223846793005
  %i.cs = add i64 %i.cr, %i.aw
  store i64 %i.cs, ptr %2, align 8, !tbaa !73
  %i.ct = lshr i64 %i.cm, 45
  %i.cu = lshr i64 %i.cm, 27
  %i.cv = xor i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = lshr i64 %i.cm, 59
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = call noundef i32 @llvm.fshr.i32(i32 %i.cw, i32 %i.cw, i32 %i.cy)
  %i.da = urem i32 %i.cz, 3
  switch i32 %i.da, label %bb.k [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit

bb.k:                                             ; preds = %bb.i
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit:           ; preds = %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %.sroa.12, %bb.k ], [ %.sroa.0128.4..sroa_idx, %bb.j ], [ %.sroa.0128, %bb.i ]
  store float %i.cq, ptr %.0.i, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %.sroa.0128.0..sroa.0128.0..sroa.0128.0..sroa.0128.0. = load float, ptr %.sroa.0128, align 8, !tbaa !228
  %.sroa.07.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.0128.0..sroa.0128.0..sroa.0128.0..sroa.0128.0., i64 0
  %.sroa.07.4.vec.insert.i = shufflevector <2 x float> %.sroa.07.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0128.4..sroa.0128.4..sroa.0128.4..sroa.0128.4. = load float, ptr %.sroa.0128.4..sroa_idx257, align 4, !tbaa !229
  %.sroa.05.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.0128.4..sroa.0128.4..sroa.0128.4..sroa.0128.4., i64 0
  %.sroa.05.4.vec.insert.i = shufflevector <2 x float> %.sroa.05.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.8. = load float, ptr %.sroa.12, align 4, !tbaa !106 ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.8., i64 0
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %4, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %.sroa.4143.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %.sroa.5144.0..sroa_idx, align 8
  %i.db = udiv i64 -1, %i.k
  %i.dc = sub nuw i64 %i.db, %i.k
  %i.dd = udiv i64 -1, %i.n
  %i.de = sub nuw i64 %i.dd, %i.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit, %bb.bb
  %indvars.iv = phi i64 [ 0, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit ], [ %indvars.iv.next, %bb.bb ] ; 4 uses
  %.0199 = phi double [ 0.000000e+00, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit ], [ %i.gs, %bb.bb ]
  %.not.i63 = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i63, label %_ZN4pbrt14RadicalInverseEim.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.023.i = phi i64 [ %i.df, %.lr.ph.i ], [ %indvars.iv, %bb.l ] ; 3 uses
  %.01922.i = phi i64 [ %i.dg, %.lr.ph.i ], [ 0, %bb.l ]
  %.02021.i = phi float [ %i.dh, %.lr.ph.i ], [ 1.000000e+00, %bb.l ]
  %i.df = udiv i64 %.023.i, %i.k                  ; 2 uses
  %reass.add.i = sub i64 %.01922.i, %i.df
  %reass.mul.i = mul i64 %reass.add.i, %i.k
  %i.dg = add i64 %reass.mul.i, %.023.i           ; 3 uses
  %i.dh = fmul float %i.w, %.02021.i              ; 2 uses
  %i.di = icmp samesign uge i64 %.023.i, %i.k
  %i.dj = icmp ult i64 %i.dg, %i.dc
  %i.dk = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %i.dk, label %.lr.ph.i, label %.lr.ph.i66.preheader, !llvm.loop !225

.lr.ph.i66.preheader:                             ; preds = %.lr.ph.i
  %i.dl = uitofp i64 %i.dg to float
  %i.dm = fmul float %i.dh, %i.dl                 ; 2 uses
  %i.dn = fcmp ogt float %i.dm, f0x3F7FFFFF
  %.sroa.speculated.i64 = select i1 %i.dn, float f0x3F7FFFFF, float %i.dm
  br label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66
  %.023.i67 = phi i64 [ %i.do, %.lr.ph.i66 ], [ %indvars.iv, %.lr.ph.i66.preheader ] ; 3 uses
  %.01922.i68 = phi i64 [ %i.dp, %.lr.ph.i66 ], [ 0, %.lr.ph.i66.preheader ]
  %.02021.i69 = phi float [ %i.dq, %.lr.ph.i66 ], [ 1.000000e+00, %.lr.ph.i66.preheader ]
  %i.do = udiv i64 %.023.i67, %i.n                ; 2 uses
  %reass.add.i70 = sub i64 %.01922.i68, %i.do
  %reass.mul.i71 = mul i64 %reass.add.i70, %i.n
  %i.dp = add i64 %reass.mul.i71, %.023.i67       ; 3 uses
  %i.dq = fmul float %i.x, %.02021.i69            ; 2 uses
  %i.dr = icmp samesign uge i64 %.023.i67, %i.n
  %i.ds = icmp ult i64 %i.dp, %i.de
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %.lr.ph.i66, label %._crit_edge.loopexit.i72, !llvm.loop !225

._crit_edge.loopexit.i72:                         ; preds = %.lr.ph.i66
  %i.du = uitofp i64 %i.dp to float
  %i.dv = fmul float %i.dq, %i.du
  br label %_ZN4pbrt14RadicalInverseEim.exit.thread

_ZN4pbrt14RadicalInverseEim.exit.thread:          ; preds = %bb.l, %._crit_edge.loopexit.i72
  %.sroa.speculated.i64242 = phi float [ %.sroa.speculated.i64, %._crit_edge.loopexit.i72 ], [ 0.000000e+00, %bb.l ]
  %i.dw = phi float [ %i.dv, %._crit_edge.loopexit.i72 ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.dx = fcmp ogt float %i.dw, f0x3F7FFFFF
  %.sroa.speculated.i73 = select i1 %i.dx, float f0x3F7FFFFF, float %i.dw
  %.sroa.0117.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated.i64242, i64 0
  %.sroa.0117.4.vec.insert = insertelement <2 x float> %.sroa.0117.0.vec.insert, float %.sroa.speculated.i73, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNK4pbrt8Triangle6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %5, ptr noundef nonnull align 4 dereferenceable(8) %i.ak, ptr noundef nonnull align 4 dereferenceable(52) %4, <2 x float> %.sroa.0117.4.vec.insert)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.dy = load i8, ptr %i.p, align 8, !tbaa !77, !range !53, !noundef !54 ; 2 uses
  store i8 %i.dy, ptr %6, align 8, !tbaa !52
  store ptr null, ptr %i.q, align 8, !tbaa !55
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4pbrt14RadicalInverseEim.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ea = load ptr, ptr %9, align 8, !tbaa !59
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 232, ptr noundef %i.ea)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  %i.eb = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !65
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.eg = load ptr, ptr %7, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %bb.r
  br i1 %i.eh, label %bb.s, label %_ZN7testing7MessageD2Ev.exit

bb.s:                                             ; preds = %.noexc.i.i
  %i.ei = load ptr, ptr %7, align 8, !tbaa !62    ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN7testing7MessageD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #32
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i.i, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ep = load ptr, ptr %i.q, align 8, !tbaa !55
  %.not.i.i.i75 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i75, label %.thread154, label %bb.v

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.eq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i76 unwind label %bb.y

.noexc.i.i76:                                     ; preds = %bb.v
  br i1 %i.eq, label %bb.w, label %.thread154

bb.w:                                             ; preds = %.noexc.i.i76
  %i.er = load ptr, ptr %i.q, align 8, !tbaa !55  ; 4 uses
  %i.es = icmp eq ptr %i.er, null
end_hunk_2
begin_hunk_3_@_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27FullSphere_Reintersect_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.79", align 8  ; 11 uses
  %2 = alloca %"class.std::function.45", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvlEZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOl", ptr %i.b, align 8, !tbaa !134
  store ptr @"_ZNSt17_Function_handlerIFvlEZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = ptrtoint ptr %2 to i64
  store i64 %i.f, ptr %1, align 8, !tbaa !136
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_, ptr %i.d, align 8, !tbaa !138
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.c, align 8, !tbaa !13
  invoke void @_ZN4pbrt11ParallelForEllSt8functionIFvllEE(i64 noundef 0, i64 noundef 1000, ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #32
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.l, null
  br i1 %.not.i3.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #32
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  ret void

.body:                                            ; preds = %bb.e, %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.k

bb.k:                                             ; preds = %.body
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %.body, %bb.k
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24ParialSphere_Normal_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pstd::optional.70", align 4 ; 6 uses
  %2 = alloca %"class.pbrt::SurfaceInteraction", align 16 ; 9 uses
  %3 = alloca %"class.pbrt::Transform", align 4   ; 19 uses
  %4 = alloca %"class.pbrt::Sphere", align 8      ; 16 uses
  %5 = alloca %"class.pbrt::Bounds3", align 8     ; 8 uses
  %6 = alloca %"class.pbrt::Ray", align 8         ; 10 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 41
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.11133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.ag
  ret void

bb.c:                                             ; preds = %bb.a, %bb.ag
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %i.ad = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.ae = lshr i64 %i.ad, 27
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, -9089707755183418291     ; 2 uses
  %i.ah = lshr i64 %i.ag, 33
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = shl nuw nsw i64 %indvars.iv, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 15 uses
  %i.al = add i64 %i.ai, %i.ak
  %i.am = mul i64 %i.al, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store float 1.000000e+00, ptr %3, align 4, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 4, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !17
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = mul i64 %i.an, 6364136223846793005
  %i.ap = add i64 %i.ao, %i.ak                    ; 2 uses
  %i.aq = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.an, i64 1 ; 3 uses
  %i.as = lshr <2 x i64> %i.ar, splat (i64 45)
  %i.at = lshr <2 x i64> %i.ar, splat (i64 27)
  %i.au = xor <2 x i64> %i.as, %i.at
  %i.av = trunc <2 x i64> %i.au to <2 x i32>      ; 2 uses
  %i.aw = lshr <2 x i64> %i.ar, splat (i64 59)
  %i.ax = trunc nuw nsw <2 x i64> %i.aw to <2 x i32>
  %i.ay = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.av, <2 x i32> %i.av, <2 x i32> %i.ax)
  %i.az = uitofp <2 x i32> %i.ay to <2 x float>
  %i.ba = fmul nnan <2 x float> %i.az, splat (float f0x2F800000) ; 3 uses
  %i.bb = fcmp olt <2 x float> %i.ba, splat (float f0x3F7FFFFF) ; 2 uses
  %i.bc = extractelement <2 x i1> %i.bb, i64 1
  %i.bd = extractelement <2 x float> %i.ba, i64 1
  %.sroa.speculated.i.i = select i1 %i.bc, float %i.bd, float f0x3F7FFFFF ; 2 uses
  %i.be = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.bf = fmul nnan float %.sroa.speculated.i.i, 4.000000e+00
  %i.bg = fmul nnan float %i.be, 4.000000e+00
  %i.bh = fsub float %i.bf, %i.bg
  %i.bi = fpext float %i.bh to double
  %i.bj = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.bi) #29
  %i.bk = fptrunc double %i.bj to float           ; 13 uses
  %i.bl = mul i64 %i.ap, 6364136223846793005
  %i.bm = add i64 %i.bl, %i.ak                    ; 5 uses
  %i.bn = extractelement <2 x i1> %i.bb, i64 0
  %i.bo = extractelement <2 x float> %i.ba, i64 0
  %i.bp = fcmp olt float %i.bo, 5.000000e-01
  %i.bq = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.br = fneg float %i.bk
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bs = mul i64 %i.bm, 6364136223846793005
  %i.bt = add i64 %i.bs, %i.ak
  %i.bu = lshr i64 %i.bm, 45
  %i.bv = lshr i64 %i.bm, 27
  %i.bw = xor i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = lshr i64 %i.bm, 59
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = call noundef i32 @llvm.fshr.i32(i32 %i.bx, i32 %i.bx, i32 %i.bz)
  %i.cb = uitofp i32 %i.ca to float
  %i.cc = fmul nnan float %i.cb, f0x2F800000      ; 2 uses
  %i.cd = fcmp olt float %i.cc, f0x3F7FFFFF
  %.sroa.speculated.i91 = select i1 %i.cd, float %i.cc, float f0x3F7FFFFF ; 2 uses
  %i.ce = fsub nnan float 1.000000e+00, %.sroa.speculated.i91
  %i.cf = fmul float %.sroa.speculated.i91, %i.bk
  %i.cg = fmul float %i.ce, %i.bk
  %i.ch = fsub float %i.cf, %i.cg
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0153.0 = phi i64 [ %i.bm, %bb.d ], [ %i.bt, %bb.e ] ; 4 uses
  %i.ci = phi float [ %i.br, %bb.d ], [ %i.ch, %bb.e ] ; 4 uses
  %i.cj = mul i64 %.sroa.0153.0, 6364136223846793005
  %i.ck = add i64 %i.cj, %i.ak                    ; 5 uses
  %i.cl = lshr i64 %.sroa.0153.0, 45
  %i.cm = lshr i64 %.sroa.0153.0, 27
  %i.cn = xor i64 %i.cl, %i.cm
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = lshr i64 %.sroa.0153.0, 59
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = call noundef i32 @llvm.fshr.i32(i32 %i.co, i32 %i.co, i32 %i.cq)
  %i.cs = uitofp i32 %i.cr to float
  %i.ct = fmul nnan float %i.cs, f0x2F800000      ; 2 uses
  %i.cu = fcmp olt float %i.ct, f0x3F7FFFFF
  %.sroa.speculated.i92 = select i1 %i.cu, float %i.ct, float f0x3F7FFFFF
  %i.cv = fcmp olt float %.sroa.speculated.i92, 5.000000e-01
  br i1 %i.cv, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cw = mul i64 %i.ck, 6364136223846793005
  %i.cx = add i64 %i.cw, %i.ak
  %i.cy = lshr i64 %i.ck, 45
  %i.cz = lshr i64 %i.ck, 27
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = lshr i64 %i.ck, 59
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = call noundef i32 @llvm.fshr.i32(i32 %i.db, i32 %i.db, i32 %i.dd)
  %i.df = uitofp i32 %i.de to float
  %i.dg = fmul nnan float %i.df, f0x2F800000      ; 2 uses
  %i.dh = fcmp olt float %i.dg, f0x3F7FFFFF
  %.sroa.speculated.i93 = select i1 %i.dh, float %i.dg, float f0x3F7FFFFF ; 2 uses
  %i.di = fsub nnan float 1.000000e+00, %.sroa.speculated.i93
  %i.dj = fmul float %.sroa.speculated.i93, %i.bk
  %i.dk = fmul float %i.di, %i.bk
  %i.dl = fsub float %i.dj, %i.dk
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.0153.1 = phi i64 [ %i.ck, %bb.f ], [ %i.cx, %bb.g ] ; 4 uses
  %i.dm = phi float [ %i.bk, %bb.f ], [ %i.dl, %bb.g ] ; 4 uses
  %i.dn = mul i64 %.sroa.0153.1, 6364136223846793005
  %i.do = add i64 %i.dn, %i.ak                    ; 5 uses
  %i.dp = lshr i64 %.sroa.0153.1, 45
  %i.dq = lshr i64 %.sroa.0153.1, 27
  %i.dr = xor i64 %i.dp, %i.dq
  %i.ds = trunc i64 %i.dr to i32                  ; 2 uses
  %i.dt = lshr i64 %.sroa.0153.1, 59
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = call noundef i32 @llvm.fshr.i32(i32 %i.ds, i32 %i.ds, i32 %i.du)
  %i.dw = uitofp i32 %i.dv to float
  %i.dx = fmul nnan float %i.dw, f0x2F800000      ; 2 uses
  %i.dy = fcmp olt float %i.dx, f0x3F7FFFFF
  %.sroa.speculated.i94 = select i1 %i.dy, float %i.dx, float f0x3F7FFFFF
  %i.dz = fcmp olt float %.sroa.speculated.i94, 5.000000e-01
  br i1 %i.dz, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit106.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ea = mul i64 %i.do, 6364136223846793005
  %i.eb = add i64 %i.ea, %i.ak
  %i.ec = lshr i64 %i.do, 45
  %i.ed = lshr i64 %i.do, 27
  %i.ee = xor i64 %i.ec, %i.ed
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = lshr i64 %i.do, 59
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = call noundef i32 @llvm.fshr.i32(i32 %i.ef, i32 %i.ef, i32 %i.eh)
  %i.ej = uitofp i32 %i.ei to float
  %i.ek = fmul nnan float %i.ej, f0x2F800000      ; 2 uses
  %i.el = fcmp olt float %i.ek, f0x3F7FFFFF
  %.sroa.speculated.i95 = select i1 %i.el, float %i.ek, float f0x3F7FFFFF
  %i.em = fmul nnan float %.sroa.speculated.i95, 3.600000e+02
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit106.2

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit106.2:      ; preds = %bb.h, %bb.i
  %.sroa.0153.2 = phi i64 [ %i.do, %bb.h ], [ %i.eb, %bb.i ] ; 4 uses
  %i.en = phi float [ 3.600000e+02, %bb.h ], [ %i.em, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store float %i.bk, ptr %4, align 8, !tbaa !141
  %i.eo = fcmp olt float %i.dm, %i.ci
  %i.ep = fneg float %i.bk                        ; 4 uses
  %i.eq = fcmp olt float %i.ci, %i.dm
  %.sroa.speculated35.i = select i1 %i.eo, float %i.dm, float %i.ci ; 4 uses
  %i.er = fcmp olt float %.sroa.speculated35.i, %i.ep
  %i.es = fcmp ogt float %.sroa.speculated35.i, %i.bk
  %..i12.i = select i1 %i.es, float %i.bk, float %.sroa.speculated35.i
  %.0.i.i = select i1 %i.er, float %i.ep, float %..i12.i
  store float %.0.i.i, ptr %i.m, align 4, !tbaa !142
  %.sroa.speculated32.i = select i1 %i.eq, float %i.dm, float %i.ci ; 4 uses
  %i.et = fcmp olt float %.sroa.speculated32.i, %i.ep
  %i.eu = fcmp ogt float %.sroa.speculated32.i, %i.bk
  %..i14.i = select i1 %i.eu, float %i.bk, float %.sroa.speculated32.i
  %.0.i15.i = select i1 %i.et, float %i.ep, float %..i14.i
  store float %.0.i15.i, ptr %i.n, align 8, !tbaa !143
  %i.ev = insertelement <2 x float> poison, float %.sroa.speculated32.i, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %.sroa.speculated35.i, i64 1
  %i.ex = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fdiv <2 x float> %i.ew, %i.ey           ; 3 uses
  %i.fa = fcmp olt <2 x float> %i.ez, splat (float -1.000000e+00)
  %i.fb = fcmp ogt <2 x float> %i.ez, splat (float 1.000000e+00)
  %i.fc = select <2 x i1> %i.fb, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ez
  %i.fd = select <2 x i1> %i.fa, <2 x float> splat (float -1.000000e+00), <2 x float> %i.fc ; 2 uses
  %i.fe = extractelement <2 x float> %i.fd, i64 1
  %i.ff = call noundef float @acosf(float noundef %i.fe) #29
  store float %i.ff, ptr %i.o, align 4, !tbaa !144
  %i.fg = extractelement <2 x float> %i.fd, i64 0
  %i.fh = call noundef float @acosf(float noundef %i.fg) #29
  store float %i.fh, ptr %i.p, align 8, !tbaa !145
  %i.fi = fcmp ogt float %i.en, 3.600000e+02
  %..i22.i = select i1 %i.fi, float 3.600000e+02, float %i.en
  %i.fj = fmul nnan float %..i22.i, f0x3C8EFA35
  store float %i.fj, ptr %i.q, align 4, !tbaa !146
  store ptr %3, ptr %i.r, align 8, !tbaa !147
  store ptr %3, ptr %i.s, align 8, !tbaa !148
  store i8 0, ptr %i.t, align 8, !tbaa !149
  %i.fk = call noundef zeroext i1 @_ZNK4pbrt9Transform15SwapsHandednessEv(ptr noundef nonnull align 4 dereferenceable(128) %3)
  %i.fl = zext i1 %i.fk to i8
  store i8 %i.fl, ptr %i.u, align 1, !tbaa !150
  %i.fm = lshr i64 %.sroa.0153.2, 45
  %i.fn = lshr i64 %.sroa.0153.2, 27
  %i.fo = xor i64 %i.fm, %i.fn
  %i.fp = trunc i64 %i.fo to i32                  ; 2 uses
  %i.fq = lshr i64 %.sroa.0153.2, 59
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = call noundef i32 @llvm.fshr.i32(i32 %i.fp, i32 %i.fp, i32 %i.fr)
  %i.ft = uitofp i32 %i.fs to float
  %i.fu = fmul nnan float %i.ft, f0x2F800000      ; 2 uses
  %i.fv = fcmp olt float %i.fu, f0x3F7FFFFF
  %i.fw = mul i64 %.sroa.0153.2, 6364136223846793005
  %i.fx = add i64 %i.fw, %i.ak                    ; 2 uses
  %i.fy = mul i64 %i.fx, 6364136223846793005
  %i.fz = add i64 %i.fy, %i.ak                    ; 2 uses
  %i.ga = mul i64 %i.fz, 6364136223846793005
  %i.gb = add i64 %i.ga, %i.ak                    ; 2 uses
  %i.gc = mul i64 %i.gb, 6364136223846793005
  %i.gd = add i64 %i.gc, %i.ak                    ; 2 uses
  %i.ge = mul i64 %i.gd, 6364136223846793005
  %i.gf = add i64 %i.ge, %i.ak                    ; 2 uses
  %i.gg = mul i64 %i.gf, 6364136223846793005
  %i.gh = add i64 %i.gg, %i.ak
  %i.gi = insertelement <4 x i64> poison, i64 %i.gh, i64 0
  %i.gj = insertelement <4 x i64> %i.gi, i64 %i.gf, i64 1
  %i.gk = insertelement <4 x i64> %i.gj, i64 %i.fz, i64 2
  %i.gl = insertelement <4 x i64> %i.gk, i64 %i.fx, i64 3 ; 3 uses
  %i.gm = lshr <4 x i64> %i.gl, splat (i64 45)
  %i.gn = lshr <4 x i64> %i.gl, splat (i64 27)
  %i.go = xor <4 x i64> %i.gm, %i.gn
  %i.gp = trunc <4 x i64> %i.go to <4 x i32>      ; 2 uses
  %i.gq = lshr <4 x i64> %i.gl, splat (i64 59)
  %i.gr = trunc nuw nsw <4 x i64> %i.gq to <4 x i32>
  %i.gs = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.gp, <4 x i32> %i.gp, <4 x i32> %i.gr)
  %i.gt = uitofp <4 x i32> %i.gs to <4 x float>
  %i.gu = fmul nnan <4 x float> %i.gt, splat (float f0x2F800000) ; 5 uses
  %i.gv = fcmp olt <4 x float> %i.gu, splat (float f0x3F7FFFFF) ; 4 uses
  %i.gw = shufflevector <4 x i1> %i.gv, <4 x i1> poison, <2 x i32> <i32 poison, i32 3>
  %i.gx = insertelement <2 x i1> %i.gw, i1 %i.fv, i64 0
  %i.gy = shufflevector <4 x float> %i.gu, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.gz = insertelement <2 x float> %i.gy, float %i.fu, i64 0
  %i.ha = select <2 x i1> %i.gx, <2 x float> %i.gz, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.hb = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ha
  %i.hc = fmul nnan <2 x float> %i.ha, splat (float 8.000000e+00)
  %i.hd = fmul nnan <2 x float> %i.hb, splat (float 8.000000e+00)
  %i.he = fsub <2 x float> %i.hc, %i.hd
  %i.hf = fpext <2 x float> %i.he to <2 x double> ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0
  %i.hh = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.hg) #29
  %i.hi = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hj = extractelement <2 x double> %i.hf, i64 1
  %i.hk = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.hj) #29
  %i.hl = insertelement <2 x double> %i.hi, double %i.hk, i64 1
  %i.hm = fptrunc <2 x double> %i.hl to <2 x float> ; 2 uses
  %i.hn = extractelement <4 x i1> %i.gv, i64 2
  %i.ho = extractelement <4 x float> %i.gu, i64 2
  %.sroa.speculated.i.i96.2 = select i1 %i.hn, float %i.ho, float f0x3F7FFFFF ; 2 uses
  %i.hp = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i96.2
  %i.hq = fmul nnan float %.sroa.speculated.i.i96.2, 8.000000e+00
  %i.hr = fmul nnan float %i.hp, 8.000000e+00
  %i.hs = fsub float %i.hq, %i.hr
  %i.ht = fpext float %i.hs to double
  %i.hu = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ht) #29
  %i.hv = fptrunc double %i.hu to float           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %5, ptr noundef nonnull align 8 dereferenceable(42) %4)
  %i.hw = insertelement <2 x i64> poison, i64 %i.gb, i64 0
  %i.hx = insertelement <2 x i64> %i.hw, i64 %i.gd, i64 1 ; 3 uses
  %i.hy = lshr <2 x i64> %i.hx, splat (i64 45)
  %i.hz = lshr <2 x i64> %i.hx, splat (i64 27)
  %i.ia = xor <2 x i64> %i.hy, %i.hz
  %i.ib = trunc <2 x i64> %i.ia to <2 x i32>      ; 2 uses
  %i.ic = lshr <2 x i64> %i.hx, splat (i64 59)
  %i.id = trunc nuw nsw <2 x i64> %i.ic to <2 x i32>
  %i.ie = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ib, <2 x i32> %i.ib, <2 x i32> %i.id)
  %i.if = uitofp <2 x i32> %i.ie to <2 x float>
  %i.ig = fmul nnan <2 x float> %i.if, splat (float f0x2F800000) ; 2 uses
  %i.ih = fcmp olt <2 x float> %i.ig, splat (float f0x3F7FFFFF)
  %i.ii = select <2 x i1> %i.ih, <2 x float> %i.ig, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ij = extractelement <4 x i1> %i.gv, i64 1
  %i.ik = extractelement <4 x float> %i.gu, i64 1
  %.sroa.speculated.i104.2 = select i1 %i.ij, float %i.ik, float f0x3F7FFFFF ; 2 uses
  %i.il = load float, ptr %i.w, align 8, !tbaa !106
  %i.im = load float, ptr %i.x, align 4, !tbaa !106
  %i.in = fsub nnan float 1.000000e+00, %.sroa.speculated.i104.2
  %i.io = fmul float %i.in, %i.il
  %i.ip = fmul float %.sroa.speculated.i104.2, %i.im
  %i.iq = fadd float %i.io, %i.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ir = load <2 x float>, ptr %5, align 8, !tbaa !17
  %i.is = load <2 x float>, ptr %i.v, align 4, !tbaa !17
  %i.it = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ii
  %i.iu = fmul <2 x float> %i.it, %i.ir
  %i.iv = fmul <2 x float> %i.ii, %i.is
  %i.iw = fadd <2 x float> %i.iu, %i.iv
  %i.ix = fsub <2 x float> %i.iw, %i.hm           ; 4 uses
  %i.iy = fsub float %i.iq, %i.hv                 ; 4 uses
  store <2 x float> %i.hm, ptr %6, align 8
  store float %i.hv, ptr %.sroa.27.0..sroa_idx.i, align 8
  store <2 x float> %i.ix, ptr %i.y, align 4
  store float %i.iy, ptr %.sroa.23.0..sroa_idx.i, align 4
  store float 0.000000e+00, ptr %i.z, align 8, !tbaa !85
  store i64 0, ptr %i.aa, align 8, !tbaa !86
  %i.iz = extractelement <4 x i1> %i.gv, i64 0
  %i.ja = extractelement <4 x float> %i.gu, i64 0
  %i.jb = fcmp olt float %i.ja, 5.000000e-01
  %i.jc = select i1 %i.iz, i1 %i.jb, i1 false
  br i1 %i.jc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit106.2
  %i.jd = fmul <2 x float> %i.ix, %i.ix           ; 2 uses
  %shift = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.jd, %shift
  %i.je = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jf = fmul float %i.iy, %i.iy
  %i.jg = fadd float %i.jf, %i.je
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.jg) ; 2 uses
  %i.jh = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fdiv <2 x float> %i.ix, %i.ji
  %i.jk = fdiv float %i.iy, %sqrt.i.i
  store <2 x float> %i.jj, ptr %i.y, align 4
  store float %i.jk, ptr %.sroa.23.0..sroa_idx.i, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit106.2
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !236
  call void @_ZNK4pbrt6Sphere14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.70") align 4 %1, ptr noundef nonnull align 8 dereferenceable(42) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, float noundef +inf), !noalias !236
  %i.jl = load i8, ptr %i.ab, align 4, !tbaa !152, !range !53, !noalias !236, !noundef !54
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.l, label %_ZNK4pbrt6Sphere9IntersectERKNS_3RayEf.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !236
  %i.jn = load <2 x float>, ptr %i.y, align 4, !tbaa !17, !noalias !236
  %i.jo = fneg <2 x float> %i.jn
  %i.jp = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !153, !noalias !236
  %i.jq = fneg float %i.jp
  %i.jr = load float, ptr %i.z, align 8, !tbaa !85, !noalias !236
  call void @_ZNK4pbrt6Sphere27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SurfaceInteraction") align 8 %2, ptr noundef nonnull align 8 dereferenceable(42) %4, ptr noundef nonnull align 4 dereferenceable(20) %1, <2 x float> %i.jo, float %i.jq, float noundef %i.jr), !noalias !236
  %i.js = load i8, ptr %i.ab, align 4, !tbaa !152, !range !53, !noalias !236, !noundef !54
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.m, label %.noexc12.i

.noexc12.i:                                       ; preds = %bb.l
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.51) #28, !noalias !236
  unreachable

_ZNK4pbrt6Sphere9IntersectERKNS_3RayEf.exit:      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !236
  br label %bb.ag

bb.m:                                             ; preds = %bb.l
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11133.0.copyload = load <2 x float>, ptr %.sroa.11133.0..sroa_idx, align 8 ; 4 uses
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 16 ; 3 uses
  %.sroa.01.0.vec.extract.i.i.i109 = extractelement <2 x float> %.sroa.11133.0.copyload, i64 0
  %foldExtExtBinop207 = fmul <2 x float> %.sroa.11133.0.copyload, %.sroa.11133.0.copyload
  %i.ju = extractelement <2 x float> %foldExtExtBinop207, i64 0
  %.sroa.01.4.vec.extract.i.i.i110 = extractelement <2 x float> %.sroa.11133.0.copyload, i64 1 ; 3 uses
  %i.jv = fmul float %.sroa.01.4.vec.extract.i.i.i110, %.sroa.01.4.vec.extract.i.i.i110
  %i.jw = fadd float %i.ju, %i.jv
  %i.jx = fmul float %.sroa.12.0.copyload, %.sroa.12.0.copyload
  %i.jy = fadd float %i.jx, %i.jw
  %sqrt.i.i111 = call noundef float @llvm.sqrt.f32(float %i.jy) ; 3 uses
  %i.jz = fdiv float %.sroa.01.0.vec.extract.i.i.i109, %sqrt.i.i111
  %i.ka = fdiv float %.sroa.01.4.vec.extract.i.i.i110, %sqrt.i.i111
  %i.kb = fdiv float %.sroa.12.0.copyload, %sqrt.i.i111 ; 2 uses
  %i.kc = fadd float %.sroa.9.0.copyload, %.sroa.10.0.copyload
  %i.kd = fmul float %i.kc, 5.000000e-01          ; 3 uses
  %i.ke = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.kf = load <4 x float>, ptr %2, align 16
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !236
  %i.kh = fadd <2 x float> %i.ke, %i.kg
  %i.ki = fmul <2 x float> %i.kh, splat (float 5.000000e-01) ; 4 uses
  %i.kj = fmul <2 x float> %i.ki, %i.ki           ; 2 uses
  %shift209 = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop210 = fadd <2 x float> %i.kj, %shift209
  %i.kk = extractelement <2 x float> %foldExtExtBinop210, i64 0
  %i.kl = fmul float %i.kd, %i.kd
  %i.km = fadd float %i.kk, %i.kl
  %sqrt.i.i122 = call noundef float @llvm.sqrt.f32(float %i.km) ; 3 uses
  %i.kn = extractelement <2 x float> %i.ki, i64 0
  %i.ko = fdiv float %i.kn, %sqrt.i.i122
  %i.kp = extractelement <2 x float> %i.ki, i64 1
  %i.kq = fdiv float %i.kp, %sqrt.i.i122
  %i.kr = fdiv float %i.kd, %sqrt.i.i122          ; 2 uses
  %i.ks = fmul float %i.kr, %i.kb                 ; 2 uses
  %i.kt = call noundef float @llvm.fma.f32(float %i.ka, float %i.kq, float %i.ks)
  %i.ku = fneg float %i.ks
  %i.kv = call noundef float @llvm.fma.f32(float %i.kb, float %i.kr, float %i.ku)
  %i.kw = fadd float %i.kt, %i.kv
  %i.kx = call noundef float @llvm.fma.f32(float %i.jz, float %i.ko, float %i.kw)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, float noundef 1.000000e+00, float noundef %i.kx)
  %i.ky = load i8, ptr %7, align 8, !tbaa !52, !range !53, !noundef !54
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.la = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !59
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.p, %bb.o
  %i.lc = phi ptr [ %i.lb, %bb.p ], [ @.str.48, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 394, ptr noundef %i.lc)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.ld = load ptr, ptr %8, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.le = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.v

.noexc.i.i:                                       ; preds = %bb.s
  br i1 %i.le, label %bb.t, label %_ZN7testing7MessageD2Ev.exit

bb.t:                                             ; preds = %.noexc.i.i
  %i.lf = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %_ZN7testing7MessageD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(128) %i.lf) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #32
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.r, %.noexc.i.i, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ab

bb.w:                                             ; preds = %bb.n
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.q
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.lo, %bb.y ], [ %i.ln, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.lm, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
end_hunk_3
begin_hunk_4_@_ZN25BilinearPatch_Offset_Test8TestBodyEv:bb.a
  %i.dh = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dk) #31
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, %bb.g
  %i.dl = load ptr, ptr %4, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dp) #31
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit:  ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, %bb.h
  %i.dq = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIiSaIiEED2Ev.exit184, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit
  %i.dr = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.du) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit184

_ZNSt6vectorIiSaIiEED2Ev.exit184:                 ; preds = %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.sroa.0333.1.in421 = mul i64 %i.ay, 6364136223846793005
  %.sroa.0333.1422 = add i64 %.sroa.0333.1.in421, -2720673578348880933
  br label %bb.r

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit190: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 16) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 48) #31
  %i.dv = add nuw nsw i32 %.0426, 1               ; 2 uses
  %exitcond454.not = icmp eq i32 %i.dv, 100
  br i1 %exitcond454.not, label %bb.b, label %bb.c, !llvm.loop !250

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit203

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit200

bb.l:                                             ; preds = %.noexc176
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %7, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i191 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i191, label %_ZNSt6vectorIiSaIiEED2Ev.exit193, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit193

_ZNSt6vectorIiSaIiEED2Ev.exit193:                 ; preds = %bb.l, %bb.m
  %i.ee = load ptr, ptr %6, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i194 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit195, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit193
  %i.ef = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #31
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit195

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit195: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit193, %bb.n
  %i.ej = load ptr, ptr %5, align 8, !tbaa !34    ; 3 uses
  %.not.i.i.i196 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i196, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit197, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit195
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #31
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit197

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit197: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit195, %bb.o
  %i.eo = load ptr, ptr %4, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i198 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit200, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit197
  %i.ep = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #31
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit200

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit200: ; preds = %bb.p, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit197, %bb.k
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.k ], [ %i.dy, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit197 ], [ %i.dy, %bb.p ] ; 2 uses
  %i.et = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i201 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIiSaIiEED2Ev.exit203, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit200
  %i.eu = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit203

_ZNSt6vectorIiSaIiEED2Ev.exit203:                 ; preds = %bb.q, %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit200, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.j ], [ %.pn, %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit200 ], [ %.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit260

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit184, %bb.az
  %.sroa.0333.1424 = phi i64 [ %.sroa.0333.1422, %_ZNSt6vectorIiSaIiEED2Ev.exit184 ], [ %.sroa.0333.1, %bb.az ] ; 2 uses
  %.0146423 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit184 ], [ %i.mz, %bb.az ]
  %i.ey = mul i64 %.sroa.0333.1424, 6364136223846793005
  %i.ez = add i64 %i.ey, -2720673578348880933     ; 2 uses
  %i.fa = mul i64 %i.ez, 6364136223846793005
  %i.fb = add i64 %i.fa, -2720673578348880933     ; 4 uses
  %i.fc = mul i64 %i.fb, 6364136223846793005
  %i.fd = lshr i64 %i.fb, 45
  %i.fe = lshr i64 %i.fb, 27
  %i.ff = xor i64 %i.fd, %i.fe
  %i.fg = trunc i64 %i.ff to i32                  ; 2 uses
  %i.fh = lshr i64 %i.fb, 59
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = call noundef i32 @llvm.fshr.i32(i32 %i.fg, i32 %i.fg, i32 %i.fi)
  %i.fk = uitofp i32 %i.fj to float
  %i.fl = fmul nnan float %i.fk, f0x2F800000      ; 2 uses
  %i.fm = fcmp olt float %i.fl, f0x3F7FFFFF
  %.sroa.speculated.i206 = select i1 %i.fm, float %i.fl, float f0x3F7FFFFF
  %i.fn = insertelement <2 x i64> poison, i64 %.sroa.0333.1424, i64 0
  %i.fo = insertelement <2 x i64> %i.fn, i64 %i.ez, i64 1 ; 3 uses
  %i.fp = lshr <2 x i64> %i.fo, splat (i64 45)
  %i.fq = lshr <2 x i64> %i.fo, splat (i64 27)
  %i.fr = xor <2 x i64> %i.fp, %i.fq
  %i.fs = trunc <2 x i64> %i.fr to <2 x i32>      ; 2 uses
  %i.ft = lshr <2 x i64> %i.fo, splat (i64 59)
  %i.fu = trunc nuw nsw <2 x i64> %i.ft to <2 x i32>
  %i.fv = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fs, <2 x i32> %i.fs, <2 x i32> %i.fu)
  %i.fw = uitofp <2 x i32> %i.fv to <2 x float>
  %i.fx = fmul nnan <2 x float> %i.fw, splat (float f0x2F800000) ; 2 uses
  %i.fy = fcmp olt <2 x float> %i.fx, splat (float f0x3F7FFFFF)
  %i.fz = select <2 x i1> %i.fy, <2 x float> %i.fx, <2 x float> splat (float f0x3F7FFFFF)
  %i.ga = fmul nnan <2 x float> %i.fz, splat (float 4.000000e+01)
  %i.gb = fadd <2 x float> %i.ga, splat (float -2.000000e+01) ; 2 uses
  %i.gc = fmul nnan float %.sroa.speculated.i206, 4.000000e+01
  %i.gd = fadd float %i.gc, -2.000000e+01         ; 2 uses
  %.sroa.0104.0.copyload = load <2 x float>, ptr %i.br, align 4, !tbaa !17 ; 3 uses
  %.sroa.2105.0.copyload = load float, ptr %.sroa.6305.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0104.0.copyload, i64 0
  %.sroa.094.0.copyload = load <2 x float>, ptr %.sroa.7306.0..sroa_idx, align 4, !tbaa !17 ; 3 uses
  %.sroa.295.0.copyload = load float, ptr %.sroa.9308.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.0.0.vec.extract.i209 = extractelement <2 x float> %.sroa.094.0.copyload, i64 0
  %.sroa.078.0.copyload = load <2 x float>, ptr %.sroa.10309.0..sroa_idx, align 4, !tbaa !17 ; 3 uses
  %.sroa.279.0.copyload = load float, ptr %.sroa.12311.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.062.0.copyload = load <2 x float>, ptr %.sroa.13312.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.263.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !17
  %.sroa.0.0.vec.extract.i227 = extractelement <2 x float> %.sroa.062.0.copyload, i64 0
  %i.ge = add i64 %i.fc, -2720673578348880933     ; 2 uses
  %i.gf = mul i64 %i.ge, 6364136223846793005
  %i.gg = add i64 %i.gf, -2720673578348880933     ; 2 uses
  %i.gh = insertelement <2 x i64> poison, i64 %i.gg, i64 0
  %i.gi = insertelement <2 x i64> %i.gh, i64 %i.ge, i64 1 ; 3 uses
  %i.gj = lshr <2 x i64> %i.gi, splat (i64 45)
  %i.gk = lshr <2 x i64> %i.gi, splat (i64 27)
  %i.gl = xor <2 x i64> %i.gj, %i.gk
  %i.gm = trunc <2 x i64> %i.gl to <2 x i32>      ; 2 uses
  %i.gn = lshr <2 x i64> %i.gi, splat (i64 59)
  %i.go = trunc nuw nsw <2 x i64> %i.gn to <2 x i32>
  %i.gp = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gm, <2 x i32> %i.gm, <2 x i32> %i.go)
  %i.gq = uitofp <2 x i32> %i.gp to <2 x float>
  %i.gr = fmul nnan <2 x float> %i.gq, splat (float f0x2F800000) ; 2 uses
  %i.gs = fcmp olt <2 x float> %i.gr, splat (float f0x3F7FFFFF)
  %i.gt = select <2 x i1> %i.gs, <2 x float> %i.gr, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gv = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.gu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gw = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.gx = insertelement <4 x float> %i.gw, float 0.000000e+00, i64 3
  %i.gy = fsub <4 x float> %i.gv, %i.gx           ; 2 uses
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> %i.gu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> %i.gu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hb = fmul <4 x float> %i.ha, %i.gy           ; 6 uses
  %i.hc = extractelement <4 x float> %i.hb, i64 0 ; 2 uses
  %i.hd = fmul float %i.hc, %.sroa.0.0.vec.extract.i
  %i.he = fmul float %i.hc, %.sroa.2105.0.copyload
  %i.hf = extractelement <4 x float> %i.hb, i64 1 ; 2 uses
  %i.hg = fmul float %i.hf, %.sroa.0.0.vec.extract.i209
  %i.hh = fmul float %i.hf, %.sroa.295.0.copyload
  %i.hi = fadd float %i.hd, %i.hg
  %i.hj = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> %.sroa.094.0.copyload, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.hk = shufflevector <2 x float> %.sroa.078.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hl = shufflevector <4 x float> %i.hj, <4 x float> %i.hk, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.hm = shufflevector <2 x float> %.sroa.062.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hn = shufflevector <4 x float> %i.hl, <4 x float> %i.hm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ho = fmul <4 x float> %i.hb, %i.hn           ; 4 uses
  %i.hp = fadd float %i.he, %i.hh
  %i.hq = extractelement <4 x float> %i.hb, i64 2
  %i.hr = fmul float %i.hq, %.sroa.279.0.copyload
  %i.hs = fadd float %i.hp, %i.hr
  %i.ht = extractelement <4 x float> %i.hb, i64 3 ; 2 uses
  %i.hu = fmul float %i.ht, %.sroa.0.0.vec.extract.i227
  %i.hv = fmul float %i.ht, %.sroa.263.0.copyload
  %i.hw = fadd float %i.hs, %i.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.hx = shufflevector <4 x float> %i.hb, <4 x float> %i.ho, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.hy = shufflevector <2 x float> %.sroa.078.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> %i.ho, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.ia = fmul <2 x float> %i.hx, %i.hz
  %i.ib = fadd <2 x float> %i.hx, %i.hz
  %i.ic = shufflevector <2 x float> %i.ia, <2 x float> %i.ib, <2 x i32> <i32 0, i32 3>
  %i.id = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ie = insertelement <2 x float> %i.id, float %i.hi, i64 0
  %i.if = fadd <2 x float> %i.ic, %i.ie
  %i.ig = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ih = insertelement <2 x float> %i.ig, float %i.hu, i64 0
  %i.ii = fadd <2 x float> %i.if, %i.ih
  %i.ij = fsub <2 x float> %i.ii, %i.gb
  %i.ik = fsub float %i.hw, %i.gd
  store <2 x float> %i.gb, ptr %8, align 8
  store float %i.gd, ptr %.sroa.27.0..sroa_idx.i, align 8
  store <2 x float> %i.ij, ptr %i.t, align 4
  store float %i.ik, ptr %.sroa.23.0..sroa_idx.i, align 4
  store float 0.000000e+00, ptr %i.u, align 8, !tbaa !85
  store i64 0, ptr %i.v, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13312.0..sroa_idx, i64 12, i1 false)
  invoke void @_ZN4pbrt22IntersectBilinearPatchERKNS_3RayEfNS_6Point3IfEES4_S4_S4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.59") align 4 %9, ptr noundef nonnull align 8 dereferenceable(40) %8, float noundef +inf, <2 x float> %.sroa.0104.0.copyload, float %.sroa.2105.0.copyload, <2 x float> %.sroa.094.0.copyload, float %.sroa.295.0.copyload, <2 x float> %.sroa.078.0.copyload, float %.sroa.279.0.copyload, ptr noundef nonnull byval(%"class.pbrt::Point3") align 8 %10)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.il = load i8, ptr %i.w, align 4, !tbaa !169, !range !53, !noundef !54
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.u, label %bb.az

bb.t:                                             ; preds = %bb.r
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %.sroa.021.0.copyload = load <2 x float>, ptr %9, align 8
  %i.io = load <2 x float>, ptr %i.t, align 4, !tbaa !17
  %i.ip = fneg <2 x float> %i.io
  %i.iq = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !153
  %i.ir = fneg float %i.iq
  invoke void @_ZN4pbrt13BilinearPatch27InteractionFromIntersectionEPKNS_17BilinearPatchMeshEiNS_6Point2IfEEfNS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SurfaceInteraction") align 8 %11, ptr noundef nonnull %1, i32 noundef 0, <2 x float> %.sroa.021.0.copyload, float noundef 0.000000e+00, <2 x float> %i.ip, float %i.ir)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 3 uses
  %.sroa.214.0.copyload = load float, ptr %.sroa.23.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.x, align 8, !noalias !256 ; 3 uses
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !256 ; 4 uses
  %.sroa.0352.0.copyload = load float, ptr %11, align 8 ; 2 uses
  %.sroa.6354.0.copyload = load float, ptr %.sroa.6354.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7355.0.copyload = load float, ptr %.sroa.7355.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8356.0.copyload = load float, ptr %.sroa.8356.0..sroa_idx, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i, i64 0 ; 2 uses
  %i.is = call noundef float @llvm.fabs.f32(float %.sroa.03.0.vec.extract.i.i)
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i, i64 1 ; 2 uses
  %i.it = call noundef float @llvm.fabs.f32(float %.sroa.03.4.vec.extract.i.i)
  %i.iu = call noundef float @llvm.fabs.f32(float %.sroa.210.0.copyload.i.i) ; 2 uses
  %i.iv = fsub float %.sroa.8356.0.copyload, %.sroa.7355.0.copyload
  %i.iw = fmul float %i.iv, 5.000000e-01          ; 2 uses
  %i.ix = fmul float %i.iu, %i.iw                 ; 2 uses
  %i.iy = fneg float %i.ix
  %i.iz = call noundef float @llvm.fma.f32(float %i.iu, float %i.iw, float %i.iy)
  %.sroa.04.0.vec.extract.i76.i = extractelement <2 x float> %.sroa.013.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i78.i = extractelement <2 x float> %.sroa.013.0.copyload, i64 1
  %i.ja = fmul float %.sroa.214.0.copyload, %.sroa.210.0.copyload.i.i ; 2 uses
  %i.jb = call noundef float @llvm.fma.f32(float %.sroa.03.4.vec.extract.i.i, float %.sroa.04.4.vec.extract.i78.i, float %i.ja)
  %i.jc = fneg float %i.ja
  %i.jd = call noundef float @llvm.fma.f32(float %.sroa.210.0.copyload.i.i, float %.sroa.214.0.copyload, float %i.jc)
  %i.je = fadd float %i.jb, %i.jd
  %i.jf = call noundef float @llvm.fma.f32(float %.sroa.03.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i76.i, float %i.je) ; 2 uses
  %i.jg = fcmp olt float %i.jf, 0.000000e+00      ; 2 uses
  %i.jh = fadd float %.sroa.7355.0.copyload, %.sroa.8356.0.copyload
  %i.ji = fmul float %i.jh, 5.000000e-01
  %i.jj = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %i.jk = extractelement <2 x float> %i.jj, i64 0
  %i.jl = fsub float %i.jk, %.sroa.0352.0.copyload
  %i.jm = fmul float %i.jl, 5.000000e-01
  %i.jn = extractelement <2 x float> %i.jj, i64 1
  %i.jo = fsub float %.sroa.6354.0.copyload, %i.jn
  %i.jp = fmul float %i.jo, 5.000000e-01
  %i.jq = call noundef float @llvm.fma.f32(float %i.it, float %i.jp, float %i.ix)
  %i.jr = fadd float %i.jq, %i.iz
  %i.js = call noundef float @llvm.fma.f32(float %i.is, float %i.jm, float %i.jr) ; 2 uses
  %i.jt = fmul float %.sroa.210.0.copyload.i.i, %i.js ; 2 uses
  %i.ju = insertelement <2 x float> poison, float %i.js, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fmul <2 x float> %.sroa.09.0.copyload.i.i, %i.jv ; 2 uses
  %i.jx = fneg <2 x float> %i.jw
  %i.jy = fneg float %i.jt
  %.sroa.11.0.i = select i1 %i.jg, float %i.jy, float %i.jt ; 3 uses
  %.sroa.0106.0.i = select i1 %i.jg, <2 x float> %i.jx, <2 x float> %i.jw ; 3 uses
  %i.jz = insertelement <2 x float> poison, float %.sroa.0352.0.copyload, i64 0
  %i.ka = insertelement <2 x float> %i.jz, float %.sroa.6354.0.copyload, i64 1
  %i.kb = fadd <2 x float> %i.jj, %i.ka
  %i.kc = fmul <2 x float> %i.kb, splat (float 5.000000e-01)
  %.sroa.03.0.vec.extract.i83.i = extractelement <2 x float> %.sroa.0106.0.i, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i84.i = extractelement <2 x float> %.sroa.0106.0.i, i64 1 ; 2 uses
  %i.kd = fadd <2 x float> %i.kc, %.sroa.0106.0.i ; 4 uses
  %i.ke = fadd float %i.ji, %.sroa.11.0.i         ; 7 uses
  %i.kf = fcmp ogt float %.sroa.03.0.vec.extract.i83.i, 0.000000e+00
  br i1 %i.kf, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i:         ; preds = %bb.v
  %i.kg = extractelement <2 x float> %i.kd, i64 0 ; 3 uses
  %or.cond.i.i = fcmp oeq float %i.kg, +inf
  br i1 %or.cond.i.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i, label %bb.w

bb.w:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i
  %i.kh = fcmp oeq float %i.kg, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.kh, float 0.000000e+00, float %i.kg ; 2 uses
  %i.ki = bitcast float %spec.store.select.i.i to i32
  %i.kj = fcmp ult float %spec.store.select.i.i, 0.000000e+00
  %.0.v.i.i = select i1 %i.kj, i32 -1, i32 1
  %.0.i90.i = add i32 %.0.v.i.i, %i.ki
  %i.kk = bitcast i32 %.0.i90.i to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i:      ; preds = %bb.v
  %i.kl = fcmp olt float %.sroa.03.0.vec.extract.i83.i, 0.000000e+00
  br i1 %i.kl, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i:       ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i
  %i.km = extractelement <2 x float> %i.kd, i64 0 ; 3 uses
  %or.cond.i97.i = fcmp oeq float %i.km, -inf
  br i1 %or.cond.i97.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i, label %bb.x

bb.x:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i
  %i.kn = fcmp oeq float %i.km, 0.000000e+00
  %spec.store.select.i98.i = select i1 %i.kn, float -0.000000e+00, float %i.km ; 2 uses
  %i.ko = bitcast float %spec.store.select.i98.i to i32
  %i.kp = fcmp ogt float %spec.store.select.i98.i, 0.000000e+00
  %.0.v.i99.i = select i1 %i.kp, i32 -1, i32 1
  %.0.i100.i = add i32 %.0.v.i99.i, %i.ko
  %i.kq = bitcast i32 %.0.i100.i to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i: ; preds = %bb.x, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i, %bb.w, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i
  %.010.i.sink.i = phi float [ +inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i ], [ %i.kk, %bb.w ], [ %i.kq, %bb.x ], [ -inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.i ]
  %.sroa.0122.i.0.vec.insert = insertelement <2 x float> %i.kd, float %.010.i.sink.i, i64 0
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i:      ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i
  %.sroa.0122.i.0 = phi <2 x float> [ %.sroa.0122.i.0.vec.insert, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split.i ], [ %i.kd, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.i ] ; 4 uses
  %i.kr = fcmp ogt float %.sroa.03.4.vec.extract.i84.i, 0.000000e+00
  br i1 %i.kr, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i:    ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i
  %i.ks = fcmp olt float %.sroa.03.4.vec.extract.i84.i, 0.000000e+00
  br i1 %i.ks, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.i

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i:     ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit94.1.i
  %.sroa.0122.i.4.vec.extract = extractelement <2 x float> %.sroa.0122.i.0, i64 1 ; 3 uses
  %or.cond.i97.1.i = fcmp oeq float %.sroa.0122.i.4.vec.extract, -inf
  br i1 %or.cond.i97.1.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i, label %bb.y

bb.y:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit96.1.i
  %i.kt = fcmp oeq float %.sroa.0122.i.4.vec.extract, 0.000000e+00
  %spec.store.select.i98.1.i = select i1 %i.kt, float -0.000000e+00, float %.sroa.0122.i.4.vec.extract ; 2 uses
  %i.ku = bitcast float %spec.store.select.i98.1.i to i32
  %i.kv = fcmp ogt float %spec.store.select.i98.1.i, 0.000000e+00
  %.0.v.i99.1.i = select i1 %i.kv, i32 -1, i32 1
  %.0.i100.1.i = add i32 %.0.v.i99.1.i, %i.ku
  %i.kw = bitcast i32 %.0.i100.1.i to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i:       ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.i
  %.sroa.0122.i.4.vec.extract364 = extractelement <2 x float> %.sroa.0122.i.0, i64 1 ; 3 uses
  %or.cond.i.1.i = fcmp oeq float %.sroa.0122.i.4.vec.extract364, +inf
  br i1 %or.cond.i.1.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split.i, label %bb.z

bb.z:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1.i
  %i.kx = fcmp oeq float %.sroa.0122.i.4.vec.extract364, 0.000000e+00
  %spec.store.select.i.1.i = select i1 %i.kx, float 0.000000e+00, float %.sroa.0122.i.4.vec.extract364 ; 2 uses
  %i.ky = bitcast float %spec.store.select.i.1.i to i32
  %i.kz = fcmp ult float %spec.store.select.i.1.i, 0.000000e+00
end_hunk_4
begin_hunk_5_@_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %i.t = load i64, ptr %i.d, align 8, !tbaa !65, !alias.scope !316
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !64
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !64
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #29
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !64
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !167
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !47
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN7testing8internal21UniversalTersePrinterImE5PrintERKmPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterImE5PrintERKmPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !192, !alias.scope !323
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !111, !alias.scope !323
  store i8 0, ptr %i.d, align 8, !tbaa !65, !alias.scope !323
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194, !noalias !323 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !323 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterImE5PrintERKmPSo.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !195, !noalias !323 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !59, !alias.scope !323 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !65, !alias.scope !323
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterImE5PrintERKmPSo.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !64
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !64
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #29
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !64
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !167
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfvEZN25Triangle_Reintersect_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !325   ; 3 uses
  %i.a = load i64, ptr %.val, align 8, !tbaa !73  ; 4 uses
  %i.b = mul i64 %i.a, 6364136223846793005
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72
  %i.e = add i64 %i.b, %i.d
  store i64 %i.e, ptr %.val, align 8, !tbaa !73
  %i.f = lshr i64 %i.a, 45
  %i.g = lshr i64 %i.a, 27
  %i.h = xor i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = lshr i64 %i.a, 59
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = tail call noundef i32 @llvm.fshr.i32(i32 %i.i, i32 %i.i, i32 %i.k)
  %i.m = uitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, f0x2F800000        ; 2 uses
  %i.o = fcmp olt float %i.n, f0x3F7FFFFF
  %.sroa.speculated.i.i.i.i.i = select i1 %i.o, float %i.n, float f0x3F7FFFFF ; 2 uses
  %i.p = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i.i.i.i
  %i.q = fmul nnan float %.sroa.speculated.i.i.i.i.i, 8.000000e+00
  %i.r = fmul nnan float %i.p, 8.000000e+00
  %i.s = fsub float %i.q, %i.r
  %i.t = fpext float %i.s to double
  %i.u = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.t) #29
  %i.v = fptrunc double %i.u to float
  ret float %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfvEZN25Triangle_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN25Triangle_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN25Triangle_Reintersect_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !198
  br label %"_ZNSt14_Function_base13_Base_managerIZN25Triangle_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !199
  br label %"_ZNSt14_Function_base13_Base_managerIZN25Triangle_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !75
  store i64 %.val.i, ptr %0, align 8, !tbaa !75
  br label %"_ZNSt14_Function_base13_Base_managerIZN25Triangle_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN25Triangle_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfvEZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !327   ; 3 uses
  %i.a = load i64, ptr %.val, align 8, !tbaa !73  ; 4 uses
  %i.b = mul i64 %i.a, 6364136223846793005
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72
  %i.e = add i64 %i.b, %i.d
  store i64 %i.e, ptr %.val, align 8, !tbaa !73
  %i.f = lshr i64 %i.a, 45
  %i.g = lshr i64 %i.a, 27
  %i.h = xor i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = lshr i64 %i.a, 59
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = tail call noundef i32 @llvm.fshr.i32(i32 %i.i, i32 %i.i, i32 %i.k)
  %i.m = uitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, f0x2F800000        ; 2 uses
  %i.o = fcmp olt float %i.n, f0x3F7FFFFF
  %.sroa.speculated.i.i.i.i.i = select i1 %i.o, float %i.n, float f0x3F7FFFFF ; 2 uses
  %i.p = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i.i.i.i
  %i.q = fmul nnan float %i.p, 1.000000e+01
  %i.r = fmul nnan float %.sroa.speculated.i.i.i.i.i, 1.000000e+01
  %i.s = fsub float %i.r, %i.q
  ret float %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfvEZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0", ptr %0, align 8, !tbaa !198
  br label %"_ZNSt14_Function_base13_Base_managerIZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !199
  br label %"_ZNSt14_Function_base13_Base_managerIZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !328
  br label %"_ZNSt14_Function_base13_Base_managerIZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN24Triangle_SolidAngle_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(12) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(12) %1) #29
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %bb.a
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !62     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #32
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %0

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !132    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %2, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br i1 %i.b, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.f = phi ptr [ %i.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.64, %bb.a ]
  %i.g = phi i64 [ %i.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %bb.a ]
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.f, i64 noundef %i.g)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.i = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.j, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !62     ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %0

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA6_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(6) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(6) %1) #29
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %bb.a
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.f, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !62     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit
end_hunk_5
begin_hunk_6_@_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !110
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.b)
          to label %_ZN7testing8internal21UniversalTersePrinterIdE5PrintERKdPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIdE5PrintERKdPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !192, !alias.scope !342
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !111, !alias.scope !342
  store i8 0, ptr %i.d, align 8, !tbaa !65, !alias.scope !342
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194, !noalias !342 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !342 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIdE5PrintERKdPSo.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !195, !noalias !342 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !59, !alias.scope !342 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !65, !alias.scope !342
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIdE5PrintERKdPSo.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !64
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !64
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #29
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !64
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !167
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.pbrt::RNG", align 8         ; 8 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 19 uses
  %5 = alloca %"class.pbrt::Sphere", align 8      ; 14 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.pbrt::Shape", align 8       ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 9 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.pbrt::Transform", align 4  ; 9 uses
  %11 = alloca %"class.pbrt::Transform", align 4  ; 6 uses
  %12 = alloca %"class.pbrt::Sphere", align 8     ; 14 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.pbrt::Shape", align 8      ; 4 uses
  %15 = alloca %"class.testing::Message", align 8 ; 11 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %.val = load i64, ptr %1, align 8, !tbaa !47    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = lshr i64 %.val, 31
  %i.f = xor i64 %i.e, %.val
  %i.g = mul i64 %i.f, 9202493588570546565        ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -9089707755183418291       ; 2 uses
  %i.k = lshr i64 %i.j, 33
  %i.l = xor i64 %i.k, %i.j
  %i.m = shl i64 %.val, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !72
  %i.p = add i64 %i.l, %i.n
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.n                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store float 1.000000e+00, ptr %4, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.x, align 4, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !17
  %i.ae = mul i64 %i.r, 6364136223846793005
  %i.af = add i64 %i.ae, %i.n
  store i64 %i.af, ptr %3, align 8, !tbaa !73
  %i.ag = lshr i64 %i.r, 45
  %i.ah = lshr i64 %i.r, 27
  %i.ai = xor i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = lshr i64 %i.r, 59
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = tail call noundef i32 @llvm.fshr.i32(i32 %i.aj, i32 %i.aj, i32 %i.al)
  %i.an = uitofp i32 %i.am to float
  %i.ao = fmul nnan float %i.an, f0x2F800000      ; 2 uses
  %i.ap = fcmp olt float %i.ao, f0x3F7FFFFF
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ap, float %i.ao, float f0x3F7FFFFF ; 2 uses
  %i.aq = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i.i.i.i
  %i.ar = fmul nnan float %.sroa.speculated.i.i.i.i.i, 4.000000e+00
  %i.as = fmul nnan float %i.aq, 4.000000e+00
  %i.at = fsub float %i.ar, %i.as
  %i.au = fpext float %i.at to double
  %i.av = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.au) #29 ; 3 uses
  %i.aw = fptrunc double %i.av to float           ; 9 uses
  %i.ax = fneg float %i.aw                        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store float %i.aw, ptr %5, align 8, !tbaa !141
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.az = fcmp olt double %i.av, f0xB690000000000000
  %.sroa.speculated35.i.i.i.i = select i1 %i.az, float %i.aw, float %i.ax
  store float %i.ax, ptr %i.ay, align 4, !tbaa !142
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = fcmp ogt double %i.av, f0x3690000000000000
  %.sroa.speculated32.i.i.i.i = select i1 %i.bb, float %i.aw, float %i.ax ; 4 uses
  %i.bc = fcmp olt float %.sroa.speculated32.i.i.i.i, %i.ax
  %i.bd = fcmp ogt float %.sroa.speculated32.i.i.i.i, %i.aw
  %..i14.i.i.i.i = select i1 %i.bd, float %i.aw, float %.sroa.speculated32.i.i.i.i
  %.0.i15.i.i.i.i = select i1 %i.bc, float %i.ax, float %..i14.i.i.i.i ; 2 uses
  store float %.0.i15.i.i.i.i, ptr %i.ba, align 8, !tbaa !143
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bf = fdiv float %.sroa.speculated35.i.i.i.i, %i.aw ; 3 uses
  %i.bg = fcmp olt float %i.bf, -1.000000e+00
  %i.bh = fcmp ogt float %i.bf, 1.000000e+00
  %..i17.i.i.i.i = select i1 %i.bh, float 1.000000e+00, float %i.bf
  %.0.i18.i.i.i.i = select i1 %i.bg, float -1.000000e+00, float %..i17.i.i.i.i ; 2 uses
  %i.bi = tail call noundef float @acosf(float noundef %.0.i18.i.i.i.i) #29
  store float %i.bi, ptr %i.be, align 4, !tbaa !144
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = fdiv float %.sroa.speculated32.i.i.i.i, %i.aw ; 3 uses
  %i.bl = fcmp olt float %i.bk, -1.000000e+00
  %i.bm = fcmp ogt float %i.bk, 1.000000e+00
  %..i20.i.i.i.i = select i1 %i.bm, float 1.000000e+00, float %i.bk
  %.0.i21.i.i.i.i = select i1 %i.bl, float -1.000000e+00, float %..i20.i.i.i.i ; 2 uses
  %i.bn = tail call noundef float @acosf(float noundef %.0.i21.i.i.i.i) #29
  store float %i.bn, ptr %i.bj, align 8, !tbaa !145
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float f0x40C90FDB, ptr %i.bo, align 4, !tbaa !146
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.bp, align 8, !tbaa !147
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.bq, align 8, !tbaa !148
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.br, align 8, !tbaa !149
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 41
  %i.bt = call noundef zeroext i1 @_ZNK4pbrt9Transform15SwapsHandednessEv(ptr noundef nonnull align 4 dereferenceable(128) %4)
  %i.bu = zext i1 %i.bt to i8
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.bv = ptrtoint ptr %5 to i64
  %i.bw = or i64 %i.bv, 144115188075855872
  store i64 %i.bw, ptr %7, align 8, !tbaa !68
  %i.bx = call fastcc noundef i32 @_ZL21TestReintersectConvexN4pbrt5ShapeERNS_3RNGE(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %3)
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !40
  call void @_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.66, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.by = load i8, ptr %6, align 8, !tbaa !52, !range !53, !noundef !54
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.ca = load ptr, ptr %8, align 8, !tbaa !62
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 noundef %.val)
          to label %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i:     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !59
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i: ; preds = %bb.d, %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i
  %i.cg = phi ptr [ %i.cf, %bb.d ], [ @.str.48, %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 348, ptr noundef %i.cg)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.ch = load ptr, ptr %8, align 8, !tbaa !62
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i unwind label %bb.j

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  br i1 %i.ci, label %bb.h, label %_ZN7testing7MessageD2Ev.exit.i.i.i

bb.h:                                             ; preds = %.noexc.i.i.i.i.i
  %i.cj = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN7testing7MessageD2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.cj) #29, !inline_history !343
  br label %_ZN7testing7MessageD2Ev.exit.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #32
  unreachable

_ZN7testing7MessageD2Ev.exit.i.i.i:               ; preds = %bb.i, %bb.h, %.noexc.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cs, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.o ], [ %i.cr, %bb.l ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.p ], [ %i.cq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ar

bb.r:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i.i.i, %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !55
  %.not.i.i.i26.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i26.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i27.i.i.i unwind label %bb.v

.noexc.i.i27.i.i.i:                               ; preds = %bb.s
  br i1 %i.cw, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit.i.i.i

bb.t:                                             ; preds = %.noexc.i.i27.i.i.i
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !55 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN7testing15AssertionResultD2Ev.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !59 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !65
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
end_hunk_6
begin_hunk_7_@"_ZNSt17_Function_handlerIFvlEZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOl":bb.a
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.fb = load ptr, ptr %15, align 8, !tbaa !62
  %.not.i.i.i40.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i40.i.i.i, label %_ZN7testing7MessageD2Ev.exit42.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i41.i.i.i unwind label %bb.af

.noexc.i.i41.i.i.i:                               ; preds = %bb.ac
  br i1 %i.fc, label %bb.ad, label %_ZN7testing7MessageD2Ev.exit42.i.i.i

bb.ad:                                            ; preds = %.noexc.i.i41.i.i.i
  %i.fd = load ptr, ptr %15, align 8, !tbaa !62   ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN7testing7MessageD2Ev.exit42.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(128) %i.fd) #29, !inline_history !343
  br label %_ZN7testing7MessageD2Ev.exit42.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #32
  unreachable

_ZN7testing7MessageD2Ev.exit42.i.i.i:             ; preds = %bb.ae, %bb.ad, %.noexc.i.i41.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.am

bb.ag:                                            ; preds = %bb.w
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit.i.i.i, %_ZN7testing7MessagelsIlEERS0_RKT_.exit37.i.i.i, %bb.x
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit39.i.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.aa
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #29
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn21.i.i.i = phi { ptr, i32 } [ %i.fn, %bb.aj ], [ %i.fm, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ak, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i
  %.pn21.pn.i.i.i = phi { ptr, i32 } [ %.pn21.i.i.i, %bb.ak ], [ %i.fl, %bb.ah ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  br label %bb.al

bb.al:                                            ; preds = %.body.i.i.i, %bb.ag
  %.pn21.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn21.pn.i.i.i, %.body.i.i.i ], [ %i.fk, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.ar

bb.am:                                            ; preds = %_ZN7testing7MessageD2Ev.exit42.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !55
  %.not.i.i.i43.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i43.i.i.i, label %"_ZSt10__invoke_rIvRZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i44.i.i.i unwind label %bb.aq

.noexc.i.i44.i.i.i:                               ; preds = %bb.an
  br i1 %i.fq, label %bb.ao, label %"_ZSt10__invoke_rIvRZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

bb.ao:                                            ; preds = %.noexc.i.i44.i.i.i
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !55 ; 4 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %"_ZSt10__invoke_rIvRZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !59 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i46.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45.i.i.i: ; preds = %bb.ap
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !65
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i46.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i46.i.i.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef 32) #31
  br label %"_ZSt10__invoke_rIvRZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

bb.aq:                                            ; preds = %bb.an
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #32
  unreachable

bb.ar:                                            ; preds = %bb.al, %bb.q
  %.pn21.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn21.pn.pn.i.i.i, %bb.al ], [ %.pn.pn.pn.i.i.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn21.pn.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit": ; preds = %bb.am, %.noexc.i.i44.i.i.i, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i46.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !199
  br label %"_ZNSt14_Function_base13_Base_managerIZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN27FullSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL21TestReintersectConvexN4pbrt5ShapeERNS_3RNGE(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit162.2:
  %i.a = alloca float, align 4                    ; 4 uses
  %2 = alloca %class.anon.69, align 8             ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %class.anon.76, align 8             ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %4 = alloca %class.anon.69, align 8             ; 5 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %5 = alloca %class.anon.76, align 8             ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %6 = alloca %class.anon.69, align 8             ; 5 uses
  %7 = alloca %class.anon.86, align 1             ; 3 uses
  %8 = alloca %"class.pbrt::Bounds3", align 8     ; 7 uses
  %9 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %10 = alloca %"class.pstd::optional.34", align 16 ; 15 uses
  %11 = alloca %"class.pbrt::Ray", align 8        ; 13 uses
  %12 = alloca %"class.pstd::optional.34", align 8 ; 4 uses
  %13 = alloca %"class.pstd::optional.34", align 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %.promoted = load i64, ptr %1, align 8, !tbaa !73 ; 2 uses
  %i.h = mul i64 %.promoted, 6364136223846793005
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = mul i64 %i.i, 6364136223846793005
  %i.k = add i64 %i.j, %i.g                       ; 4 uses
  %i.l = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %i.m = insertelement <2 x i64> %i.l, i64 %.promoted, i64 1 ; 3 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 45)
  %i.o = lshr <2 x i64> %i.m, splat (i64 27)
  %i.p = xor <2 x i64> %i.n, %i.o
  %i.q = trunc <2 x i64> %i.p to <2 x i32>        ; 2 uses
  %i.r = lshr <2 x i64> %i.m, splat (i64 59)
  %i.s = trunc nuw nsw <2 x i64> %i.r to <2 x i32>
  %i.t = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.q, <2 x i32> %i.q, <2 x i32> %i.s)
  %i.u = uitofp <2 x i32> %i.t to <2 x float>
  %i.v = fmul nnan <2 x float> %i.u, splat (float f0x2F800000) ; 3 uses
  %i.w = fcmp olt <2 x float> %i.v, splat (float f0x3F7FFFFF) ; 2 uses
  %i.x = extractelement <2 x i1> %i.w, i64 1
  %i.y = extractelement <2 x float> %i.v, i64 1
  %.sroa.speculated.i.i = select i1 %i.x, float %i.y, float f0x3F7FFFFF ; 2 uses
  %i.z = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i
  %i.aa = fmul nnan float %.sroa.speculated.i.i, 8.000000e+00
  %i.ab = fmul nnan float %i.z, 8.000000e+00
  %i.ac = fsub float %i.aa, %i.ab
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ad) #29
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = mul i64 %i.k, 6364136223846793005
  %i.ah = add i64 %i.ag, %i.g
  %i.ai = lshr i64 %i.k, 45
  %i.aj = lshr i64 %i.k, 27
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = lshr i64 %i.k, 59
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = tail call noundef i32 @llvm.fshr.i32(i32 %i.al, i32 %i.al, i32 %i.an)
  %i.ap = uitofp i32 %i.ao to float
  %i.aq = fmul nnan float %i.ap, f0x2F800000      ; 2 uses
  %i.ar = fcmp olt float %i.aq, f0x3F7FFFFF
  %i.as = insertelement <2 x i1> %i.w, i1 %i.ar, i64 1
  %i.at = insertelement <2 x float> %i.v, float %i.aq, i64 1
  %i.au = select <2 x i1> %i.as, <2 x float> %i.at, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.av = fsub nnan <2 x float> splat (float 1.000000e+00), %i.au
  %i.aw = fmul nnan <2 x float> %i.au, splat (float 8.000000e+00)
  %i.ax = fmul nnan <2 x float> %i.av, splat (float 8.000000e+00)
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = fpext <2 x float> %i.ay to <2 x double> ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ba) #29
  %i.bc = insertelement <2 x double> %i.af, double %i.bb, i64 1
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 2 uses
  %i.be = extractelement <2 x double> %i.az, i64 1
  %i.bf = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.be) #29
  %i.bg = fptrunc double %i.bf to float           ; 2 uses
  store i64 %i.ah, ptr %1, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !367
  call void @_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_EEDcOSA_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Bounds3") align 4 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !367
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !72  ; 4 uses
  %.promoted271 = load i64, ptr %1, align 8, !tbaa !73 ; 2 uses
  %i.bi = mul i64 %.promoted271, 6364136223846793005
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = mul i64 %i.bj, 6364136223846793005
  %i.bl = insertelement <2 x i64> poison, i64 %.promoted271, i64 0
  %i.bm = insertelement <2 x i64> %i.bl, i64 %i.bj, i64 1 ; 3 uses
  %i.bn = lshr <2 x i64> %i.bm, splat (i64 45)
  %i.bo = lshr <2 x i64> %i.bm, splat (i64 27)
  %i.bp = xor <2 x i64> %i.bn, %i.bo
  %i.bq = trunc <2 x i64> %i.bp to <2 x i32>      ; 2 uses
  %i.br = lshr <2 x i64> %i.bm, splat (i64 59)
  %i.bs = trunc nuw nsw <2 x i64> %i.br to <2 x i32>
  %i.bt = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bq, <2 x i32> %i.bq, <2 x i32> %i.bs)
  %i.bu = uitofp <2 x i32> %i.bt to <2 x float>
  %i.bv = fmul nnan <2 x float> %i.bu, splat (float f0x2F800000) ; 2 uses
  %i.bw = fcmp olt <2 x float> %i.bv, splat (float f0x3F7FFFFF)
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.bv, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !106
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.cd = load <2 x float>, ptr %8, align 8, !tbaa !17
  %i.ce = load <2 x float>, ptr %i.by, align 4, !tbaa !17
  %i.cf = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bx
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = fmul <2 x float> %i.bx, %i.ce
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  %i.cj = fsub <2 x float> %i.ci, %i.bd           ; 4 uses
  store <2 x float> %i.bd, ptr %9, align 8
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.bg, ptr %.sroa.27.0..sroa_idx.i, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store <2 x float> %i.cj, ptr %i.ck, align 4
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store float 0.000000e+00, ptr %i.cl, align 8, !tbaa !85
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.cm, align 8, !tbaa !86
  %i.cn = add i64 %i.bk, %i.bh                    ; 2 uses
  %i.co = mul i64 %i.cn, 6364136223846793005
  %i.cp = add i64 %i.co, %i.bh                    ; 2 uses
  %i.cq = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %i.cr = insertelement <2 x i64> %i.cq, i64 %i.cp, i64 1 ; 3 uses
  %i.cs = lshr <2 x i64> %i.cr, splat (i64 45)
  %i.ct = lshr <2 x i64> %i.cr, splat (i64 27)
  %i.cu = xor <2 x i64> %i.cs, %i.ct
  %i.cv = trunc <2 x i64> %i.cu to <2 x i32>      ; 2 uses
  %i.cw = lshr <2 x i64> %i.cr, splat (i64 59)
  %i.cx = trunc nuw nsw <2 x i64> %i.cw to <2 x i32>
  %i.cy = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cv, <2 x i32> %i.cv, <2 x i32> %i.cx)
  %i.cz = uitofp <2 x i32> %i.cy to <2 x float>   ; 2 uses
  %i.da = extractelement <2 x float> %i.cz, i64 0
  %i.db = fmul nnan float %i.da, f0x2F800000      ; 2 uses
  %i.dc = fcmp olt float %i.db, f0x3F7FFFFF
  %.sroa.speculated.i160.2 = select i1 %i.dc, float %i.db, float f0x3F7FFFFF ; 2 uses
  %i.dd = fsub nnan float 1.000000e+00, %.sroa.speculated.i160.2
  %i.de = fmul float %i.dd, %i.ca
  %i.df = fmul float %.sroa.speculated.i160.2, %i.cc
  %i.dg = fadd float %i.de, %i.df
  %i.dh = fsub float %i.dg, %i.bg                 ; 4 uses
  store float %i.dh, ptr %.sroa.23.0..sroa_idx.i, align 4
  %i.di = mul i64 %i.cp, 6364136223846793005
  %i.dj = add i64 %i.di, %i.bh
  store i64 %i.dj, ptr %1, align 8, !tbaa !73
  %i.dk = extractelement <2 x float> %i.cz, i64 1
  %i.dl = fmul nnan float %i.dk, f0x2F800000      ; 2 uses
  %i.dm = fcmp olt float %i.dl, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.dm, float %i.dl, float f0x3F7FFFFF
  %i.dn = fcmp olt float %.sroa.speculated.i, 5.000000e-01
  br i1 %i.dn, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit162.2
  %i.do = fmul <2 x float> %i.cj, %i.cj           ; 2 uses
  %shift = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.do, %shift
  %i.dp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dq = fmul float %i.dh, %i.dh
  %i.dr = fadd float %i.dq, %i.dp
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.dr) ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fdiv <2 x float> %i.cj, %i.dt
  %i.dv = fdiv float %i.dh, %sqrt.i.i
  store <2 x float> %i.du, ptr %i.ck, align 4
  store float %i.dv, ptr %.sroa.23.0..sroa_idx.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit162.2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store float +inf, ptr %i.e, align 4, !tbaa !17, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !368
  store ptr %9, ptr %6, align 8, !tbaa !88, !noalias !368
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.e, ptr %i.dw, align 8, !tbaa !90, !noalias !368
  %i.dx = load i64, ptr %0, align 8, !tbaa !68, !noalias !369 ; 2 uses
  %i.dy = and i64 %i.dx, 144115188075855871
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = lshr i64 %i.dx, 57
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = add nsw i32 %i.eb, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_N4pstd8optionalINS_17ShapeIntersectionEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.34") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dz, i32 noundef %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.ee = load i8, ptr %i.ed, align 16, !tbaa !92, !range !53, !noundef !54
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader, label %.loopexit

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader: ; preds = %bb.b
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 4 uses
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %.sroa.7245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.sroa.8246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 256
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 256
  br label %.noexc173

.noexc173:                                        ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit
  %.0139278 = phi i32 [ 0, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader ], [ %spec.select153, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit ]
  %.0144277 = phi i32 [ 0, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.preheader ], [ %i.lo, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit ]
  %i.er = load i64, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.es = mul i64 %i.er, 6364136223846793005
  %i.et = load i64, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %i.eu = add i64 %i.es, %i.et                    ; 2 uses
  %i.ev = mul i64 %i.eu, 6364136223846793005
  %i.ew = add i64 %i.ev, %i.et
  store i64 %i.ew, ptr %1, align 8, !tbaa !73
  %i.ex = insertelement <2 x i64> poison, i64 %i.eu, i64 0
  %i.ey = insertelement <2 x i64> %i.ex, i64 %i.er, i64 1 ; 3 uses
  %i.ez = lshr <2 x i64> %i.ey, splat (i64 45)
  %i.fa = lshr <2 x i64> %i.ey, splat (i64 27)
  %i.fb = xor <2 x i64> %i.ez, %i.fa
  %i.fc = trunc <2 x i64> %i.fb to <2 x i32>      ; 2 uses
  %i.fd = lshr <2 x i64> %i.ey, splat (i64 59)
  %i.fe = trunc nuw nsw <2 x i64> %i.fd to <2 x i32>
  %i.ff = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fc, <2 x i32> %i.fc, <2 x i32> %i.fe)
  %i.fg = uitofp <2 x i32> %i.ff to <2 x float>
  %i.fh = fmul nnan <2 x float> %i.fg, splat (float f0x2F800000) ; 3 uses
  %i.fi = fcmp olt <2 x float> %i.fh, splat (float f0x3F7FFFFF) ; 2 uses
  %i.fj = extractelement <2 x i1> %i.fi, i64 1
  %i.fk = extractelement <2 x float> %i.fh, i64 1
  %i.fl = extractelement <2 x i1> %i.fi, i64 0
  %i.fm = extractelement <2 x float> %i.fh, i64 0
  %i.fn = fmul nnan float %i.fk, 2.000000e+00
  %i.fo = fsub float 1.000000e+00, %i.fn
  %i.fp = select i1 %i.fj, float %i.fo, float f0xBF7FFFFE ; 6 uses
  %i.fq = fmul float %i.fp, %i.fp
  %i.fr = fsub float 1.000000e+00, %i.fq          ; 2 uses
  %i.fs = fcmp ogt float %i.fr, 0.000000e+00
  %.sroa.speculated.i.i165 = select i1 %i.fs, float %i.fr, float 0.000000e+00
  %sqrt.i.i166 = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i165)
  %i.ft = fmul nnan float %i.fm, f0x40C90FDB
  %i.fu = select i1 %i.fl, float %i.ft, float f0x40C90FDA ; 2 uses
  %i.fv = call noundef float @cosf(float noundef %i.fu) #29
  %i.fw = call noundef float @sinf(float noundef %i.fu) #29
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.eg, align 8 ; 3 uses
  %.sroa.257.0.copyload = load float, ptr %.sroa.257.0..sroa_idx, align 16 ; 3 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.056.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.056.0.copyload, i64 1
  %i.fx = fmul float %.sroa.257.0.copyload, %i.fp ; 2 uses
  %i.fy = fneg float %i.fx
  %i.fz = call noundef float @llvm.fma.f32(float %.sroa.257.0.copyload, float %i.fp, float %i.fy)
  %i.ga = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.fw, i64 1
  %i.gc = insertelement <2 x float> poison, float %sqrt.i.i166, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x float> %i.gb, %i.gd           ; 4 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 1
  %i.gg = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i, float %i.gf, float %i.fx)
  %i.gh = fadd float %i.fz, %i.gg
  %i.gi = extractelement <2 x float> %i.ge, i64 0
  %i.gj = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i, float %i.gi, float %i.gh)
  %i.gk = fcmp olt float %i.gj, 0.000000e+00      ; 2 uses
  %i.gl = fneg <2 x float> %i.ge
  %i.gm = fneg float %i.fp
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.gk, <2 x float> %i.gl, <2 x float> %i.ge ; 4 uses
  %.pn.i = select i1 %i.gk, float %i.gm, float %i.fp ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.gn = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %10, <2 x float> %.sroa.056.0.copyload, float %.sroa.257.0.copyload, <2 x float> %.sroa.0.4.vec.insert.i.pn.i, float %.pn.i) ; 2 uses
  %i.go = load float, ptr %i.eh, align 8, !tbaa !103, !noalias !370
  %i.gp = load ptr, ptr %i.ei, align 16, !tbaa !104, !noalias !371 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2, label %bb.c

bb.c:                                             ; preds = %.noexc173
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.eg, align 8, !noalias !371 ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.257.0..sroa_idx, align 16, !noalias !371 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i171 = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i172 = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i, i64 1
  %i.gq = fmul float %.pn.i, %.sroa.24.0.copyload.i.i ; 2 uses
  %i.gr = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i172, float %.sroa.04.4.vec.extract.i.i.i, float %i.gq)
  %i.gs = fneg float %i.gq
  %i.gt = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i, float %.pn.i, float %i.gs)
  %i.gu = fadd float %i.gr, %i.gt
  %i.gv = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i171, float %.sroa.04.0.vec.extract.i.i.i, float %i.gu)
  %i.gw = fcmp ogt float %i.gv, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.gw, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 %spec.select.idx.i.i
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2:      ; preds = %bb.c, %.noexc173
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %bb.c ], [ %i.ej, %.noexc173 ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.gn, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.gn, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8, !tbaa !86, !noalias !371
  store <2 x float> %.fca.0.extract.i, ptr %11, align 8
  store float %.fca.1.extract.i, ptr %.sroa.5243.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i, ptr %.sroa.6244.0..sroa_idx, align 4
  store float %.pn.i, ptr %.sroa.7245.0..sroa_idx, align 4
  store float %i.go, ptr %.sroa.8246.0..sroa_idx, align 8
  store i64 %storemerge.i.i, ptr %i.ek, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store float +inf, ptr %i.d, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %11, ptr %5, align 8, !tbaa !88
  store ptr %i.d, ptr %i.el, align 8, !tbaa !90
  %i.gx = load i64, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.gy = and i64 %i.gx, 144115188075855871
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = lshr i64 %i.gx, 57
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = add nsw i32 %i.hb, -1
  %i.hd = call noundef zeroext i1 @_ZN4pbrt6detail8DispatchIRZNKS_5Shape10IntersectPERKNS_3RayEfEUlT_E_bNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.gz, i32 noundef %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store float +inf, ptr %i.c, align 4, !tbaa !17, !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !372
  store ptr %11, ptr %4, align 8, !tbaa !88, !noalias !372
  store ptr %i.c, ptr %i.em, align 8, !tbaa !90, !noalias !372
  %i.he = load i64, ptr %0, align 8, !tbaa !68, !noalias !373 ; 2 uses
  %i.hf = and i64 %i.he, 144115188075855871
  %i.hg = inttoptr i64 %i.hf to ptr
  %i.hh = lshr i64 %i.he, 57
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = add nsw i32 %i.hi, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_N4pstd8optionalINS_17ShapeIntersectionEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.34") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.hg, i32 noundef %i.hj)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hk = load i8, ptr %i.en, align 8, !tbaa !92, !range !53, !noundef !54
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.hl = load i64, ptr %i.f, align 8, !tbaa !72  ; 3 uses
  %.promoted274 = load i64, ptr %1, align 8, !tbaa !73 ; 2 uses
  %i.hm = mul i64 %.promoted274, 6364136223846793005
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  %i.ho = mul i64 %i.hn, 6364136223846793005
  %i.hp = add i64 %i.ho, %i.hl                    ; 4 uses
  %i.hq = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %i.hr = insertelement <2 x i64> %i.hq, i64 %.promoted274, i64 1 ; 3 uses
  %i.hs = lshr <2 x i64> %i.hr, splat (i64 45)
  %i.ht = lshr <2 x i64> %i.hr, splat (i64 27)
  %i.hu = xor <2 x i64> %i.hs, %i.ht
  %i.hv = trunc <2 x i64> %i.hu to <2 x i32>      ; 2 uses
  %i.hw = lshr <2 x i64> %i.hr, splat (i64 59)
  %i.hx = trunc nuw nsw <2 x i64> %i.hw to <2 x i32>
  %i.hy = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.hv, <2 x i32> %i.hv, <2 x i32> %i.hx)
  %i.hz = uitofp <2 x i32> %i.hy to <2 x float>
  %i.ia = fmul nnan <2 x float> %i.hz, splat (float f0x2F800000) ; 3 uses
  %i.ib = fcmp olt <2 x float> %i.ia, splat (float f0x3F7FFFFF) ; 2 uses
  %i.ic = extractelement <2 x i1> %i.ib, i64 1
  %i.id = extractelement <2 x float> %i.ia, i64 1
  %.sroa.speculated.i.i178 = select i1 %i.ic, float %i.id, float f0x3F7FFFFF ; 2 uses
  %i.ie = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i178
  %i.if = fmul nnan float %.sroa.speculated.i.i178, 8.000000e+00
  %i.ig = fmul nnan float %i.ie, 8.000000e+00
  %i.ih = fsub float %i.if, %i.ig
  %i.ii = fpext float %i.ih to double
  %i.ij = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ii) #29
  %i.ik = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.il = mul i64 %i.hp, 6364136223846793005
  %i.im = add i64 %i.il, %i.hl
  %i.in = lshr i64 %i.hp, 45
  %i.io = lshr i64 %i.hp, 27
  %i.ip = xor i64 %i.in, %i.io
  %i.iq = trunc i64 %i.ip to i32                  ; 2 uses
  %i.ir = lshr i64 %i.hp, 59
  %i.is = trunc nuw nsw i64 %i.ir to i32
  %i.it = call noundef i32 @llvm.fshr.i32(i32 %i.iq, i32 %i.iq, i32 %i.is)
  %i.iu = uitofp i32 %i.it to float
  %i.iv = fmul nnan float %i.iu, f0x2F800000      ; 2 uses
  %i.iw = fcmp olt float %i.iv, f0x3F7FFFFF
  %i.ix = insertelement <2 x i1> %i.ib, i1 %i.iw, i64 1
  %i.iy = insertelement <2 x float> %i.ia, float %i.iv, i64 1
  %i.iz = select <2 x i1> %i.ix, <2 x float> %i.iy, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ja = fsub nnan <2 x float> splat (float 1.000000e+00), %i.iz
  %i.jb = fmul nnan <2 x float> %i.iz, splat (float 8.000000e+00)
  %i.jc = fmul nnan <2 x float> %i.ja, splat (float 8.000000e+00)
  %i.jd = fsub <2 x float> %i.jb, %i.jc
  %i.je = fpext <2 x float> %i.jd to <2 x double> ; 2 uses
  %i.jf = extractelement <2 x double> %i.je, i64 0
  %i.jg = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.jf) #29
  %i.jh = insertelement <2 x double> %i.ik, double %i.jg, i64 1
  %i.ji = fptrunc <2 x double> %i.jh to <2 x float>
  %i.jj = extractelement <2 x double> %i.je, i64 1
  %i.jk = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.jj) #29
  %i.jl = fptrunc double %i.jk to float
  %i.jm = zext i1 %i.hd to i32
  %spec.select = add nsw i32 %.0139278, %i.jm
  %i.jn = zext nneg i8 %i.hk to i32
  %spec.select151 = add nsw i32 %spec.select, %i.jn
  store i64 %i.im, ptr %1, align 8, !tbaa !73
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 16
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.jo = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.jp = fmul float %i.jo, 5.000000e-01          ; 3 uses
  %i.jq = fsub float %i.jl, %i.jp                 ; 4 uses
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.eg, align 8 ; 3 uses
  %.sroa.223.0.copyload = load float, ptr %.sroa.257.0..sroa_idx, align 16 ; 3 uses
  %.sroa.01.0.vec.extract.i.i187 = extractelement <2 x float> %.sroa.022.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i189 = extractelement <2 x float> %.sroa.022.0.copyload, i64 1
  %i.jr = fmul float %i.jq, %.sroa.223.0.copyload ; 2 uses
  %i.js = fneg float %i.jr
  %i.jt = call noundef float @llvm.fma.f32(float %.sroa.223.0.copyload, float %i.jq, float %i.js)
  %i.ju = fneg float %i.jq
  %i.jv = load float, ptr %i.eh, align 8, !tbaa !103, !noalias !374
  %i.jw = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.jx = load <4 x float>, ptr %10, align 16
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jz = fadd <2 x float> %i.jw, %i.jy
  %i.ka = fmul <2 x float> %i.jz, splat (float 5.000000e-01) ; 3 uses
  %i.kb = fsub <2 x float> %i.ji, %i.ka           ; 4 uses
  %i.kc = extractelement <2 x float> %i.kb, i64 1
  %i.kd = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i189, float %i.kc, float %i.jr)
  %i.ke = fadd float %i.kd, %i.jt
  %i.kf = extractelement <2 x float> %i.kb, i64 0
  %i.kg = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i187, float %i.kf, float %i.ke)
  %i.kh = fcmp olt float %i.kg, 0.000000e+00      ; 2 uses
  %i.ki = fneg <2 x float> %i.kb
  %.sroa.0.4.vec.insert.i.pn.i193 = select i1 %i.kh, <2 x float> %i.ki, <2 x float> %i.kb
  %.pn.i194 = select i1 %i.kh, float %i.ju, float %i.jq
  %i.kj = fadd <2 x float> %i.ka, %.sroa.0.4.vec.insert.i.pn.i193
  %i.kk = fadd float %i.jp, %.pn.i194
  %i.kl = fsub <2 x float> %i.kj, %i.ka           ; 4 uses
  %i.km = fsub float %i.kk, %i.jp                 ; 4 uses
  %i.kn = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %10, <2 x float> %.sroa.022.0.copyload, float %.sroa.223.0.copyload, <2 x float> %i.kl, float %i.km) ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { <2 x float>, float } %i.kn, 0
  %.fca.1.extract.i.i.i = extractvalue { <2 x float>, float } %i.kn, 1
  %i.ko = load ptr, ptr %i.ei, align 16, !tbaa !104, !noalias !375 ; 2 uses
  %.not.i.i218 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i218, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2
  %.sroa.03.0.copyload.i.i219 = load <2 x float>, ptr %i.eg, align 8, !noalias !375 ; 2 uses
  %.sroa.24.0.copyload.i.i220 = load float, ptr %.sroa.257.0..sroa_idx, align 16, !noalias !375 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i221 = extractelement <2 x float> %.sroa.03.0.copyload.i.i219, i64 0
  %.sroa.01.4.vec.extract.i.i.i222 = extractelement <2 x float> %.sroa.03.0.copyload.i.i219, i64 1
  %i.kp = fmul float %i.km, %.sroa.24.0.copyload.i.i220 ; 2 uses
  %i.kq = extractelement <2 x float> %i.kl, i64 1
  %i.kr = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i222, float %i.kq, float %i.kp)
  %i.ks = fneg float %i.kp
  %i.kt = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i220, float %i.km, float %i.ks)
  %i.ku = fadd float %i.kr, %i.kt
  %i.kv = extractelement <2 x float> %i.kl, i64 0
  %i.kw = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i221, float %i.kv, float %i.ku)
  %i.kx = fcmp ogt float %i.kw, 0.000000e+00
  %spec.select.idx.i.i223 = select i1 %i.kx, i64 8, i64 0
  %spec.select.i.i224 = getelementptr inbounds nuw i8, ptr %i.ko, i64 %spec.select.idx.i.i223
  br label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit: ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2, %bb.d
  %storemerge.in.i.i225 = phi ptr [ %spec.select.i.i224, %bb.d ], [ %i.ej, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit180.2 ]
  %storemerge.i.i226 = load i64, ptr %storemerge.in.i.i225, align 8, !tbaa !86, !noalias !375
  store <2 x float> %.fca.0.extract.i.i.i, ptr %11, align 8
  store float %.fca.1.extract.i.i.i, ptr %.sroa.5243.0..sroa_idx, align 8
  store <2 x float> %i.kl, ptr %.sroa.6244.0..sroa_idx, align 4
  store float %i.km, ptr %.sroa.7245.0..sroa_idx, align 4
  store float %i.jv, ptr %.sroa.8246.0..sroa_idx, align 8
  store i64 %storemerge.i.i226, ptr %i.ek, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %11, ptr %3, align 8, !tbaa !88
  store ptr %i.b, ptr %i.eo, align 8, !tbaa !90
  %i.ky = load i64, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.kz = and i64 %i.ky, 144115188075855871
  %i.la = inttoptr i64 %i.kz to ptr
  %i.lb = lshr i64 %i.ky, 57
  %i.lc = trunc nuw nsw i64 %i.lb to i32
  %i.ld = add nsw i32 %i.lc, -1
  %i.le = call noundef zeroext i1 @_ZN4pbrt6detail8DispatchIRZNKS_5Shape10IntersectPERKNS_3RayEfEUlT_E_bNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.la, i32 noundef %i.ld)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lf = zext i1 %i.le to i32
  %spec.select152 = add nsw i32 %spec.select151, %i.lf
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !17, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !376
  store ptr %11, ptr %2, align 8, !tbaa !88, !noalias !376
  store ptr %i.a, ptr %i.ep, align 8, !tbaa !90, !noalias !376
  %i.lg = load i64, ptr %0, align 8, !tbaa !68, !noalias !377 ; 2 uses
  %i.lh = and i64 %i.lg, 144115188075855871
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = lshr i64 %i.lg, 57
  %i.lk = trunc nuw nsw i64 %i.lj to i32
  %i.ll = add nsw i32 %i.lk, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape9IntersectERKNS_3RayEfEUlT_E_N4pstd8optionalINS_17ShapeIntersectionEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.34") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.li, i32 noundef %i.ll)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lm = load i8, ptr %i.eq, align 8, !tbaa !92, !range !53, !noundef !54
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.ln = zext nneg i8 %i.lm to i32
  %spec.select153 = add nsw i32 %spec.select152, %i.ln ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.lo = add nuw nsw i32 %.0144277, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.lo, 1000
  br i1 %exitcond.not, label %.loopexit, label %.noexc173, !llvm.loop !366

.loopexit:                                        ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %spec.select153, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15randomTransformRN4pbrt3RNGE(ptr dead_on_unwind noalias nonnull writable align 4 initializes((0, 128)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
.critedge:
  %2 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %3 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %5 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %6 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 23 uses
  store float 1.000000e+00, ptr %0, align 4, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !17
  %i.m = load i64, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.n = mul i64 %i.m, 6364136223846793005
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72   ; 3 uses
  %i.q = add i64 %i.n, %i.p                       ; 2 uses
  %i.r = mul i64 %i.q, 6364136223846793005
  %i.s = add i64 %i.r, %i.p                       ; 4 uses
  %i.t = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %i.u = insertelement <2 x i64> %i.t, i64 %i.q, i64 1 ; 3 uses
  %i.v = lshr <2 x i64> %i.u, splat (i64 45)
  %i.w = lshr <2 x i64> %i.u, splat (i64 27)
  %i.x = xor <2 x i64> %i.v, %i.w
  %i.y = trunc <2 x i64> %i.x to <2 x i32>        ; 2 uses
  %i.z = lshr <2 x i64> %i.u, splat (i64 59)
  %i.aa = trunc nuw nsw <2 x i64> %i.z to <2 x i32>
  %i.ab = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.y, <2 x i32> %i.y, <2 x i32> %i.aa)
  %i.ac = uitofp <2 x i32> %i.ab to <2 x float>
  %i.ad = fmul nnan <2 x float> %i.ac, splat (float f0x2F800000) ; 2 uses
  %i.ae = fcmp olt <2 x float> %i.ad, splat (float f0x3F7FFFFF)
  %i.af = select <2 x i1> %i.ae, <2 x float> %i.ad, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ag = fsub nnan <2 x float> splat (float 1.000000e+00), %i.af
  %i.ah = fmul nnan <2 x float> %i.af, splat (float 4.000000e+00)
  %i.ai = fmul nnan <2 x float> %i.ag, splat (float 4.000000e+00)
  %i.aj = fsub <2 x float> %i.ah, %i.ai
  %i.ak = fpext <2 x float> %i.aj to <2 x double> ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.al) #29
  %i.an = fptrunc double %i.am to float
  %i.ao = extractelement <2 x double> %i.ak, i64 1
  %i.ap = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ao) #29
  %i.aq = fptrunc double %i.ap to float
  %i.ar = mul i64 %i.s, 6364136223846793005
  %i.as = add i64 %i.ar, %i.p
  store i64 %i.as, ptr %1, align 8, !tbaa !73
  %i.at = lshr i64 %i.s, 45
  %i.au = lshr i64 %i.s, 27
  %i.av = xor i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = lshr i64 %i.s, 59
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = tail call noundef i32 @llvm.fshr.i32(i32 %i.aw, i32 %i.aw, i32 %i.ay)
  %i.ba = uitofp i32 %i.az to float
  %i.bb = fmul nnan float %i.ba, f0x2F800000      ; 2 uses
  %i.bc = fcmp olt float %i.bb, f0x3F7FFFFF
  %.sroa.speculated.i.i20 = select i1 %i.bc, float %i.bb, float f0x3F7FFFFF ; 2 uses
  %i.bd = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i20
  %i.be = fmul nnan float %.sroa.speculated.i.i20, 4.000000e+00
  %i.bf = fmul nnan float %i.bd, 4.000000e+00
  %i.bg = fsub float %i.be, %i.bf
  %i.bh = fpext float %i.bg to double
  %i.bi = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.bh) #29
  %i.bj = fptrunc double %i.bi to float
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %3, float noundef %i.an, float noundef %i.aq, float noundef %i.bj)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !382
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.bk = load i64, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.bl = mul i64 %i.bk, 6364136223846793005
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !72  ; 6 uses
  %i.bn = lshr i64 %i.bk, 45
  %i.bo = lshr i64 %i.bk, 27
  %i.bp = xor i64 %i.bn, %i.bo
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %i.br = lshr i64 %i.bk, 59
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = call noundef i32 @llvm.fshr.i32(i32 %i.bq, i32 %i.bq, i32 %i.bs)
  %i.bu = uitofp i32 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x2F800000      ; 2 uses
  %i.bw = fcmp olt float %i.bv, f0x3F7FFFFF
  %.sroa.speculated.i.i.i = select i1 %i.bw, float %i.bv, float f0x3F7FFFFF ; 2 uses
  %i.bx = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i.i
  %i.by = fmul nnan float %.sroa.speculated.i.i.i, 8.000000e+00
  %i.bz = fmul nnan float %i.bx, 8.000000e+00
  %i.ca = fsub float %i.by, %i.bz
  %i.cb = fpext float %i.ca to double
  %i.cc = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cb) #29
  %i.cd = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.ce = mul i64 %i.cd, 6364136223846793005
  %i.cf = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cg = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.ch = add i64 %i.ce, %i.bm                    ; 2 uses
  %i.ci = mul i64 %i.ch, 6364136223846793005
  %i.cj = add i64 %i.ci, %i.bm                    ; 2 uses
  %i.ck = mul i64 %i.cj, 6364136223846793005
  %i.cl = add i64 %i.ck, %i.bm                    ; 2 uses
  %i.cm = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %i.cn = insertelement <2 x i64> %i.cm, i64 %i.cl, i64 1 ; 3 uses
  %i.co = lshr <2 x i64> %i.cn, splat (i64 45)
  %i.cp = lshr <2 x i64> %i.cn, splat (i64 27)
  %i.cq = xor <2 x i64> %i.co, %i.cp
  %i.cr = trunc <2 x i64> %i.cq to <2 x i32>      ; 2 uses
  %i.cs = lshr <2 x i64> %i.cn, splat (i64 59)
  %i.ct = trunc nuw nsw <2 x i64> %i.cs to <2 x i32>
  %i.cu = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cr, <2 x i32> %i.cr, <2 x i32> %i.ct)
  %i.cv = uitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = fmul nnan <2 x float> %i.cv, splat (float f0x2F800000) ; 2 uses
  %i.cx = fcmp olt <2 x float> %i.cw, splat (float f0x3F7FFFFF)
  %i.cy = select <2 x i1> %i.cx, <2 x float> %i.cw, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.cz = fsub nnan <2 x float> splat (float 1.000000e+00), %i.cy
  %i.da = fmul nnan <2 x float> %i.cy, splat (float 8.000000e+00)
  %i.db = fmul nnan <2 x float> %i.cz, splat (float 8.000000e+00)
  %i.dc = fsub <2 x float> %i.da, %i.db
  %i.dd = fpext <2 x float> %i.dc to <2 x double> ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.de) #29
  %i.dg = insertelement <2 x double> %i.cf, double %i.df, i64 1
  %i.dh = fptrunc <2 x double> %i.dg to <2 x float> ; 2 uses
  %i.di = insertelement <2 x i64> %i.cg, i64 %i.cj, i64 1 ; 3 uses
  %i.dj = lshr <2 x i64> %i.di, splat (i64 45)
  %i.dk = lshr <2 x i64> %i.di, splat (i64 27)
  %i.dl = xor <2 x i64> %i.dj, %i.dk
  %i.dm = trunc <2 x i64> %i.dl to <2 x i32>      ; 2 uses
  %i.dn = lshr <2 x i64> %i.di, splat (i64 59)
  %i.do = trunc nuw nsw <2 x i64> %i.dn to <2 x i32>
  %i.dp = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dm, <2 x i32> %i.dm, <2 x i32> %i.do)
  %i.dq = uitofp <2 x i32> %i.dp to <2 x float>
  %i.dr = fmul nnan <2 x float> %i.dq, splat (float f0x2F800000) ; 2 uses
  %i.ds = fcmp olt <2 x float> %i.dr, splat (float f0x3F7FFFFF)
  %i.dt = select <2 x i1> %i.ds, <2 x float> %i.dr, <2 x float> splat (float f0x3F7FFFFF)
  %i.du = fcmp ogt <2 x float> %i.dt, splat (float 5.000000e-01)
  %i.dv = fneg <2 x float> %i.dh
  %i.dw = select <2 x i1> %i.du, <2 x float> %i.dh, <2 x float> %i.dv
  %i.dx = mul i64 %i.cl, 6364136223846793005
  %i.dy = add i64 %i.dx, %i.bm                    ; 4 uses
  %i.dz = extractelement <2 x double> %i.dd, i64 1
  %i.ea = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.dz) #29
  %i.eb = fptrunc double %i.ea to float           ; 2 uses
  %i.ec = mul i64 %i.dy, 6364136223846793005
  %i.ed = add i64 %i.ec, %i.bm
  store i64 %i.ed, ptr %1, align 8, !tbaa !73
  %i.ee = lshr i64 %i.dy, 45
  %i.ef = lshr i64 %i.dy, 27
  %i.eg = xor i64 %i.ee, %i.ef
  %i.eh = trunc i64 %i.eg to i32                  ; 2 uses
  %i.ei = lshr i64 %i.dy, 59
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = call noundef i32 @llvm.fshr.i32(i32 %i.eh, i32 %i.eh, i32 %i.ej)
  %i.el = uitofp i32 %i.ek to float
  %i.em = fmul nnan float %i.el, f0x2F800000      ; 2 uses
  %i.en = fcmp olt float %i.em, f0x3F7FFFFF
  %.sroa.speculated.i.i25 = select i1 %i.en, float %i.em, float f0x3F7FFFFF
  %i.eo = fcmp ogt float %.sroa.speculated.i.i25, 5.000000e-01
  %i.ep = fneg float %i.eb
  %i.eq = select i1 %i.eo, float %i.eb, float %i.ep
  call void @_ZN4pbrt9TranslateENS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, <2 x float> %i.dw, float %i.eq)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !382
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.er = load i64, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.es = mul i64 %i.er, 6364136223846793005
  %i.et = load i64, ptr %i.o, align 8, !tbaa !72  ; 3 uses
  %i.eu = lshr i64 %i.er, 45
  %i.ev = lshr i64 %i.er, 27
  %i.ew = xor i64 %i.eu, %i.ev
  %i.ex = trunc i64 %i.ew to i32                  ; 2 uses
  %i.ey = lshr i64 %i.er, 59
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = call noundef i32 @llvm.fshr.i32(i32 %i.ex, i32 %i.ex, i32 %i.ez)
  %i.fb = uitofp i32 %i.fa to float
  %i.fc = fmul nnan float %i.fb, f0x2F800000      ; 2 uses
  %i.fd = fcmp olt float %i.fc, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.fd, float %i.fc, float f0x3F7FFFFF
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.fe = add i64 %i.es, %i.et                    ; 2 uses
  %i.ff = mul i64 %i.fe, 6364136223846793005
  %i.fg = add i64 %i.ff, %i.et                    ; 2 uses
  %i.fh = insertelement <2 x i64> poison, i64 %i.fe, i64 0
  %i.fi = insertelement <2 x i64> %i.fh, i64 %i.fg, i64 1 ; 3 uses
  %i.fj = lshr <2 x i64> %i.fi, splat (i64 45)
  %i.fk = lshr <2 x i64> %i.fi, splat (i64 27)
  %i.fl = xor <2 x i64> %i.fj, %i.fk
  %i.fm = trunc <2 x i64> %i.fl to <2 x i32>      ; 2 uses
  %i.fn = lshr <2 x i64> %i.fi, splat (i64 59)
  %i.fo = trunc nuw nsw <2 x i64> %i.fn to <2 x i32>
  %i.fp = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fm, <2 x i32> %i.fm, <2 x i32> %i.fo)
  %i.fq = uitofp <2 x i32> %i.fp to <2 x float>   ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  %i.fs = fmul nnan float %i.fr, f0x2F800000      ; 2 uses
  %i.ft = fcmp olt float %i.fs, f0x3F7FFFFF
  %.sroa.speculated.i26 = select i1 %i.ft, float %i.fs, float f0x3F7FFFFF
  %i.fu = mul i64 %i.fg, 6364136223846793005
  %i.fv = add i64 %i.fu, %i.et
  store i64 %i.fv, ptr %1, align 8, !tbaa !73
  %i.fw = extractelement <2 x float> %i.fq, i64 1
  %i.fx = fmul nnan float %i.fw, f0x2F800000      ; 2 uses
  %i.fy = fcmp olt float %i.fx, f0x3F7FFFFF
  %.sroa.speculated.i.i27 = select i1 %i.fy, float %i.fx, float f0x3F7FFFFF
  %i.fz = fpext nnan ninf float %.sroa.speculated.i.i27 to double
  %i.ga = fmul nnan double %i.fz, 2.000000e+01
  %i.gb = fadd nnan double %i.ga, -1.000000e+01
  %i.gc = fmul nnan double %i.gb, 2.000000e+01
  %i.gd = fptrunc nnan double %i.gc to float
  %i.ge = fmul nnan float %.sroa.speculated.i, 2.000000e+00
  %i.gf = fsub float 1.000000e+00, %i.ge          ; 3 uses
  %i.gg = fmul float %i.gf, %i.gf                 ; 2 uses
  %i.gh = fsub float 1.000000e+00, %i.gg          ; 2 uses
  %i.gi = fcmp ogt float %i.gh, 0.000000e+00
  %.sroa.speculated.i.i28 = select i1 %i.gi, float %i.gh, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i28) ; 2 uses
  %i.gj = fmul nnan float %.sroa.speculated.i26, f0x40C90FDB ; 2 uses
  %i.gk = call noundef float @cosf(float noundef %i.gj) #29
  %i.gl = call noundef float @sinf(float noundef %i.gj) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.gm = fmul nnan float %i.gd, f0x3C8EFA35      ; 2 uses
  %i.gn = call noundef float @sinf(float noundef %i.gm) #29, !noalias !383 ; 3 uses
  %i.go = call noundef float @cosf(float noundef %i.gm) #29, !noalias !383 ; 4 uses
  %i.gp = fsub float 1.000000e+00, %i.go          ; 3 uses
  %.sroa.5.0..sroa_idx115.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.7.0..sroa_idx116.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.13.0..sroa_idx120.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.16.0..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx121.i.i, align 4, !alias.scope !384
  %.sroa.18.0..sroa_idx122.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 44
  %.sroa.30.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.24.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !384
  store float 1.000000e+00, ptr %.sroa.30.0..sroa_idx.i.i, align 4, !tbaa !65, !alias.scope !384
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 76
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !384
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.gr = fmul float %i.gk, %sqrt.i.i             ; 3 uses
  %i.gs = fmul float %i.gl, %sqrt.i.i             ; 3 uses
  %i.gt = fmul float %i.gr, %i.gr
  %i.gu = fmul float %i.gs, %i.gs
  %i.gv = fadd float %i.gt, %i.gu
  %i.gw = fadd float %i.gg, %i.gv
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.gw) ; 3 uses
  %i.gx = fdiv float %i.gr, %sqrt.i.i.i.i         ; 5 uses
  %i.gy = fmul float %i.gx, %i.gx                 ; 2 uses
  %i.gz = fsub float 1.000000e+00, %i.gy
  %i.ha = fmul float %i.go, %i.gz
  %i.hb = fadd float %i.gy, %i.ha                 ; 2 uses
  %i.hc = fmul float %i.gn, %i.gx                 ; 2 uses
  store float %i.hb, ptr %7, align 4, !alias.scope !384
  %i.hd = fdiv float %i.gs, %sqrt.i.i.i.i         ; 5 uses
  %i.he = fdiv float %i.gf, %sqrt.i.i.i.i         ; 5 uses
  %i.hf = fmul float %i.gx, %i.hd
  %i.hg = fmul float %i.gp, %i.hf                 ; 2 uses
  %i.hh = fmul float %i.gn, %i.he                 ; 2 uses
  %i.hi = fsub float %i.hg, %i.hh                 ; 2 uses
  %i.hj = fmul float %i.gx, %i.he
  %i.hk = fmul float %i.gp, %i.hj                 ; 2 uses
  %i.hl = fmul float %i.gn, %i.hd                 ; 2 uses
  %i.hm = fadd float %i.hl, %i.hk                 ; 2 uses
  %i.hn = fadd float %i.hh, %i.hg                 ; 2 uses
  %i.ho = fmul float %i.hd, %i.hd                 ; 2 uses
  %i.hp = fsub float 1.000000e+00, %i.ho
  %i.hq = fmul float %i.go, %i.hp
  %i.hr = fadd float %i.ho, %i.hq                 ; 2 uses
  %i.hs = fmul float %i.hd, %i.he
  %i.ht = fmul float %i.gp, %i.hs                 ; 2 uses
  %i.hu = fsub float %i.ht, %i.hc                 ; 2 uses
  %i.hv = fsub float %i.hk, %i.hl                 ; 2 uses
  %i.hw = fadd float %i.hc, %i.ht                 ; 2 uses
  %i.hx = fmul float %i.he, %i.he                 ; 2 uses
  %i.hy = fsub float 1.000000e+00, %i.hx
  %i.hz = fmul float %i.go, %i.hy
  %i.ia = fadd float %i.hx, %i.hz                 ; 2 uses
  store float %i.hi, ptr %.sroa.5.0..sroa_idx115.i.i, align 4, !alias.scope !384
  %i.ib = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.hm, i64 0
  %i.ic = insertelement <4 x float> %i.ib, float %i.hn, i64 2
  %i.id = insertelement <4 x float> %i.ic, float %i.hr, i64 3
  store <4 x float> %i.id, ptr %.sroa.7.0..sroa_idx116.i.i, align 4, !alias.scope !384
  store float %i.hu, ptr %.sroa.13.0..sroa_idx120.i.i, align 4, !alias.scope !384
  store float %i.hv, ptr %.sroa.18.0..sroa_idx122.i.i, align 4, !alias.scope !384
  store float %i.hw, ptr %.sroa.19.0..sroa_idx.i.i, align 4, !alias.scope !384
  store float %i.ia, ptr %.sroa.21.0..sroa_idx.i.i, align 4, !alias.scope !384
  store float %i.hb, ptr %i.gq, align 4, !alias.scope !384
  store float %i.hn, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !384
  store float %i.hv, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !384
  store float %i.hi, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !384
  %i.ie = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.hr, i64 0
  %i.if = insertelement <4 x float> %i.ie, float %i.hw, i64 1
  %i.ig = insertelement <4 x float> %i.if, float %i.hm, i64 3
  store <4 x float> %i.ig, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !384
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float %i.hu, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !alias.scope !384
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  store float %i.ia, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !alias.scope !384
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 108
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !384
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx.i.i, align 4, !tbaa !65, !alias.scope !384
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %6, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %6, i64 128, i1 false), !tbaa.struct !382
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_7
begin_hunk_8_@_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.i = load ptr, ptr %5, align 8, !tbaa !59     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !65
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.f:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !59     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !65
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.u = load ptr, ptr %5, align 8, !tbaa !59     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.x = load i64, ptr %i.v, align 8, !tbaa !65
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_EEDcOSA_(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.b = and i64 %i.a, 144115188075855871
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = lshr i64 %i.a, 57
  %i.e = trunc nuw nsw i64 %i.d to i32
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(42) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Cylinder6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt4Disk6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Triangle6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(8) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt13BilinearPatch6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(12) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

declare void @_ZNK4pbrt8Cylinder6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK4pbrt4Disk6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK4pbrt8Triangle6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK4pbrt13BilinearPatch6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

declare void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, ptr noundef nonnull align 4 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(128)) local_unnamed_addr #1

declare void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @_ZN4pbrt9TranslateENS_7Vector3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, <2 x float>, float) local_unnamed_addr #1

declare void @_ZNK4pbrt9Transform8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(128)) local_unnamed_addr #1

declare void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::RNG", align 8         ; 7 uses
  %3 = alloca %"class.pbrt::Transform", align 4   ; 19 uses
  %4 = alloca %"class.pbrt::Sphere", align 8      ; 14 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.pbrt::Shape", align 8       ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 9 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %.val = load i64, ptr %1, align 8, !tbaa !47    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = lshr i64 %.val, 31
  %i.d = xor i64 %i.c, %.val
  %i.e = mul i64 %i.d, 9202493588570546565        ; 2 uses
  %i.f = lshr i64 %i.e, 27
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -9089707755183418291       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h
  %i.k = shl i64 %.val, 1
  %i.l = or disjoint i64 %i.k, 1                  ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !72
  %i.n = add i64 %i.j, %i.l
  %i.o = mul i64 %i.n, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store float 1.000000e+00, ptr %3, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.u, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 4, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 4, !tbaa !17
  %i.ab = add i64 %i.o, %i.l                      ; 2 uses
  %i.ac = mul i64 %i.ab, 6364136223846793005
  %i.ad = add i64 %i.ac, %i.l                     ; 2 uses
  %i.ae = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %i.af = insertelement <2 x i64> %i.ae, i64 %i.ab, i64 1 ; 3 uses
  %i.ag = lshr <2 x i64> %i.af, splat (i64 45)
  %i.ah = lshr <2 x i64> %i.af, splat (i64 27)
  %i.ai = xor <2 x i64> %i.ag, %i.ah
  %i.aj = trunc <2 x i64> %i.ai to <2 x i32>      ; 2 uses
  %i.ak = lshr <2 x i64> %i.af, splat (i64 59)
  %i.al = trunc nuw nsw <2 x i64> %i.ak to <2 x i32>
  %i.am = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.aj, <2 x i32> %i.aj, <2 x i32> %i.al)
  %i.an = uitofp <2 x i32> %i.am to <2 x float>
  %i.ao = fmul nnan <2 x float> %i.an, splat (float f0x2F800000) ; 3 uses
  %i.ap = fcmp olt <2 x float> %i.ao, splat (float f0x3F7FFFFF) ; 2 uses
  %i.aq = extractelement <2 x i1> %i.ap, i64 1
  %i.ar = extractelement <2 x float> %i.ao, i64 1
  %.sroa.speculated.i.i.i.i.i = select i1 %i.aq, float %i.ar, float f0x3F7FFFFF ; 2 uses
  %i.as = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i.i.i.i
  %i.at = fmul nnan float %.sroa.speculated.i.i.i.i.i, 4.000000e+00
  %i.au = fmul nnan float %i.as, 4.000000e+00
  %i.av = fsub float %i.at, %i.au
  %i.aw = fpext float %i.av to double
  %i.ax = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.aw) #29
  %i.ay = fptrunc double %i.ax to float           ; 14 uses
  %i.az = mul i64 %i.ad, 6364136223846793005
  %i.ba = add i64 %i.az, %i.l                     ; 5 uses
  %i.bb = extractelement <2 x i1> %i.ap, i64 0
  %i.bc = extractelement <2 x float> %i.ao, i64 0
  %i.bd = fcmp olt float %i.bc, 5.000000e-01
  %i.be = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bf = fneg float %i.ay
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bg = mul i64 %i.ba, 6364136223846793005
  %i.bh = add i64 %i.bg, %i.l
  %i.bi = lshr i64 %i.ba, 45
  %i.bj = lshr i64 %i.ba, 27
  %i.bk = xor i64 %i.bi, %i.bj
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = lshr i64 %i.ba, 59
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = tail call noundef i32 @llvm.fshr.i32(i32 %i.bl, i32 %i.bl, i32 %i.bn)
  %i.bp = uitofp i32 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x2F800000      ; 2 uses
  %i.br = fcmp olt float %i.bq, f0x3F7FFFFF
  %.sroa.speculated.i17.i.i.i = select i1 %i.br, float %i.bq, float f0x3F7FFFFF ; 2 uses
  %i.bs = fsub nnan float 1.000000e+00, %.sroa.speculated.i17.i.i.i
  %i.bt = fmul float %.sroa.speculated.i17.i.i.i, %i.ay
  %i.bu = fmul float %i.bs, %i.ay
  %i.bv = fsub float %i.bt, %i.bu
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi i64 [ %i.ba, %bb.b ], [ %i.bh, %bb.c ] ; 4 uses
  %i.bx = phi float [ %i.bf, %bb.b ], [ %i.bv, %bb.c ] ; 4 uses
  %i.by = mul i64 %i.bw, 6364136223846793005
  %i.bz = add i64 %i.by, %i.l                     ; 5 uses
  %i.ca = lshr i64 %i.bw, 45
  %i.cb = lshr i64 %i.bw, 27
  %i.cc = xor i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %i.ce = lshr i64 %i.bw, 59
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = tail call noundef i32 @llvm.fshr.i32(i32 %i.cd, i32 %i.cd, i32 %i.cf)
  %i.ch = uitofp i32 %i.cg to float
  %i.ci = fmul nnan float %i.ch, f0x2F800000      ; 2 uses
  %i.cj = fcmp olt float %i.ci, f0x3F7FFFFF
  %.sroa.speculated.i18.i.i.i = select i1 %i.cj, float %i.ci, float f0x3F7FFFFF
  %i.ck = fcmp olt float %.sroa.speculated.i18.i.i.i, 5.000000e-01
  br i1 %i.ck, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cl = mul i64 %i.bz, 6364136223846793005
  %i.cm = add i64 %i.cl, %i.l
  %i.cn = lshr i64 %i.bz, 45
  %i.co = lshr i64 %i.bz, 27
  %i.cp = xor i64 %i.cn, %i.co
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = lshr i64 %i.bz, 59
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = tail call noundef i32 @llvm.fshr.i32(i32 %i.cq, i32 %i.cq, i32 %i.cs)
  %i.cu = uitofp i32 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x2F800000      ; 2 uses
  %i.cw = fcmp olt float %i.cv, f0x3F7FFFFF
  %.sroa.speculated.i19.i.i.i = select i1 %i.cw, float %i.cv, float f0x3F7FFFFF ; 2 uses
  %i.cx = fsub nnan float 1.000000e+00, %.sroa.speculated.i19.i.i.i
  %i.cy = fmul float %.sroa.speculated.i19.i.i.i, %i.ay
  %i.cz = fmul float %i.cx, %i.ay
  %i.da = fsub float %i.cy, %i.cz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.db = phi i64 [ %i.cm, %bb.e ], [ %i.bz, %bb.d ] ; 4 uses
  %i.dc = phi float [ %i.da, %bb.e ], [ %i.ay, %bb.d ] ; 4 uses
  %i.dd = mul i64 %i.db, 6364136223846793005
  %i.de = add i64 %i.dd, %i.l                     ; 5 uses
  store i64 %i.de, ptr %2, align 8, !tbaa !73
  %i.df = lshr i64 %i.db, 45
  %i.dg = lshr i64 %i.db, 27
  %i.dh = xor i64 %i.df, %i.dg
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = lshr i64 %i.db, 59
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = tail call noundef i32 @llvm.fshr.i32(i32 %i.di, i32 %i.di, i32 %i.dk)
  %i.dm = uitofp i32 %i.dl to float
  %i.dn = fmul nnan float %i.dm, f0x2F800000      ; 2 uses
  %i.do = fcmp olt float %i.dn, f0x3F7FFFFF
  %.sroa.speculated.i20.i.i.i = select i1 %i.do, float %i.dn, float f0x3F7FFFFF
  %i.dp = fcmp olt float %.sroa.speculated.i20.i.i.i, 5.000000e-01
  br i1 %i.dp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dq = mul i64 %i.de, 6364136223846793005
  %i.dr = add i64 %i.dq, %i.l
  store i64 %i.dr, ptr %2, align 8, !tbaa !73
  %i.ds = lshr i64 %i.de, 45
  %i.dt = lshr i64 %i.de, 27
  %i.du = xor i64 %i.ds, %i.dt
  %i.dv = trunc i64 %i.du to i32                  ; 2 uses
  %i.dw = lshr i64 %i.de, 59
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = tail call noundef i32 @llvm.fshr.i32(i32 %i.dv, i32 %i.dv, i32 %i.dx)
  %i.dz = uitofp i32 %i.dy to float
  %i.ea = fmul nnan float %i.dz, f0x2F800000      ; 2 uses
  %i.eb = fcmp olt float %i.ea, f0x3F7FFFFF
  %.sroa.speculated.i21.i.i.i = select i1 %i.eb, float %i.ea, float f0x3F7FFFFF
  %i.ec = fmul nnan float %.sroa.speculated.i21.i.i.i, 3.600000e+02
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ed = phi float [ %i.ec, %bb.g ], [ 3.600000e+02, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store float %i.ay, ptr %4, align 8, !tbaa !141
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ef = fcmp olt float %i.dc, %i.bx
  %.sroa.speculated35.i.i.i.i = select i1 %i.ef, float %i.dc, float %i.bx ; 4 uses
  %i.eg = fneg float %i.ay                        ; 4 uses
  %i.eh = fcmp olt float %.sroa.speculated35.i.i.i.i, %i.eg
  %i.ei = fcmp ogt float %.sroa.speculated35.i.i.i.i, %i.ay
  %..i12.i.i.i.i = select i1 %i.ei, float %i.ay, float %.sroa.speculated35.i.i.i.i
  %.0.i.i.i.i.i = select i1 %i.eh, float %i.eg, float %..i12.i.i.i.i
  store float %.0.i.i.i.i.i, ptr %i.ee, align 4, !tbaa !142
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = fcmp olt float %i.bx, %i.dc
  %.sroa.speculated32.i.i.i.i = select i1 %i.ek, float %i.dc, float %i.bx ; 4 uses
  %i.el = fcmp olt float %.sroa.speculated32.i.i.i.i, %i.eg
  %i.em = fcmp ogt float %.sroa.speculated32.i.i.i.i, %i.ay
  %..i14.i.i.i.i = select i1 %i.em, float %i.ay, float %.sroa.speculated32.i.i.i.i
  %.0.i15.i.i.i.i = select i1 %i.el, float %i.eg, float %..i14.i.i.i.i
  store float %.0.i15.i.i.i.i, ptr %i.ej, align 8, !tbaa !143
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.eo = fdiv float %.sroa.speculated35.i.i.i.i, %i.ay ; 3 uses
  %i.ep = fcmp olt float %i.eo, -1.000000e+00
  %i.eq = fcmp ogt float %i.eo, 1.000000e+00
  %..i17.i.i.i.i = select i1 %i.eq, float 1.000000e+00, float %i.eo
  %.0.i18.i.i.i.i = select i1 %i.ep, float -1.000000e+00, float %..i17.i.i.i.i
  %i.er = tail call noundef float @acosf(float noundef %.0.i18.i.i.i.i) #29
  store float %i.er, ptr %i.en, align 4, !tbaa !144
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.et = fdiv float %.sroa.speculated32.i.i.i.i, %i.ay ; 3 uses
  %i.eu = fcmp olt float %i.et, -1.000000e+00
  %i.ev = fcmp ogt float %i.et, 1.000000e+00
  %..i20.i.i.i.i = select i1 %i.ev, float 1.000000e+00, float %i.et
  %.0.i21.i.i.i.i = select i1 %i.eu, float -1.000000e+00, float %..i20.i.i.i.i
  %i.ew = tail call noundef float @acosf(float noundef %.0.i21.i.i.i.i) #29
  store float %i.ew, ptr %i.es, align 8, !tbaa !145
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ey = fcmp ogt float %i.ed, 3.600000e+02
  %..i22.i.i.i.i = select i1 %i.ey, float 3.600000e+02, float %i.ed
  %i.ez = fmul nnan float %..i22.i.i.i.i, f0x3C8EFA35
  store float %i.ez, ptr %i.ex, align 4, !tbaa !146
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.fa, align 8, !tbaa !147
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.fb, align 8, !tbaa !148
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.fc, align 8, !tbaa !149
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 41
  %i.fe = call noundef zeroext i1 @_ZNK4pbrt9Transform15SwapsHandednessEv(ptr noundef nonnull align 4 dereferenceable(128) %3)
  %i.ff = zext i1 %i.fe to i8
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.fg = ptrtoint ptr %4 to i64
  %i.fh = or i64 %i.fg, 144115188075855872
  store i64 %i.fh, ptr %6, align 8, !tbaa !68
  %i.fi = call fastcc noundef i32 @_ZL21TestReintersectConvexN4pbrt5ShapeERNS_3RNGE(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %2)
  store i32 %i.fi, ptr %i.b, align 4, !tbaa !40
  call void @_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.66, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.fj = load i8, ptr %5, align 8, !tbaa !52, !range !53, !noundef !54
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.fl = load ptr, ptr %7, align 8, !tbaa !62
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, i64 noundef %.val)
          to label %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i:     ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !59
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i: ; preds = %bb.k, %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i
  %i.fr = phi ptr [ %i.fq, %bb.k ], [ @.str.48, %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 412, ptr noundef %i.fr)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.fs = load ptr, ptr %7, align 8, !tbaa !62
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ft = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i unwind label %bb.q

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  br i1 %i.ft, label %bb.o, label %_ZN7testing7MessageD2Ev.exit.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i.i.i
  %i.fu = load ptr, ptr %7, align 8, !tbaa !62    ; 3 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_ZN7testing7MessageD2Ev.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(128) %i.fu) #29, !inline_history !385
  br label %_ZN7testing7MessageD2Ev.exit.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #32
  unreachable

_ZN7testing7MessageD2Ev.exit.i.i.i:               ; preds = %bb.p, %bb.o, %.noexc.i.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.y

bb.r:                                             ; preds = %bb.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %bb.j
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ge, %bb.u ], [ %i.gd, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.v ], [ %i.gc, %bb.s ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.w ], [ %i.gb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn.pn.i.i.i

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i.i.i, %bb.h
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !55
  %.not.i.i.i22.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i22.i.i.i, label %"_ZSt10__invoke_rIvRZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i23.i.i.i unwind label %bb.ac

.noexc.i.i23.i.i.i:                               ; preds = %bb.z
  br i1 %i.gh, label %bb.aa, label %"_ZSt10__invoke_rIvRZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

bb.aa:                                            ; preds = %.noexc.i.i23.i.i.i
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !55 ; 4 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %"_ZSt10__invoke_rIvRZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !59 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !65
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 32) #31
  br label %"_ZSt10__invoke_rIvRZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

bb.ac:                                            ; preds = %bb.z
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #32
  unreachable

"_ZSt10__invoke_rIvRZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit": ; preds = %bb.y, %.noexc.i.i23.i.i.i, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !199
  br label %"_ZNSt14_Function_base13_Base_managerIZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN30PartialSphere_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::RNG", align 8         ; 9 uses
  %3 = alloca %"class.pbrt::Transform", align 4   ; 19 uses
  %4 = alloca %"class.pbrt::Cylinder", align 8    ; 11 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.pbrt::Shape", align 8       ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 9 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %10 = alloca %"class.pbrt::Transform", align 4  ; 6 uses
  %11 = alloca %"class.pbrt::Cylinder", align 8   ; 11 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.pbrt::Shape", align 8      ; 4 uses
  %14 = alloca %"class.testing::Message", align 8 ; 9 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %.val = load i64, ptr %1, align 8, !tbaa !47    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.e = lshr i64 %.val, 31
  %i.f = xor i64 %i.e, %.val
  %i.g = mul i64 %i.f, 9202493588570546565        ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -9089707755183418291       ; 2 uses
  %i.k = lshr i64 %i.j, 33
  %i.l = xor i64 %i.k, %i.j
  %i.m = shl i64 %.val, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !72
  %i.p = add i64 %i.l, %i.n
  %i.q = mul i64 %i.p, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store float 1.000000e+00, ptr %3, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.w, align 4, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 4, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !17
  %i.ad = add i64 %i.q, %i.n                      ; 2 uses
  %i.ae = mul i64 %i.ad, 6364136223846793005
  %i.af = add i64 %i.ae, %i.n                     ; 2 uses
  %i.ag = mul i64 %i.af, 6364136223846793005
  %i.ah = add i64 %i.ag, %i.n                     ; 2 uses
  %i.ai = mul i64 %i.ah, 6364136223846793005
  %i.aj = add i64 %i.ai, %i.n                     ; 2 uses
  %i.ak = mul i64 %i.aj, 6364136223846793005
  %i.al = add i64 %i.ak, %i.n                     ; 2 uses
  %i.am = mul i64 %i.al, 6364136223846793005
  %i.an = add i64 %i.am, %i.n                     ; 2 uses
  %i.ao = insertelement <4 x i64> poison, i64 %i.an, i64 0
  %i.ap = insertelement <4 x i64> %i.ao, i64 %i.aj, i64 1
  %i.aq = insertelement <4 x i64> %i.ap, i64 %i.af, i64 2
  %i.ar = insertelement <4 x i64> %i.aq, i64 %i.ad, i64 3 ; 3 uses
  %i.as = lshr <4 x i64> %i.ar, splat (i64 45)
  %i.at = lshr <4 x i64> %i.ar, splat (i64 27)
  %i.au = xor <4 x i64> %i.as, %i.at
  %i.av = trunc <4 x i64> %i.au to <4 x i32>      ; 2 uses
  %i.aw = lshr <4 x i64> %i.ar, splat (i64 59)
  %i.ax = trunc nuw nsw <4 x i64> %i.aw to <4 x i32>
  %i.ay = tail call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.av, <4 x i32> %i.av, <4 x i32> %i.ax)
  %i.az = uitofp <4 x i32> %i.ay to <4 x float>
  %i.ba = fmul nnan <4 x float> %i.az, splat (float f0x2F800000) ; 4 uses
  %i.bb = fcmp olt <4 x float> %i.ba, splat (float f0x3F7FFFFF) ; 3 uses
  %i.bc = extractelement <4 x i1> %i.bb, i64 3
  %i.bd = extractelement <4 x float> %i.ba, i64 3
  %.sroa.speculated.i.i.i.i.i = select i1 %i.bc, float %i.bd, float f0x3F7FFFFF ; 2 uses
  %i.be = fsub nnan float 1.000000e+00, %.sroa.speculated.i.i.i.i.i
  %i.bf = fmul nnan float %.sroa.speculated.i.i.i.i.i, 4.000000e+00
  %i.bg = fmul nnan float %i.be, 4.000000e+00
  %i.bh = fsub float %i.bf, %i.bg
  %i.bi = fpext float %i.bh to double
  %i.bj = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.bi) #29
  %i.bk = fptrunc double %i.bj to float           ; 2 uses
  %i.bl = shufflevector <4 x i1> %i.bb, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.bm = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bn = select <2 x i1> %i.bl, <2 x float> %i.bm, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.bo = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bn
  %i.bp = fmul nnan <2 x float> %i.bn, splat (float 4.000000e+00)
  %i.bq = fmul nnan <2 x float> %i.bo, splat (float 4.000000e+00)
  %i.br = fsub <2 x float> %i.bp, %i.bq
  %i.bs = fpext <2 x float> %i.br to <2 x double> ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 1
  %i.bu = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.bt) #29
  %i.bv = extractelement <2 x double> %i.bs, i64 0
  %i.bw = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.bv) #29
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bu, i64 1
  %i.bz = fptrunc <2 x double> %i.by to <2 x float> ; 2 uses
  %i.ca = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.cb = insertelement <2 x i64> %i.ca, i64 %i.ah, i64 1 ; 3 uses
  %i.cc = lshr <2 x i64> %i.cb, splat (i64 45)
  %i.cd = lshr <2 x i64> %i.cb, splat (i64 27)
  %i.ce = xor <2 x i64> %i.cc, %i.cd
  %i.cf = trunc <2 x i64> %i.ce to <2 x i32>      ; 2 uses
  %i.cg = lshr <2 x i64> %i.cb, splat (i64 59)
  %i.ch = trunc nuw nsw <2 x i64> %i.cg to <2 x i32>
  %i.ci = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cf, <2 x i32> %i.cf, <2 x i32> %i.ch)
  %i.cj = uitofp <2 x i32> %i.ci to <2 x float>
  %i.ck = fmul nnan <2 x float> %i.cj, splat (float f0x2F800000) ; 2 uses
  %i.cl = fcmp olt <2 x float> %i.ck, splat (float f0x3F7FFFFF)
  %i.cm = select <2 x i1> %i.cl, <2 x float> %i.ck, <2 x float> splat (float f0x3F7FFFFF)
  %i.cn = fcmp olt <2 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fneg <2 x float> %i.bz
  %i.cp = select <2 x i1> %i.cn, <2 x float> %i.co, <2 x float> %i.bz ; 4 uses
  %i.cq = mul i64 %i.an, 6364136223846793005
  %i.cr = add i64 %i.cq, %i.n                     ; 5 uses
  store i64 %i.cr, ptr %2, align 8, !tbaa !73
  %i.cs = extractelement <4 x i1> %i.bb, i64 0
  %i.ct = extractelement <4 x float> %i.ba, i64 0
  %i.cu = fcmp olt float %i.ct, 5.000000e-01
  %i.cv = select i1 %i.cs, i1 %i.cu, i1 false
  br i1 %i.cv, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cw = mul i64 %i.cr, 6364136223846793005
  %i.cx = add i64 %i.cw, %i.n
  store i64 %i.cx, ptr %2, align 8, !tbaa !73
  %i.cy = lshr i64 %i.cr, 45
  %i.cz = lshr i64 %i.cr, 27
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = lshr i64 %i.cr, 59
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = tail call noundef i32 @llvm.fshr.i32(i32 %i.db, i32 %i.db, i32 %i.dd)
  %i.df = uitofp i32 %i.de to float
  %i.dg = fmul nnan float %i.df, f0x2F800000      ; 2 uses
  %i.dh = fcmp olt float %i.dg, f0x3F7FFFFF
  %.sroa.speculated.i28.i.i.i = select i1 %i.dh, float %i.dg, float f0x3F7FFFFF
  %i.di = fmul nnan float %.sroa.speculated.i28.i.i.i, 3.600000e+02
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.dj = phi float [ %i.di, %bb.b ], [ 3.600000e+02, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %3, ptr %4, align 8, !tbaa !177
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.dk, align 8, !tbaa !188
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.dl, align 8, !tbaa !178
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.dn = call noundef zeroext i1 @_ZNK4pbrt9Transform15SwapsHandednessEv(ptr noundef nonnull align 4 dereferenceable(128) %3)
  %i.do = zext i1 %i.dn to i8
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !190
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.bk, ptr %i.dp, align 4, !tbaa !176
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dr = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = fcmp olt <2 x float> %i.cp, %i.dr
  %i.dt = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = select <2 x i1> %i.ds, <2 x float> %i.dt, <2 x float> %i.du ; 2 uses
  store <2 x float> %i.dv, ptr %i.dq, align 8, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dx = fcmp ogt float %i.dj, 3.600000e+02
  %..i7.i.i.i.i = select i1 %i.dx, float 3.600000e+02, float %i.dj
  %i.dy = fmul nnan float %..i7.i.i.i.i, f0x3C8EFA35 ; 2 uses
  store float %i.dy, ptr %i.dw, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.dz = ptrtoint ptr %4 to i64
  %i.ea = or i64 %i.dz, 288230376151711744
  store i64 %i.ea, ptr %6, align 8, !tbaa !68
  %i.eb = call fastcc noundef i32 @_ZL21TestReintersectConvexN4pbrt5ShapeERNS_3RNGE(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %2)
  store i32 %i.eb, ptr %i.b, align 4, !tbaa !40
  call void @_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.69, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ec = load i8, ptr %5, align 8, !tbaa !52, !range !53, !noundef !54
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ee = load ptr, ptr %7, align 8, !tbaa !62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i64 noundef %.val)
          to label %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i:     ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !59
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i: ; preds = %bb.f, %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i
  %i.ek = phi ptr [ %i.ej, %bb.f ], [ @.str.48, %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 426, ptr noundef %i.ek)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.el = load ptr, ptr %7, align 8, !tbaa !62
  %.not.i.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i unwind label %bb.l

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  br i1 %i.em, label %bb.j, label %_ZN7testing7MessageD2Ev.exit.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i.i.i
  %i.en = load ptr, ptr %7, align 8, !tbaa !62    ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_ZN7testing7MessageD2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.en) #29, !inline_history !386
  br label %_ZN7testing7MessageD2Ev.exit.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #32
  unreachable

_ZN7testing7MessageD2Ev.exit.i.i.i:               ; preds = %bb.k, %bb.j, %.noexc.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.t

bb.m:                                             ; preds = %bb.d
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.e
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ex, %bb.p ], [ %i.ew, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.q ], [ %i.ev, %bb.n ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.r ], [ %i.eu, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
end_hunk_8
