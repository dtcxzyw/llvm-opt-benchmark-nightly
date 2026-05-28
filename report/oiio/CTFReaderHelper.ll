inline.NumInlined: 5804
inline.NumDeleted: 1972
begin_hunk_0_@_ZN16OpenColorIO_v2_516CTFReaderACESElt5startEPPKc:bb.a
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.o = extractvalue { ptr, i32 } %i.n, 1
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #31
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, i32 } %i.n, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.z = load i64, ptr %i.d, align 8, !tbaa !36
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @__cxa_end_catch()
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.i
  %i.af = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.h
  %.pn23 = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ah = add i32 %.01940, 2                      ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !501

.thread:                                          ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store i32 %i.m, ptr %i.al, align 8, !tbaa !502
  %i.am = add i32 %.01940, 2                      ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %.not54 = icmp eq ptr %i.ap, null
  br i1 %.not54, label %._crit_edge.thread, label %.outer, !llvm.loop !501

._crit_edge:                                      ; preds = %bb.j
  br i1 %.041.ph, label %._crit_edge.thread, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 45, ptr %i.a, align 8, !tbaa !45
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ar, ptr %4, align 8, !tbaa !46
  %i.as = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.ar, ptr noundef nonnull align 1 dereferenceable(45) @.str.67, i64 45, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.noexc
  %i.av = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aq
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.k
  %i.ax = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %._crit_edge.thread

bb.l:                                             ; preds = %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.m:                                             ; preds = %.noexc
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.m
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.l
  %.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit

._crit_edge.thread:                               ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %._crit_edge
  ret void

.loopexit:                                        ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.merged = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.n, %bb.d ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #35
  unreachable
}

declare noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData8GetStyleEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_516CTFReaderACESElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_516CTFReaderACESElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_516CTFReaderACESElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522CTFReaderACESParamsEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !76
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !32
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_522CTFReaderACESParamsEltE, i64 16), ptr %0, align 8, !tbaa !11
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522CTFReaderACESParamsEltD2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !88
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(96) %0) #31, !inline_history !88
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_515CTFReaderCDLEltD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !555
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !555
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_514CTFReaderOpEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !32
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !499
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !499
  br label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !500
  br label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit

_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit:   ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #31, !inline_history !500
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_515CTFReaderCDLEltD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_515CTFReaderCDLEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515CTFReaderCDLElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph
  %.ph = phi ptr [ %i.s, %.thread ], [ %i.a, %.lr.ph ]
  %.013.ph = phi i32 [ %i.p, %.thread ], [ 0, %.lr.ph ]
  %.0912.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph ]
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  br i1 %.0912.ph, label %._crit_edge.thread, label %.critedge

bb.b:                                             ; preds = %.outer, %bb.c
  %i.c = phi ptr [ %i.i, %bb.c ], [ %.ph, %.outer ]
  %.013 = phi i32 [ %i.f, %bb.c ], [ %.013.ph, %.outer ] ; 3 uses
  %i.d = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull %i.c)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %.013, 2                         ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !556

.thread:                                          ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !551
  %i.k = or disjoint i32 %.013, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = tail call noundef i32 @_ZN16OpenColorIO_v2_59CDLOpData8GetStyleEPKc(ptr noundef %i.n)
  tail call void @_ZN16OpenColorIO_v2_59CDLOpData8setStyleENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(256) %i.j, i32 noundef %i.o)
  %i.p = add i32 %.013, 2                         ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43   ; 2 uses
  %.not16 = icmp eq ptr %i.s, null
  br i1 %.not16, label %._crit_edge.thread, label %.outer, !llvm.loop !556

.critedge:                                        ; preds = %bb.a, %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !551
  tail call void @_ZN16OpenColorIO_v2_59CDLOpData8setStyleENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(256) %i.u, i32 noundef 0)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread, %.critedge, %._crit_edge
  ret void
}

declare void @_ZN16OpenColorIO_v2_59CDLOpData8setStyleENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN16OpenColorIO_v2_59CDLOpData8GetStyleEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_515CTFReaderCDLElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515CTFReaderCDLElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !551  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(256) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_515CTFReaderCDLElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_9CDLOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_9CDLOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_9CDLOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_9CDLOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_515CTFReaderCDLElt6getCDLEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(120) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519CTFReaderSatNodeEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_523XmlReaderSatNodeBaseEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %5, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !32
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31, !inline_history !77
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i5 = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN16OpenColorIO_v2_519CTFReaderSatNodeEltE, i64 16), ptr %0, align 8, !tbaa !11
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_523XmlReaderSatNodeBaseEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_519XmlReaderComplexEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !76
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !32
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_510GetNumbersIdEESt6vectorIT_SaIS2_EEPKcm:bb.a
    i8 9, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 12, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
    i8 44, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i27.i, i64 1
  %i.q = add i64 %.012.i26.i, 1                   ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i28.i, label %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, label %bb.g, !llvm.loop !134

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i: ; preds = %bb.h, %bb.e
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIdEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit unwind label %.loopexit

_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i:     ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  invoke void @_ZN16OpenColorIO_v2_511ParseNumberIdEEvPKcmmRT_(ptr noundef %1, i64 noundef %.012.i.i, i64 noundef %.012.i26.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i
  %.not.i29.i = icmp ult i64 %.012.i26.i, %2
  br i1 %.not.i29.i, label %bb.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit

bb.i:                                             ; preds = %.noexc11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i26.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.i
  %.012.i31.i = phi i64 [ %.012.i26.i, %bb.i ], [ %i.u, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %.0.i32.i = phi ptr [ %i.r, %bb.i ], [ %i.t, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ] ; 2 uses
  %i.s = load i8, ptr %.0.i32.i, align 1, !tbaa !36
  switch i8 %i.s, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit [
    i8 32, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 13, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 11, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 10, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 9, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 12, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
    i8 44, label %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i
  ]

_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i: ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 1
  %i.u = add i64 %.012.i31.i, 1                   ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.u, %2
  br i1 %exitcond.not.i34.i, label %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit, label %bb.j, !llvm.loop !133

_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit: ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i, %bb.j, %.noexc11, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %bb.b
  %.1 = phi i64 [ %2, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit.i ], [ %2, %.noexc11 ], [ %2, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i ], [ %2, %bb.b ], [ %.012.i31.i, %bb.j ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i33.i ], [ %2, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit
  %i.v = load double, ptr %i.a, align 8, !tbaa !147
  store double %i.v, ptr %i.h, align 8, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !521
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_513GetNextNumberIdEEvPKcmRmRT_.exit
  %i.x = ptrtoint ptr %i.g to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.m, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.193) #34
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  %i.aj = load double, ptr %i.a, align 8, !tbaa !147
  store double %i.aj, ptr %i.ai, align 8, !tbaa !147
  %i.ak = icmp sgt i64 %i.z, 0
  br i1 %i.ak, label %bb.n, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.i, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #33
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !521
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.am, ptr %i.f, align 8, !tbaa !530
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.k
  %i.an = phi ptr [ %i.am, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.g, %bb.k ]
  %i.ao = phi ptr [ %i.al, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.w, %bb.k ]
  %i.ap = phi ptr [ %i.ah, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not = icmp eq i64 %.1, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !567

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.thread.i, %_ZN16OpenColorIO_v2_59FindDelimEPKcmm.exit.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i15 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.q

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit
  %.lcssa = phi ptr [ null, %_ZN16OpenColorIO_v2_518FindNextTokenStartEPKcmm.exit ], [ %i.ap, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ], [ null, %_ZN16OpenColorIO_v2_517IsNumberDelimiterEc.exit.thread.i ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  %i.aq = ptrtoint ptr %i.g to i64
  %i.ar = ptrtoint ptr %i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.as) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_525CTFReaderFixedFunctionElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L11ATTR_PARAMSE, ptr noundef %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %i.d, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.f = phi i1 [ true, %bb.c ], [ true, %bb.a ], [ %i.e, %bb.e ]
  ret i1 %i.f

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_525CTFReaderFixedFunctionElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_525CTFReaderFixedFunctionElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderFunctionEltC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_520CTFReaderFunctionEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  store ptr null, ptr %i.a, align 8, !tbaa !494, !alias.scope !568
  %i.b = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #32
          to label %.noexc unwind label %bb.c     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !27, !noalias !568
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !32, !noalias !568
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !11, !noalias !568
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i32 noundef 0)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !568

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 216) #33, !noalias !568
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.b, ptr %i.g, align 8, !tbaa !34, !alias.scope !568
  store ptr %i.e, ptr %i.a, align 8, !tbaa !497, !alias.scope !568
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderFunctionEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_520CTFReaderFunctionEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !498
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !498
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_514CTFReaderOpEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !32
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !499
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !499
  br label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !500
  br label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit

_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit:   ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #31, !inline_history !500
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderFunctionEltD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_520CTFReaderFunctionEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderFunctionElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_520CTFReaderFunctionElt5startEPPKc:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.o = extractvalue { ptr, i32 } %i.n, 1
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #31
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, i32 } %i.n, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.z = load i64, ptr %i.d, align 8, !tbaa !36
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @__cxa_end_catch()
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.i
  %i.af = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.h
  %.pn23 = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ah = add i32 %.01940, 2                      ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !571

.thread:                                          ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store i32 %i.m, ptr %i.al, align 8, !tbaa !502
  %i.am = add i32 %.01940, 2                      ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %.not54 = icmp eq ptr %i.ap, null
  br i1 %.not54, label %._crit_edge.thread, label %.outer, !llvm.loop !571

._crit_edge:                                      ; preds = %bb.j
  br i1 %.041.ph, label %._crit_edge.thread, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 45, ptr %i.a, align 8, !tbaa !45
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ar, ptr %4, align 8, !tbaa !46
  %i.as = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.ar, ptr noundef nonnull align 1 dereferenceable(45) @.str.74, i64 45, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.noexc
  %i.av = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aq
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.k
  %i.ax = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %._crit_edge.thread

bb.l:                                             ; preds = %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.m:                                             ; preds = %.noexc
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.m
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.l
  %.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit

._crit_edge.thread:                               ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %._crit_edge
  ret void

.loopexit:                                        ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.merged = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.n, %bb.d ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520CTFReaderFunctionElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderFunctionElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_520CTFReaderFunctionElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_19FixedFunctionOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_524CTFReaderDynamicParamEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !76
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !32
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_524CTFReaderDynamicParamEltE, i64 16), ptr %0, align 8, !tbaa !11
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_524CTFReaderDynamicParamEltD2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !88
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(96) %0) #31, !inline_history !88
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_528CTFReaderExposureContrastElt5startEPPKc:bb.a
  resume { ptr, i32 } %.merged

bb.l:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #35
  unreachable
}

declare noundef i32 @_ZN16OpenColorIO_v2_522ExposureContrastOpData20ConvertStringToStyleEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA27_cJPKcEEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.80, i64 noundef 26)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.b = load ptr, ptr %2, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !160
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA27_cJPKcEEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit unwind label %bb.h

bb.c:                                             ; preds = %.noexc
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA27_cJPKcEEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit unwind label %bb.h ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA27_cJPKcEEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !44, !alias.scope !677
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !47, !alias.scope !677
  store i8 0, ptr %i.k, align 8, !tbaa !36, !alias.scope !677
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59, !noalias !677 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !677 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA27_cJPKcEEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63, !noalias !677 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !46, !alias.scope !677 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA27_cJPKcEEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.k
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !36
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !11
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !36
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ak, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #31
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.as) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.k
  br i1 %i.aw, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.y, %bb.e ], [ %i.av, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.au, %bb.i ]
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !36
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ay) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.au, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.at, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_528CTFReaderExposureContrastElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_528CTFReaderExposureContrastElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !573  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(248) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_528CTFReaderExposureContrastElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_22ExposureContrastOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_22ExposureContrastOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_22ExposureContrastOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_22ExposureContrastOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderECParamsEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !76
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !32
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_520CTFReaderECParamsEltE, i64 16), ptr %0, align 8, !tbaa !11
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderECParamsEltD2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !88
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(96) %0) #31, !inline_history !88
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_517CTFReaderGammaElt18isOpParameterValidEPKc:bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderGammaElt3endEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !707  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(272) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 1
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #31
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, i32 } %i.f, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #31 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA21_cJPKcS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(21) @.str.90, ptr noundef %i.o, ptr noundef nonnull @.str.28)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_end_catch()
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.b
  %.merged = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %.merged

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA21_cJPKcS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %1) #31
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 1 dereferenceable(21) %1, i64 noundef %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr %2, ptr noundef %3)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA21_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit unwind label %bb.f

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA21_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !44, !alias.scope !729
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !47, !alias.scope !729
  store i8 0, ptr %i.c, align 8, !tbaa !36, !alias.scope !729
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59, !noalias !729 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !729 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA21_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63, !noalias !729 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !46, !alias.scope !729 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA21_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.t = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.c, align 8, !tbaa !36
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !11
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !36
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.c
  %.sink = phi ptr [ %i.q, %bb.c ], [ %i.an, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.am, %bb.g ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !36
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aq) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.am, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.al, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_517CTFReaderGammaElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11GammaOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11GammaOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11GammaOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11GammaOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_517CTFReaderGammaElt20createGammaParamsEltERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.188") align 8 captures(none) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  store ptr null, ptr %0, align 8, !tbaa !733, !alias.scope !730
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #32, !noalias !730 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523CTFReaderGammaParamsEltESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10shared_ptrINS0_21XmlReaderContainerEltEERjSE_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_523CTFReaderGammaParamsEltEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10shared_ptrINS0_21XmlReaderContainerEltEERjS9_EESA_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523CTFReaderGammaParamsEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !730

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523CTFReaderGammaParamsEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #33, !noalias !730
  resume { ptr, i32 } %i.c

_ZSt11make_sharedIN16OpenColorIO_v2_523CTFReaderGammaParamsEltEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10shared_ptrINS0_21XmlReaderContainerEltEERjS9_EESA_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !34, !alias.scope !730
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %0, align 8, !tbaa !736, !alias.scope !730
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_517CTFReaderGammaElt7isValidENS_11GammaOpData5StyleE(ptr nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 8
  %switch.cast = trunc i32 %1 to i8
  %switch.downshift = lshr i8 -61, %switch.cast
  %switch.masked = trunc i8 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_521CTFReaderGammaElt_1_520createGammaParamsEltERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.188") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !3
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #32, !noalias !737 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527CTFReaderGammaParamsElt_1_5ESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10shared_ptrINS0_21XmlReaderContainerEltEERjSE_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CTFReaderGammaParamsElt_1_5ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527CTFReaderGammaParamsElt_1_5ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !737

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527CTFReaderGammaParamsElt_1_5ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #33, !noalias !737
  resume { ptr, i32 } %i.c

_ZNSt12__shared_ptrIN16OpenColorIO_v2_527CTFReaderGammaParamsElt_1_5ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %0, align 8, !tbaa !733
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_525CTFReaderGammaElt_CTF_2_07isValidENS_11GammaOpData5StyleE(ptr nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %switch = icmp ult i32 %1, 10
  ret i1 %switch
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_525CTFReaderGammaElt_CLF_3_020createGammaParamsEltERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.188") align 8 captures(none) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  store ptr null, ptr %0, align 8, !tbaa !733, !alias.scope !740
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #32, !noalias !740 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523CTFReaderGammaParamsEltESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10shared_ptrINS0_21XmlReaderContainerEltEERjSE_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_523CTFReaderGammaParamsEltEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10shared_ptrINS0_21XmlReaderContainerEltEERjS9_EESA_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523CTFReaderGammaParamsEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !740

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523CTFReaderGammaParamsEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #33, !noalias !740
  resume { ptr, i32 } %i.c

_ZSt11make_sharedIN16OpenColorIO_v2_523CTFReaderGammaParamsEltEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10shared_ptrINS0_21XmlReaderContainerEltEERjS9_EESA_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !34, !alias.scope !740
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %0, align 8, !tbaa !736, !alias.scope !740
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523CTFReaderGammaParamsEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !76
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !32
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA29_cJPKcS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_:bb.a
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #31
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.at) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i, %bb.c, %bb.b, %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.l
  br i1 %i.ax, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.z, %bb.e ], [ %i.aw, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.av, %bb.i ]
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !36
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.az) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.av, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.au, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA39_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull @.str.101, i64 noundef 38)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA39_cEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.f ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA39_cEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !44, !alias.scope !792
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !47, !alias.scope !792
  store i8 0, ptr %i.b, align 8, !tbaa !36, !alias.scope !792
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59, !noalias !792 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !792 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA39_cEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !792 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !46, !alias.scope !792 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA39_cEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.b, align 8, !tbaa !36
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !11
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aj) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.b
  br i1 %i.an, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.c
  %.sink = phi ptr [ %i.p, %bb.c ], [ %i.am, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.al, %bb.g ]
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !36
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ap) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.al, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ak, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_526CTFReaderGradingPrimaryElt3endEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !603
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !606  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(392) %i.e, ptr noundef nonnull align 8 dereferenceable(272) %i.c), !inline_history !793
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !603  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(192) %i.i)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_526CTFReaderGradingPrimaryElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(392) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_20GradingPrimaryOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_20GradingPrimaryOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_20GradingPrimaryOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_20GradingPrimaryOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_531CTFReaderGradingPrimaryParamEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !76
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !32
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_531CTFReaderGradingPrimaryParamEltE, i64 16), ptr %0, align 8, !tbaa !11
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_531CTFReaderGradingPrimaryParamEltD2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !88
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(96) %0) #31, !inline_history !88
end_hunk_6
begin_hunk_7_@_ZN16OpenColorIO_v2_527CTFReaderGradingRGBCurveElt5startEPPKc:bb.a
  %i.ds = add i32 %.02752, 2                      ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.dv, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !959

._crit_edge:                                      ; preds = %bb.ak
  br i1 %.1, label %bb.al, label %.critedge

.critedge:                                        ; preds = %bb.a, %._crit_edge
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA39_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.al

bb.al:                                            ; preds = %.critedge, %._crit_edge
  ret void

.loopexit:                                        ; preds = %bb.t, %bb.w, %bb.ai
  %.merged = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.bu, %bb.w ], [ %.pn32, %bb.t ]
  resume { ptr, i32 } %.merged

bb.am:                                            ; preds = %bb.w
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setStyleENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #17

declare void @_ZN16OpenColorIO_v2_515GradingRGBCurve6CreateENS_12GradingStyleE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.148") align 8, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527CTFReaderGradingRGBCurveElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.154", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !76
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveEEC2IS1_vEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveEEC2IS1_vEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !617  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(152) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setValueERKSt10shared_ptrIKNS_15GradingRGBCurveEE.exit unwind label %bb.k, !inline_history !960

_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setValueERKSt10shared_ptrIKNS_15GradingRGBCurveEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveEEC2IS1_vEERKS_IT_E.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !34   ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setValueERKSt10shared_ptrIKNS_15GradingRGBCurveEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !32
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31, !inline_history !961
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31, !inline_history !961
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i2 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setValueERKSt10shared_ptrIKNS_15GradingRGBCurveEE.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !614 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(200) %i.ah)
  ret void

bb.k:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveEEC2IS1_vEERKS_IT_E.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !86
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !86
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_527CTFReaderGradingRGBCurveElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_21GradingRGBCurveOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_21GradingRGBCurveOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_21GradingRGBCurveOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_21GradingRGBCurveOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527CTFReaderGradingHueCurveEltC2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_527CTFReaderGradingHueCurveEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #32
          to label %.noexc unwind label %bb.c     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !27, !noalias !962
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !32, !noalias !962
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_521GradingHueCurveOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !11, !noalias !962
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_521GradingHueCurveOpDataC1ENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i32 noundef 0)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_521GradingHueCurveOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !962

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_521GradingHueCurveOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 216) #33, !noalias !962
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %i.h, align 8, !tbaa !34, !alias.scope !962
  store ptr %i.e, ptr %i.g, align 8, !tbaa !965, !alias.scope !962
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_521GradingHueCurveOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_521GradingHueCurveOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  tail call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #31
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_527CTFReaderGradingHueCurveElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L15ATTR_RGB_TO_HSYE, ptr noundef %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %i.d, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.f = phi i1 [ true, %bb.c ], [ true, %bb.a ], [ %i.e, %bb.e ]
  ret i1 %i.f

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527CTFReaderGradingHueCurveElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::shared_ptr.170", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %.not51 = icmp eq ptr %i.c, null
  br i1 %.not51, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ak
  %i.u = phi ptr [ %i.c, %.lr.ph ], [ %i.dv, %bb.ak ]
  %i.v = phi ptr [ %1, %.lr.ph ], [ %i.du, %bb.ak ]
  %.053 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.ak ] ; 2 uses
  %.02752 = phi i32 [ 0, %.lr.ph ], [ %i.ds, %bb.ak ] ; 3 uses
  %i.w = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull %i.u)
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.y = or disjoint i32 %.02752, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  invoke void @_ZN16OpenColorIO_v2_533ConvertStringToGradingStyleAndDirEPKcRNS_12GradingStyleERNS_18TransformDirectionE(ptr noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !625
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !774
  call void @_ZN16OpenColorIO_v2_521GradingHueCurveOpData8setStyleENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.ac, i32 noundef %i.ad) #31
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !625
  %i.af = load i32, ptr %i.b, align 4, !tbaa !776
  call void @_ZN16OpenColorIO_v2_521GradingHueCurveOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(200) %i.ae, i32 noundef %i.af) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !774
  invoke void @_ZN16OpenColorIO_v2_515GradingHueCurve6CreateENS_12GradingStyleE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.170") align 8 %2, i32 noundef %i.ag)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.ah = load <2 x ptr>, ptr %2, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !34  ; 8 uses
  store <2 x ptr> %i.ah, ptr %i.r, align 8, !tbaa !76
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515GradingHueCurveEEaSEOS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aj, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !32
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #31, !inline_history !966
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
end_hunk_7
begin_hunk_8_@_ZN16OpenColorIO_v2_527CTFReaderGradingHueCurveElt5startEPPKc:bb.a
  %i.ds = add i32 %.02752, 2                      ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.dv, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !979

._crit_edge:                                      ; preds = %bb.ak
  br i1 %.1, label %bb.al, label %.critedge

.critedge:                                        ; preds = %bb.a, %._crit_edge
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA39_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.al

bb.al:                                            ; preds = %.critedge, %._crit_edge
  ret void

.loopexit:                                        ; preds = %bb.t, %bb.w, %bb.ai
  %.merged = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.bu, %bb.w ], [ %.pn32, %bb.t ]
  resume { ptr, i32 } %.merged

bb.am:                                            ; preds = %bb.w
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_521GradingHueCurveOpData8setStyleENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_521GradingHueCurveOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #17

declare void @_ZN16OpenColorIO_v2_515GradingHueCurve6CreateENS_12GradingStyleE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.170") align 8, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527CTFReaderGradingHueCurveElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.176", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !625
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !76
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveEEC2IS1_vEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveEEC2IS1_vEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !628  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(152) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN16OpenColorIO_v2_521GradingHueCurveOpData8setValueERKSt10shared_ptrIKNS_15GradingHueCurveEE.exit unwind label %bb.k, !inline_history !980

_ZN16OpenColorIO_v2_521GradingHueCurveOpData8setValueERKSt10shared_ptrIKNS_15GradingHueCurveEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveEEC2IS1_vEERKS_IT_E.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !34   ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_521GradingHueCurveOpData8setValueERKSt10shared_ptrIKNS_15GradingHueCurveEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !32
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31, !inline_history !981
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31, !inline_history !981
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i2 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_521GradingHueCurveOpData8setValueERKSt10shared_ptrIKNS_15GradingHueCurveEE.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !625 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(200) %i.ah)
  ret void

bb.k:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveEEC2IS1_vEERKS_IT_E.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !86
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !86
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_527CTFReaderGradingHueCurveElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_21GradingHueCurveOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_21GradingHueCurveOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_21GradingHueCurveOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_21GradingHueCurveOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_524CTFReaderGradingCurveEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_519XmlReaderComplexEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !76
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !32
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_519XmlReaderComplexEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_524CTFReaderGradingCurveEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_524CTFReaderGradingCurveEltD2Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_524CTFReaderGradingCurveEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !982
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !982
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_8
begin_hunk_9_@_ZN16OpenColorIO_v2_523CTFReaderGradingToneElt5startEPPKc:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 240
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %i.x = phi ptr [ %i.c, %.lr.ph ], [ %i.bb, %bb.n ]
  %.027 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.n ]
  %.01926 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %bb.n ] ; 2 uses
  %i.y = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull %i.x)
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.aa = or disjoint i32 %.01926, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  invoke void @_ZN16OpenColorIO_v2_533ConvertStringToGradingStyleAndDirEPKcRNS_12GradingStyleERNS_18TransformDirectionE(ptr noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !636
  %i.af = load i32, ptr %i.a, align 4, !tbaa !774
  call void @_ZN16OpenColorIO_v2_517GradingToneOpData8setStyleENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, i32 noundef %i.af) #31
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !636
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !776
  call void @_ZN16OpenColorIO_v2_517GradingToneOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(196) %i.ag, i32 noundef %i.ah) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !774 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1
  store <2 x double> splat (double 1.000000e+00), ptr %2, align 16, !tbaa !147
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 16, !tbaa !147
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store <2 x double> splat (double 4.000000e-01), ptr %i.f, align 16, !tbaa !147
  %i.ak = icmp eq i32 %i.ai, 0                    ; 4 uses
  store <2 x double> splat (double 1.000000e+00), ptr %i.g, align 16, !tbaa !147
  store <2 x double> splat (double 1.000000e+00), ptr %i.i, align 16, !tbaa !147
  %. = select i1 %i.ak, double 5.000000e-01, double 6.000000e-01
  %.39 = select i1 %i.ak, double 6.000000e-01, double f0x3FE6666666666666
  %.40 = select i1 %i.ak, double 3.000000e-01, double 2.000000e-01
  %.41 = select i1 %i.ak, double 4.000000e-01, double 5.000000e-01
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store <2 x double> <double 0.000000e+00, double 4.000000e+00>, ptr %i.f, align 16, !tbaa !147
  store <2 x double> splat (double 1.000000e+00), ptr %i.g, align 16, !tbaa !147
  store <2 x double> splat (double 1.000000e+00), ptr %i.i, align 16, !tbaa !147
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink38 = phi double [ 2.000000e+00, %bb.f ], [ %., %bb.e ]
  %.sink37 = phi double [ -7.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.sink36 = phi double [ 0.000000e+00, %bb.f ], [ 4.000000e-01, %bb.e ]
  %.sink35 = phi double [ 8.000000e+00, %bb.f ], [ %.39, %bb.e ]
  %.sink34 = phi double [ -2.000000e+00, %bb.f ], [ %.40, %bb.e ]
  %.sink33 = phi double [ 9.000000e+00, %bb.f ], [ 1.000000e+00, %bb.e ]
  %.sink32 = phi double [ 0.000000e+00, %bb.f ], [ %.41, %bb.e ]
  %.sink = phi double [ 8.000000e+00, %bb.f ], [ 5.000000e-01, %bb.e ]
  store double %.sink38, ptr %i.j, align 16, !tbaa !1021
  store double %.sink37, ptr %i.h, align 8, !tbaa !1023
  store <2 x double> splat (double 1.000000e+00), ptr %i.k, align 16, !tbaa !147
  store <2 x double> splat (double 1.000000e+00), ptr %i.l, align 16, !tbaa !147
  store double %.sink36, ptr %i.m, align 16, !tbaa !1021
  store double %.sink35, ptr %i.n, align 8, !tbaa !1023
  store <2 x double> splat (double 1.000000e+00), ptr %i.o, align 16, !tbaa !147
  store <2 x double> splat (double 1.000000e+00), ptr %i.p, align 16, !tbaa !147
  store double %.sink34, ptr %i.q, align 16, !tbaa !1021
  store double %.sink33, ptr %i.r, align 8, !tbaa !1023
  store <2 x double> splat (double 1.000000e+00), ptr %i.s, align 16, !tbaa !147
  store <2 x double> splat (double 1.000000e+00), ptr %i.t, align 16, !tbaa !147
  store double %.sink32, ptr %i.u, align 16, !tbaa !1021
  store double %.sink, ptr %i.v, align 8, !tbaa !1023
  store double 1.000000e+00, ptr %i.w, align 16, !tbaa !1024
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !636
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !639 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(1208) %i.an, ptr noundef nonnull align 8 dereferenceable(248) %2)
          to label %_ZN16OpenColorIO_v2_517GradingToneOpData8setValueERKNS_11GradingToneE.exit unwind label %bb.i, !inline_history !1026

_ZN16OpenColorIO_v2_517GradingToneOpData8setValueERKNS_11GradingToneE.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.ar, %bb.h ] ; 3 uses
  %.015 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #31
  %i.au = icmp eq i32 %.015, %i.at
  br i1 %i.au, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %.017 = extractvalue { ptr, i32 } %.pn, 0
  %i.av = call ptr @__cxa_begin_catch(ptr %.017) #31 ; 0 uses
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA29_cJPKcS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.aw)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_end_catch()
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.p

bb.n:                                             ; preds = %_ZN16OpenColorIO_v2_517GradingToneOpData8setValueERKNS_11GradingToneE.exit, %bb.l, %bb.b
  %.1 = phi i1 [ %.027, %bb.b ], [ true, %bb.l ], [ true, %_ZN16OpenColorIO_v2_517GradingToneOpData8setValueERKNS_11GradingToneE.exit ] ; 2 uses
  %i.ay = add i32 %.01926, 2                      ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1027

._crit_edge:                                      ; preds = %bb.n
  br i1 %.1, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.a, %._crit_edge
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA39_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %._crit_edge
  ret void

.loopexit:                                        ; preds = %bb.j, %bb.m
  %.merged = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %.pn, %bb.j ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_517GradingToneOpData8setStyleENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(196), i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_517GradingToneOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(196), i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523CTFReaderGradingToneElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !636  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(196) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_523CTFReaderGradingToneElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_17GradingToneOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_17GradingToneOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_17GradingToneOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_17GradingToneOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_528CTFReaderGradingToneParamEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.l = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !76
  %.not.i.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.f

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr12 = phi ptr [ %i.k, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.pr12, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !32
  %i.w = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  %i.z = load ptr, ptr %.pr12, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i6 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr12) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_528CTFReaderGradingToneParamEltE, i64 16), ptr %0, align 8, !tbaa !11
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_528CTFReaderGradingToneParamEltD2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !87
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !88
  br label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit

_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(96) %0) #31, !inline_history !88
end_hunk_9
begin_hunk_10_@_ZN16OpenColorIO_v2_520CTFReaderInvLut1DElt5startEPPKc:bb.a
  %i.gi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.ge, i64 noundef %i.gh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit113 unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %9, align 8, !tbaa !46, !alias.scope !1108 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.ab
  br i1 %i.gl, label %.body111, label %.body111.sink.split

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit113 unwind label %bb.aq

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit113: ; preds = %bb.ar, %bb.ap
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit113
  %i.gm = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.ab
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.as
  %i.go = load i64, ptr %i.ab, align 8, !tbaa !36
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  store ptr %i.k, ptr %8, align 8, !tbaa !11
  %i.gq = load i64, ptr %i.m, align 8
  %i.gr = getelementptr inbounds i8, ptr %8, i64 %i.gq
  store ptr %i.l, ptr %i.gr, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !11
  %i.gs = load ptr, ptr %i.ag, align 8, !tbaa !46 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.ai
  br i1 %i.gt, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.gu = load i64, ptr %i.ai, align 8, !tbaa !36
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit119

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !11
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #31
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.aw

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101, %bb.ao, %bb.an, %bb.am
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit113
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.ab
  br i1 %i.gz, label %.body111, label %.body111.sink.split

.body111.sink.split:                              ; preds = %bb.au, %bb.aq
  %.sink180 = phi ptr [ %i.gk, %bb.aq ], [ %i.gy, %bb.au ]
  %.pn53.ph = phi { ptr, i32 } [ %i.gj, %bb.aq ], [ %i.gx, %bb.au ]
  %i.ha = load i64, ptr %i.ab, align 8, !tbaa !36
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %.sink180, i64 noundef %i.hb) #33
  br label %.body111

.body111:                                         ; preds = %.body111.sink.split, %bb.au, %bb.aq
  %.pn53 = phi { ptr, i32 } [ %i.gj, %bb.aq ], [ %i.gx, %bb.au ], [ %.pn53.ph, %.body111.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.av

bb.av:                                            ; preds = %.body111, %bb.at
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %.body111 ], [ %i.gw, %bb.at ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.loopexit

bb.aw:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit119, %bb.al
  %i.hc = load ptr, ptr %i.a, align 8, !tbaa !1082
  call void @_ZN16OpenColorIO_v2_511Lut1DOpData12setHueAdjustENS_14Lut1DHueAdjustE(ptr noundef nonnull align 8 dereferenceable(364) %i.hc, i32 noundef 1)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ak
  %i.hd = add i32 %.0138, 2                       ; 2 uses
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.he ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.hg, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1109

._crit_edge:                                      ; preds = %bb.ax, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.av, %bb.ai, %bb.v
  %.merged = phi { ptr, i32 } [ %.pn53.pn, %bb.av ], [ %.pn49.pn, %bb.ai ], [ %.pn45.pn, %bb.v ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.av, %bb.e ]
  resume { ptr, i32 } %.merged

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #35
  unreachable
}

declare void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN16OpenColorIO_v2_518GetInterpolation1DEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut1DOpData18setInputHalfDomainEb(ptr noundef nonnull align 8 dereferenceable(364), i1 noundef zeroext) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut1DOpData17setOutputRawHalfsEb(ptr noundef nonnull align 8 dereferenceable(364), i1 noundef zeroext) local_unnamed_addr #17

declare void @_ZN16OpenColorIO_v2_511Lut1DOpData12setHueAdjustENS_14Lut1DHueAdjustE(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520CTFReaderInvLut1DElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L18ATTR_INTERPOLATIONE, ptr noundef %1)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L16ATTR_HALF_DOMAINE, ptr noundef %1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L14ATTR_RAW_HALFSE, ptr noundef %1)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L15ATTR_HUE_ADJUSTE, ptr noundef %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.i = icmp eq i32 %i.h, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.g ], [ true, %bb.e ], [ true, %bb.c ], [ true, %bb.a ], [ %i.i, %bb.i ]
  ret i1 %i.j

bb.k:                                             ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderInvLut1DElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !271
  %i.c = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.b)
  %i.d = fptrunc double %i.c to float
  %i.e = fdiv float 1.000000e+00, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1082
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpData5scaleEf(ptr noundef nonnull align 8 dereferenceable(364) %i.g, float noundef %i.e)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1082 ; 3 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !271
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  store i32 %i.i, ptr %i.j, align 8, !tbaa !1110
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(364) %i.h)
  ret void
}

declare noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_511Lut1DOpData5scaleEf(ptr noundef nonnull align 8 dereferenceable(364), float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_520CTFReaderInvLut1DElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut1DOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut1DOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut1DOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut1DOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_520CTFReaderInvLut1DElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, 8
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.h, label %bb.d [
    i32 3, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1082
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 3 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64
  %i.n = zext nneg i32 %i.h to i64
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 noundef %i.m, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.k, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: uwtable
define hidden noundef ptr @_ZThn104_N16OpenColorIO_v2_520CTFReaderInvLut1DElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not.i = icmp eq i64 %i.f, 8
  br i1 %.not.i, label %bb.b, label %_ZN16OpenColorIO_v2_520CTFReaderInvLut1DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.h, label %_ZN16OpenColorIO_v2_520CTFReaderInvLut1DElt15updateDimensionERKSt6vectorIjSaIjEE.exit [
    i32 3, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1082
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 3 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64
  %i.n = zext nneg i32 %i.h to i64
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 noundef %i.m, i64 noundef %i.n), !inline_history !1121
  br label %_ZN16OpenColorIO_v2_520CTFReaderInvLut1DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

_ZN16OpenColorIO_v2_520CTFReaderInvLut1DElt15updateDimensionERKSt6vectorIjSaIjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ %i.k, %bb.c ], [ null, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderInvLut1DElt8endArrayEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1082 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1122
  %i.f = and i32 %i.e, 2
  %.not53 = icmp eq i32 %i.f, 0
  br i1 %.not53, label %.loopexit55, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not60 = icmp eq i64 %i.j, 0
  br i1 %.not60, label %.loopexit55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !990
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.l = phi ptr [ %.pre, %.lr.ph ], [ %i.q, %bb.c ]
  %.03656 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.03656
  %i.n = load float, ptr %i.m, align 4, !tbaa !224
  %i.o = fptoui float %i.n to i16
  %i.p = tail call noundef float @_ZN16OpenColorIO_v2_522ConvertHalfBitsToFloatEt(i16 noundef zeroext %i.o)
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !990  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.03656
  store float %i.p, ptr %i.r, align 4, !tbaa !224
  %i.s = add nuw i64 %.03656, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.j
  br i1 %exitcond.not, label %.loopexit55, label %bb.c, !llvm.loop !1123

.loopexit55:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.x = zext i32 %1 to i64                       ; 3 uses
  %.not = icmp eq i64 %i.w, %i.x
  br i1 %.not, label %.loopexit54, label %bb.d

bb.d:                                             ; preds = %.loopexit55
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %i.c) ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(48) %i.c) ; 5 uses
  %.not42 = icmp eq i64 %i.ab, 1
  %.not43 = icmp eq i64 %i.af, %i.x
  %or.cond = and i1 %.not42, %.not43
  br i1 %or.cond, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.af)
          to label %_ZNSolsEm.exit unwind label %bb.j ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %_ZNSolsEm.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.ab)
          to label %_ZNSolsEm.exit47 unwind label %bb.j ; 0 uses

_ZNSolsEm.exit47:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.136, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZNSolsEm.exit47
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.x)
          to label %_ZNSolsEj.exit unwind label %bb.j

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.j ; 0 uses

end_hunk_10
begin_hunk_11_@_ZThn104_N16OpenColorIO_v2_520CTFReaderInvLut3DEltD1Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderInvLut3DEltD0Ev(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8), (104, 112)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_520CTFReaderInvLut3DEltD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #33
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ZThn104_N16OpenColorIO_v2_520CTFReaderInvLut3DEltD0Ev(ptr noundef initializes((-104, -96), (0, 8)) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104 ; 2 uses
  tail call void @_ZN16OpenColorIO_v2_520CTFReaderInvLut3DEltD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #31, !inline_history !1140
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 noundef 136) #33, !inline_history !1140
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1135
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i32 noundef 254)
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.ak, %bb.k ]
  %.026 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.k ] ; 2 uses
  %i.f = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L18ATTR_INTERPOLATIONE, ptr noundef nonnull %i.e)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i32 %.026, 1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = invoke noundef i32 @_ZN16OpenColorIO_v2_518GetInterpolation3DEPKc(ptr noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1135
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.m, i32 noundef %i.l)
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.o = extractvalue { ptr, i32 } %i.n, 1
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.r = extractvalue { ptr, i32 } %i.n, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.d, align 8, !tbaa !36
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @__cxa_end_catch()
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.j
  %i.af = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.l

bb.k:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ah = add i32 %.026, 2                        ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1141

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.merged = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %.merged

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #35
  unreachable
}

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN16OpenColorIO_v2_518GetInterpolation3DEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_520CTFReaderInvLut3DElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L18ATTR_INTERPOLATIONE, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !271
  %i.c = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.b)
  %i.d = fptrunc double %i.c to float
  %i.e = fdiv float 1.000000e+00, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1135
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpData5scaleEf(ptr noundef nonnull align 8 dereferenceable(232) %i.g, float noundef %i.e)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1135 ; 3 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !271
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 228
  store i32 %i.i, ptr %i.j, align 4, !tbaa !1142
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(232) %i.h)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData5scaleEf(ptr noundef nonnull align 8 dereferenceable(232), float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_520CTFReaderInvLut3DElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut3DOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut3DOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut3DOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut3DOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, 16
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %.not15 = icmp eq i32 %i.h, 3
  br i1 %.not15, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !3
  %.not16 = icmp eq i32 %i.j, %i.k
  br i1 %.not16, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %.not17 = icmp eq i32 %i.m, %i.j
  br i1 %.not17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1135
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176 ; 3 uses
  %i.q = zext i32 %i.j to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.q, i64 noundef 3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.p, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: uwtable
define hidden noundef ptr @_ZThn104_N16OpenColorIO_v2_520CTFReaderInvLut3DElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not.i = icmp eq i64 %i.f, 16
  br i1 %.not.i, label %bb.b, label %_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %.not15.i = icmp eq i32 %i.h, 3
  br i1 %.not15.i, label %bb.c, label %_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !3
  %.not16.i = icmp eq i32 %i.j, %i.k
  br i1 %.not16.i, label %bb.d, label %_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %.not17.i = icmp eq i32 %i.m, %i.j
  br i1 %.not17.i, label %bb.e, label %_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1135
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176 ; 3 uses
  %i.q = zext i32 %i.j to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.q, i64 noundef 3), !inline_history !1145
  br label %_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520CTFReaderInvLut3DElt8endArrayEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1135
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.l)
          to label %_ZNSolsEm.exit unwind label %bb.h ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZNSolsEm.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.l)
          to label %_ZNSolsEm.exit16 unwind label %bb.h ; 2 uses

_ZNSolsEm.exit16:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZNSolsEm.exit16
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.l)
          to label %_ZNSolsEm.exit18 unwind label %bb.h

_ZNSolsEm.exit18:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZNSolsEm.exit18
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.w)
          to label %_ZNSolsEm.exit20 unwind label %bb.h ; 0 uses

_ZNSolsEm.exit20:                                 ; preds = %bb.c
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.136, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZNSolsEm.exit20
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h)
          to label %_ZNSolsEj.exit unwind label %bb.h

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZNSolsEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
end_hunk_11
begin_hunk_12_@_ZN16OpenColorIO_v2_515CTFReaderLogElt3endEv:bb.a
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIdSaIdEED2Ev.exit24, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit22
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !530
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit24

_ZNSt6vectorIdSaIdEED2Ev.exit24:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit22, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.by = load ptr, ptr %1, align 8, !tbaa !522   ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIdSaIdEED2Ev.exit26, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit24
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !530
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit26

_ZNSt6vectorIdSaIdEED2Ev.exit26:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit24, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.q, %bb.h
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #35
  unreachable
}

declare noundef i32 @_ZN16OpenColorIO_v2_57LogUtil15GetLogDirectionENS0_8LogStyleE(i32 noundef) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_57LogUtil20ConvertLogParametersERKNS0_9CTFParamsERdRSt6vectorIdSaIdEES8_S8_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59LogOpData7setBaseEd(ptr noundef nonnull align 8 dereferenceable(252), double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA20_cJPKcS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.139, i64 noundef 19)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.b = load ptr, ptr %2, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !160
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i unwind label %bb.h

bb.c:                                             ; preds = %.noexc
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i unwind label %bb.h ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.40, i64 noundef 2)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA20_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit unwind label %bb.h ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA20_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !44, !alias.scope !1178
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !47, !alias.scope !1178
  store i8 0, ptr %i.l, align 8, !tbaa !36, !alias.scope !1178
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59, !noalias !1178 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1178 ; 2 uses
  %i.r = icmp ugt ptr %i.o, %i.q
  %.08.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.q ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA20_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63, !noalias !1178 ; 2 uses
  %i.u = ptrtoint ptr %.08.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.w)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !46, !alias.scope !1178 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA20_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ac = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.l
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !36
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !11
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #31
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.at) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i, %bb.c, %bb.b, %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.l
  br i1 %i.ax, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.z, %bb.e ], [ %i.aw, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.av, %bb.i ]
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !36
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.az) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.av, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.au, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_515CTFReaderLogElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_9LogOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_9LogOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_9LogOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_9LogOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515CTFReaderLogElt7setBaseEd(ptr noundef nonnull align 8 dereferenceable(216) %0, double noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1153, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1164
  %i.f = tail call noundef double @_ZNK16OpenColorIO_v2_59LogOpData7getBaseEv(ptr noundef nonnull align 8 dereferenceable(252) %i.e) #31 ; 2 uses
  %i.g = fcmp une double %i.f, %1
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.140, i64 noundef 47)
          to label %.noexc.i unwind label %bb.h   ; 0 uses

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.141, i64 noundef 14)
          to label %.noexc12.i unwind label %bb.h ; 0 uses

.noexc12.i:                                       ; preds = %.noexc.i
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(112) %2, double noundef %i.f)
          to label %.noexc13.i unwind label %bb.h ; 0 uses

.noexc13.i:                                       ; preds = %.noexc12.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.142, i64 noundef 12)
          to label %.noexc14.i unwind label %bb.h ; 0 uses

.noexc14.i:                                       ; preds = %.noexc13.i
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(112) %2, double noundef %1)
          to label %.noexc15.i unwind label %bb.h ; 0 uses

.noexc15.i:                                       ; preds = %.noexc14.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA48_cJPKcdS4_dS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i unwind label %bb.h ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA48_cJPKcdS4_dS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i: ; preds = %.noexc15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !44, !alias.scope !1185
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !47, !alias.scope !1185
  store i8 0, ptr %i.n, align 8, !tbaa !36, !alias.scope !1185
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59, !noalias !1185 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1185 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA48_cJPKcdS4_dS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63, !noalias !1185 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !46, !alias.scope !1185 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body.i, label %.body.i.sink.split

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA48_cJPKcdS4_dS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.f, %bb.d
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.ae = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.n
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !36
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !11
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.an, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA48_cJPKcdS4_dS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #33
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA48_cJPKcdS4_dS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_.exit

bb.h:                                             ; preds = %.noexc15.i, %.noexc14.i, %.noexc13.i, %.noexc12.i, %.noexc.i, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.n
  br i1 %i.ax, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.ab, %bb.e ], [ %i.aw, %bb.i ]
  %.pn.i.ph = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.av, %bb.i ]
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !36
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.az) #33
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.av, %bb.i ], [ %.pn.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.j

bb.j:                                             ; preds = %.body.i, %bb.h
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.au, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA48_cJPKcdS4_dS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.an, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ba) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bb) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !1153
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1164
  tail call void @_ZN16OpenColorIO_v2_59LogOpData7setBaseEd(ptr noundef nonnull align 8 dereferenceable(252) %i.bd, double noundef %1) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA48_cJPKcdS4_dS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_.exit, %bb.k
end_hunk_12
begin_hunk_13_@_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA31_cJPKcS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_:bb.a
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !160
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i unwind label %bb.h

bb.c:                                             ; preds = %.noexc
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i unwind label %bb.h ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.152, i64 noundef 22)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA31_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit unwind label %bb.h ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA31_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !44, !alias.scope !1248
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !47, !alias.scope !1248
  store i8 0, ptr %i.l, align 8, !tbaa !36, !alias.scope !1248
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59, !noalias !1248 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1248 ; 2 uses
  %i.r = icmp ugt ptr %i.o, %i.q
  %.08.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.q ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA31_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63, !noalias !1248 ; 2 uses
  %i.u = ptrtoint ptr %.08.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.w)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !46, !alias.scope !1248 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA31_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ac = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.l
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !36
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !11
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #31
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.at) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i, %bb.c, %bb.b, %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.l
  br i1 %i.ax, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.z, %bb.e ], [ %i.aw, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.av, %bb.i ]
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !36
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.az) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.av, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.au, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_517CTFReaderLut1DElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L18ATTR_INTERPOLATIONE, ptr noundef %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L16ATTR_HALF_DOMAINE, ptr noundef %1)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L14ATTR_RAW_HALFSE, ptr noundef %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = icmp eq i32 %i.f, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.a
  %i.h = phi i1 [ true, %bb.e ], [ true, %bb.c ], [ true, %bb.a ], [ %i.g, %bb.g ]
  ret i1 %i.h

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderLut1DElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !274
  %i.c = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.b)
  %i.d = fptrunc double %i.c to float
  %i.e = fdiv float 1.000000e+00, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1082
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpData5scaleEf(ptr noundef nonnull align 8 dereferenceable(364) %i.g, float noundef %i.e)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1082 ; 3 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !274
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  store i32 %i.i, ptr %i.j, align 8, !tbaa !1110
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(364) %i.h)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_517CTFReaderLut1DElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut1DOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut1DOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut1DOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut1DOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_517CTFReaderLut1DElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, 8
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.h, label %bb.d [
    i32 3, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1082
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 3 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64
  %i.n = zext nneg i32 %i.h to i64
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 noundef %i.m, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.k, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: uwtable
define hidden noundef ptr @_ZThn104_N16OpenColorIO_v2_517CTFReaderLut1DElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not.i = icmp eq i64 %i.f, 8
  br i1 %.not.i, label %bb.b, label %_ZN16OpenColorIO_v2_517CTFReaderLut1DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.h, label %_ZN16OpenColorIO_v2_517CTFReaderLut1DElt15updateDimensionERKSt6vectorIjSaIjEE.exit [
    i32 3, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1082
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 3 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64
  %i.n = zext nneg i32 %i.h to i64
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 noundef %i.m, i64 noundef %i.n), !inline_history !1249
  br label %_ZN16OpenColorIO_v2_517CTFReaderLut1DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

_ZN16OpenColorIO_v2_517CTFReaderLut1DElt15updateDimensionERKSt6vectorIjSaIjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ %i.k, %bb.c ], [ null, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderLut1DElt8endArrayEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1082 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1122
  %i.f = and i32 %i.e, 2
  %.not37 = icmp eq i32 %i.f, 0
  br i1 %.not37, label %.loopexit39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not44 = icmp eq i64 %i.j, 0
  br i1 %.not44, label %.loopexit39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !990
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.l = phi ptr [ %.pre, %.lr.ph ], [ %i.q, %bb.c ]
  %.03040 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.03040
  %i.n = load float, ptr %i.m, align 4, !tbaa !224
  %i.o = fptoui float %i.n to i16
  %i.p = tail call noundef float @_ZN16OpenColorIO_v2_522ConvertHalfBitsToFloatEt(i16 noundef zeroext %i.o)
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !990  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.03040
  store float %i.p, ptr %i.r, align 4, !tbaa !224
  %i.s = add nuw i64 %.03040, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.j
  br i1 %exitcond.not, label %.loopexit39, label %bb.c, !llvm.loop !1250

.loopexit39:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.x = zext i32 %1 to i64
  %.not = icmp eq i64 %i.w, %i.x
  br i1 %.not, label %.loopexit38, label %bb.d

bb.d:                                             ; preds = %.loopexit39
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  %.not35 = icmp eq i32 %i.ac, 1
  br i1 %.not35, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %.not36 = icmp eq i32 %1, %i.ah
  br i1 %.not36, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %i.ac, %bb.d ], [ 1, %bb.e ]
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA10_cJjPKcjS4_jS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.ah, i32 noundef %.sink, i32 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.02942 = add i32 %i.ah, -1                     ; 4 uses
  %i.ai = icmp sgt i32 %.02942, -1
  br i1 %i.ai, label %.preheader.lr.ph, label %.loopexit38

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !990 ; 12 uses
  %i.al = zext nneg i32 %.02942 to i64            ; 4 uses
  %i.am = and i64 %i.al, 1
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.lr.ph
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.ao = mul i32 %.02942, 3                      ; 3 uses
  %i.ap = load float, ptr %i.an, align 4, !tbaa !224 ; 2 uses
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aq
  store float %i.ap, ptr %i.ar, align 4, !tbaa !224
  %i.as = add i32 %i.ao, 1
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.at
end_hunk_13
begin_hunk_14_@_ZN16OpenColorIO_v2_517CTFReaderLut3DEltD0Ev
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderLut3DEltD0Ev(ptr noundef nonnull align 8 dereferenceable(240) initializes((0, 8), (104, 112), (120, 128)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_517CTFReaderLut3DEltD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #33
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ZThn104_N16OpenColorIO_v2_517CTFReaderLut3DEltD0Ev(ptr noundef initializes((-104, -96), (0, 8), (16, 24)) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104 ; 2 uses
  tail call void @_ZN16OpenColorIO_v2_517CTFReaderLut3DEltD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a) #31, !inline_history !1286
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i64 noundef 240) #33, !inline_history !1286
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ZThn120_N16OpenColorIO_v2_517CTFReaderLut3DEltD0Ev(ptr noundef initializes((-120, -112), (-16, -8), (0, 8)) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -120 ; 2 uses
  tail call void @_ZN16OpenColorIO_v2_517CTFReaderLut3DEltD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a) #31, !inline_history !1286
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(240) %i.a, i64 noundef 240) #33, !inline_history !1286
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderLut3DElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1135
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i32 noundef 254)
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.ak, %bb.k ]
  %.026 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.k ] ; 2 uses
  %i.f = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L18ATTR_INTERPOLATIONE, ptr noundef nonnull %i.e)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i32 %.026, 1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = invoke noundef i32 @_ZN16OpenColorIO_v2_518GetInterpolation3DEPKc(ptr noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1135
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.m, i32 noundef %i.l)
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.o = extractvalue { ptr, i32 } %i.n, 1
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.r = extractvalue { ptr, i32 } %i.n, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.d, align 8, !tbaa !36
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @__cxa_end_catch()
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.j
  %i.af = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.l

bb.k:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ah = add i32 %.026, 2                        ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1287

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.merged = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %.merged

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_517CTFReaderLut3DElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L18ATTR_INTERPOLATIONE, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderLut3DElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !274
  %i.c = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.b)
  %i.d = fptrunc double %i.c to float
  %i.e = fdiv float 1.000000e+00, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1135
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpData5scaleEf(ptr noundef nonnull align 8 dereferenceable(232) %i.g, float noundef %i.e)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1135 ; 3 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !274
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 228
  store i32 %i.i, ptr %i.j, align 4, !tbaa !1142
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(232) %i.h)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_517CTFReaderLut3DElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut3DOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut3DOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut3DOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11Lut3DOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_517CTFReaderLut3DElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, 16
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %.not15 = icmp eq i32 %i.h, 3
  br i1 %.not15, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !3
  %.not16 = icmp eq i32 %i.j, %i.k
  br i1 %.not16, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %.not17 = icmp eq i32 %i.m, %i.j
  br i1 %.not17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1135
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176 ; 3 uses
  %i.q = zext i32 %i.j to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.q, i64 noundef 3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.p, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: uwtable
define hidden noundef ptr @_ZThn104_N16OpenColorIO_v2_517CTFReaderLut3DElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not.i = icmp eq i64 %i.f, 16
  br i1 %.not.i, label %bb.b, label %_ZN16OpenColorIO_v2_517CTFReaderLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %.not15.i = icmp eq i32 %i.h, 3
  br i1 %.not15.i, label %bb.c, label %_ZN16OpenColorIO_v2_517CTFReaderLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !3
  %.not16.i = icmp eq i32 %i.j, %i.k
  br i1 %.not16.i, label %bb.d, label %_ZN16OpenColorIO_v2_517CTFReaderLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %.not17.i = icmp eq i32 %i.m, %i.j
  br i1 %.not17.i, label %bb.e, label %_ZN16OpenColorIO_v2_517CTFReaderLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1135
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176 ; 3 uses
  %i.q = zext i32 %i.j to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.q, i64 noundef 3), !inline_history !1288
  br label %_ZN16OpenColorIO_v2_517CTFReaderLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit

_ZN16OpenColorIO_v2_517CTFReaderLut3DElt15updateDimensionERKSt6vectorIjSaIjEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderLut3DElt8endArrayEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 27 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1135
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.38, i64 noundef 9)
          to label %.noexc.i unwind label %bb.g   ; 0 uses

.noexc.i:                                         ; preds = %bb.b
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %i.l)
          to label %.noexc17.i unwind label %bb.g ; 0 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %.noexc18.i unwind label %bb.g ; 0 uses

.noexc18.i:                                       ; preds = %.noexc17.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %i.p)
          to label %.noexc19.i unwind label %bb.g ; 0 uses

.noexc19.i:                                       ; preds = %.noexc18.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %.noexc20.i unwind label %bb.g ; 0 uses

.noexc20.i:                                       ; preds = %.noexc19.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %i.t)
          to label %.noexc21.i unwind label %bb.g ; 0 uses

.noexc21.i:                                       ; preds = %.noexc20.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %.noexc22.i unwind label %bb.g ; 0 uses

.noexc22.i:                                       ; preds = %.noexc21.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %i.x)
          to label %.noexc23.i unwind label %bb.g ; 0 uses

.noexc23.i:                                       ; preds = %.noexc22.i
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.136, i64 noundef 21)
          to label %.noexc24.i unwind label %bb.g ; 0 uses

.noexc24.i:                                       ; preds = %.noexc23.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %i.h)
          to label %.noexc25.i unwind label %bb.g ; 0 uses

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.28, i64 noundef 1)
end_hunk_14
begin_hunk_15_@_ZN16OpenColorIO_v2_521CTFReaderLut3DElt_1_73endEv:bb.a
  store i32 0, ptr %i.bn, align 4, !tbaa !32
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #31, !inline_history !263
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #31, !inline_history !263
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i7 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.bm, %bb.n ], [ %i.bw, %bb.o ]
  %i.bx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bx, label %bb.p, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !34 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.by, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bz, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !32
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #31, !inline_history !1282
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #31, !inline_history !1282
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i9 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.u:                                             ; preds = %bb.s
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i11 = phi i32 [ %i.cc, %bb.t ], [ %i.cm, %bb.u ]
  %i.cn = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.cn, label %bb.v, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.x

bb.w:                                             ; preds = %bb.i, %bb.h
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %common.resume

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518CTFReaderMatrixEltC2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.b, align 8, !tbaa !182
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_518CTFReaderMatrixEltE, i64 16), ptr %0, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN16OpenColorIO_v2_518CTFReaderMatrixEltE, i64 136), ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  store ptr null, ptr %i.c, align 8, !tbaa !1302, !alias.scope !1299
  %i.d = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #32
          to label %.noexc unwind label %bb.c     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !27, !noalias !1299
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !32, !noalias !1299
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !11, !noalias !1299
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(260) %i.g)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !1299

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 280) #33, !noalias !1299
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.d, ptr %i.i, align 8, !tbaa !34, !alias.scope !1299
  store ptr %i.g, ptr %i.c, align 8, !tbaa !1305, !alias.scope !1299
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.h, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind uwtable
define hidden void @_ZThn104_N16OpenColorIO_v2_518CTFReaderMatrixEltD1Ev(ptr noundef initializes((-104, -96), (0, 8)) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104
  tail call void @_ZN16OpenColorIO_v2_518CTFReaderMatrixEltD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_518CTFReaderMatrixEltD0Ev(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8), (104, 112)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_518CTFReaderMatrixEltD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #33
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ZThn104_N16OpenColorIO_v2_518CTFReaderMatrixEltD0Ev(ptr noundef initializes((-104, -96), (0, 8)) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104 ; 2 uses
  tail call void @_ZN16OpenColorIO_v2_518CTFReaderMatrixEltD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #31, !inline_history !1306
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 noundef 136) #33, !inline_history !1306
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518CTFReaderMatrixElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1302
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !271
  %i.e = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !274
  %i.h = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.g)
  %i.i = fdiv double 1.000000e+00, %i.h
  tail call void @_ZN16OpenColorIO_v2_512MatrixOpData5scaleEdd(ptr noundef nonnull align 8 dereferenceable(260) %i.b, double noundef %i.e, double noundef %i.i)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !1302 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load <2 x i32>, ptr %i.c, align 8, !tbaa !1277
  store <2 x i32> %i.l, ptr %i.k, align 8, !tbaa !1277
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(260) %i.j)
  ret void
}

declare void @_ZN16OpenColorIO_v2_512MatrixOpData5scaleEdd(ptr noundef nonnull align 8 dereferenceable(260), double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_518CTFReaderMatrixElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_12MatrixOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_12MatrixOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_12MatrixOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_12MatrixOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_518CTFReaderMatrixElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, 12
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = icmp ne i32 %i.i, %i.k
  %i.m = icmp ne i32 %i.h, 3
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1302
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168 ; 3 uses
  %i.q = zext i32 %i.i to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.q, i64 noundef 3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: uwtable
define hidden noundef ptr @_ZThn104_N16OpenColorIO_v2_518CTFReaderMatrixElt15updateDimensionERKSt6vectorIjSaIjEE(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !91     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.not.i = icmp eq i64 %i.f, 12
  br i1 %.not.i, label %bb.b, label %_ZN16OpenColorIO_v2_518CTFReaderMatrixElt15updateDimensionERKSt6vectorIjSaIjEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = icmp ne i32 %i.i, %i.k
  %i.m = icmp ne i32 %i.h, 3
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i, label %_ZN16OpenColorIO_v2_518CTFReaderMatrixElt15updateDimensionERKSt6vectorIjSaIjEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1302
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168 ; 3 uses
  %i.q = zext i32 %i.i to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.q, i64 noundef 3), !inline_history !1307
  br label %_ZN16OpenColorIO_v2_518CTFReaderMatrixElt15updateDimensionERKSt6vectorIjSaIjEE.exit

_ZN16OpenColorIO_v2_518CTFReaderMatrixElt15updateDimensionERKSt6vectorIjSaIjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ null, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518CTFReaderMatrixElt8endArrayEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1302
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %.not = icmp eq i64 %i.g, %i.h
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.m)
          to label %_ZNSolsEm.exit unwind label %bb.g ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %bb.c
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZNSolsEm.exit
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.s)
          to label %_ZNSolsEm.exit15 unwind label %bb.g ; 0 uses

_ZNSolsEm.exit15:                                 ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.136, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEm.exit15
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h)
          to label %_ZNSolsEj.exit unwind label %bb.g ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.w = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %_ZNSolsEj.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !46
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef %i.x)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #34
          to label %bb.l unwind label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEm.exit15, %bb.d, %_ZNSolsEm.exit, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSolsEj.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
end_hunk_15
begin_hunk_16_@_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA34_cJjPKcEEEvRKNS_16XmlReaderElementERKT_DpT0_:bb.a
  %.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.ap, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ao, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: uwtable
define hidden void @_ZThn104_N16OpenColorIO_v2_522CTFReaderMatrixElt_1_38endArrayEj(ptr noundef %0, i32 noundef %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104
  tail call void @_ZN16OpenColorIO_v2_522CTFReaderMatrixElt_1_38endArrayEj(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderRangeEltC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_517CTFReaderRangeEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  store ptr null, ptr %i.a, align 8, !tbaa !1336, !alias.scope !1333
  %i.b = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #32
          to label %.noexc unwind label %bb.c     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !27, !noalias !1333
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !32, !noalias !1333
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !11, !noalias !1333
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511RangeOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.e)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !1333

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #33, !noalias !1333
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.b, ptr %i.g, align 8, !tbaa !34, !alias.scope !1333
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1278, !alias.scope !1333
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ]
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderRangeEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_517CTFReaderRangeEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1282
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1282
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_514CTFReaderOpEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !32
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !499
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !499
  br label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !500
  br label %_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit

_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev.exit:   ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #31, !inline_history !500
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderRangeEltD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_517CTFReaderRangeEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderRangeElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1336 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.e = load <2 x i32>, ptr %i.c, align 8, !tbaa !1277
  store <2 x i32> %i.e, ptr %i.d, align 8, !tbaa !1277
  tail call void @_ZN16OpenColorIO_v2_511RangeOpData9normalizeEv(ptr noundef nonnull align 8 dereferenceable(228) %i.b)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1336 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(228) %i.f)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511RangeOpData9normalizeEv(ptr noundef nonnull align 8 dereferenceable(228)) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_517CTFReaderRangeElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11RangeOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11RangeOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11RangeOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11RangeOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521CTFReaderRangeElt_1_7C2Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_517CTFReaderRangeEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  store ptr null, ptr %i.a, align 8, !tbaa !1336, !alias.scope !1338
  %i.b = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #32
          to label %.noexc.i unwind label %bb.b   ; 6 uses

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !27, !noalias !1338
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !32, !noalias !1338
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !11, !noalias !1338
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511RangeOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.e)
          to label %_ZN16OpenColorIO_v2_517CTFReaderRangeEltC2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !1338

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %.noexc.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #33, !noalias !1338
  br label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i ]
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #31
  resume { ptr, i32 } %eh.lpad-body.i

_ZN16OpenColorIO_v2_517CTFReaderRangeEltC2Ev.exit: ; preds = %.noexc.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.b, ptr %i.h, align 8, !tbaa !34, !alias.scope !1338
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1278, !alias.scope !1338
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_521CTFReaderRangeElt_1_7E, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_521CTFReaderRangeElt_1_7D0Ev(ptr noundef nonnull align 8 dereferenceable(121) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_517CTFReaderRangeEltD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521CTFReaderRangeElt_1_75startEPPKc(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_514CTFReaderOpElt5startEPPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !1341
  %i.b = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.p, %bb.c ], [ %i.b, %bb.a ]
  %.010 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %i.d = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef nonnull %i.c)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = or disjoint i32 %.010, 1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @.str.163, ptr noundef %i.i)
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %i.a, align 8, !tbaa !1341
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = add i32 %.010, 2                         ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1345

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_521CTFReaderRangeElt_1_718isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_STYLEE, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521CTFReaderRangeElt_1_73endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.218", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1336 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.e = load <2 x i32>, ptr %i.c, align 8, !tbaa !1277
  store <2 x i32> %i.e, ptr %i.d, align 8, !tbaa !1277
  tail call void @_ZN16OpenColorIO_v2_511RangeOpData9normalizeEv(ptr noundef nonnull align 8 dereferenceable(228) %i.b)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1336 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(228) %i.f), !inline_history !1346
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i8, ptr %i.j, align 8, !tbaa !1341, !range !50, !noundef !51
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1336
  call void @_ZNK16OpenColorIO_v2_511RangeOpData15convertToMatrixEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.218") align 8 %1, ptr noundef nonnull align 8 dereferenceable(228) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load <2 x ptr>, ptr %1, align 16, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 288
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !1280 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr i8, ptr %i.t, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -16
  %i.z = getelementptr i8, ptr %i.x, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 8 uses
  store <2 x ptr> %i.o, ptr %i.y, align 8, !tbaa !76
  %.not.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.c, label %bb.d

end_hunk_16
begin_hunk_17_@_ZN16OpenColorIO_v2_521CTFReaderReferenceElt5startEPPKc:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.ah
  %.pn31 = phi { ptr, i32 } [ %i.de, %bb.ah ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.df, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.an

.invoke:                                          ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.sink126 = phi i32 [ 0, %bb.aj ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ 1, %bb.af ]
  %.sink125 = phi i64 [ 176, %bb.aj ], [ 176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ 208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ 208, %bb.af ]
  %i.dk = phi ptr [ %3, %bb.aj ], [ %3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %2, %bb.af ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1364 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 168
  store i32 %.sink126, ptr %i.dn, align 8, !tbaa !1376
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sink125
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %_ZN16OpenColorIO_v2_515ReferenceOpData8setAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %._crit_edge
  br i1 %i.cf, label %.noexc.i65, label %.invoke

.noexc.i65:                                       ; preds = %bb.a, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.dp, ptr %7, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 40, ptr %i.a, align 8, !tbaa !45
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc66 unwind label %bb.al  ; 3 uses

.noexc66:                                         ; preds = %.noexc.i65
  store ptr %i.dq, ptr %7, align 8, !tbaa !46
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.dq, ptr noundef nonnull align 1 dereferenceable(40) @.str.169, i64 40, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !47
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  store i8 0, ptr %i.dt, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %.noexc66
  %i.du = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dp
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ak
  %i.dw = load i64, ptr %i.dp, align 8, !tbaa !36
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.invoke

bb.al:                                            ; preds = %.noexc.i65
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.am:                                            ; preds = %.noexc66
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dp
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.am
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !36
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.al
  %.pn33 = phi { ptr, i32 } [ %i.dy, %bb.al ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.dz, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.an

_ZN16OpenColorIO_v2_515ReferenceOpData8setAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.invoke
  %i.ee = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.g
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZN16OpenColorIO_v2_515ReferenceOpData8setAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eg = load i64, ptr %i.g, align 8, !tbaa !36
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZN16OpenColorIO_v2_515ReferenceOpData8setAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ei = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.e
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.ek = load i64, ptr %i.e, align 8, !tbaa !36
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.an:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn37 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.em = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.g
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.an
  %i.eo = load i64, ptr %i.g, align 8, !tbaa !36
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.eq = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.e
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.es = load i64, ptr %i.e, align 8, !tbaa !36
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn37
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_521CTFReaderReferenceElt18isOpParameterValidEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_514CTFReaderOpElt18isOpParameterValidEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #31
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L9ATTR_PATHE, ptr noundef %1)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L14ATTR_BASE_PATHE, ptr noundef %1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L10ATTR_ALIASE, ptr noundef %1)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L16ATTR_IS_INVERTEDE, ptr noundef %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.i = icmp eq i32 %i.h, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.g ], [ true, %bb.e ], [ true, %bb.c ], [ true, %bb.a ], [ %i.i, %bb.i ]
  ret i1 %i.j

bb.k:                                             ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521CTFReaderReferenceElt3endEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1364 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(244) %i.b)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_521CTFReaderReferenceElt5getOpEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !76
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_15ReferenceOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_15ReferenceOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_15ReferenceOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_15ReferenceOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_521CTFReaderTransformEltD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_521CTFReaderTransformEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !215
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !215
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_521CTFReaderTransformEltD0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_521CTFReaderTransformEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_521CTFReaderTransformEltD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1377
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1377
  br label %_ZN16OpenColorIO_v2_521CTFReaderTransformEltD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_521CTFReaderTransformEltD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1378
  br label %_ZN16OpenColorIO_v2_521CTFReaderTransformEltD2Ev.exit

_ZN16OpenColorIO_v2_521CTFReaderTransformEltD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlReaderElementD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) #31, !inline_history !1378
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_521XmlReaderContainerElt11isContainerEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_516XmlReaderElement7isDummyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_521CTFReaderGammaElt_1_5D0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_517CTFReaderGammaEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_525CTFReaderGammaElt_CTF_2_0D0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_517CTFReaderGammaEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_517CTFReaderGammaEltD2Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_517CTFReaderGammaEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1379
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
end_hunk_17
begin_hunk_18_@_ZNSt6vectorIdSaIdEE17_M_default_appendEm:bb.a
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !147
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !521
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #34
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !147
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !147
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #33
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !522
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !521
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !530
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

declare void @_ZN16OpenColorIO_v2_511RangeOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(228)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_515ReferenceOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_515ReferenceOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(244) %i.a) #31, !inline_history !1543
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_515ReferenceOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_515ReferenceOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_515ReferenceOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1388 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !36
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_515ReferenceOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(244)) unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_CTFReaderHelper.cpp() #19 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.170, ptr noundef null) #31
  store ptr %i.a, ptr @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, align 8, !tbaa !7
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_511NumberUtils6LocaleD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, ptr nonnull @__dso_handle) #31 ; 0 uses
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_2E, align 4, !tbaa !39
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_2E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_2E, i64 8), align 4, !tbaa !42
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !39
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !42
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E, align 4, !tbaa !39
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E, i64 8), align 4, !tbaa !42
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E, align 4, !tbaa !39
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E, i64 8), align 4, !tbaa !42
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, align 4, !tbaa !39
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 8), align 4, !tbaa !42
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E, align 4, !tbaa !39
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E, i64 8), align 4, !tbaa !42
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_8E, align 4, !tbaa !39
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_8E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_8E, i64 8), align 4, !tbaa !42
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 4, !tbaa !39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 4, !tbaa !42
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, align 4, !tbaa !39
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 8), align 4, !tbaa !42
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE, align 4, !tbaa !39
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE, i64 4), align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE, i64 8), align 4, !tbaa !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { cold noreturn }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN16OpenColorIO_v2_511NumberUtils6LocaleE", !9, i64 0}
!9 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !6, i64 0}
!13 = !{!14, !26, i64 96}
!14 = !{!"_ZTSN16OpenColorIO_v2_521CTFReaderTransformEltE", !15, i64 0, !21, i64 80, !26, i64 96}
!15 = !{!"_ZTSN16OpenColorIO_v2_521XmlReaderContainerEltE", !16, i64 0}
!16 = !{!"_ZTSN16OpenColorIO_v2_516XmlReaderElementE", !17, i64 8, !4, i64 40, !17, i64 48}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !20, i64 8, !5, i64 16}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSSt10shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformEE", !22, i64 0}
!22 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0, !24, i64 8}
!23 = !{!"p1 _ZTSN16OpenColorIO_v2_518CTFReaderTransformE", !10, i64 0}
!24 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!25 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!26 = !{!"bool", !5, i64 0}
!27 = !{!28, !4, i64 8}
!28 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZSt11make_sharedIN16OpenColorIO_v2_518CTFReaderTransformEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!31 = distinct !{!31, !"_ZSt11make_sharedIN16OpenColorIO_v2_518CTFReaderTransformEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!32 = !{!28, !4, i64 12}
!33 = !{!23, !23, i64 0}
!34 = !{!24, !25, i64 0}
!35 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!36 = !{!5, !5, i64 0}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!22, !23, i64 0}
!39 = !{!40, !4, i64 0}
!40 = !{!"_ZTSN16OpenColorIO_v2_510CTFVersionE", !4, i64 0, !4, i64 4, !4, i64 8}
!41 = !{!40, !4, i64 4}
!42 = !{!40, !4, i64 8}
!43 = !{!19, !19, i64 0}
!44 = !{!18, !19, i64 0}
!45 = !{!20, !20, i64 0}
!46 = !{!17, !19, i64 0}
!47 = !{!17, !20, i64 8}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!58 = !{!56, !53}
!59 = !{!60, !19, i64 40}
!60 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !61, i64 56}
!61 = !{!"_ZTSSt6locale", !62, i64 0}
!62 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!63 = !{!60, !19, i64 32}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!66 = distinct !{!66, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!69 = distinct !{!69, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!70 = !{!68, !65}
!71 = !{!72, !73, i64 8}
!72 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!73 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!74 = !{!72, !73, i64 16}
!75 = !{!"branch_weights", i32 1, i32 1048575}
!76 = !{!10, !10, i64 0}
!77 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!78 = !{!79, !84, i64 96}
!79 = !{!"_ZTSN16OpenColorIO_v2_517CTFReaderArrayEltE", !80, i64 0, !84, i64 96, !4, i64 104}
!80 = !{!"_ZTSN16OpenColorIO_v2_517XmlReaderPlainEltE", !16, i64 0, !81, i64 80}
!81 = !{!"_ZTSSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEE", !82, i64 0}
!82 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !24, i64 8}
!83 = !{!"p1 _ZTSN16OpenColorIO_v2_521XmlReaderContainerEltE", !10, i64 0}
!84 = !{!"p1 _ZTSN16OpenColorIO_v2_59ArrayBaseE", !10, i64 0}
!85 = !{!79, !4, i64 104}
!86 = distinct !{null, null}
!87 = distinct !{ptr @_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!88 = !{ptr @_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev}
!89 = distinct !{ptr @_ZN16OpenColorIO_v2_517CTFReaderArrayEltD2Ev, ptr @_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!90 = !{ptr @_ZN16OpenColorIO_v2_517CTFReaderArrayEltD2Ev, ptr @_ZN16OpenColorIO_v2_517XmlReaderPlainEltD2Ev}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!93 = !{!"p1 int", !10, i64 0}
!94 = !{!92, !93, i64 16}
!95 = !{!93, !93, i64 0}
!96 = !{!82, !83, i64 0}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm: argument 0"}
!99 = distinct !{!99, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm: argument 0"}
!102 = distinct !{!102, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm"}
!103 = !{!101, !98}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!106 = distinct !{!106, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!109 = distinct !{!109, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!110 = !{!108, !105}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm: argument 0"}
!113 = distinct !{!113, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm: argument 0"}
!116 = distinct !{!116, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm"}
!117 = !{!115, !112}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm: argument 0"}
!120 = distinct !{!120, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcm"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm: argument 0"}
!123 = distinct !{!123, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm"}
!124 = !{!122, !119}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!127 = distinct !{!127, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!130 = distinct !{!130, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!131 = !{!129, !126}
!132 = distinct !{!132, !49}
!133 = distinct !{!133, !49}
!134 = distinct !{!134, !49}
!135 = !{!92, !93, i64 8}
!136 = distinct !{!136, !49}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!139 = distinct !{!139, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!142 = distinct !{!142, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!143 = !{!141, !138}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm: argument 0"}
!146 = distinct !{!146, !"_ZN16OpenColorIO_v2_514TruncateStringB5cxx11EPKcmm"}
!147 = !{!148, !148, i64 0}
!148 = !{!"double", !5, i64 0}
!149 = !{!150, !151, i64 0}
!150 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EE", !151, i64 0, !24, i64 8}
!151 = !{!"p1 _ZTSN16OpenColorIO_v2_56OpDataE", !10, i64 0}
!152 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!155 = distinct !{!155, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!158 = distinct !{!158, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!159 = !{!157, !154}
!160 = !{!161, !163, i64 32}
!161 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !162, i64 24, !163, i64 28, !163, i64 32, !164, i64 40, !165, i64 48, !5, i64 64, !4, i64 192, !166, i64 200, !61, i64 208}
!162 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!163 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!164 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!165 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !20, i64 8}
!166 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!169 = distinct !{!169, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!172 = distinct !{!172, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!173 = !{!171, !168}
!174 = distinct !{!174, !49}
!175 = !{!176}
end_hunk_18
