inline.NumInlined: 406
inline.NumDeleted: 174
begin_hunk_0_@_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E:bb.a
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
  %i.c = fcmp uno double %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load double, ptr %i.d, align 8
  %i.f = fcmp uno double %i.e, 0.000000e+00
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #17
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !39
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData12getAsForwardEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(228) %1)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.g

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f
  %i.l = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.body

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e
  %i.q = phi ptr [ %i.n, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ null, %bb.e ] ; 8 uses
  %.018 = phi ptr [ %i.l, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %1, %bb.e ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  store ptr null, ptr %0, align 8, !tbaa !73, !alias.scope !70
  %i.r = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #20
          to label %.noexc unwind label %bb.r     ; 8 uses

.noexc:                                           ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !52, !noalias !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !54, !noalias !70
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !7, !noalias !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 11 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(260) %i.u)
          to label %bb.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !70

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 280) #19, !noalias !70
  br label %.body

bb.i:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.w, align 8, !tbaa !55, !alias.scope !70
  store ptr %i.u, ptr %0, align 8, !tbaa !76, !alias.scope !70
  %i.x = getelementptr inbounds nuw i8, ptr %.018, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.z = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.y, ptr noundef nonnull align 8 dereferenceable(120) %i.x)
          to label %bb.j unwind label %bb.s       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.018, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %i.ac = load <2 x i32>, ptr %i.aa, align 8, !tbaa !77
  store <2 x i32> %i.ac, ptr %i.ab, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %.018, i64 200
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.u, i64 noundef 0, double noundef %i.ae)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.u, i64 noundef 5, double noundef %i.ae)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.u, i64 noundef 10, double noundef %i.ae)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.018, i64 208
  %i.ag = load double, ptr %i.af, align 8, !tbaa !57 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.u, i64 noundef 0, double noundef %i.ag)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.u, i64 noundef 1, double noundef %i.ag)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.u, i64 noundef 2, double noundef %i.ag)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.u, i64 noundef 3, double noundef 0.000000e+00)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(260) %i.u)
          to label %bb.v unwind label %bb.u

bb.r:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %bb.q
  %.not.i.i24 = icmp eq ptr %i.q, null
  br i1 %.not.i.i24, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ao, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !54
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #17, !inline_history !78
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #17, !inline_history !78
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i25 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i25, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

bb.aa:                                            ; preds = %bb.y
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i27 = phi i32 [ %i.ar, %bb.z ], [ %i.bb, %bb.aa ]
  %i.bc = icmp eq i32 %.0.i.i.i.i27, 1
  br i1 %i.bc, label %bb.ab, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #17
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.ac:                                            ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.s ], [ %i.an, %bb.u ], [ %i.am, %bb.t ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br label %.body

.body:                                            ; preds = %bb.r, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.ac, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ac ], [ %i.p, %bb.g ], [ %i.ak, %bb.r ], [ %i.v, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ad

bb.ad:                                            ; preds = %.body, %bb.d
  %.pn22 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn.pn.pn, %.body ]
  resume { ptr, i32 } %.pn22
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511RangeOpData12getAsForwardEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(228) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !87
  %i.d = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !87 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !52, !noalias !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !54, !noalias !87
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !7, !noalias !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(228) %i.g, ptr noundef nonnull align 8 dereferenceable(228) %1)
          to label %_ZNK16OpenColorIO_v2_511RangeOpData5cloneEv.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !87

common.resume:                                    ; preds = %bb.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ], [ %i.ak, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 248) #19, !noalias !87
  br label %common.resume

_ZNK16OpenColorIO_v2_511RangeOpData5cloneEv.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.g, align 8, !tbaa !7, !noalias !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.j, ptr noundef nonnull align 8 dereferenceable(60) %i.k, i64 60, i1 false), !noalias !87
  store ptr %i.d, ptr %i.i, align 8, !tbaa !55, !alias.scope !87
  store ptr %i.g, ptr %0, align 8, !tbaa !56, !alias.scope !87
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !88
  %i.p = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !88 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !52, !noalias !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !54, !noalias !88
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !7, !noalias !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 7 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.s)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !88

.noexc.i.i.i.i:                                   ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.s, align 8, !tbaa !7, !noalias !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  store <2 x double> %i.m, ptr %i.t, align 8, !tbaa !9, !noalias !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  store <2 x double> %i.o, ptr %i.u, align 8, !tbaa !9, !noalias !88
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, i8 0, i64 28, i1 false), !noalias !88
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(228) %i.s)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJddddEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit unwind label %.body.i.i.i.i.i, !noalias !88

.body.i.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.s, align 8, !tbaa !7, !noalias !88
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.x) #17, !noalias !88
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %bb.d, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.w, %.body.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 248) #19, !noalias !88
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJddddEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit: ; preds = %.noexc.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.z, align 8, !tbaa !55, !alias.scope !88
  store ptr %i.s, ptr %0, align 8, !tbaa !56, !alias.scope !88
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ac = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(120) %i.aa)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJddddEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.af = load <2 x i32>, ptr %i.ae, align 8, !tbaa !77
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ag, ptr %i.ad, align 8, !tbaa !77
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(228) %i.s)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJddddEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit
end_hunk_0
