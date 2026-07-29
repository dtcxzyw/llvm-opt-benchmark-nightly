inline.NumInlined: 11711
inline.NumDeleted: 4273
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5arrow14NestedSelectorINS_12ChunkedArrayELb1EE8GetChildERKS1_iPNS_10MemoryPoolE:bb.a
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.ag, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !532

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #36
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ac, %.lr.ph.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.cx, %i.cf
  br i1 %.not.i.i.i39, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3075

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i40 = load ptr, ptr %4, align 8, !tbaa !2365
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.cy = phi ptr [ %.pr.i40, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.cd, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !3059
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #37
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

.body:                                            ; preds = %bb.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, %bb.h, %bb.z, %bb.e
  %.pn26 = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.u, %bb.e ], [ %i.bo, %bb.z ], [ %i.cc, %bb.aa ], [ %i.bz, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn26
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow14NestedSelectorINS_12ChunkedArrayELb1EE9SummarizeINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_EENSt9enable_ifIXntsr3stdE9is_same_vIT0_NS_5FieldEEEvE4typeEPT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.288, i64 noundef 16) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1348  ; 2 uses
  %.not.i.i = icmp ne i8 %i.d, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not32 = icmp eq ptr %i.f, null                ; 2 uses
  %.not = select i1 %.not.i.i, i1 true, i1 %.not32
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3094 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3094 ; 2 uses
  %.not3338 = icmp eq ptr %i.g, %i.i
  br i1 %.not3338, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrowlsERSoRKNS_8DataTypeE.exit
  %.sroa.029.039 = phi ptr [ %i.g, %.lr.ph ], [ %i.ae, %_ZN5arrowlsERSoRKNS_8DataTypeE.exit ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.029.039, align 8, !tbaa !1368
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !301  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !296
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i1 noundef zeroext false), !inline_history !3039
  %i.r = load ptr, ptr %3, align 8, !tbaa !24
  %i.s = load i64, ptr %i.j, align 8, !tbaa !16
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.c
  %i.u = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.k
  br i1 %i.v, label %_ZN5arrowlsERSoRKNS_8DataTypeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.w = load i64, ptr %i.k, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #37
  br label %_ZN5arrowlsERSoRKNS_8DataTypeE.exit

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.k
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.d
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !19
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i19 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %common.resume

_ZN5arrowlsERSoRKNS_8DataTypeE.exit:              ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.83, i64 noundef 2) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 16 ; 2 uses
  %.not33 = icmp eq ptr %i.ae, %i.i
  br i1 %.not33, label %.loopexit, label %bb.c

bb.e:                                             ; preds = %bb.a
  %.not.i.i17 = icmp ne i8 %i.d, 0
  %.not16 = select i1 %.not.i.i17, i1 true, i1 %.not32
  br i1 %.not16, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !301 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !818 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !818 ; 2 uses
  %.not3540 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not3540, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph42, %_ZN5arrowlsERSoRKNS_8DataTypeE.exit24
  %.sroa.025.041 = phi ptr [ %i.ai, %.lr.ph42 ], [ %i.bg, %_ZN5arrowlsERSoRKNS_8DataTypeE.exit24 ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.025.041, align 8, !tbaa !541
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !301 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !296
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i1 noundef zeroext false), !inline_history !3039
  %i.at = load ptr, ptr %2, align 8, !tbaa !24
  %i.au = load i64, ptr %i.al, align 8, !tbaa !16
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.at, i64 noundef %i.au)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i21 unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i21: ; preds = %bb.g
  %i.aw = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.am
  br i1 %i.ax, label %_ZN5arrowlsERSoRKNS_8DataTypeE.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i21
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !19
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #37
  br label %_ZN5arrowlsERSoRKNS_8DataTypeE.exit24

bb.h:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.am
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i18: ; preds = %bb.h
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !19
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i19: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZN5arrowlsERSoRKNS_8DataTypeE.exit24:            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.83, i64 noundef 2) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.025.041, i64 16 ; 2 uses
  %.not35 = icmp eq ptr %i.bg, %i.ak
  br i1 %.not35, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %_ZN5arrowlsERSoRKNS_8DataTypeE.exit, %_ZN5arrowlsERSoRKNS_8DataTypeE.exit24, %bb.b, %bb.f, %bb.e
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.170, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca %union.anon, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1467 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1465   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #38
  unreachable

_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35
  br label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.s = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16   ; 4 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.t, ptr %2, align 8, !tbaa !24
  store i64 0, ptr %i.z, align 8, !tbaa !16
  store i8 0, ptr %i.t, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !13
  %3 = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, i64 %3, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !19
  store i64 %i.ab, ptr %.sroa.4, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.t, ptr %2, align 8, !tbaa !24
  store i64 0, ptr %i.ac, align 8, !tbaa !16
  store i8 0, ptr %i.t, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.r, align 8, !tbaa !24
  %.sroa.4.0..sroa.4.16. = load i64, ptr %.sroa.4, align 8, !tbaa !19
  store i64 %.sroa.4.0..sroa.4.16., ptr %i.ad, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ae = phi i64 [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i8 1, ptr %i.ag, align 8, !tbaa !1458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %.not12.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not12.i.i.i, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.d ] ; 10 uses
  %.0913.i.i.i = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.d ] ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !1458, !alias.scope !3196, !noalias !3193 ; 2 uses
  switch i8 %i.aj, label %bb.i [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.h
    i8 -1, label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = load <2 x ptr>, ptr %.0913.i.i.i, align 8, !tbaa !1241, !alias.scope !3196, !noalias !3193
  store <2 x ptr> %i.ak, ptr %.014.i.i.i, align 8, !tbaa !1241, !alias.scope !3193, !noalias !3196
  %i.al = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1020, !alias.scope !3196, !noalias !3193
  store ptr %i.an, ptr %i.al, align 8, !tbaa !1020, !alias.scope !3193, !noalias !3196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3196, !noalias !3193
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16 ; 3 uses
  store ptr %i.ao, ptr %.014.i.i.i, align 8, !tbaa !13, !alias.scope !3193, !noalias !3196
  %i.ap = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !24, !alias.scope !3196, !noalias !3193 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16, !alias.scope !3196, !noalias !3193 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false), !alias.scope !3198
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  store ptr %i.ap, ptr %.014.i.i.i, align 8, !tbaa !24, !alias.scope !3193, !noalias !3196
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !19, !alias.scope !3196, !noalias !3193
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !19, !alias.scope !3193, !noalias !3196
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !3196, !noalias !3193
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.ax = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.at, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !16, !alias.scope !3193, !noalias !3196
  store ptr %i.aq, ptr %.0913.i.i.i, align 8, !tbaa !24, !alias.scope !3196, !noalias !3193
  store i64 0, ptr %i.ay, align 8, !tbaa !16, !alias.scope !3196, !noalias !3193
  store i8 0, ptr %i.aq, align 8, !tbaa !19, !alias.scope !3196, !noalias !3193
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = load <2 x ptr>, ptr %.0913.i.i.i, align 8, !tbaa !1460, !alias.scope !3196, !noalias !3193
  store <2 x ptr> %i.ba, ptr %.014.i.i.i, align 8, !tbaa !1460, !alias.scope !3193, !noalias !3196
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1470, !alias.scope !3196, !noalias !3193
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !1470, !alias.scope !3193, !noalias !3196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3196, !noalias !3193
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  unreachable

_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i:           ; preds = %bb.h, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i
  store i8 %i.aj, ptr %i.ah, align 8, !tbaa !1458, !alias.scope !3193, !noalias !3196
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.j, !inline_history !1481

bb.j:                                             ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #39, !inline_history !1481
  unreachable

_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2696

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.bh, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not12.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not12.i.i.i26, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31
  %.014.i.i.i28 = phi ptr [ %i.cj, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %i.bi, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 10 uses
  %.0913.i.i.i29 = phi ptr [ %i.ci, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %1, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3202)
  %i.bj = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 32
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !1458, !alias.scope !3202, !noalias !3199 ; 2 uses
  switch i8 %i.bl, label %bb.o [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.n
    i8 -1, label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i30
  ]

bb.k:                                             ; preds = %.lr.ph.i.i.i27
  %i.bm = load <2 x ptr>, ptr %.0913.i.i.i29, align 8, !tbaa !1241, !alias.scope !3202, !noalias !3199
  store <2 x ptr> %i.bm, ptr %.014.i.i.i28, align 8, !tbaa !1241, !alias.scope !3199, !noalias !3202
  %i.bn = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1020, !alias.scope !3202, !noalias !3199
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !1020, !alias.scope !3199, !noalias !3202
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !3202, !noalias !3199
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i30

bb.l:                                             ; preds = %.lr.ph.i.i.i27
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 16 ; 3 uses
  store ptr %i.bq, ptr %.014.i.i.i28, align 8, !tbaa !13, !alias.scope !3199, !noalias !3202
  %i.br = load ptr, ptr %.0913.i.i.i29, align 8, !tbaa !24, !alias.scope !3202, !noalias !3199 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 16 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i34

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !16, !alias.scope !3202, !noalias !3199 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false), !alias.scope !3204
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i34: ; preds = %bb.l
  store ptr %i.br, ptr %.014.i.i.i28, align 8, !tbaa !24, !alias.scope !3199, !noalias !3202
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !19, !alias.scope !3202, !noalias !3199
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !19, !alias.scope !3199, !noalias !3202
  %.phi.trans.insert.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 8
  %.pre.i.i.i.i36 = load i64, ptr %.phi.trans.insert.i.i.i.i35, align 8, !tbaa !16, !alias.scope !3202, !noalias !3199
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i37

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i34, %bb.m
  %i.bz = phi i64 [ %.pre.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i34 ], [ %i.bv, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 8
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !16, !alias.scope !3199, !noalias !3202
  store ptr %i.bs, ptr %.0913.i.i.i29, align 8, !tbaa !24, !alias.scope !3202, !noalias !3199
  store i64 0, ptr %i.ca, align 8, !tbaa !16, !alias.scope !3202, !noalias !3199
  store i8 0, ptr %i.bs, align 8, !tbaa !19, !alias.scope !3202, !noalias !3199
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i30

bb.n:                                             ; preds = %.lr.ph.i.i.i27
  %i.cc = load <2 x ptr>, ptr %.0913.i.i.i29, align 8, !tbaa !1460, !alias.scope !3202, !noalias !3199
  store <2 x ptr> %i.cc, ptr %.014.i.i.i28, align 8, !tbaa !1460, !alias.scope !3199, !noalias !3202
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1470, !alias.scope !3202, !noalias !3199
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !1470, !alias.scope !3199, !noalias !3202
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !3202, !noalias !3199
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i30

bb.o:                                             ; preds = %.lr.ph.i.i.i27
  unreachable

_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i30:         ; preds = %bb.n, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i37, %bb.k, %.lr.ph.i.i.i27
  store i8 %i.bl, ptr %i.bj, align 8, !tbaa !1458, !alias.scope !3199, !noalias !3202
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i29)
          to label %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 unwind label %bb.p, !inline_history !1481

bb.p:                                             ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i30
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  tail call void @__clang_call_terminate(ptr %i.ch) #39, !inline_history !1481
  unreachable

_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31: ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i30
  %i.ci = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 40 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ci, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i27, !llvm.loop !2696

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38: ; preds = %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.bi, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cj, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1470
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cn) #37
  br label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, %bb.q
  store ptr %i.q, ptr %0, align 8, !tbaa !1465
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !1467
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.l
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !1470
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(34) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1213, !nonnull !570, !align !1223 ; 3 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %1) #36
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(11) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.e, i64 noundef %i.g)
          to label %.noexc4 unwind label %bb.c    ; 0 uses

.noexc4:                                          ; preds = %.noexc
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %3) #36
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(34) %3, i64 noundef %i.i)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA11_KcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA11_KcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEEvRSoOT_DpOT0_.exit: ; preds = %.noexc4
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA11_KcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.c:                                             ; preds = %.noexc4, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA11_KcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEEvRSoOT_DpOT0_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1467 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1465   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #38
  unreachable

_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35
  br label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN5arrow8FieldRefESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 5 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !328
  %i.t = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #35
          to label %bb.d unwind label %bb.r       ; 3 uses

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !328
  store ptr %i.t, ptr %i.r, align 8, !tbaa !1017
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1021
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.u, ptr %i.w, align 8, !tbaa !1020
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i8 0, ptr %i.x, align 8, !tbaa !1458
  %.not12.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not12.i.i.i, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.d ] ; 10 uses
  %.0913.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.d ] ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3208)
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1458, !alias.scope !3208, !noalias !3205 ; 2 uses
  switch i8 %i.aa, label %bb.i [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.h
    i8 -1, label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = load <2 x ptr>, ptr %.0913.i.i.i, align 8, !tbaa !1241, !alias.scope !3208, !noalias !3205
  store <2 x ptr> %i.ab, ptr %.014.i.i.i, align 8, !tbaa !1241, !alias.scope !3205, !noalias !3208
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1020, !alias.scope !3208, !noalias !3205
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1020, !alias.scope !3205, !noalias !3208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3208, !noalias !3205
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.014.i.i.i, align 8, !tbaa !13, !alias.scope !3205, !noalias !3208
  %i.ag = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !24, !alias.scope !3208, !noalias !3205 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16, !alias.scope !3208, !noalias !3205 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !3210
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  store ptr %i.ag, ptr %.014.i.i.i, align 8, !tbaa !24, !alias.scope !3205, !noalias !3208
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !19, !alias.scope !3208, !noalias !3205
  store i64 %i.an, ptr %i.af, align 8, !tbaa !19, !alias.scope !3205, !noalias !3208
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !3208, !noalias !3205
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.ao = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !16, !alias.scope !3205, !noalias !3208
  store ptr %i.ah, ptr %.0913.i.i.i, align 8, !tbaa !24, !alias.scope !3208, !noalias !3205
  store i64 0, ptr %i.ap, align 8, !tbaa !16, !alias.scope !3208, !noalias !3205
  store i8 0, ptr %i.ah, align 8, !tbaa !19, !alias.scope !3208, !noalias !3205
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = load <2 x ptr>, ptr %.0913.i.i.i, align 8, !tbaa !1460, !alias.scope !3208, !noalias !3205
  store <2 x ptr> %i.ar, ptr %.014.i.i.i, align 8, !tbaa !1460, !alias.scope !3205, !noalias !3208
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1470, !alias.scope !3208, !noalias !3205
  store ptr %i.au, ptr %i.as, align 8, !tbaa !1470, !alias.scope !3205, !noalias !3208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3208, !noalias !3205
  br label %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  unreachable

_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i:           ; preds = %bb.h, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !1458, !alias.scope !3205, !noalias !3208
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %.0913.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.j, !inline_history !1481

bb.j:                                             ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #39, !inline_history !1481
  unreachable

_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN5arrow8FieldRefC2EOS0_.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2696

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.ay, %_ZSt19__relocate_object_aIN5arrow8FieldRefES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not12.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not12.i.i.i26, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i27
end_hunk_0
