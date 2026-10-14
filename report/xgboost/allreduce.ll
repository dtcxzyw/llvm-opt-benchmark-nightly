Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/allreduce?download=true
inline.NumInlined: 2777
inline.NumDeleted: 483
begin_hunk_0_@_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #9, !inline_history !671
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #9, !inline_history !671
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.20") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !52
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.g ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.26, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEm.exit
  %i.e = load i32, ptr %2, align 4, !tbaa !53
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %bb.c unwind label %bb.g       ; 8 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !66, !alias.scope !678
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !57, !alias.scope !678
  store i8 0, ptr %i.i, align 8, !tbaa !58, !alias.scope !678
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84, !noalias !678 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !678 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85, !noalias !678 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.i, align 8, !tbaa !58, !alias.scope !678
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #26
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  store ptr %i.h, ptr %0, align 8, !tbaa !55
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !62
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !58
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #9
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void

bb.g:                                             ; preds = %bb.b, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #26
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.g ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIfEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 2                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeIfaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIfaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIfaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIfaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_0
begin_hunk_1_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedIdEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.as ], [ %.pn.pn, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.av:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.aq, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !738
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !79
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !79
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i86 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.au, %bb.at, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %.pn30.pn, %bb.at ], [ %.pn30.pn, %bb.au ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bl:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIdEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 3                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeIdaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIdaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIdaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIdaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_1
begin_hunk_2_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedIeEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.as ], [ %.pn.pn, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.av:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.aq, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !790
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !79
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !79
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i86 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.au, %bb.at, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %.pn30.pn, %bb.at ], [ %.pn30.pn, %bb.au ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bl:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIeEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 4                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeIeaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIeaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIeaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIeaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_2
begin_hunk_3_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedIaEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  store ptr %i.be, ptr %0, align 8
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.au ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ae
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.av ], [ %.pn.pn, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.091.0101, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hi = sub i64 %.sroa.14.099, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0101, i64 noundef %i.hi) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.ay:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.hc, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.az

._crit_edge:                                      ; preds = %bb.at, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !851
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.091.0101, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hj = sub i64 %.sroa.14.099, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0101, i64 noundef %i.hj) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.az, %bb.ba
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.hm, align 8, !tbaa !78
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !79
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !62
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #9, !inline_history !4
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !62
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i82, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i = phi i32 [ %i.hp, %bb.be ], [ %i.hz, %bb.bf ]
  %i.ia = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ia, label %bb.bg, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.id, align 8, !tbaa !78
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !79
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #9, !inline_history !4
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bj:                                            ; preds = %bb.bh
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i84, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bl:                                            ; preds = %bb.bj
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i86 = phi i32 [ %i.ig, %bb.bk ], [ %i.iq, %bb.bl ]
  %i.ir = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.ir, label %bb.bm, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.ax, %bb.aw, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.f ], [ %.pn30.pn, %bb.aw ], [ %.pn30.pn, %bb.ax ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.ba, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bo:                                            ; preds = %bb.am
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIaEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.b ; 2 uses
  %i.c = icmp ne ptr %3, null
  %i.d = icmp eq i64 %2, 0
  %i.e = or i1 %i.d, %i.c
  br i1 %i.e, label %_ZN7xgboost6common9EraseTypeIaaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIaaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.f, align 4
  %i.g = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.i = add <2 x i32> %i.h, <i32 -1, i32 1>
  %i.j = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.k = add <2 x i32> %i.i, %i.j
  %i.l = srem <2 x i32> %i.k, %i.h                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.m = load ptr, ptr %1, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = extractelement <2 x i32> %i.l, i64 0
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.q = load ptr, ptr %1, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = extractelement <2 x i32> %i.l, i64 1
  invoke void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.t)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIaaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.u = sext i32 %spec.select.i to i64
  %i.v = udiv i64 %2, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %i.z = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.z, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !53
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.ai, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !53
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3, i64 noundef %i.v, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ap, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !79
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #9, !inline_history !4
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.as, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bd, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.be, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bf, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !79
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #9, !inline_history !4
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bi, %bb.t ], [ %i.bs, %bb.u ]
  %i.bt = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bt, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bu = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bu, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bv = ptrtoint ptr %i.bu to i64
  store i64 %i.bv, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIaaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.by = load ptr, ptr %1, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_3
begin_hunk_4_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedIsEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.as ], [ %.pn.pn, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.av:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.aq, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !893
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !79
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !79
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i86 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.au, %bb.at, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %.pn30.pn, %bb.at ], [ %.pn30.pn, %bb.au ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bl:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIsEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 1                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeIsaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIsaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIsaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIsaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_4
begin_hunk_5_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedIiEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.as ], [ %.pn.pn, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.av:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.aq, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !945
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !79
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !79
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i86 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.au, %bb.at, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %.pn30.pn, %bb.at ], [ %.pn30.pn, %bb.au ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bl:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIiEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 2                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeIiaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIiaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIiaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIiaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_5
begin_hunk_6_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedIlEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.as ], [ %.pn.pn, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.av:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.aq, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !997
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !79
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !79
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i86 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.au, %bb.at, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %.pn30.pn, %bb.at ], [ %.pn30.pn, %bb.au ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bl:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIlEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 3                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeIlaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIlaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIlaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIlaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_6
begin_hunk_7_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedIhEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  store ptr %i.be, ptr %0, align 8
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.au ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ae
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.av ], [ %.pn.pn, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.091.0101, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hi = sub i64 %.sroa.14.099, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0101, i64 noundef %i.hi) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.ay:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.hc, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.az

._crit_edge:                                      ; preds = %bb.at, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !1058
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.091.0101, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hj = sub i64 %.sroa.14.099, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0101, i64 noundef %i.hj) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.az, %bb.ba
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.hm, align 8, !tbaa !78
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !79
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !62
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #9, !inline_history !4
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !62
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i82, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i = phi i32 [ %i.hp, %bb.be ], [ %i.hz, %bb.bf ]
  %i.ia = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ia, label %bb.bg, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.id, align 8, !tbaa !78
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !79
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #9, !inline_history !4
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bj:                                            ; preds = %bb.bh
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i84, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bl:                                            ; preds = %bb.bj
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i86 = phi i32 [ %i.ig, %bb.bk ], [ %i.iq, %bb.bl ]
  %i.ir = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.ir, label %bb.bm, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.ax, %bb.aw, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.f ], [ %.pn30.pn, %bb.aw ], [ %.pn30.pn, %bb.ax ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.ba, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bo:                                            ; preds = %bb.am
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIhEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.b ; 2 uses
  %i.c = icmp ne ptr %3, null
  %i.d = icmp eq i64 %2, 0
  %i.e = or i1 %i.d, %i.c
  br i1 %i.e, label %_ZN7xgboost6common9EraseTypeIhaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIhaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.f, align 4
  %i.g = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.i = add <2 x i32> %i.h, <i32 -1, i32 1>
  %i.j = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.k = add <2 x i32> %i.i, %i.j
  %i.l = srem <2 x i32> %i.k, %i.h                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.m = load ptr, ptr %1, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = extractelement <2 x i32> %i.l, i64 0
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.q = load ptr, ptr %1, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = extractelement <2 x i32> %i.l, i64 1
  invoke void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.t)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIhaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.u = sext i32 %spec.select.i to i64
  %i.v = udiv i64 %2, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %i.z = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.z, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !53
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.ai, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !53
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3, i64 noundef %i.v, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ap, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !79
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #9, !inline_history !4
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.as, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bd, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.be, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bf, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !79
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #9, !inline_history !4
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bi, %bb.t ], [ %i.bs, %bb.u ]
  %i.bt = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bt, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bu = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bu, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bv = ptrtoint ptr %i.bu to i64
  store i64 %i.bv, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIhaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.by = load ptr, ptr %1, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_7
begin_hunk_8_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedItEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.as ], [ %.pn.pn, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.av:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.aq, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !1100
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !79
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !79
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i86 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.au, %bb.at, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %.pn30.pn, %bb.at ], [ %.pn30.pn, %bb.au ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bl:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherItEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 1                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeItaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeItaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeItaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeItaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_8
begin_hunk_9_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedIjEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.as ], [ %.pn.pn, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.av:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.aq, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !1152
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !79
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !79
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i86 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.au, %bb.at, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %.pn30.pn, %bb.at ], [ %.pn30.pn, %bb.au ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bl:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherIjEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 2                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeIjaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeIjaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeIjaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeIjaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_9
begin_hunk_10_@_ZN7xgboost10collective8cpu_impl22RingScatterReduceTypedImEENS0_6ResultERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmRKSt8functionIFvNS8_IKaLm18446744073709551615EEES9_EE:bb.a
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.pn30 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %.pn27.pn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ab
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.as ], [ %.pn.pn, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.gn) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.av:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit78
  store ptr %i.gh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.aq, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %0, align 8, !tbaa !44, !alias.scope !1204
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %.not.i.i.i79 = icmp eq ptr %.sroa.090.0100, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIaSaIaEED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = sub i64 %.sroa.14.098, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0100, i64 noundef %i.go) #26
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit80

_ZNSt6vectorIaSaIaEED2Ev.exit80:                  ; preds = %bb.aw, %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !79
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i82 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit80, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !76 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !79
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i84 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i86 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !63

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.au, %bb.at, %bb.f
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %.pn30.pn, %bb.at ], [ %.pn30.pn, %bb.au ]
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #9
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ], [ %i.be, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  resume { ptr, i32 } %.pn30.pn.pn.pn

bb.bl:                                            ; preds = %bb.aj
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective13RingAllgatherImEENS0_6ResultERKNS0_4CommENS_6common4SpanIT_Lm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.28", align 16 ; 4 uses
  %i.a = shl i64 %2, 3                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  %spec.select.i = select i1 %.not.i, i32 1, i32 %i.c ; 2 uses
  %i.d = icmp ne ptr %3, null
  %i.e = icmp eq i64 %i.a, 0
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %_ZN7xgboost6common9EraseTypeImaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZN7xgboost6common9EraseTypeImaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %9 = load <4 x i32>, ptr %i.g, align 4
  %i.h = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = add <2 x i32> %i.i, <i32 -1, i32 1>
  %i.k = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i32> %i.j, %i.k
  %i.m = srem <2 x i32> %i.l, %i.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = extractelement <2 x i32> %i.m, i64 0
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = extractelement <2 x i32> %i.m, i64 1
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %i.u)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %_ZN7xgboost6common9EraseTypeImaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = sext i32 %spec.select.i to i64
  %i.w = udiv i64 %i.a, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.aa, ptr %7, align 16, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %5, align 16, !tbaa !80
  store <2 x ptr> %i.aj, ptr %8, align 16, !tbaa !80
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i26 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !53
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27

_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27: ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit, %bb.h, %bb.i
  invoke void @_ZN7xgboost10collective8cpu_impl13RingAllgatherERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEmiSt10shared_ptrINS0_7ChannelEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 %i.a, ptr %3, i64 noundef %i.w, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aq, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !79
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i28 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !76  ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i30 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i32 = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33, !prof !63

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #9
  br label %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33

_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.v
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i34, label %bb.y, label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bw = ptrtoint ptr %i.bv to i64
  store i64 %i.bw, ptr %0, align 8, !tbaa !65
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.w:                                             ; preds = %_ZN7xgboost6common9EraseTypeImaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit27
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  br label %bb.an

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33
  %i.bz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.aa unwind label %bb.z

end_hunk_10
