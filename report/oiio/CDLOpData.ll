inline.NumInlined: 516
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd:bb.a
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.j)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.k unwind label %bb.g

bb.f:                                             ; preds = %_ZNSolsEd.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !7
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
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = fcmp ogt double %1, %2
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.8, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %1)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.6, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEd.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %2)
          to label %_ZNSolsEd.exit17 unwind label %bb.f

_ZNSolsEd.exit17:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEd.exit17
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.j = load ptr, ptr %4, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.j)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.k unwind label %bb.g

bb.f:                                             ; preds = %_ZNSolsEd.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !7
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
  %i.a = load double, ptr %0, align 8, !tbaa !39
  tail call void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.a, double noundef 0.000000e+00)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !39
  tail call void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.c, double noundef 0.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !39
  tail call void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.e, double noundef 0.000000e+00)
  %i.f = load double, ptr %1, align 8, !tbaa !39
  tail call void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.f, double noundef 0.000000e+00)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !39
  tail call void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.h, double noundef 0.000000e+00)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !39
  tail call void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.j, double noundef 0.000000e+00)
  tail call void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.11, double noundef %2, double noundef 0.000000e+00)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData6isNoOpEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0)
  br i1 %i.d, label %1, label %4

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %3 = load i32, ptr %2, align 8, !tbaa !19
  %switch.i = icmp ugt i32 %3, 1
  br label %4

4:                                                ; preds = %1, %bb.a
  %5 = phi i1 [ false, %bb.a ], [ %switch.i, %1 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData10isClampingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %switch = icmp ult i32 %i.b, 2
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData10isIdentityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !39 ; 3 uses
  %i.c = fcmp ogt double %i.b, 1.000000e+00
  %i.d = fadd double %i.b, -1.000000e+00
  %i.e = fsub double 1.000000e+00, %i.b
  %i.f = select i1 %i.c, double %i.d, double %i.e
  %i.g = fcmp ugt double %i.f, 1.000000e-09
  br i1 %i.g, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !39 ; 3 uses
  %i.j = fcmp ogt double %i.i, 1.000000e+00
  %i.k = fadd double %i.i, -1.000000e+00
  %i.l = fsub double 1.000000e+00, %i.i
  %i.m = select i1 %i.j, double %i.k, double %i.l
  %i.n = fcmp ugt double %i.m, 1.000000e-09
  br i1 %i.n, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = load double, ptr %i.o, align 8, !tbaa !39 ; 3 uses
  %i.q = fcmp ogt double %i.p, 1.000000e+00
  %i.r = fadd double %i.p, -1.000000e+00
  %i.s = fsub double 1.000000e+00, %i.p
  %i.t = select i1 %i.q, double %i.r, double %i.s
  %i.u = fcmp ugt double %i.t, 1.000000e-09
  br i1 %i.u, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load double, ptr %i.v, align 8, !tbaa !39
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp ugt double %i.x, 1.000000e-09
  br i1 %i.y, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = load double, ptr %i.z, align 8, !tbaa !39
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp ugt double %i.ab, 1.000000e-09
  br i1 %i.ac, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit1

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit1: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !39
  %i.af = tail call double @llvm.fabs.f64(double %i.ae)
  %i.ag = fcmp ugt double %i.af, 1.000000e-09
  br i1 %i.ag, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !39 ; 3 uses
  %i.aj = fcmp ogt double %i.ai, 1.000000e+00
  %i.ak = fadd double %i.ai, -1.000000e+00
  %i.al = fsub double 1.000000e+00, %i.ai
  %i.am = select i1 %i.aj, double %i.ak, double %i.al
  %i.an = fcmp ugt double %i.am, 1.000000e-09
  br i1 %i.an, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !39 ; 3 uses
  %i.aq = fcmp ogt double %i.ap, 1.000000e+00
  %i.ar = fadd double %i.ap, -1.000000e+00
  %i.as = fsub double 1.000000e+00, %i.ap
  %i.at = select i1 %i.aq, double %i.ar, double %i.as
  %i.au = fcmp ugt double %i.at, 1.000000e-09
  br i1 %i.au, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit2

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit2: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aw = load double, ptr %i.av, align 8, !tbaa !39 ; 3 uses
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  switch i32 %i.b, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc unwind label %bb.c     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !51, !noalias !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !53, !noalias !56
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !17, !noalias !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511RangeOpDataC1Edddd(ptr noundef nonnull align 8 dereferenceable(228) %i.f, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.sink.split unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !56

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 248) #21, !noalias !56
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.i = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #22
          to label %.noexc5 unwind label %bb.e    ; 6 uses

.noexc5:                                          ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %i.j, align 8, !tbaa !51, !noalias !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 1, ptr %i.k, align 4, !tbaa !53, !noalias !59
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !17, !noalias !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(260) %i.l)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.sink.split unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !59

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc5
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 280) #21, !noalias !59
  br label %.body

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.sink.split: ; preds = %.noexc5, %.noexc
  %.sink24 = phi ptr [ %i.f, %.noexc ], [ %i.l, %.noexc5 ]
  %.sink = phi ptr [ %i.c, %.noexc ], [ %i.i, %.noexc5 ]
  store ptr %.sink24, ptr %0, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.o, align 8, !tbaa !54
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.sink.split, %bb.a
  ret void

.body:                                            ; preds = %bb.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.c, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i
  %.pn = phi { ptr, i32 } [ %i.g, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ], [ %i.h, %bb.c ], [ %i.n, %bb.e ], [ %i.m, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  tail call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_0
