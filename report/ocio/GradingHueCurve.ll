Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingHueCurve?download=true
inline.NumInlined: 465
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt10_ConstructIN16OpenColorIO_v2_519GradingHueCurveImplEJRSt10shared_ptrIKNS0_19GradingBSplineCurveEES6_S6_S6_S6_S6_S6_S6_EEvPT_DpOT0_:bb.a
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #24
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.bd
  %i.ew = load ptr, ptr %i.s, align 8, !tbaa !28  ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.ex, align 8, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !31
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #24, !inline_history !4
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  tail call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #24, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

bb.bg:                                            ; preds = %bb.be
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i53 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i53, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.bi:                                            ; preds = %bb.bg
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i55 = phi i32 [ %i.fa, %bb.bh ], [ %i.fk, %bb.bi ]
  %i.fl = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.fl, label %bb.bj, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, !prof !34

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #24
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.bj
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !28  ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 4 uses
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 4294967297
  %i.fq = trunc i64 %i.fo to i32                  ; 2 uses
  br i1 %i.fp, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.fn, align 8, !tbaa !30
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fr, align 4, !tbaa !31
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !19
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #24, !inline_history !4
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !19
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  tail call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #24, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

bb.bm:                                            ; preds = %bb.bk
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i58 = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i58, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fz = add nsw i32 %i.fq, -1
  store i32 %i.fz, ptr %i.fn, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.bo:                                            ; preds = %bb.bm
  %i.ga = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i60 = phi i32 [ %i.fq, %bb.bn ], [ %i.ga, %bb.bo ]
  %i.gb = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.gb, label %bb.bp, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, !prof !34

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #24
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.bp
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !28  ; 8 uses
  %.not.i.i62 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i62, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.gd, align 8, !tbaa !30
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !31
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #24, !inline_history !4
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !19
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  tail call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #24, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

bb.bs:                                            ; preds = %bb.bq
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i63 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i63, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.bu:                                            ; preds = %bb.bs
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i65 = phi i32 [ %i.gg, %bb.bt ], [ %i.gq, %bb.bu ]
  %i.gr = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %i.gr, label %bb.bv, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, !prof !34

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #24
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %bb.bv
  ret void

bb.bw:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveEEC2ERKS3_.exit30
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #24
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #24
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #24
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #24
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #24
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #24
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #24
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  resume { ptr, i32 } %i.gs
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_GradingHueCurve.cpp() #20 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueHueCtrlE, i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %__cxx_global_var_init.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueHueCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i4.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink81.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumLumCtrlE, i64 16), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatLumCtrlE, i64 16), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatSatCtrlE, i64 16), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumSatLinCtrlE, i64 16), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumSatCtrlE, i64 16), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116DefaultHueFxCtrlE, i64 16), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, i64 16), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueHueCtrlE, i64 16), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumLumLinCtrlE, i64 16), %bb.j ]
  %.sink80 = phi ptr [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ], [ %i.p, %bb.d ], [ %i.k, %bb.c ], [ %i.c, %bb.b ], [ %i.at, %bb.j ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ai, %bb.h ], [ %i.ad, %bb.g ], [ %i.y, %bb.f ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %i.b, %bb.b ], [ %i.as, %bb.j ]
  %.sink81 = load ptr, ptr %.sink81.in, align 8, !tbaa !17
  %i.d = ptrtoint ptr %.sink81 to i64
  %i.e = ptrtoint ptr %.sink80 to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink80, i64 noundef %i.f) #23
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.b, %bb.b ], [ %i.j, %bb.c ], [ %i.o, %bb.d ], [ %i.t, %bb.e ], [ %i.y, %bb.f ], [ %i.ad, %bb.g ], [ %i.ai, %bb.h ], [ %i.as, %bb.j ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %bb.a
  store ptr %i.a, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueHueCtrlE, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueHueCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float f0x3E2AAAAB, float f0x3E2AAAAB>, ptr %i.a, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x float> <float f0x3EAAAAAB, float f0x3EAAAAAB, float 5.000000e-01, float 5.000000e-01>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !89
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x float> <float f0x3F2AAAAB, float f0x3F2AAAAB, float f0x3F555555, float f0x3F555555>, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !89
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueHueCtrlE, i64 8), align 8, !tbaa !90
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueHueCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, i8 0, i64 24, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %__cxx_global_var_init.1.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4.i.i1, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.1.exit:                     ; preds = %__cxx_global_var_init.exit
  store ptr %i.i, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float f0x3E2AAAAB, float 1.000000e+00>, ptr %i.i, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x float> <float f0x3EAAAAAB, float 1.000000e+00, float 5.000000e-01, float 1.000000e+00>, ptr %.sroa.8.0..sroa_idx.i6, align 4, !tbaa !89
  %.sroa.12.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store <4 x float> <float f0x3F2AAAAB, float 1.000000e+00, float f0x3F555555, float 1.000000e+00>, ptr %.sroa.12.0..sroa_idx.i10, align 4, !tbaa !89
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, i64 8), align 8, !tbaa !90
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_116DefaultHueFxCtrlE, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %__cxx_global_var_init.2.exit unwind label %bb.d ; 5 uses

bb.d:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116DefaultHueFxCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i.i4.i.i14, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.2.exit:                     ; preds = %__cxx_global_var_init.1.exit
  store ptr %i.n, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116DefaultHueFxCtrlE, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116DefaultHueFxCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float f0x3E2AAAAB, float 0.000000e+00>, ptr %i.n, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> <float f0x3EAAAAAB, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00>, ptr %.sroa.8.0..sroa_idx.i19, align 4, !tbaa !89
  %.sroa.12.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store <4 x float> <float f0x3F2AAAAB, float 0.000000e+00, float f0x3F555555, float 0.000000e+00>, ptr %.sroa.12.0..sroa_idx.i23, align 4, !tbaa !89
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116DefaultHueFxCtrlE, i64 8), align 8, !tbaa !90
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_116DefaultHueFxCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumSatCtrlE, i8 0, i64 24, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %__cxx_global_var_init.3.exit unwind label %bb.e ; 4 uses

bb.e:                                             ; preds = %__cxx_global_var_init.2.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumSatCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i27 = icmp eq ptr %i.u, null
  br i1 %.not.i.i4.i.i27, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.3.exit:                     ; preds = %__cxx_global_var_init.2.exit
  store ptr %i.s, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumSatCtrlE, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumSatCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 1.000000e+00>, ptr %i.s, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.8.0..sroa_idx.i32, align 4, !tbaa !89
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumSatCtrlE, i64 8), align 8, !tbaa !90
  %i.w = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumSatCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumSatLinCtrlE, i8 0, i64 24, i1 false)
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %__cxx_global_var_init.4.exit unwind label %bb.f ; 4 uses

bb.f:                                             ; preds = %__cxx_global_var_init.3.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumSatLinCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i34 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4.i.i34, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.4.exit:                     ; preds = %__cxx_global_var_init.3.exit
  store ptr %i.x, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumSatLinCtrlE, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumSatLinCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float -7.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.x, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x float> <float 7.000000e+00, float 1.000000e+00>, ptr %.sroa.8.0..sroa_idx.i39, align 4, !tbaa !89
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumSatLinCtrlE, i64 8), align 8, !tbaa !90
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumSatLinCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatSatCtrlE, i8 0, i64 24, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %__cxx_global_var_init.5.exit unwind label %bb.g ; 4 uses

bb.g:                                             ; preds = %__cxx_global_var_init.4.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatSatCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i41 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i.i41, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.5.exit:                     ; preds = %__cxx_global_var_init.4.exit
  store ptr %i.ac, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatSatCtrlE, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatSatCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.ac, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.8.0..sroa_idx.i46, align 4, !tbaa !89
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatSatCtrlE, i64 8), align 8, !tbaa !90
  %i.ag = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatSatCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatLumCtrlE, i8 0, i64 24, i1 false)
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %__cxx_global_var_init.6.exit unwind label %bb.h ; 4 uses

bb.h:                                             ; preds = %__cxx_global_var_init.5.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatLumCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i48 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i4.i.i48, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.6.exit:                     ; preds = %__cxx_global_var_init.5.exit
  store ptr %i.ah, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatLumCtrlE, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatLumCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 1.000000e+00>, ptr %i.ah, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.8.0..sroa_idx.i53, align 4, !tbaa !89
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatLumCtrlE, i64 8), align 8, !tbaa !90
  %i.al = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatLumCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumLumCtrlE, i8 0, i64 24, i1 false)
  %i.am = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %__cxx_global_var_init.7.exit unwind label %bb.i ; 4 uses

bb.i:                                             ; preds = %__cxx_global_var_init.6.exit
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumLumCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i55 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i4.i.i55, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.7.exit:                     ; preds = %__cxx_global_var_init.6.exit
  store ptr %i.am, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumLumCtrlE, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumLumCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.am, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.8.0..sroa_idx.i60, align 4, !tbaa !89
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumLumCtrlE, i64 8), align 8, !tbaa !90
  %i.aq = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumLumCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumLumLinCtrlE, i8 0, i64 24, i1 false)
  %i.ar = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %__cxx_global_var_init.8.exit unwind label %bb.j ; 4 uses

bb.j:                                             ; preds = %__cxx_global_var_init.7.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumLumLinCtrlE, align 8, !tbaa !16 ; 2 uses
  %.not.i.i4.i.i62 = icmp eq ptr %i.at, null
  br i1 %.not.i.i4.i.i62, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.8.exit:                     ; preds = %__cxx_global_var_init.7.exit
  store ptr %i.ar, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumLumLinCtrlE, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumLumLinCtrlE, i64 16), align 8, !tbaa !17
  store <4 x float> <float -7.000000e+00, float -7.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ar, align 4, !tbaa !89
  %.sroa.8.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x float> splat (float 7.000000e+00), ptr %.sroa.8.0..sroa_idx.i67, align 4, !tbaa !89
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumLumLinCtrlE, i64 8), align 8, !tbaa !90
  %i.av = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumLumLinCtrlE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueHueE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueHueCtrlE, i32 noundef 2)
  %i.aw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueHueE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueSatE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, i32 noundef 3)
  %i.ax = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueSatE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueLumE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultHueSatCtrlE, i32 noundef 3)
  %i.ay = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueLumE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl12DefaultHueFxE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_116DefaultHueFxCtrlE, i32 noundef 4)
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl12DefaultHueFxE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultLumSatE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumSatCtrlE, i32 noundef 5)
  %i.ba = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultLumSatE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultLumSatLinE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumSatLinCtrlE, i32 noundef 5)
  %i.bb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultLumSatLinE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultSatSatE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatSatCtrlE, i32 noundef 1)
  %i.bc = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultSatSatE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultSatLumE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultSatLumCtrlE, i32 noundef 5)
  %i.bd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultSatLumE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultLumLumE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_117DefaultLumLumCtrlE, i32 noundef 1)
  %i.be = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultLumLumE, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultLumLumLinE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_120DefaultLumLumLinCtrlE, i32 noundef 1)
  %i.bf = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultLumLumLinE, ptr nonnull @__dso_handle) #24 ; 0 uses
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueHueE, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE, align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueSatE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE, i64 8), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueLumE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE, i64 16), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultLumSatLinE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE, i64 24), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultSatSatE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE, i64 32), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultLumLumLinE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE, i64 40), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultSatLumE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE, i64 48), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl12DefaultHueFxE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE, i64 56), align 8
  %i.bg = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE) ; 0 uses
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueHueE, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE, align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueSatE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE, i64 8), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultHueLumE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE, i64 16), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultLumSatE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE, i64 24), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultSatSatE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE, i64 32), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultLumLumE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE, i64 40), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultSatLumE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE, i64 48), align 8
  store ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl12DefaultHueFxE, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE, i64 56), align 8
  %i.bh = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #7 = { nounwind memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null, null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{null, null}
!4 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN16OpenColorIO_v2_519GradingControlPointE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 16}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSN16OpenColorIO_v2_515GradingHueCurveE"}
!21 = !{!"bool", !9, i64 0}
!22 = !{!"_ZTSSt5arrayISt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEELm8EE", !9, i64 0}
!23 = !{!"_ZTSN16OpenColorIO_v2_519GradingHueCurveImplE", !20, i64 0, !21, i64 8, !22, i64 16}
!24 = !{!23, !21, i64 8}
!25 = !{!13, !13, i64 0}
!26 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!27 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!30 = !{!29, !10, i64 8}
!31 = !{!29, !10, i64 12}
!32 = !{!9, !9, i64 0}
!33 = !{!10, !10, i64 0}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 _ZTSN16OpenColorIO_v2_519GradingBSplineCurveE", !13, i64 0}
!37 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !27, i64 8}
!38 = !{!37, !36, i64 0}
!39 = !{!"p1 _ZTSN16OpenColorIO_v2_515GradingHueCurveE", !13, i64 0}
!40 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !27, i64 8}
!41 = !{!40, !36, i64 0}
!42 = !{!"p1 _ZTSN16OpenColorIO_v2_519GradingHueCurveImplE", !13, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !27, i64 8}
!47 = !{!46, !39, i64 0}
!48 = !{!"p1 omnipotent char", !13, i64 0}
!49 = !{!"p1 float", !13, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!50, !49, i64 0}
!52 = !{!50, !49, i64 16}
!53 = distinct !{!53, !35}
!54 = !{!"p1 _ZTSN16OpenColorIO_v2_523GradingBSplineCurveImplE", !13, i64 0}
!55 = !{!"_ZTSSt17reference_wrapperIKN16OpenColorIO_v2_523GradingBSplineCurveImplEE", !54, i64 0}
!56 = !{!55, !54, i64 0}
!57 = distinct !{!57, !35}
!58 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !27, i64 8}
!59 = !{!58, !39, i64 0}
!60 = distinct !{!60, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingHueCurveImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!61 = distinct !{!61, !60, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingHueCurveImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!62 = distinct !{null, null, null, null}
!63 = distinct !{null, null, null, null, null}
!64 = distinct !{!64, !35}
!65 = !{!61}
!66 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_519GradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !27, i64 8}
!67 = !{!66, !42, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!69 = !{!"long", !9, i64 0}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0, !69, i64 8, !9, i64 16}
!71 = !{!70, !48, i64 0}
!72 = distinct !{!72, !35}
!73 = distinct !{!73, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingHueCurveImplEJRNS0_12GradingStyleEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!74 = distinct !{!74, !73, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingHueCurveImplEJRNS0_12GradingStyleEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!75 = !{!74}
!76 = distinct !{!76, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingHueCurveImplEJRKSt10shared_ptrIKNS0_15GradingHueCurveEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!77 = distinct !{!77, !76, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingHueCurveImplEJRKSt10shared_ptrIKNS0_15GradingHueCurveEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!78 = !{!77}
!79 = distinct !{!79, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingHueCurveImplEJRSt10shared_ptrIKNS0_19GradingBSplineCurveEES6_S6_S6_S6_S6_S6_S6_EES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!80 = distinct !{!80, !79, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingHueCurveImplEJRSt10shared_ptrIKNS0_19GradingBSplineCurveEES6_S6_S6_S6_S6_S6_S6_EES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!81 = !{!80}
!82 = distinct !{!82, !35}
!83 = !{ptr @_ZN16OpenColorIO_v2_519GradingHueCurveImplD2Ev}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = !{!"_ZTSSt9type_info", !48, i64 8}
!87 = !{!86, !48, i64 8}
!88 = !{!"float", !9, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!15, !14, i64 8}
end_hunk_0
