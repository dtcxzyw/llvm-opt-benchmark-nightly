inline.NumInlined: 406
inline.NumDeleted: 174
begin_hunk_0_@_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E:bb.a

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i.i.i.i33, %bb.v, %.body.i.i.i.i.i28, %bb.n, %.body.i.i.i.i.i, %bb.d
  %.sink = phi ptr [ %i.az, %.body.i.i.i.i.i28 ], [ %i.q, %.body.i.i.i.i.i ], [ %i.q, %bb.d ], [ %i.az, %bb.n ], [ %i.cc, %bb.v ], [ %i.cc, %.body.i.i.i.i.i33 ]
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %.body.i.i.i.i.i28 ], [ %i.y, %.body.i.i.i.i.i ], [ %i.aa, %bb.d ], [ %i.bj, %bb.n ], [ %i.cn, %bb.v ], [ %i.cl, %.body.i.i.i.i.i33 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 248) #19, !noalias !63
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !35 ; 6 uses
  %i.ad = fcmp uno double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = fcmp ult double %i.o, %i.ac
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.ag = load double, ptr %i.af, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !57
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ag, double %i.ai)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.al = load double, ptr %i.ak, align 8, !tbaa !57
  %i.am = fsub double %i.ac, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ao = load double, ptr %i.an, align 8, !tbaa !11
  %i.ap = fdiv double %i.am, %i.ao
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !35 ; 4 uses
  %i.as = fcmp uno double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.g, %bb.h
  %i.at = phi double [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ], [ %i.ac, %bb.e ] ; 2 uses
  %.043 = phi double [ %i.d, %bb.i ], [ %i.ar, %bb.j ], [ %i.d, %bb.g ], [ %i.ap, %bb.h ], [ %i.d, %bb.e ]
  %.041 = phi double [ %i.g, %bb.i ], [ %i.g, %bb.j ], [ %i.aj, %bb.g ], [ %i.g, %bb.h ], [ %i.o, %bb.e ]
  %i.au = fcmp uno double %i.c, 0.000000e+00
  br i1 %i.au, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = fcmp uno double %i.at, 0.000000e+00
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ax = load double, ptr %i.aw, align 8         ; 4 uses
  %i.ay = fcmp ugt double %i.ax, %i.at
  %or.cond48 = select i1 %i.av, i1 true, i1 %i.ay
  br i1 %or.cond48, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !64
  %i.az = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !64 ; 12 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 1, ptr %i.ba, align 8, !tbaa !52, !noalias !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 1, ptr %i.bb, align 4, !tbaa !54, !noalias !64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.az, align 8, !tbaa !7, !noalias !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.bc)
          to label %.noexc.i.i.i.i27 unwind label %bb.n, !noalias !64

.noexc.i.i.i.i27:                                 ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.bc, align 8, !tbaa !7, !noalias !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  store <2 x double> %i.b, ptr %i.bd, align 8, !tbaa !9, !noalias !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  store double %i.g, ptr %i.be, align 8, !tbaa !37, !noalias !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  store double %i.g, ptr %i.bf, align 8, !tbaa !38, !noalias !64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bg, i8 0, i64 28, i1 false), !noalias !64
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(228) %i.bc)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit unwind label %.body.i.i.i.i.i28, !noalias !64

.body.i.i.i.i.i28:                                ; preds = %.noexc.i.i.i.i27
  %i.bh = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.bc, align 8, !tbaa !7, !noalias !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.bi) #17, !noalias !64
  br label %common.resume

bb.n:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !36 ; 3 uses
  %i.bm = fcmp uno double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = fcmp ugt double %i.ax, %i.bl
  br i1 %i.bn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.br = load double, ptr %i.bq, align 8, !tbaa !57
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bp, double %i.br)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !57
  %i.bv = fsub double %i.bl, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !11
  %i.by = fdiv double %i.bv, %i.bx
  br label %bb.u

bb.s:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !36 ; 2 uses
  %i.cb = fcmp uno double %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.s, %bb.t, %bb.q, %bb.r
  %.042 = phi double [ %i.c, %bb.s ], [ %i.ca, %bb.t ], [ %i.c, %bb.q ], [ %i.by, %bb.r ], [ %i.c, %bb.o ]
  %.0 = phi double [ %i.i, %bb.s ], [ %i.i, %bb.t ], [ %i.bs, %bb.q ], [ %i.i, %bb.r ], [ %i.ax, %bb.o ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !67
  %i.cc = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !67 ; 13 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 1, ptr %i.cd, align 8, !tbaa !52, !noalias !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 1, ptr %i.ce, align 4, !tbaa !54, !noalias !67
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cc, align 8, !tbaa !7, !noalias !67
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.cf)
          to label %.noexc.i.i.i.i32 unwind label %bb.v, !noalias !67

.noexc.i.i.i.i32:                                 ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.cf, align 8, !tbaa !7, !noalias !67
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 184
  store double %.043, ptr %i.cg, align 8, !tbaa !35, !noalias !67
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 192
  store double %.042, ptr %i.ch, align 8, !tbaa !36, !noalias !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  store double %.041, ptr %i.ci, align 8, !tbaa !37, !noalias !67
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  store double %.0, ptr %i.cj, align 8, !tbaa !38, !noalias !67
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ck, i8 0, i64 28, i1 false), !noalias !67
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(228) %i.cf)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit unwind label %.body.i.i.i.i.i33, !noalias !67

.body.i.i.i.i.i33:                                ; preds = %.noexc.i.i.i.i32
  %i.cl = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.cf, align 8, !tbaa !7, !noalias !67
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.cm) #17, !noalias !67
  br label %common.resume

bb.v:                                             ; preds = %bb.u
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit: ; preds = %.noexc.i.i.i.i32, %.noexc.i.i.i.i27, %.noexc.i.i.i.i
  %.sink61 = phi ptr [ %i.az, %.noexc.i.i.i.i27 ], [ %i.q, %.noexc.i.i.i.i ], [ %i.cc, %.noexc.i.i.i.i32 ]
  %.sink60 = phi ptr [ %i.bc, %.noexc.i.i.i.i27 ], [ %i.t, %.noexc.i.i.i.i ], [ %i.cf, %.noexc.i.i.i.i32 ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink61, ptr %i.co, align 8, !tbaa !55
  store ptr %.sink60, ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511RangeOpData15convertToMatrixEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.17") align 8 %0, ptr noundef nonnull align 8 dereferenceable(228) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load double, ptr %i.c, align 8
  %.fr = freeze double %i.d
  %or.cond = fcmp uno double %i.b, %.fr
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #17
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData12getAsForwardEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(228) %1)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.g

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.body

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e
  %i.o = phi ptr [ %i.l, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ null, %bb.e ] ; 8 uses
  %.018 = phi ptr [ %i.j, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %1, %bb.e ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  store ptr null, ptr %0, align 8, !tbaa !73, !alias.scope !70
  %i.p = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #20
          to label %.noexc unwind label %bb.r     ; 8 uses

.noexc:                                           ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !52, !noalias !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !54, !noalias !70
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !7, !noalias !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 11 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(260) %i.s)
          to label %bb.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !70

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 280) #19, !noalias !70
  br label %.body

bb.i:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.u, align 8, !tbaa !55, !alias.scope !70
  store ptr %i.s, ptr %0, align 8, !tbaa !76, !alias.scope !70
  %i.v = getelementptr inbounds nuw i8, ptr %.018, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.x = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.w, ptr noundef nonnull align 8 dereferenceable(120) %i.v)
          to label %bb.j unwind label %bb.s       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.018, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.aa = load <2 x i32>, ptr %i.y, align 8, !tbaa !77
  store <2 x i32> %i.aa, ptr %i.z, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %.018, i64 200
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.s, i64 noundef 0, double noundef %i.ac)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.s, i64 noundef 5, double noundef %i.ac)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.s, i64 noundef 10, double noundef %i.ac)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %.018, i64 208
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !57 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.s, i64 noundef 0, double noundef %i.ae)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.s, i64 noundef 1, double noundef %i.ae)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.s, i64 noundef 2, double noundef %i.ae)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.s, i64 noundef 3, double noundef 0.000000e+00)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(260) %i.s)
          to label %bb.v unwind label %bb.u

bb.r:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %bb.q
  %.not.i.i24 = icmp eq ptr %i.o, null
  br i1 %.not.i.i24, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.am, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !54
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17, !inline_history !78
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17, !inline_history !78
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i25 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i25, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

bb.aa:                                            ; preds = %bb.y
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i27 = phi i32 [ %i.ap, %bb.z ], [ %i.az, %bb.aa ]
  %i.ba = icmp eq i32 %.0.i.i.i.i27, 1
  br i1 %i.ba, label %bb.ab, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #17
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.ac:                                            ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.s ], [ %i.al, %bb.u ], [ %i.ak, %bb.t ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br label %.body

.body:                                            ; preds = %bb.r, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.ac, %bb.g
end_hunk_0
