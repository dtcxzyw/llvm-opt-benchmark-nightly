inline.NumInlined: 406
inline.NumDeleted: 174
begin_hunk_0_@_ZNK16OpenColorIO_v2_511RangeOpData8validateEv:bb.a
  %i.ag = fsub double %i.e, %i.b
  %.sink.i = select i1 %i.ad, double %i.ag, double %i.af
  %i.ah = tail call double @llvm.fabs.f64(double %.sink.i)
  %.0.in.i = fcmp ogt double %i.ah, f0x3EB0C6F7A0B5ED8D
  br i1 %.0.in.i, label %bb.ag, label %.thread9

bb.ag:                                            ; preds = %bb.af
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull @.str.6)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.aj:                                            ; preds = %bb.w
  %i.ak = tail call double @llvm.fabs.f64(double %i.o)
  %i.al = fcmp olt double %i.ak, 1.000000e-03
  %i.am = fdiv double %i.l, %i.o
  %i.an = fsub double 1.000000e+00, %i.am
  %i.ao = fsub double %i.o, %i.l
  %.sink.i4 = select i1 %i.al, double %i.ao, double %i.an
  %i.ap = tail call double @llvm.fabs.f64(double %.sink.i4)
  %.0.in.i5 = fcmp ogt double %i.ap, f0x3EB0C6F7A0B5ED8D
  br i1 %.0.in.i5, label %bb.ak, label %.thread9

bb.ak:                                            ; preds = %bb.aj
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.7)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.thread9:                                         ; preds = %bb.af, %bb.ab, %bb.aj
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !11
  %or.cond = fcmp uno double %i.b, %i.l
  br i1 %or.cond, label %_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv.exit, label %bb.an

bb.an:                                            ; preds = %.thread9
  %i.at = fsub double %i.l, %i.b                  ; 2 uses
  %i.au = tail call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp olt double %i.au, f0x3EB0C6F7A0B5ED8D
  br i1 %i.av, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.8)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.i, %bb.n, %bb.r, %bb.v, %bb.aa, %bb.ae, %bb.ai, %bb.am, %bb.aq
  %.sink = phi ptr [ %i.g, %bb.e ], [ %i.i, %bb.i ], [ %i.q, %bb.n ], [ %i.s, %bb.r ], [ %i.u, %bb.v ], [ %i.x, %bb.aa ], [ %i.aa, %bb.ae ], [ %i.ai, %bb.ai ], [ %i.aq, %bb.am ], [ %i.aw, %bb.aq ]
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.j, %bb.i ], [ %i.r, %bb.n ], [ %i.t, %bb.r ], [ %i.v, %bb.v ], [ %i.y, %bb.aa ], [ %i.ab, %bb.ae ], [ %i.aj, %bb.ai ], [ %i.ar, %bb.am ], [ %i.ax, %bb.aq ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %common.resume.op

bb.aq:                                            ; preds = %bb.ao
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ar:                                            ; preds = %bb.an
  %i.ay = fsub double %i.o, %i.e
  %i.az = fdiv double %i.ay, %i.at                ; 2 uses
  store double %i.az, ptr %i.as, align 8, !tbaa !11
  %i.ba = fneg double %i.az
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.b, double %i.e)
  br label %_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv.exit

_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv.exit: ; preds = %.thread9, %bb.ar
  %.sink.i6 = phi double [ 0.000000e+00, %.thread9 ], [ %i.bb, %bb.ar ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sink.i6, ptr %i.bc, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_511RangeOpData12FloatsDifferEdd(double noundef %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp olt double %i.a, 1.000000e-03
  %i.c = fdiv double %1, %0
  %i.d = fsub double 1.000000e+00, %i.c
  %i.e = fsub double %0, %1
  %.sink = select i1 %i.b, double %i.e, double %i.d
  %i.f = tail call double @llvm.fabs.f64(double %.sink)
  %.0.in = fcmp ogt double %i.f, f0x3EB0C6F7A0B5ED8D
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(228) initializes((200, 208)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load double, ptr %i.b, align 8, !tbaa !35 ; 3 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load double, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.g = fcmp uno double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fsub double %i.f, %i.c                   ; 2 uses
  %i.i = tail call double @llvm.fabs.f64(double %i.h)
  %i.j = fcmp olt double %i.i, f0x3EB0C6F7A0B5ED8D
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.8)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #17
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load double, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load double, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %i.q = fsub double %i.n, %i.p
  %i.r = fdiv double %i.q, %i.h                   ; 2 uses
  store double %i.r, ptr %i.a, align 8, !tbaa !11
  %i.s = fneg double %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.c, double %i.p)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  %.sink = phi double [ 0.000000e+00, %bb.a ], [ %i.t, %bb.g ], [ 0.000000e+00, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sink, ptr %i.u, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData6isNoOpEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData10isIdentityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load double, ptr %i.a, align 8, !tbaa !57
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, f0x3EB0C6F7A0B5ED8D
  br i1 %i.d, label %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit.thread, label %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit

_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load double, ptr %i.e, align 8, !tbaa !11 ; 3 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.f)
  %i.h = fcmp olt double %i.g, 1.000000e-03
  %i.i = fdiv double 1.000000e+00, %i.f
  %i.j = fsub double 1.000000e+00, %i.i
  %i.k = fadd double %i.f, -1.000000e+00
  %.sink.i.i = select i1 %i.h, double %i.k, double %i.j
  %i.l = tail call double @llvm.fabs.f64(double %.sink.i.i)
  %.0.in.i.i = fcmp ogt double %i.l, f0x3EB0C6F7A0B5ED8D
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load double, ptr %i.m, align 8
  %i.o = fcmp ogt double %i.n, 0.000000e+00
  %or.cond = select i1 %.0.in.i.i, i1 true, i1 %i.o
  br i1 %or.cond, label %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = load double, ptr %i.p, align 8, !tbaa !36
  %i.r = fcmp uge double %i.q, 1.000000e+00
  br label %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit.thread

_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit
  %.0 = phi i1 [ false, %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit ], [ false, %bb.a ], [ %i.r, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load double, ptr %i.a, align 8, !tbaa !57
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, f0x3EB0C6F7A0B5ED8D
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load double, ptr %i.e, align 8, !tbaa !11 ; 3 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.f)
  %i.h = fcmp olt double %i.g, 1.000000e-03
  %i.i = fdiv double 1.000000e+00, %i.f
  %i.j = fsub double 1.000000e+00, %i.i
  %i.k = fadd double %i.f, -1.000000e+00
  %.sink.i = select i1 %i.h, double %i.k, double %i.j
  %i.l = tail call double @llvm.fabs.f64(double %.sink.i)
  %.0.in.i = fcmp ogt double %i.l, f0x3EB0C6F7A0B5ED8D
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %.0.in.i, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData10minIsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %i.c = fcmp uno double %i.b, 0.000000e+00
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData10maxIsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !36
  %i.c = fcmp uno double %i.b, 0.000000e+00
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData17clampsToLutDomainEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %or.cond = fcmp oge double %i.b, 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = fcmp ord double %i.d, 0.000000e+00
  %i.f = fcmp ule double %i.d, 1.000000e+00
  %or.cond6.not = and i1 %i.e, %i.f
  %.0 = select i1 %or.cond, i1 %or.cond6.not, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData11isClampNegsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !36
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load double, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  %i.f = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp oeq double %i.e, 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.g, %bb.c ]
  ret i1 %i.h
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !9 ; 4 uses
  %i.c = extractelement <2 x double> %i.b, i64 1  ; 4 uses
  %i.d = extractelement <2 x double> %i.b, i64 0  ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !58     ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load double, ptr %i.f, align 8, !tbaa !37 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.i = load double, ptr %i.h, align 8, !tbaa !38 ; 5 uses
  %i.j = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp uno double %i.l, 0.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load double, ptr %i.n, align 8           ; 4 uses
  %i.p = fcmp ult double %i.o, %i.l
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !60
  %i.q = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !60 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !52, !noalias !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %i.s, align 4, !tbaa !54, !noalias !60
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.q, align 8, !tbaa !7, !noalias !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.t)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !60

.noexc.i.i.i.i:                                   ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.t, align 8, !tbaa !7, !noalias !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  store <2 x double> %i.b, ptr %i.u, align 8, !tbaa !9, !noalias !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store double %i.i, ptr %i.v, align 8, !tbaa !37, !noalias !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  store double %i.i, ptr %i.w, align 8, !tbaa !38, !noalias !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, i8 0, i64 28, i1 false), !noalias !60
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(228) %i.t)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit unwind label %.body.i.i.i.i.i, !noalias !60

.body.i.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.t, align 8, !tbaa !7, !noalias !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.z) #17, !noalias !60
  br label %common.resume

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i.i.i.i33, %bb.v, %.body.i.i.i.i.i28, %bb.n, %.body.i.i.i.i.i, %bb.d
  %.sink = phi ptr [ %i.ay, %.body.i.i.i.i.i28 ], [ %i.q, %.body.i.i.i.i.i ], [ %i.q, %bb.d ], [ %i.ay, %bb.n ], [ %i.cb, %bb.v ], [ %i.cb, %.body.i.i.i.i.i33 ]
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %.body.i.i.i.i.i28 ], [ %i.y, %.body.i.i.i.i.i ], [ %i.aa, %bb.d ], [ %i.bi, %bb.n ], [ %i.cm, %bb.v ], [ %i.ck, %.body.i.i.i.i.i33 ]
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
  br i1 %i.au, label %bb.s, label %3

3:                                                ; preds = %bb.k
  %4 = fcmp uno double %i.at, 0.000000e+00
  br i1 %4, label %bb.o, label %bb.l

bb.l:                                             ; preds = %3
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aw = load double, ptr %i.av, align 8, !tbaa !38
  %i.ax = fcmp ugt double %i.aw, %i.at
  br i1 %i.ax, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !64
  %i.ay = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !64 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 1, ptr %i.az, align 8, !tbaa !52, !noalias !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 1, ptr %i.ba, align 4, !tbaa !54, !noalias !64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ay, align 8, !tbaa !7, !noalias !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.bb)
          to label %.noexc.i.i.i.i27 unwind label %bb.n, !noalias !64

.noexc.i.i.i.i27:                                 ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.bb, align 8, !tbaa !7, !noalias !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  store <2 x double> %i.b, ptr %i.bc, align 8, !tbaa !9, !noalias !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  store double %i.g, ptr %i.bd, align 8, !tbaa !37, !noalias !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  store double %i.g, ptr %i.be, align 8, !tbaa !38, !noalias !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bf, i8 0, i64 28, i1 false), !noalias !64
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(228) %i.bb)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit unwind label %.body.i.i.i.i.i28, !noalias !64

.body.i.i.i.i.i28:                                ; preds = %.noexc.i.i.i.i27
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.bb, align 8, !tbaa !7, !noalias !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.bh) #17, !noalias !64
  br label %common.resume

bb.n:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %bb.l, %3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !36 ; 3 uses
  %i.bl = fcmp uno double %i.bk, 0.000000e+00
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %6 = load double, ptr %5, align 8, !tbaa !38    ; 3 uses
  br i1 %i.bl, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = fcmp ugt double %6, %i.bk
  br i1 %i.bm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !57
  %i.br = tail call double @llvm.fmuladd.f64(double %6, double %i.bo, double %i.bq)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !57
  %i.bu = fsub double %i.bk, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !11
  %i.bx = fdiv double %i.bu, %i.bw
  br label %bb.u

bb.s:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.bz = load double, ptr %i.by, align 8, !tbaa !36 ; 2 uses
  %i.ca = fcmp uno double %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.s, %bb.t, %bb.q, %bb.r
  %.042 = phi double [ %i.c, %bb.s ], [ %i.bz, %bb.t ], [ %i.c, %bb.q ], [ %i.bx, %bb.r ], [ %i.c, %bb.o ]
  %.0 = phi double [ %i.i, %bb.s ], [ %i.i, %bb.t ], [ %i.br, %bb.q ], [ %i.i, %bb.r ], [ %6, %bb.o ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !67
  %i.cb = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !67 ; 13 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 1, ptr %i.cc, align 8, !tbaa !52, !noalias !67
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 1, ptr %i.cd, align 4, !tbaa !54, !noalias !67
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cb, align 8, !tbaa !7, !noalias !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 5 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.ce)
          to label %.noexc.i.i.i.i32 unwind label %bb.v, !noalias !67

.noexc.i.i.i.i32:                                 ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.ce, align 8, !tbaa !7, !noalias !67
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 184
  store double %.043, ptr %i.cf, align 8, !tbaa !35, !noalias !67
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 192
  store double %.042, ptr %i.cg, align 8, !tbaa !36, !noalias !67
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 200
  store double %.041, ptr %i.ch, align 8, !tbaa !37, !noalias !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 208
  store double %.0, ptr %i.ci, align 8, !tbaa !38, !noalias !67
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cj, i8 0, i64 28, i1 false), !noalias !67
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(228) %i.ce)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit unwind label %.body.i.i.i.i.i33, !noalias !67

.body.i.i.i.i.i33:                                ; preds = %.noexc.i.i.i.i32
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.ce, align 8, !tbaa !7, !noalias !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.cl) #17, !noalias !67
  br label %common.resume

bb.v:                                             ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit: ; preds = %.noexc.i.i.i.i32, %.noexc.i.i.i.i27, %.noexc.i.i.i.i
  %.sink61 = phi ptr [ %i.ay, %.noexc.i.i.i.i27 ], [ %i.q, %.noexc.i.i.i.i ], [ %i.cb, %.noexc.i.i.i.i32 ]
  %.sink60 = phi ptr [ %i.bb, %.noexc.i.i.i.i27 ], [ %i.t, %.noexc.i.i.i.i ], [ %i.ce, %.noexc.i.i.i.i32 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink61, ptr %i.cn, align 8, !tbaa !55
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
          to label %.noexc unwind label %bb.r     ; 7 uses

.noexc:                                           ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !52, !noalias !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !54, !noalias !70
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !7, !noalias !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
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
  %i.aa = load ptr, ptr %0, align 8, !tbaa !73    ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.018, i64 216
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  %i.ad = load <2 x i32>, ptr %i.ab, align 8, !tbaa !77
  store <2 x i32> %i.ad, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %.018, i64 200
  %i.af = load double, ptr %i.ae, align 8, !tbaa !11 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.aa, i64 noundef 0, double noundef %i.af)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.aa, i64 noundef 5, double noundef %i.af)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData13setArrayValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.aa, i64 noundef 10, double noundef %i.af)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.018, i64 208
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !57 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.aa, i64 noundef 0, double noundef %i.ah)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.aa, i64 noundef 1, double noundef %i.ah)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.aa, i64 noundef 2, double noundef %i.ah)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %i.aa, i64 noundef 3, double noundef 0.000000e+00)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(260) %i.aa)
          to label %bb.v unwind label %bb.u

bb.r:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
end_hunk_0
