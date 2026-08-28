Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/RangeOpData?download=true
inline.NumInlined: 406
inline.NumDeleted: 174
begin_hunk_0_@_ZNK16OpenColorIO_v2_511RangeOpData8validateEv:bb.a

bb.aq:                                            ; preds = %bb.ao
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ar:                                            ; preds = %bb.an
  %i.ay = fsub double %i.o, %i.e
  %i.az = fdiv double %i.ay, %i.at                ; 2 uses
  store double %i.az, ptr %i.as, align 8, !tbaa !12
  %i.ba = fneg double %i.az
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.b, double %i.e)
  br label %_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv.exit

_ZNK16OpenColorIO_v2_511RangeOpData15fillScaleOffsetEv.exit: ; preds = %.thread9, %bb.ar
  %.sink.i6 = phi double [ 0.000000e+00, %.thread9 ], [ %i.bb, %bb.ar ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sink.i6, ptr %i.bc, align 8, !tbaa !58
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
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load double, ptr %i.b, align 8, !tbaa !36 ; 3 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load double, ptr %i.e, align 8, !tbaa !37 ; 2 uses
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
  %i.n = load double, ptr %i.m, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load double, ptr %i.o, align 8, !tbaa !38 ; 2 uses
  %i.q = fsub double %i.n, %i.p
  %i.r = fdiv double %i.q, %i.h                   ; 2 uses
  store double %i.r, ptr %i.a, align 8, !tbaa !12
  %i.s = fneg double %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.c, double %i.p)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  %.sink = phi double [ 0.000000e+00, %bb.a ], [ %i.t, %bb.g ], [ 0.000000e+00, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sink, ptr %i.u, align 8, !tbaa !58
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
  %i.b = load double, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, f0x3EB0C6F7A0B5ED8D
  br i1 %i.d, label %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit.thread, label %_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit

_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load double, ptr %i.e, align 8, !tbaa !12 ; 3 uses
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
  %i.q = load double, ptr %i.p, align 8, !tbaa !37
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
  %i.b = load double, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, f0x3EB0C6F7A0B5ED8D
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load double, ptr %i.e, align 8, !tbaa !12 ; 3 uses
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
  %i.b = load double, ptr %i.a, align 8, !tbaa !36
  %i.c = fcmp uno double %i.b, 0.000000e+00
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData10maxIsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !37
  %i.c = fcmp uno double %i.b, 0.000000e+00
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData17clampsToLutDomainEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load double, ptr %i.a, align 8, !tbaa !36
  %or.cond = fcmp oge double %i.b, 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = fcmp ord double %i.d, 0.000000e+00
  %i.f = fcmp ule double %i.d, 1.000000e+00
  %or.cond2.not = and i1 %i.e, %i.f
  %.0 = select i1 %or.cond, i1 %or.cond2.not, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData11isClampNegsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !37
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %1, label %7

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %3 = load double, ptr %2, align 8, !tbaa !36    ; 2 uses
  %4 = fcmp uno double %3, 0.000000e+00
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = fcmp oeq double %3, 0.000000e+00
  br label %7

7:                                                ; preds = %5, %1, %bb.a
  %8 = phi i1 [ false, %1 ], [ false, %bb.a ], [ %6, %5 ]
  ret i1 %8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511RangeOpData7composeERSt10shared_ptrIKS0_E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !36 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load double, ptr %i.c, align 8, !tbaa !37 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !59     ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load double, ptr %i.f, align 8, !tbaa !38 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.i = load double, ptr %i.h, align 8, !tbaa !39 ; 5 uses
  %i.j = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.l = load double, ptr %i.k, align 8, !tbaa !37 ; 2 uses
  %i.m = fcmp uno double %i.l, 0.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load double, ptr %i.n, align 8           ; 4 uses
  %i.p = fcmp ult double %i.o, %i.l
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  store ptr null, ptr %0, align 8, !tbaa !48, !alias.scope !61
  %i.q = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !61 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !53, !noalias !61
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %i.s, align 4, !tbaa !55, !noalias !61
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.q, align 8, !tbaa !8, !noalias !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = load <2 x double>, ptr %i.a, align 8, !tbaa !10, !noalias !61
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.t)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !61

.noexc.i.i.i.i:                                   ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.t, align 8, !tbaa !8, !noalias !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  store <2 x double> %i.u, ptr %i.v, align 8, !tbaa !10, !noalias !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store double %i.i, ptr %i.w, align 8, !tbaa !38, !noalias !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  store double %i.i, ptr %i.x, align 8, !tbaa !39, !noalias !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false), !noalias !61
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(228) %i.t)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit unwind label %.body.i.i.i.i.i, !noalias !61

.body.i.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.t, align 8, !tbaa !8, !noalias !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.aa) #17, !noalias !61
  br label %common.resume

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

common.resume:                                    ; preds = %.body.i.i.i.i.i33, %bb.w, %.body.i.i.i.i.i28, %bb.o, %.body.i.i.i.i.i, %bb.d
  %.sink = phi ptr [ %i.ba, %.body.i.i.i.i.i28 ], [ %i.q, %.body.i.i.i.i.i ], [ %i.q, %bb.d ], [ %i.ba, %bb.o ], [ %i.cg, %bb.w ], [ %i.cg, %.body.i.i.i.i.i33 ]
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %.body.i.i.i.i.i28 ], [ %i.z, %.body.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.bl, %bb.o ], [ %i.cr, %bb.w ], [ %i.cp, %.body.i.i.i.i.i33 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 248) #19, !noalias !64
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !36 ; 6 uses
  %i.ae = fcmp uno double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = fcmp ult double %i.o, %i.ad
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !58
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ah, double %i.aj)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.am = load double, ptr %i.al, align 8, !tbaa !58
  %i.an = fsub double %i.ad, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !12
  %i.aq = fdiv double %i.an, %i.ap
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.as = load double, ptr %i.ar, align 8, !tbaa !36 ; 4 uses
  %i.at = fcmp uno double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.g, %bb.h
  %i.au = phi double [ %i.as, %bb.i ], [ %i.as, %bb.j ], [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %i.ad, %bb.e ] ; 2 uses
  %.043 = phi double [ %i.b, %bb.i ], [ %i.as, %bb.j ], [ %i.b, %bb.g ], [ %i.aq, %bb.h ], [ %i.b, %bb.e ]
  %.041 = phi double [ %i.g, %bb.i ], [ %i.g, %bb.j ], [ %i.ak, %bb.g ], [ %i.g, %bb.h ], [ %i.o, %bb.e ]
  %i.av = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.av, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = fcmp uno double %i.au, 0.000000e+00
  br i1 %i.aw, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !39
  %i.az = fcmp ugt double %i.ay, %i.au
  br i1 %i.az, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  store ptr null, ptr %0, align 8, !tbaa !48, !alias.scope !65
  %i.ba = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !65 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 1, ptr %i.bb, align 8, !tbaa !53, !noalias !65
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 1, ptr %i.bc, align 4, !tbaa !55, !noalias !65
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ba, align 8, !tbaa !8, !noalias !65
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 5 uses
  %i.be = load <2 x double>, ptr %i.a, align 8, !tbaa !10, !noalias !65
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.bd)
          to label %.noexc.i.i.i.i27 unwind label %bb.o, !noalias !65

.noexc.i.i.i.i27:                                 ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_511RangeOpDataE, i64 16), ptr %i.bd, align 8, !tbaa !8, !noalias !65
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  store <2 x double> %i.be, ptr %i.bf, align 8, !tbaa !10, !noalias !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  store double %i.g, ptr %i.bg, align 8, !tbaa !38, !noalias !65
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  store double %i.g, ptr %i.bh, align 8, !tbaa !39, !noalias !65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false), !noalias !65
  invoke void @_ZNK16OpenColorIO_v2_511RangeOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(228) %i.bd)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511RangeOpDataEJRKdS3_RdS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_.exit unwind label %.body.i.i.i.i.i28, !noalias !65

.body.i.i.i.i.i28:                                ; preds = %.noexc.i.i.i.i27
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %i.bd, align 8, !tbaa !8, !noalias !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.bk) #17, !noalias !65
  br label %common.resume

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !37 ; 3 uses
  %i.bo = fcmp uno double %i.bn, 0.000000e+00
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !39 ; 3 uses
  br i1 %i.bo, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = fcmp ugt double %i.bq, %i.bn
  br i1 %i.br, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !58
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bt, double %i.bv)
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.by = load double, ptr %i.bx, align 8, !tbaa !58
  %i.bz = fsub double %i.bn, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12
  %i.cc = fdiv double %i.bz, %i.cb
  br label %bb.v

bb.t:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 176
end_hunk_0
