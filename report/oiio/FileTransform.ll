inline.NumInlined: 1682
inline.NumDeleted: 724
begin_hunk_0_@_ZN11StringUtils5LowerB5cxx11EPKc:bb.a
  resume { ptr, i32 } %i.bm

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %._crit_edge.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN16OpenColorIO_v2_510FileFormatD2Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #16 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_510FileFormatD0Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #17 align 2 {
bb.a:
  tail call void @llvm.trap() #34
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_510FileFormat7getNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.48", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !109    ; 4 uses
  %.not = icmp eq ptr %i.f, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !34
  br i1 %.not, label %._crit_edge.i.i4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.k, ptr %i.a, align 8, !tbaa !48
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %0, align 8, !tbaa !47
  %i.n = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.n, ptr %i.h, align 8, !tbaa !36
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !36
  store i8 %i.p, ptr %i.o, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !35
  %i.s = load ptr, ptr %0, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.pre = load ptr, ptr %2, align 8, !tbaa !109
  %.pre7 = load ptr, ptr %i.e, align 8, !tbaa !121
  br label %bb.g

bb.f:                                             ; preds = %.noexc.i, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.u

._crit_edge.i.i4:                                 ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.h, ptr noundef nonnull align 1 dereferenceable(14) @.str.17, i64 14, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 0, ptr %i.w, align 2, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %._crit_edge.i.i4
  %i.x = phi ptr [ %.pre7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.f, %._crit_edge.i.i4 ] ; 2 uses
  %i.y = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.g, %._crit_edge.i.i4 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN16OpenColorIO_v2_510FormatInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN16OpenColorIO_v2_510FormatInfoEEvPT_.exit.i.i.i ], [ %i.y, %bb.g ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !36
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyIN16OpenColorIO_v2_510FormatInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #35
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_510FormatInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_510FormatInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.x
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !123

_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_510FormatInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !124
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #35
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_510FormatInfoES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZNK16OpenColorIO_v2_510FileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nonnull readnone align 8 captures(none) %3) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.18, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.19, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !34, !alias.scope !160
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !35, !alias.scope !160
  store i8 0, ptr %i.h, align 8, !tbaa !36, !alias.scope !160
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !161, !noalias !160 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !160 ; 2 uses
  %8 = icmp ugt ptr %7, %i.k
  %.08.i.i.i = select i1 %8, ptr %7, ptr %i.k     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163, !noalias !160 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !47, !alias.scope !160 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.h, align 8, !tbaa !36, !alias.scope !160
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %.body.thread

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr %5, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.x)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #33
          to label %bb.j unwind label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0 = phi i1 [ false, %bb.e ], [ true, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.h
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !36
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %.0, label %bb.h, label %bb.i

.body.thread:                                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.h

.body:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.thread, %.body
  %.pn12 = phi { ptr, i32 } [ %i.r, %.body.thread ], [ %i.z, %.body ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #32
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn12, %bb.h ], [ %i.z, %.body ], [ %i.y, %bb.f ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !14
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #32
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ar) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 1 captures(none) %1, ptr nonnull readnone align 8 captures(none) %2, ptr nonnull readnone align 8 captures(none) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nonnull readnone align 8 captures(none) %5) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.18, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.20, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.h, ptr %7, align 8, !tbaa !34, !alias.scope !170
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !35, !alias.scope !170
  store i8 0, ptr %i.h, align 8, !tbaa !36, !alias.scope !170
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !161, !noalias !170 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %9, null
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !170 ; 2 uses
  %10 = icmp ugt ptr %9, %i.k
  %.08.i.i.i = select i1 %10, ptr %9, ptr %i.k    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163, !noalias !170 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %7, align 8, !tbaa !47, !alias.scope !170 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.h, align 8, !tbaa !36, !alias.scope !170
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %.body.thread

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr %7, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.x)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #33
          to label %bb.j unwind label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0 = phi i1 [ false, %bb.e ], [ true, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.h
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !36
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br i1 %.0, label %bb.h, label %bb.i

.body.thread:                                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.h

.body:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.thread, %.body
  %.pn12 = phi { ptr, i32 } [ %i.r, %.body.thread ], [ %i.z, %.body ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #32
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn12, %bb.h ], [ %i.z, %.body ], [ %i.y, %bb.f ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !14
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %6, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #32
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ar) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512GenericCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12_GLOBAL__N_115FileCacheResultEEED2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(104) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512GenericCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12_GLOBAL__N_115FileCacheResultEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.a, align 8, !tbaa !55
  tail call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef %.val)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::vector", align 8      ; 13 uses
  %14 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::shared_ptr.61", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::shared_ptr.61", align 16 ; 8 uses
  %26 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::shared_ptr.61", align 16 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"class.std::shared_ptr.58", align 8 ; 15 uses
  %39 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_511g_fileCacheB5cxx11E, i64 16)) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.a) #33
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_511g_fileCacheB5cxx11E, i64 8), align 8, !tbaa !171, !range !181, !noundef !182
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_511g_fileCacheB5cxx11E, i64 9), align 1, !range !181
  %i.e = trunc nuw i8 %i.d to i1
  %not..i = xor i1 %i.c, true
  %i.f = select i1 %not..i, i1 %i.e, i1 false
  br i1 %i.f, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = tail call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN16OpenColorIO_v2_512GenericCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12_GLOBAL__N_115FileCacheResultEEEixERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %2) #32 ; 2 uses
  %.val58 = load ptr, ptr %i.g, align 8, !tbaa !183 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val59 = load ptr, ptr %i.h, align 8, !tbaa !13 ; 11 uses
  store ptr %.val58, ptr %38, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val59, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val59, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i82

bb.r:                                             ; preds = %bb.p
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i88 = load ptr, ptr %i.ak, align 8, !tbaa !13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i82

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i82: ; preds = %bb.r, %bb.q, %bb.o
  %i.ar = phi ptr [ %i.al, %bb.o ], [ %i.al, %bb.q ], [ %.pr.pre.i.i.i88, %bb.r ] ; 8 uses
  %.not8.i.i.i83 = icmp eq ptr %i.ar, null
  br i1 %.not8.i.i.i83, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87, label %bb.s

bb.s:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i82
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.as, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !19
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #32, !inline_history !191
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #32, !inline_history !191
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87

bb.u:                                             ; preds = %bb.s
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i9.i.i.i84 = icmp eq i8 %i.bd, 0
  br i1 %.not.i9.i.i.i84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85

bb.w:                                             ; preds = %bb.u
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i86 = phi i32 [ %i.av, %bb.v ], [ %i.bf, %bb.w ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i86, 1
  br i1 %i.bg, label %bb.x, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87, !prof !46

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85, %bb.t, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i82
  store ptr %.val57, ptr %i.ak, align 8, !tbaa !13
  %.val74.pre = load ptr, ptr %38, align 8, !tbaa !183
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit89

bb.y:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.z:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.aa:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.bj = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #31
          to label %bb.ab unwind label %bb.ac     ; 7 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 1, ptr %i.bk, align 8, !tbaa !17, !noalias !192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 1, ptr %i.bl, align 4, !tbaa !19, !noalias !192
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bj, align 8, !tbaa !14, !noalias !192
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bm, i8 0, i64 104, i1 false), !noalias !192
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !34, !noalias !192
  store ptr %i.bm, ptr %38, align 8, !tbaa !189
  %i.bp = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.bj, ptr %i.bp, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit89

bb.ac:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit89: ; preds = %bb.ab, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit
  %.val74 = phi ptr [ %.val, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bm, %bb.ab ], [ %.val58, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit ], [ %.val74.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87 ] ; 10 uses
  %i.br = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_511g_fileCacheB5cxx11E, i64 16)) #32 ; 0 uses
  %i.bs = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.val74) #32 ; 2 uses
  %.not.i.i102 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i102, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit104, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit89
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bs) #33
          to label %.noexc103 unwind label %bb.im

.noexc103:                                        ; preds = %bb.ad
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit104:       ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit89
  %i.bt = getelementptr inbounds nuw i8, ptr %.val74, i64 48 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !195, !range !181, !noundef !182
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.jb, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit104
  store i8 1, ptr %i.bt, align 8, !tbaa !195
  %i.bw = getelementptr inbounds nuw i8, ptr %.val74, i64 49
  store i8 0, ptr %i.bw, align 1, !tbaa !200
  %i.bx = getelementptr inbounds nuw i8, ptr %.val74, i64 40 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val74, i64 56 ; 2 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %.noexc113 unwind label %bb.in

.noexc113:                                        ; preds = %bb.ae
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.32, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc113
  %i.ca = load ptr, ptr %5, align 8, !tbaa !14
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %5, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 240
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !201 ; 6 uses
  %.not.i.i.i411.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i411.i, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  invoke void @_ZSt16__throw_bad_castv() #33
          to label %.noexc412.i unwind label %bb.bb

.noexc412.i:                                      ; preds = %bb.af
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !208
  %.not.i1.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i1.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 67
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !36
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cf)
          to label %.noexc413.i unwind label %bb.bb

.noexc413.i:                                      ; preds = %bb.ah
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef signext i8 %i.cm(ptr noundef nonnull align 8 dereferenceable(570) %i.cf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %bb.bb, !inline_history !214

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc413.i, %bb.ag
  %.0.i.i.i.i105 = phi i8 [ %i.cj, %bb.ag ], [ %i.cn, %.noexc413.i ]
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %.0.i.i.i.i105)
          to label %.noexc415.i unwind label %bb.bb

.noexc415.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %_ZNSolsEPFRSoS_E.exit.i unwind label %bb.bb ; 2 uses

_ZNSolsEPFRSoS_E.exit.i:                          ; preds = %.noexc415.i
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.33, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164.i unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164.i: ; preds = %_ZNSolsEPFRSoS_E.exit.i
  %i.cr = load ptr, ptr %2, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !35
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cr, i64 noundef %i.ct)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.bb ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.cv, ptr %6, align 8, !tbaa !34, !alias.scope !221
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !35, !alias.scope !221
  store i8 0, ptr %i.cv, align 8, !tbaa !36, !alias.scope !221
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %46 = load ptr, ptr %45, align 8, !tbaa !161, !noalias !221 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %46, null
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !221 ; 2 uses
  %47 = icmp ugt ptr %46, %i.cy
  %.08.i.i.i.i = select i1 %47, ptr %46, ptr %i.cy ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i106 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i106, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !163, !noalias !221 ; 2 uses
  %i.db = ptrtoint ptr %.08.i.i.i.i to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.da, i64 noundef %i.dd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.df = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.dg = load ptr, ptr %6, align 8, !tbaa !47, !alias.scope !221 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cv
  br i1 %i.dh, label %.body.i, label %.body.i.sink.split

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.aj

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.ak, %bb.ai
  invoke void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.al unwind label %bb.bc

bb.al:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.dj = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cv
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.al
  %i.dl = load i64, ptr %i.cv, align 8, !tbaa !36
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.dn = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  store ptr %i.dn, ptr %5, align 8, !tbaa !14
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 3 uses
  %i.dp = getelementptr i8, ptr %i.dn, i64 -24    ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %5, i64 %i.dq
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ds, align 8, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !47 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !36
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ds, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dz) #32
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ea) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.eb, ptr %7, align 8, !tbaa !34
  store i8 10, ptr %i.eb, align 8, !tbaa !36
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 1, ptr %i.ec, align 8, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.ed, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ee, ptr %8, align 8, !tbaa !34
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ef, align 8, !tbaa !35
  store i8 0, ptr %i.ee, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.eg, ptr %9, align 8, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.eh, align 8, !tbaa !35
  store i8 0, ptr %i.eg, align 8, !tbaa !36
  invoke void @_ZN8pystring2os4path8splitextERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKS7_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %._crit_edge.i.i165.i unwind label %bb.be

._crit_edge.i.i165.i:                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ei, ptr %11, align 8, !tbaa !34
  store i8 46, ptr %i.ei, align 8, !tbaa !36
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.ek, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.el, ptr %12, align 8, !tbaa !34
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.em, align 8, !tbaa !35
  store i8 0, ptr %i.el, align 8, !tbaa !36
  invoke void @_ZN8pystring7replaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 1)
          to label %bb.am unwind label %bb.bf

bb.am:                                            ; preds = %._crit_edge.i.i165.i
  %i.en = load ptr, ptr %9, align 8, !tbaa !47    ; 6 uses
  %i.eo = icmp eq ptr %i.en, %i.eg
  %i.ep = load ptr, ptr %10, align 8, !tbaa !47   ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.er = icmp eq ptr %i.ep, %i.eq                ; 2 uses
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  br i1 %i.er, label %bb.an, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.am
  br i1 %i.er, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !35 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  switch i64 %i.et, label %bb.ap [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ev = load i8, ptr %i.ep, align 1, !tbaa !36
  store i8 %i.ev, ptr %i.en, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.ep, i64 %i.et, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.ew = load i64, ptr %i.es, align 8, !tbaa !35 ; 2 uses
  store i64 %i.ew, ptr %i.eh, align 8, !tbaa !35
  %i.ex = load ptr, ptr %9, align 8, !tbaa !47
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1, !tbaa !36
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.ep, ptr %9, align 8, !tbaa !47
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fa = load <2 x i64>, ptr %i.ez, align 8, !tbaa !36
  store <2 x i64> %i.fa, ptr %i.eh, align 8, !tbaa !36
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fb = load i64, ptr %i.eg, align 8, !tbaa !36
  store ptr %i.ep, ptr %9, align 8, !tbaa !47
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fd = load <2 x i64>, ptr %i.fc, align 8, !tbaa !36
  store <2 x i64> %i.fd, ptr %i.eh, align 8, !tbaa !36
  %.not.i.i107 = icmp eq ptr %i.en, null
  br i1 %.not.i.i107, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.en, ptr %10, align 8, !tbaa !47
  store i64 %i.fb, ptr %i.eq, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.eq, ptr %10, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ar, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.fe = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.en, %bb.aq ], [ %i.eq, %bb.ar ]
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ff, align 8, !tbaa !35
  store i8 0, ptr %i.fe, align 1, !tbaa !36
  %i.fg = load ptr, ptr %10, align 8, !tbaa !47   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !36
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i
  %i.fl = load ptr, ptr %12, align 8, !tbaa !47   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.el
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i
  %i.fn = load i64, ptr %i.el, align 8, !tbaa !36
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #35
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i: ; preds = %bb.bf
  %i.hr = load i64, ptr %i.el, align 8, !tbaa !36
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.ht = load ptr, ptr %11, align 8, !tbaa !47   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ei
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i
  %i.hv = load i64, ptr %i.ei, align 8, !tbaa !36
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ii

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i
  %i.hx = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ii

bb.bh:                                            ; preds = %bb.as
  %i.hy = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ig

bb.bi:                                            ; preds = %bb.av, %bb.au
  %i.hz = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.dd

bb.bj:                                            ; preds = %bb.ax
  %i.ia = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bo

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit186.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184.i, %bb.ay
  %i.ib = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.thread.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192.i
  %i.ic = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.bm

bb.bl:                                            ; preds = %bb.ba, %bb.az
  %.098.i = phi i1 [ false, %bb.ba ], [ true, %bb.az ] ; 2 uses
  %i.id = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 4 uses
  %i.ie = load ptr, ptr %16, align 8, !tbaa !47   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.gf
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i: ; preds = %bb.bl
  %i.ig = load i64, ptr %i.gf, align 8, !tbaa !36
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br i1 %.098.i, label %bb.bm, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br i1 %.098.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.thread.i
  %.pn134460.i = phi { ptr, i32 } [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.thread.i ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i ]
  call void @__cxa_free_exception(ptr %i.hf) #32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i, %bb.bk
  %.pn134.pn.i = phi { ptr, i32 } [ %.pn134460.i, %bb.bm ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204.i ], [ %i.ib, %bb.bk ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bj
  %.pn134.pn.pn.i = phi { ptr, i32 } [ %.pn134.pn.i, %bb.bn ], [ %i.ia, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.dd

bb.bp:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.ii = load ptr, ptr %i.gk, align 8, !tbaa !14
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.61") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3)
          to label %bb.bq unwind label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  %i.il = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_521IsDebugLoggingEnabledEv()
          to label %bb.br unwind label %bb.cd

bb.br:                                            ; preds = %bb.bq
  br i1 %i.il, label %bb.bs, label %.critedge.i

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.bt unwind label %bb.ce

bb.bt:                                            ; preds = %bb.bs
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.39, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.i unwind label %bb.cf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.i: ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  invoke void @_ZNK16OpenColorIO_v2_510FileFormat7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %bb.bu unwind label %bb.cg

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.i
  %i.in = load ptr, ptr %19, align 8, !tbaa !47
  %i.io = load i64, ptr %i.fx, align 8, !tbaa !35
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.in, i64 noundef %i.io)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit208.i unwind label %bb.ch ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit208.i: ; preds = %bb.bu
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !14
  %i.ir = getelementptr i8, ptr %i.iq, i64 -24
  %i.is = load i64, ptr %i.ir, align 8
  %i.it = getelementptr inbounds i8, ptr %i.ip, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 240
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !201 ; 6 uses
  %.not.i.i.i417.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i417.i, label %bb.bv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i418.i

bb.bv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit208.i
  invoke void @_ZSt16__throw_bad_castv() #33
          to label %.noexc422.i unwind label %bb.ch

.noexc422.i:                                      ; preds = %bb.bv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i418.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit208.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !208
  %.not.i1.i.i419.i = icmp eq i8 %i.ix, 0
  br i1 %.not.i1.i.i419.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i418.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 67
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !36
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i420.i

bb.bx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i418.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iv)
          to label %.noexc423.i unwind label %bb.ch

.noexc423.i:                                      ; preds = %bb.bx
  %i.ja = load ptr, ptr %i.iv, align 8, !tbaa !14
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = invoke noundef signext i8 %i.jc(ptr noundef nonnull align 8 dereferenceable(570) %i.iv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i420.i unwind label %bb.ch, !inline_history !214

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i420.i: ; preds = %.noexc423.i, %bb.bw
  %.0.i.i.i421.i = phi i8 [ %i.iz, %bb.bw ], [ %i.jd, %.noexc423.i ]
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, i8 noundef signext %.0.i.i.i421.i)
          to label %.noexc425.i unwind label %bb.ch

.noexc425.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i420.i
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.je)
          to label %_ZNSolsEPFRSoS_E.exit210.i unwind label %bb.ch ; 0 uses

_ZNSolsEPFRSoS_E.exit210.i:                       ; preds = %.noexc425.i
  %i.jg = load ptr, ptr %19, align 8, !tbaa !47   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.fy
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i: ; preds = %_ZNSolsEPFRSoS_E.exit210.i
  %i.ji = load i64, ptr %i.fy, align 8, !tbaa !36
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i: ; preds = %_ZNSolsEPFRSoS_E.exit210.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  store ptr %i.fz, ptr %20, align 8, !tbaa !34, !alias.scope !229
  store i64 0, ptr %i.ga, align 8, !tbaa !35, !alias.scope !229
  store i8 0, ptr %i.fz, align 8, !tbaa !36, !alias.scope !229
  %i.jk = load ptr, ptr %i.gb, align 8, !tbaa !161, !noalias !229 ; 3 uses
  %.not.i.not.i.i214.i = icmp eq ptr %i.jk, null
  %48 = load ptr, ptr %i.gc, align 8, !noalias !229 ; 2 uses
  %49 = icmp ugt ptr %i.jk, %48
  %.08.i.i.i215.i = select i1 %49, ptr %i.jk, ptr %48 ; 2 uses
  %.not5.i.i216.i = icmp eq ptr %.08.i.i.i215.i, null
  %.not.i.i217.i = select i1 %.not.i.not.i.i214.i, i1 true, i1 %.not5.i.i216.i
  br i1 %.not.i.i217.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i
  %i.jl = load ptr, ptr %i.gd, align 8, !tbaa !163, !noalias !229 ; 2 uses
  %i.jm = ptrtoint ptr %.08.i.i.i215.i to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.jl, i64 noundef %i.jo)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit223.i unwind label %bb.bz ; 0 uses

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %i.jq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.jr = load ptr, ptr %20, align 8, !tbaa !47, !alias.scope !229 ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.fz
  br i1 %i.js, label %.body221.i, label %.body221.i.sink.split

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.ge)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit223.i unwind label %bb.bz

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit223.i: ; preds = %bb.ca, %bb.by
  invoke void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit223.i
  %i.jt = load ptr, ptr %20, align 8, !tbaa !47   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.fz
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i: ; preds = %bb.cb
  %i.jv = load i64, ptr %i.fz, align 8, !tbaa !36
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  store ptr %i.dn, ptr %18, align 8, !tbaa !14
  %i.jx = load i64, ptr %i.dp, align 8
  %i.jy = getelementptr inbounds i8, ptr %18, i64 %i.jx
  store ptr %i.do, ptr %i.jy, align 8, !tbaa !14
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jz, align 8, !tbaa !14
  %i.ka = load ptr, ptr %i.ge, align 8, !tbaa !47 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit229.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i227.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i227.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !36
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit229.i

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit229.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i227.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jz, align 8, !tbaa !14
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kf) #32
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kg) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %.critedge.i

bb.cc:                                            ; preds = %bb.bp
  %i.kh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.dc

bb.cd:                                            ; preds = %bb.bq
  %i.ki = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.db

bb.ce:                                            ; preds = %bb.bs
  %i.kj = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ck

bb.cf:                                            ; preds = %bb.bt
  %i.kk = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.cj

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.i
  %i.kl = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i

bb.ch:                                            ; preds = %.noexc425.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i420.i, %.noexc423.i, %bb.bx, %bb.bv, %bb.bu
  %i.km = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.kn = load ptr, ptr %19, align 8, !tbaa !47   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.fy
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.i: ; preds = %bb.ch
  %i.kp = load i64, ptr %i.fy, align 8, !tbaa !36
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.i, %bb.cg
  %.pn138.i = phi { ptr, i32 } [ %i.kl, %bb.cg ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.i ], [ %i.km, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.cj

bb.ci:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit223.i
  %i.kr = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ks = load ptr, ptr %20, align 8, !tbaa !47   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.fz
  br i1 %i.kt, label %.body221.i, label %.body221.i.sink.split

.body221.i.sink.split:                            ; preds = %bb.ci, %bb.bz
  %.sink753 = phi ptr [ %i.jr, %bb.bz ], [ %i.ks, %bb.ci ]
  %.pn140.i.ph = phi { ptr, i32 } [ %i.jq, %bb.bz ], [ %i.kr, %bb.ci ]
  %i.ku = load i64, ptr %i.fz, align 8, !tbaa !36
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %.sink753, i64 noundef %i.kv) #35
  br label %.body221.i

.body221.i:                                       ; preds = %.body221.i.sink.split, %bb.ci, %bb.bz
  %.pn140.i = phi { ptr, i32 } [ %i.jq, %bb.bz ], [ %i.kr, %bb.ci ], [ %.pn140.i.ph, %.body221.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.cj

bb.cj:                                            ; preds = %.body221.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i, %bb.cf
  %.pn140.pn.i = phi { ptr, i32 } [ %.pn140.i, %.body221.i ], [ %.pn138.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i ], [ %i.kk, %bb.cf ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #32
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ce
  %.pn140.pn.pn.i = phi { ptr, i32 } [ %.pn140.pn.i, %bb.cj ], [ %i.kj, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.db

.critedge.i:                                      ; preds = %bb.br, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit229.i
  store ptr %i.gk, ptr %i.bx, align 8, !tbaa !103
  %i.kw = load ptr, ptr %17, align 8, !tbaa !230
  store ptr %i.kw, ptr %i.by, align 8, !tbaa !230
  %i.kx = getelementptr inbounds nuw i8, ptr %.val74, i64 64 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !13 ; 5 uses
  %i.la = load ptr, ptr %i.kx, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.kz, %i.la
  br i1 %.not.i.i.i.i108, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_510CachedFileEEaSERKS2_.exit.i, label %bb.cl

bb.cl:                                            ; preds = %.critedge.i
  %.not7.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 3 uses
  %i.lc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i236.i = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i.i236.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ld = load i32, ptr %i.lb, align 4, !tbaa !3
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.lb, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.lf = atomicrmw volatile add ptr %i.lb, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.kx, align 8, !tbaa !13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.co, %bb.cn, %bb.cl
  %i.lg = phi ptr [ %i.la, %bb.cl ], [ %i.la, %bb.cn ], [ %.pr.pre.i.i.i.i, %bb.co ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 4 uses
  %i.li = load atomic i64, ptr %i.lh acquire, align 8 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 4294967297
  %i.lk = trunc i64 %i.li to i32                  ; 2 uses
  br i1 %i.lj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.lh, align 8, !tbaa !17
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  store i32 0, ptr %i.ll, align 4, !tbaa !19
  %i.lm = load ptr, ptr %i.lg, align 8, !tbaa !14
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(16) %i.lg) #32, !inline_history !231
  %i.lp = load ptr, ptr %i.lg, align 8, !tbaa !14
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(16) %i.lg) #32, !inline_history !231
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.thread.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290.i
  %i.sj = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ev, %bb.eu
  %.048.i = phi i1 [ false, %bb.ev ], [ true, %bb.eu ] ; 2 uses
  %i.sk = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 4 uses
  %i.sl = load ptr, ptr %28, align 8, !tbaa !47   ; 2 uses
  %i.sm = icmp eq ptr %i.sl, %i.pt
  br i1 %i.sm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i: ; preds = %bb.fa
  %i.sn = load i64, ptr %i.pt, align 8, !tbaa !36
  %i.so = add i64 %i.sn, 1
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef %i.so) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br i1 %.048.i, label %bb.fb, label %bb.fc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i: ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br i1 %.048.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.thread.i
  %.pn110463.i = phi { ptr, i32 } [ %i.sj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.thread.i ], [ %i.sk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i ], [ %i.sk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i ]
  call void @__cxa_free_exception(ptr %i.sd) #32
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i, %bb.ez
  %.pn110.pn.i = phi { ptr, i32 } [ %.pn110463.i, %bb.fb ], [ %i.sk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i ], [ %i.si, %bb.ez ], [ %i.sk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %27) #32
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ey
  %.pn110.pn.pn.i = phi { ptr, i32 } [ %.pn110.pn.i, %bb.fc ], [ %i.sh, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.gi

bb.fe:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.sp = load ptr, ptr %i.pz, align 8, !tbaa !14
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  %i.sr = load ptr, ptr %i.sq, align 8
  invoke void %i.sr(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.61") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %i.pz, ptr noundef nonnull align 8 dereferenceable(16) %i.rn, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3)
          to label %bb.ff unwind label %bb.ga

bb.ff:                                            ; preds = %bb.fe
  %i.ss = load <2 x ptr>, ptr %29, align 16, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.st = load ptr, ptr %i.pk, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.ss, ptr %25, align 16, !tbaa !88
  %.not.i.i.i.i294.i = icmp eq ptr %i.st, null
  br i1 %.not.i.i.i.i294.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit299.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8 ; 4 uses
  %i.sv = load atomic i64, ptr %i.su acquire, align 8 ; 2 uses
  %i.sw = icmp eq i64 %i.sv, 4294967297
  %i.sx = trunc i64 %i.sv to i32                  ; 2 uses
  br i1 %i.sw, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 0, ptr %i.su, align 8, !tbaa !17
  %i.sy = getelementptr inbounds nuw i8, ptr %i.st, i64 12
  store i32 0, ptr %i.sy, align 4, !tbaa !19
  %i.sz = load ptr, ptr %i.st, align 8, !tbaa !14
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(16) %i.st) #32, !inline_history !237
  %i.tc = load ptr, ptr %i.st, align 8, !tbaa !14
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  %i.te = load ptr, ptr %i.td, align 8
  call void %i.te(ptr noundef nonnull align 8 dereferenceable(16) %i.st) #32, !inline_history !237
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_510CachedFileEEaSEOS2_.exit.i

bb.fi:                                            ; preds = %bb.fg
  %i.tf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i.i = icmp eq i8 %i.tf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tg = add nsw i32 %i.sx, -1
  store i32 %i.tg, ptr %i.su, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.fk:                                            ; preds = %bb.fi
  %i.th = atomicrmw volatile add ptr %i.su, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.fk, %bb.fj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sx, %bb.fj ], [ %i.th, %bb.fk ]
  %i.ti = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ti, label %bb.fl, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_510CachedFileEEaSEOS2_.exit.i, !prof !46

bb.fl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.st) #32
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_510CachedFileEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_510CachedFileEEaSEOS2_.exit.i: ; preds = %bb.fh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.fl
  %.pr834.i = load ptr, ptr %i.pj, align 8, !tbaa !13 ; 8 uses
  %.not.i.i295.i = icmp eq ptr %.pr834.i, null
  br i1 %.not.i.i295.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit299.i, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_510CachedFileEEaSEOS2_.exit.i
  %i.tj = getelementptr inbounds nuw i8, ptr %.pr834.i, i64 8 ; 4 uses
  %i.tk = load atomic i64, ptr %i.tj acquire, align 8 ; 2 uses
  %i.tl = icmp eq i64 %i.tk, 4294967297
  %i.tm = trunc i64 %i.tk to i32                  ; 2 uses
  br i1 %i.tl, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  store i32 0, ptr %i.tj, align 8, !tbaa !17
  %i.tn = getelementptr inbounds nuw i8, ptr %.pr834.i, i64 12
  store i32 0, ptr %i.tn, align 4, !tbaa !19
  %i.to = load ptr, ptr %.pr834.i, align 8, !tbaa !14
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8
  call void %i.tq(ptr noundef nonnull align 8 dereferenceable(16) %.pr834.i) #32, !inline_history !232
  %i.tr = load ptr, ptr %.pr834.i, align 8, !tbaa !14
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tt = load ptr, ptr %i.ts, align 8
  call void %i.tt(ptr noundef nonnull align 8 dereferenceable(16) %.pr834.i) #32, !inline_history !232
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit299.i

bb.fo:                                            ; preds = %bb.fm
  %i.tu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i296.i = icmp eq i8 %i.tu, 0
  br i1 %.not.i.i.i296.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.tv = add nsw i32 %i.tm, -1
  store i32 %i.tv, ptr %i.tj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i297.i

bb.fq:                                            ; preds = %bb.fo
  %i.tw = atomicrmw volatile add ptr %i.tj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i297.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i297.i: ; preds = %bb.fq, %bb.fp
  %.0.i.i.i.i298.i = phi i32 [ %i.tm, %bb.fp ], [ %i.tw, %bb.fq ]
  %i.tx = icmp eq i32 %.0.i.i.i.i298.i, 1
  br i1 %i.tx, label %bb.fr, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit299.i, !prof !46

bb.fr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i297.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr834.i) #32
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit299.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit299.i: ; preds = %bb.ff, %bb.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i297.i, %bb.fn, %_ZNSt10shared_ptrIN16OpenColorIO_v2_510CachedFileEEaSEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.ty = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_521IsDebugLoggingEnabledEv()
          to label %bb.fs unwind label %bb.ex

bb.fs:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_510CachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit299.i
  br i1 %i.ty, label %bb.ft, label %.loopexit.i

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %30)
          to label %bb.fu unwind label %bb.gb

bb.fu:                                            ; preds = %bb.ft
  %i.tz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull @.str.46, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.i unwind label %bb.gc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.i: ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  invoke void @_ZNK16OpenColorIO_v2_510FileFormat7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(8) %i.pz)
          to label %bb.fv unwind label %bb.gd

bb.fv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.i
  %i.ua = load ptr, ptr %31, align 8, !tbaa !47
  %i.ub = load i64, ptr %i.pl, align 8, !tbaa !35
  %i.uc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %i.ua, i64 noundef %i.ub)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303.i unwind label %bb.ge ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303.i: ; preds = %bb.fv
  %i.ud = load ptr, ptr %31, align 8, !tbaa !47   ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.pm
  br i1 %i.ue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303.i
  %i.uf = load i64, ptr %i.pm, align 8, !tbaa !36
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.ug) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  store ptr %i.pn, ptr %32, align 8, !tbaa !34, !alias.scope !244
  store i64 0, ptr %i.po, align 8, !tbaa !35, !alias.scope !244
  store i8 0, ptr %i.pn, align 8, !tbaa !36, !alias.scope !244
  %i.uh = load ptr, ptr %i.pp, align 8, !tbaa !161, !noalias !244 ; 3 uses
  %.not.i.not.i.i307.i = icmp eq ptr %i.uh, null
  %50 = load ptr, ptr %i.pq, align 8, !noalias !244 ; 2 uses
  %51 = icmp ugt ptr %i.uh, %50
  %.08.i.i.i308.i = select i1 %51, ptr %i.uh, ptr %50 ; 2 uses
  %.not5.i.i309.i = icmp eq ptr %.08.i.i.i308.i, null
  %.not.i.i310.i = select i1 %.not.i.not.i.i307.i, i1 true, i1 %.not5.i.i309.i
  br i1 %.not.i.i310.i, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.i
  %i.ui = load ptr, ptr %i.pr, align 8, !tbaa !163, !noalias !244 ; 2 uses
  %i.uj = ptrtoint ptr %.08.i.i.i308.i to i64
  %i.uk = ptrtoint ptr %i.ui to i64
  %i.ul = sub i64 %i.uj, %i.uk
  %i.um = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef 0, i64 noundef 0, ptr noundef %i.ui, i64 noundef %i.ul)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316.i unwind label %bb.fx ; 0 uses

bb.fx:                                            ; preds = %bb.fy, %bb.fw
  %i.un = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.uo = load ptr, ptr %32, align 8, !tbaa !47, !alias.scope !244 ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.pn
  br i1 %i.up, label %.body314.i, label %.body314.i.sink.split

bb.fy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %i.ps)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316.i unwind label %bb.fx

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316.i: ; preds = %bb.fy, %bb.fw
  invoke void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.fz unwind label %bb.gf

bb.fz:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316.i
  %i.uq = load ptr, ptr %32, align 8, !tbaa !47   ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.pn
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317.i: ; preds = %bb.fz
  %i.us = load i64, ptr %i.pn, align 8, !tbaa !36
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ut) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319.i: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  store ptr %i.dn, ptr %30, align 8, !tbaa !14
  %i.uu = load i64, ptr %i.dp, align 8
  %i.uv = getelementptr inbounds i8, ptr %30, i64 %i.uu
  store ptr %i.do, ptr %i.uv, align 8, !tbaa !14
  %i.uw = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.uw, align 8, !tbaa !14
  %i.ux = load ptr, ptr %i.ps, align 8, !tbaa !47 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %30, i64 96 ; 2 uses
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i320.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i320.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319.i
  %i.va = load i64, ptr %i.uy, align 8, !tbaa !36
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.vb) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322.i

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit322.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i320.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.uw, align 8, !tbaa !14
  %i.vc = getelementptr inbounds nuw i8, ptr %30, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.vc) #32
  %i.vd = getelementptr inbounds nuw i8, ptr %30, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.vd) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %.loopexit.i

bb.ga:                                            ; preds = %bb.fe
  %i.ve = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %bb.gi

bb.gb:                                            ; preds = %bb.ft
  %i.vf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.gh

bb.gc:                                            ; preds = %bb.fu
  %i.vg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.gg

bb.gd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.i
  %i.vh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i

bb.ge:                                            ; preds = %bb.fv
  %i.vi = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.vj = load ptr, ptr %31, align 8, !tbaa !47   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.pm
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i: ; preds = %bb.ge
  %i.vl = load i64, ptr %i.pm, align 8, !tbaa !36
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i, %bb.gd
  %.pn114.i = phi { ptr, i32 } [ %i.vh, %bb.gd ], [ %i.vi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i ], [ %i.vi, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br label %bb.gg

bb.gf:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316.i
  %i.vn = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.vo = load ptr, ptr %32, align 8, !tbaa !47   ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.pn
  br i1 %i.vp, label %.body314.i, label %.body314.i.sink.split

.body314.i.sink.split:                            ; preds = %bb.gf, %bb.fx
  %.sink756 = phi ptr [ %i.uo, %bb.fx ], [ %i.vo, %bb.gf ]
  %.pn116.i.ph = phi { ptr, i32 } [ %i.un, %bb.fx ], [ %i.vn, %bb.gf ]
  %i.vq = load i64, ptr %i.pn, align 8, !tbaa !36
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %.sink756, i64 noundef %i.vr) #35
  br label %.body314.i

.body314.i:                                       ; preds = %.body314.i.sink.split, %bb.gf, %bb.fx
  %.pn116.i = phi { ptr, i32 } [ %i.un, %bb.fx ], [ %i.vn, %bb.gf ], [ %.pn116.i.ph, %.body314.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  br label %bb.gg

bb.gg:                                            ; preds = %.body314.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i, %bb.gc
  %.pn116.pn.i = phi { ptr, i32 } [ %.pn116.i, %.body314.i ], [ %.pn114.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i ], [ %i.vg, %bb.gc ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %30) #32
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gb
  %.pn116.pn.pn.i = phi { ptr, i32 } [ %.pn116.pn.i, %bb.gg ], [ %i.vf, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ga, %bb.fd, %bb.ex, %bb.ew
  %.sroa.0.0.i = phi ptr [ %i.rn, %bb.gh ], [ %i.rn, %bb.ex ], [ %i.rn, %bb.ga ], [ %i.rn, %bb.fd ], [ null, %bb.ew ] ; 6 uses
  %.pn116.pn.pn.pn.i = phi { ptr, i32 } [ %.pn116.pn.pn.i, %bb.gh ], [ %i.sg, %bb.ex ], [ %i.ve, %bb.ga ], [ %.pn110.pn.pn.i, %bb.fd ], [ %i.sf, %bb.ew ] ; 2 uses
  %.29.i = extractvalue { ptr, i32 } %.pn116.pn.pn.pn.i, 0 ; 2 uses
  %.2979.i = extractvalue { ptr, i32 } %.pn116.pn.pn.pn.i, 1 ; 2 uses
  %i.vs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #32
  %i.vt = icmp eq i32 %.2979.i, %i.vs
  br i1 %i.vt, label %bb.gj, label %.loopexit482.i

bb.gj:                                            ; preds = %bb.gi
  %i.vu = call ptr @__cxa_begin_catch(ptr %.29.i) #32 ; 2 uses
  %i.vv = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_521IsDebugLoggingEnabledEv()
          to label %bb.gk unwind label %bb.hb

bb.gk:                                            ; preds = %bb.gj
  br i1 %i.vv, label %bb.gl, label %bb.hk

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %33)
          to label %bb.gm unwind label %bb.hc

bb.gm:                                            ; preds = %bb.gl
  %i.vw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.47, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330.i unwind label %bb.hd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330.i: ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  invoke void @_ZNK16OpenColorIO_v2_510FileFormat7getNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %i.pz)
          to label %bb.gn unwind label %bb.he

bb.gn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330.i
  %i.vx = load ptr, ptr %34, align 8, !tbaa !47
  %i.vy = load i64, ptr %i.pu, align 8, !tbaa !35
  %i.vz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %i.vx, i64 noundef %i.vy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit332.i unwind label %bb.hf ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit332.i: ; preds = %bb.gn
  %i.wa = load ptr, ptr %34, align 8, !tbaa !47   ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.pv
  br i1 %i.wb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.i.a: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit332.i
  %i.wc = load i64, ptr %i.pv, align 8, !tbaa !36
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.wd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i.a: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit332.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.we = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.43, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337.i unwind label %bb.hd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i.a
  %i.wf = load ptr, ptr %i.vu, align 8, !tbaa !14
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = call noundef ptr %i.wh(ptr noundef nonnull align 8 dereferenceable(8) %i.vu) #32, !inline_history !234
  %i.wj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %i.wi)
          to label %bb.go unwind label %bb.hd     ; 0 uses

bb.go:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(112) %33)
          to label %bb.gp unwind label %bb.hg
end_hunk_3
