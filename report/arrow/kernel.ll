inline.NumInlined: 1402
inline.NumDeleted: 733
begin_hunk_0_@_ZN5arrow7compute5match13RunEndEncodedESt10shared_ptrINS0_11TypeMatcherEE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !129, !alias.scope !199
  %i.f = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.b ; 8 uses

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !118, !noalias !208
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !121, !noalias !208
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute5match20RunEndEncodedMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !29, !noalias !208
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = load <2 x ptr>, ptr %1, align 8, !tbaa !68, !noalias !208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !208
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow7compute5match20RunEndEncodedMatcherE, i64 16), ptr %i.i, align 8, !tbaa !29, !noalias !208
  store ptr %i.d, ptr %i.j, align 8, !tbaa !126, !noalias !208
  store ptr %i.a, ptr %i.k, align 8, !tbaa !129, !noalias !208
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !68, !noalias !208
  store ptr %i.i, ptr %0, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.n, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !121
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !211
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !211
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute5match13RunEndEncodedENS_4Type4typeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.32") align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.32", align 8 ; 6 uses
  %3 = alloca %"class.std::shared_ptr.32", align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !215 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !118, !noalias !220
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !121, !noalias !220
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute5match17SameTypeIdMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !29, !noalias !220
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow7compute5match17SameTypeIdMatcherE, i64 16), ptr %i.d, align 8, !tbaa !29, !noalias !220
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %i.e, align 8, !tbaa !122, !noalias !220
  store ptr %i.d, ptr %3, align 8, !tbaa !126, !alias.scope !212
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !129, !alias.scope !212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc unwind label %bb.c     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !118, !noalias !227
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !121, !noalias !227
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute5match20RunEndIntegerMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !29, !noalias !227
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow7compute5match20RunEndIntegerMatcherE, i64 16), ptr %i.j, align 8, !tbaa !29, !noalias !227
  store ptr %i.j, ptr %2, align 8, !tbaa !126, !alias.scope !224, !noalias !221
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.k, align 8, !tbaa !129, !alias.scope !224, !noalias !221
  %i.l = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.b, !noalias !221 ; 9 uses

bb.b:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #24, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !221
  br label %.body

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !118, !noalias !230
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !121, !noalias !230
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute5match20RunEndEncodedMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !29, !noalias !230
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow7compute5match20RunEndEncodedMatcherE, i64 16), ptr %i.p, align 8, !tbaa !29, !noalias !230
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.j, ptr %i.q, align 8, !tbaa !126, !noalias !230
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.g, ptr %i.r, align 8, !tbaa !129, !noalias !230
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.d, ptr %i.s, align 8, !tbaa !126, !noalias !230
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.a, ptr %i.t, align 8, !tbaa !129, !noalias !230
  store ptr %i.p, ptr %0, align 8, !tbaa !126, !alias.scope !221
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.u, align 8, !tbaa !129, !alias.scope !221
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !221
  ret void

bb.c:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.m, %bb.b ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute5match13RunEndEncodedESt10shared_ptrINS0_11TypeMatcherEES4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.32") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN5arrow7compute5match20RunEndEncodedMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !233 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !118, !noalias !238
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !121, !noalias !238
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute5match20RunEndEncodedMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !29, !noalias !238
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !68, !noalias !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !238
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !68, !noalias !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !238
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow7compute5match20RunEndEncodedMatcherE, i64 16), ptr %i.d, align 8, !tbaa !29, !noalias !238
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !68, !noalias !238
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !68, !noalias !238
  store ptr %i.d, ptr %0, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow7compute9InputType4HashEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !239    ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, 2654435769             ; 2 uses
  %cond = icmp eq i32 %i.a, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !246
  %i.f = tail call noundef i64 @_ZNK5arrow8DataType4HashEv(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  %i.g = add i64 %i.f, 173201933991
  %i.h = xor i64 %i.g, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  ret i64 %.0
}

declare noundef i64 @_ZNK5arrow8DataType4HashEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute9InputType8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 23 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = load i32, ptr %1, align 8, !tbaa !239
  switch i32 %i.a, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !246  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %3, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !247
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.o = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !71
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !71
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.f
  %.pn6 = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load ptr, ptr %4, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !247
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit13 unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit13: ; preds = %bb.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit13
  %i.an = load i64, ptr %i.al, align 8, !tbaa !71
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.k:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.k
  %i.au = load i64, ptr %i.as, align 8, !tbaa !71
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.aq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !254, !alias.scope !255
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !247, !alias.scope !255
  store i8 0, ptr %i.aw, align 8, !tbaa !71, !alias.scope !255
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !256, !noalias !255 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !255 ; 2 uses
  %i.bc = icmp ugt ptr %i.az, %i.bb
  %.08.i.i.i = select i1 %i.bc, ptr %i.az, ptr %i.bb ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !260, !noalias !255 ; 2 uses
  %i.bf = ptrtoint ptr %.08.i.i.i to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.be, i64 noundef %i.bh)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !70, !alias.scope !255 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aw
  br i1 %i.bl, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !71, !alias.scope !255
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #26
  br label %.body

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.l
  %i.bp = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bp, ptr %2, align 8, !tbaa !29
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
end_hunk_0
begin_hunk_1_@_ZNK5arrow7compute15KernelSignature6EqualsERKS1_:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.ab), !inline_history !317
  br i1 %i.af, label %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread, label %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread14

_ZNK5arrow7compute9InputType6EqualsERKS1_.exit:   ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !246
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !246
  %i.ak = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.aj, i1 noundef zeroext false)
  br i1 %i.ak, label %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread, label %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread14

_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread: ; preds = %bb.d, %.lr.ph, %bb.e, %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit
  %i.al = add nuw i64 %.0916, 1                   ; 2 uses
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !307
  %i.an = load ptr, ptr %0, align 8, !tbaa !306   ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 40
  %.not24 = icmp ult i64 %i.al, %i.ar
  br i1 %.not24, label %.lr.ph, label %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread14, !llvm.loop !318

_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread14: ; preds = %bb.d, %bb.c, %bb.e, %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit, %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread, %.preheader, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.preheader ], [ false, %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %_ZNK5arrow7compute9InputType6EqualsERKS1_.exit.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow7compute15KernelSignature13MatchesInputsERKSt6vectorINS_10TypeHolderESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !297, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !320  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !323    ; 3 uses
  br i1 %i.c, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %.not40 = icmp eq ptr %i.e, %i.f
  br i1 %.not40, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph38, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit.thread
  %i.h = phi ptr [ %i.f, %.lr.ph38 ], [ %i.ae, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit.thread ]
  %storemerge37 = phi i64 [ 0, %.lr.ph38 ], [ %i.ac, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit.thread ] ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !307
  %i.j = load ptr, ptr %0, align 8, !tbaa !306    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 40
  %i.o = add nsw i64 %i.n, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %storemerge37)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.speculated ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %storemerge37
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !270  ; 2 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !239
  switch i32 %i.s, label %.thread [
    i32 1, label %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit
    i32 2, label %bb.c
    i32 0, label %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.r), !inline_history !265
  br i1 %i.y, label %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit.thread, label %.thread

_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !246
  %i.ab = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i1 noundef zeroext false)
  br i1 %i.ab, label %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit.thread, label %.thread

_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit.thread: ; preds = %bb.b, %bb.c, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit
  %i.ac = add nuw i64 %storemerge37, 1            ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !320
  %i.ae = load ptr, ptr %1, align 8, !tbaa !323   ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 24
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %bb.b, label %.loopexit, !llvm.loop !324

bb.d:                                             ; preds = %bb.a
  %i.ak = ptrtoint ptr %i.e to i64
  %i.al = ptrtoint ptr %i.f to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !307 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !306   ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 40
  %.not = icmp eq i64 %i.an, %i.au
  br i1 %.not, label %.preheader33, label %.thread

.preheader33:                                     ; preds = %bb.d
  %.not39 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16.thread
  %i.av = phi ptr [ %i.bm, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16.thread ], [ %i.aq, %.preheader33 ]
  %.036 = phi i64 [ %i.bk, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16.thread ], [ 0, %.preheader33 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.036 ; 3 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !323
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.036
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !270 ; 2 uses
  %i.ba = load i32, ptr %i.aw, align 8, !tbaa !239
  switch i32 %i.ba, label %.thread [
    i32 1, label %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16
    i32 2, label %bb.e
    i32 0, label %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16.thread
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !126 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %i.az), !inline_history !265
  br i1 %i.bg, label %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16.thread, label %.thread

_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16: ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !246
  %i.bj = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %i.az, i1 noundef zeroext false)
  br i1 %i.bj, label %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16.thread, label %.thread

_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16.thread: ; preds = %.lr.ph, %bb.e, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16
  %i.bk = add nuw i64 %.036, 1                    ; 2 uses
  %i.bl = load ptr, ptr %i.ao, align 8, !tbaa !307
  %i.bm = load ptr, ptr %0, align 8, !tbaa !306   ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 40
  %i.br = icmp ult i64 %i.bk, %i.bq
  br i1 %i.br, label %.lr.ph, label %.loopexit, !llvm.loop !325

.loopexit:                                        ; preds = %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16.thread, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit.thread, %.preheader33, %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !285 ; 3 uses
  %.not32 = icmp eq ptr %i.bt, null
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.bx, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %.loopexit
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.e, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16, %bb.b, %bb.c, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit, %bb.f, %bb.d, %bb.g
  %.2 = phi i1 [ true, %bb.g ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.b ], [ false, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit ], [ false, %bb.c ], [ false, %_ZNK5arrow7compute9InputType7MatchesERKNS_8DataTypeE.exit16 ], [ false, %bb.e ], [ false, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow7compute15KernelSignature4HashEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !303  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !293    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK5arrow7compute9InputType4HashEv.exit, %bb.b
  %.010.lcssa = phi i64 [ 0, %bb.b ], [ %i.t, %_ZNK5arrow7compute9InputType4HashEv.exit ] ; 2 uses
  store i64 %.010.lcssa, ptr %i.a, align 8, !tbaa !303
  br label %bb.d

.lr.ph:                                           ; preds = %bb.b, %_ZNK5arrow7compute9InputType4HashEv.exit
  %.01012 = phi i64 [ %i.t, %_ZNK5arrow7compute9InputType4HashEv.exit ], [ 0, %bb.b ] ; 3 uses
  %.sroa.05.011 = phi ptr [ %i.u, %_ZNK5arrow7compute9InputType4HashEv.exit ], [ %i.c, %bb.b ] ; 3 uses
  %i.g = load i32, ptr %.sroa.05.011, align 8, !tbaa !239 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.h, 2654435769             ; 2 uses
  %cond.i = icmp eq i32 %i.g, 1
  br i1 %cond.i, label %bb.c, label %_ZNK5arrow7compute9InputType4HashEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.011, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.l = tail call noundef i64 @_ZNK5arrow8DataType4HashEv(ptr noundef nonnull align 8 dereferenceable(72) %i.k)
  %i.m = add i64 %i.l, 173201933991
  %i.n = xor i64 %i.m, %i.i
  br label %_ZNK5arrow7compute9InputType4HashEv.exit

_ZNK5arrow7compute9InputType4HashEv.exit:         ; preds = %.lr.ph, %bb.c
  %.0.i = phi i64 [ %i.n, %bb.c ], [ %i.i, %.lr.ph ]
  %i.o = shl i64 %.01012, 6
  %i.p = lshr i64 %.01012, 2
  %i.q = add i64 %i.o, 2654435769
  %i.r = add i64 %i.q, %i.p
  %i.s = add i64 %i.r, %.0.i
  %i.t = xor i64 %i.s, %.01012                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.011, i64 40 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ %.010.lcssa, %._crit_edge ], [ %i.b, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute15KernelSignature8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.invoke61:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 23 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !297, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = select i1 %i.c, ptr @.str.3, ptr @.str.4
  %i.f = select i1 %i.c, i64 8, i64 1
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.e, i64 noundef %i.f)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.a ; 0 uses

bb.a:                                             ; preds = %.invoke61, %._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.invoke61
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !307
  %i.k = load ptr, ptr %1, align 8, !tbaa !306    ; 2 uses
  %.not33 = icmp eq ptr %i.j, %i.k
  br i1 %.not33, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNK5arrow7compute9InputType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %bb.b unwind label %.loopexit.split-lp36

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %i.o = load ptr, ptr %3, align 8, !tbaa !70
  %i.p = load i64, ptr %i.m, align 8, !tbaa !247
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.o, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp41 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.b
  %i.r = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.t = load i64, ptr %i.n, align 8, !tbaa !71
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !307
  %i.w = load ptr, ptr %1, align 8, !tbaa !306
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = load i8, ptr %i.a, align 8, !tbaa !297, !range !45, !noundef !46
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.str.6..str.7 = select i1 %i.ad, ptr @.str.6, ptr @.str.7
  %. = select i1 %i.ad, i64 2, i64 1
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %.str.6..str.7, i64 noundef %.)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.a ; 0 uses

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.032 = phi i64 [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %.peel.next
  %.pre = load ptr, ptr %1, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %.032
  invoke void @_ZNK5arrow7compute9InputType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.ah)
          to label %bb.d unwind label %.loopexit35

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.ai = load ptr, ptr %3, align 8, !tbaa !70
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !247
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.ai, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit40 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.al = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.n
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.an = load i64, ptr %i.n, align 8, !tbaa !71
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ap = add nuw i64 %.032, 1                    ; 2 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !307
  %i.ar = load ptr, ptr %1, align 8, !tbaa !306
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 40
  %i.aw = icmp ult i64 %i.ap, %i.av
  br i1 %i.aw, label %.peel.next, label %._crit_edge, !llvm.loop !326

.loopexit35:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %lpad.loopexit37 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit.split-lp36:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit40:                                      ; preds = %bb.d
  %lpad.loopexit42 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp41:                             ; preds = %bb.b
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp41, %.loopexit40
  %lpad.phi44 = phi { ptr, i32 } [ %lpad.loopexit42, %.loopexit40 ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp41 ] ; 2 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.n
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.e
  %i.az = load i64, ptr %i.n, align 8, !tbaa !71
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.e, %.loopexit35, %.loopexit.split-lp36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn12 = phi { ptr, i32 } [ %lpad.phi44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp36 ], [ %lpad.loopexit37, %.loopexit35 ], [ %lpad.phi44, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.a ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !266, !noalias !328
  %cond.i = icmp eq i32 %i.be, 0
  br i1 %cond.i, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !246, !noalias !328 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29, !noalias !328
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !328
  invoke void %i.bj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.bg, i1 noundef zeroext false)
          to label %._ZNK5arrow7compute10OutputType8ToStringB5cxx11Ev.exit_crit_edge unwind label %bb.j, !inline_history !331

._ZNK5arrow7compute10OutputType8ToStringB5cxx11Ev.exit_crit_edge: ; preds = %bb.f
  %.pre46 = load ptr, ptr %4, align 8, !tbaa !70
end_hunk_1
