Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingRGBCurve?download=true
inline.NumInlined: 345
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZSt10_ConstructIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrINS0_19GradingBSplineCurveEES6_S6_S6_EEvPT_DpOT0_:bb.a
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i15 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i15, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.r ], [ %i.ay, %bb.s ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.t, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !20  ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i16, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bb, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !25
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #20, !inline_history !52
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #20, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

bb.w:                                             ; preds = %bb.u
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i17 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i17, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

bb.y:                                             ; preds = %bb.w
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i19 = phi i32 [ %i.be, %bb.x ], [ %i.bo, %bb.y ]
  %i.bp = icmp eq i32 %.0.i.i.i.i19, 1
  br i1 %i.bp, label %bb.z, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, !prof !29

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !20  ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.br, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !25
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #20, !inline_history !52
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #20, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25

bb.ac:                                            ; preds = %bb.aa
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i22 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i22, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.ae:                                            ; preds = %bb.ac
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i24 = phi i32 [ %i.bu, %bb.ad ], [ %i.ce, %bb.ae ]
  %i.cf = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.cf, label %bb.af, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, !prof !29

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !20  ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ch, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !25
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #20, !inline_history !52
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #20, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

bb.ai:                                            ; preds = %bb.ag
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i27 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i27, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.ak:                                            ; preds = %bb.ai
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i29 = phi i32 [ %i.ck, %bb.aj ], [ %i.cu, %bb.ak ]
  %i.cv = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.cv, label %bb.al, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, !prof !29

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.am:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveEEC2IS1_vEERKS_IT_E.exit14
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %i.cw
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_GradingRGBCurve.cpp() #17 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE, i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %__cxx_global_var_init.exit unwind label %bb.b ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE, align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i4.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.c, %bb.b
  %.sink13.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE, i64 16), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE, i64 16), %bb.c ]
  %.sink12 = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.j, %bb.c ]
  %.sink13 = load ptr, ptr %.sink13.in, align 8, !tbaa !12
  %i.d = ptrtoint ptr %.sink13 to i64
  %i.e = ptrtoint ptr %.sink12 to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink12, i64 noundef %i.f) #19
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.c, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.j, %bb.c ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %bb.a
  store ptr %i.a, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE, i64 16), align 8, !tbaa !12
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.a, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.8.0..sroa_idx.i, align 4
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE, i64 8), align 8, !tbaa !67
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE, i8 0, i64 24, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %__cxx_global_var_init.1.exit unwind label %bb.c ; 4 uses

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE, align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4.i.i1, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.1.exit:                     ; preds = %__cxx_global_var_init.exit
  store ptr %i.i, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE, i64 16), align 8, !tbaa !12
  store <4 x float> <float -7.000000e+00, float -7.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.i, align 4
  %.sroa.8.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x float> splat (float 7.000000e+00), ptr %.sroa.8.0..sroa_idx.i6, align 4
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE, i64 8), align 8, !tbaa !67
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingRGBCurveImpl7DefaultE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE)
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingRGBCurveImpl7DefaultE, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(60) @_ZN16OpenColorIO_v2_519GradingRGBCurveImpl10DefaultLinE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE)
  %i.o = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_519GradingRGBCurveImpl10DefaultLinE, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #8 = { nounwind memory(none) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 _ZTSN16OpenColorIO_v2_519GradingControlPointE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 float", !11, i64 0}
!18 = !{!16, !17, i64 16}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!24, !5, i64 8}
!24 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!25 = !{!24, !5, i64 12}
!26 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!27 = !{!6, !6, i64 0}
!28 = !{!5, !5, i64 0}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0, !21, i64 8}
!33 = !{!"p1 _ZTSN16OpenColorIO_v2_519GradingBSplineCurveE", !11, i64 0}
!34 = !{!35, !33, i64 0}
!35 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0, !21, i64 8}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0, !21, i64 8}
!38 = !{!"p1 _ZTSN16OpenColorIO_v2_515GradingRGBCurveE", !11, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrINS0_19GradingBSplineCurveEES6_S6_S6_EES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!41 = distinct !{!41, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrINS0_19GradingBSplineCurveEES6_S6_S6_EES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!42 = distinct !{null, null, null, null}
!43 = distinct !{null, null, null, null, null}
!44 = !{!45, !38, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0, !21, i64 8}
!46 = distinct !{null, null, null}
!47 = !{!48, !50, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !51, i64 8, !6, i64 16}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!50 = !{!"p1 omnipotent char", !11, i64 0}
!51 = !{!"long", !6, i64 0}
!52 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!53 = distinct !{null, null}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingRGBCurveImplEJRNS0_12GradingStyleEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!56 = distinct !{!56, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingRGBCurveImplEJRNS0_12GradingStyleEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrIKNS0_15GradingRGBCurveEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!59 = distinct !{!59, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrIKNS0_15GradingRGBCurveEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrIKNS0_19GradingBSplineCurveEES7_S7_S7_EES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!62 = distinct !{!62, !"_ZSt11make_sharedIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrIKNS0_19GradingBSplineCurveEES7_S7_S7_EES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = !{!66, !50, i64 8}
!66 = !{!"_ZTSSt9type_info", !50, i64 8}
!67 = !{!9, !10, i64 8}
end_hunk_0
