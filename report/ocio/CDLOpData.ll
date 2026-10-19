Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CDLOpData?download=true
inline.NumInlined: 516
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd:bb.a

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !9
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn21 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn21, %bb.h ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %bb.f ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.a
  ret void

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514validateParamsERKNS_9CDLOpData13ChannelParamsES3_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !40
  tail call void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.a, double noundef 0.000000e+00)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !40
  tail call void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.c, double noundef 0.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !40
  tail call void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.e, double noundef 0.000000e+00)
  %i.f = load double, ptr %1, align 8, !tbaa !40
  tail call void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.f, double noundef 0.000000e+00)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !40
  tail call void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.h, double noundef 0.000000e+00)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !40
  tail call void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.j, double noundef 0.000000e+00)
  tail call void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.11, double noundef %2, double noundef 0.000000e+00)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData6isNoOpEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39
  %switch.i = icmp ugt i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %switch.i, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData10isClampingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %switch = icmp ult i32 %i.b, 2
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData10isIdentityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !40 ; 3 uses
  %i.c = fcmp ogt double %i.b, 1.000000e+00
  %i.d = fadd double %i.b, -1.000000e+00
  %i.e = fsub double 1.000000e+00, %i.b
  %i.f = select i1 %i.c, double %i.d, double %i.e
  %i.g = fcmp ugt double %i.f, 1.000000e-09
  br i1 %i.g, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !40 ; 3 uses
  %i.j = fcmp ogt double %i.i, 1.000000e+00
  %i.k = fadd double %i.i, -1.000000e+00
  %i.l = fsub double 1.000000e+00, %i.i
  %i.m = select i1 %i.j, double %i.k, double %i.l
  %i.n = fcmp ugt double %i.m, 1.000000e-09
  br i1 %i.n, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = load double, ptr %i.o, align 8, !tbaa !40 ; 3 uses
  %i.q = fcmp ogt double %i.p, 1.000000e+00
  %i.r = fadd double %i.p, -1.000000e+00
  %i.s = fsub double 1.000000e+00, %i.p
  %i.t = select i1 %i.q, double %i.r, double %i.s
  %i.u = fcmp ugt double %i.t, 1.000000e-09
  br i1 %i.u, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load double, ptr %i.v, align 8, !tbaa !40
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp ugt double %i.x, 1.000000e-09
  br i1 %i.y, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp ugt double %i.ab, 1.000000e-09
  br i1 %i.ac, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit1

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit1: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !40
  %i.af = tail call double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp ugt double %i.af, 1.000000e-09
  br i1 %i.ag, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !40 ; 3 uses
  %i.aj = fcmp ogt double %i.ai, 1.000000e+00
  %i.ak = fadd double %i.ai, -1.000000e+00
  %i.al = fsub double 1.000000e+00, %i.ai
  %i.am = select i1 %i.aj, double %i.ak, double %i.al
  %i.an = fcmp ugt double %i.am, 1.000000e-09
  br i1 %i.an, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !40 ; 3 uses
  %i.aq = fcmp ogt double %i.ap, 1.000000e+00
  %i.ar = fadd double %i.ap, -1.000000e+00
  %i.as = fsub double 1.000000e+00, %i.ap
  %i.at = select i1 %i.aq, double %i.ar, double %i.as
  %i.au = fcmp ugt double %i.at, 1.000000e-09
  br i1 %i.au, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit2

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit2: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aw = load double, ptr %i.av, align 8, !tbaa !40 ; 3 uses
  %i.ax = fcmp ogt double %i.aw, 1.000000e+00
  %i.ay = fadd double %i.aw, -1.000000e+00
  %i.az = fsub double 1.000000e+00, %i.aw
  %i.ba = select i1 %i.ax, double %i.ay, double %i.az
  %i.bb = fcmp ugt double %i.ba, 1.000000e-09
  br i1 %i.bb, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !42
  %i.be = fcmp oeq double %i.bd, 1.000000e+00
  br label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread: ; preds = %bb.e, %bb.f, %bb.c, %bb.d, %bb.a, %bb.b, %bb.g, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit2, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit1, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit
  %i.bf = phi i1 [ false, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit2 ], [ false, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit1 ], [ false, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit ], [ %i.be, %bb.g ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.bf
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData22getIdentityReplacementEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.9") align 8 initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  switch i32 %i.b, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc unwind label %2        ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !49, !noalias !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !50, !noalias !88
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !19, !noalias !88
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511RangeOpDataC1Edddd(ptr noundef nonnull align 8 dereferenceable(228) %i.f, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.sink.split unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !88

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 248) #21, !noalias !88
  br label %.body

2:                                                ; preds = %bb.b
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.h = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #22
          to label %.noexc5 unwind label %bb.d    ; 6 uses

.noexc5:                                          ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !49, !noalias !89
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !50, !noalias !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !19, !noalias !89
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(260) %i.k)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.sink.split unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !89

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc5
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 280) #21, !noalias !89
  br label %.body

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.sink.split: ; preds = %.noexc5, %.noexc
  %.sink24 = phi ptr [ %i.f, %.noexc ], [ %i.k, %.noexc5 ]
  %.sink = phi ptr [ %i.c, %.noexc ], [ %i.h, %.noexc5 ]
  store ptr %.sink24, ptr %0, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.n, align 8, !tbaa !51
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.sink.split, %bb.a
  ret void

.body:                                            ; preds = %bb.d, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %2, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i
  %.pn = phi { ptr, i32 } [ %i.g, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ], [ %3, %2 ], [ %i.m, %bb.d ], [ %i.l, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  tail call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !50
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !50
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData21getSimplerReplacementERSt6vectorISt10shared_ptrINS_6OpDataEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x double], align 16           ; 9 uses
  %i.b = alloca [4 x double], align 16            ; 7 uses
  %2 = alloca %"class.std::shared_ptr.15", align 8 ; 6 uses
  %3 = alloca %"class.std::shared_ptr.9", align 16 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.12", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.9", align 16 ; 9 uses
  %i.c = alloca [16 x double], align 16           ; 5 uses
  %i.d = alloca [4 x double], align 16            ; 5 uses
  %6 = alloca %"class.std::shared_ptr.15", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.9", align 16 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.12", align 8 ; 6 uses
  %9 = alloca %"class.std::shared_ptr.9", align 16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load double, ptr %i.e, align 8, !tbaa !40 ; 3 uses
  %i.g = fcmp ogt double %i.f, 1.000000e+00
  %i.h = fadd double %i.f, -1.000000e+00
  %i.i = fsub double 1.000000e+00, %i.f
  %i.j = select i1 %i.g, double %i.h, double %i.i
  %i.k = fcmp ugt double %i.j, 1.000000e-09
  br i1 %i.k, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamsneERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load double, ptr %i.l, align 8, !tbaa !40 ; 3 uses
  %i.n = fcmp ogt double %i.m, 1.000000e+00
  %i.o = fadd double %i.m, -1.000000e+00
  %i.p = fsub double 1.000000e+00, %i.m
  %i.q = select i1 %i.n, double %i.o, double %i.p
  %i.r = fcmp ugt double %i.q, 1.000000e-09
  br i1 %i.r, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamsneERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamsneERKS1_.exit

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamsneERKS1_.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = load double, ptr %i.s, align 8, !tbaa !40 ; 3 uses
  %i.u = fcmp ogt double %i.t, 1.000000e+00
  %i.v = fadd double %i.t, -1.000000e+00
  %i.w = fsub double 1.000000e+00, %i.t
  %i.x = select i1 %i.u, double %i.v, double %i.w
  %i.y = fcmp ugt double %i.x, 1.000000e-09
  br i1 %i.y, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamsneERKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamsneERKS1_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br i1 %i.ac, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamsneERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load double, ptr %i.af, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  store double %i.ae, ptr %i.a, align 16, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.ag, ptr %i.aj, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.ai, ptr %i.ak, align 16, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double 1.000000e+00, ptr %i.al, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.an = load <2 x double>, ptr %i.am, align 8, !tbaa !40
  store <2 x double> %i.an, ptr %i.b, align 16, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.ap, ptr %i.aq, align 16, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.as = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #22, !noalias !102 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  store i32 1, ptr %i.at, align 8, !tbaa !49, !noalias !102
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 1, ptr %i.au, align 4, !tbaa !50, !noalias !102
end_hunk_0
