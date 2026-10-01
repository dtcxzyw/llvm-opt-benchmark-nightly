Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ir_interpreter?download=true
inline.NumInlined: 2112
inline.NumDeleted: 869
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4lean2ir11interpreter10stub_m_auxEPP11lean_object:bb.a
  %i.a = alloca ptr, align 8                      ; 2 uses
  %1 = alloca %"class.lean::elab_environment", align 8 ; 7 uses
  %2 = alloca %"class.lean::options", align 8     ; 7 uses
  %3 = alloca %"class.std::function", align 8     ; 12 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !21
  store ptr %i.b, ptr %1, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  store ptr %i.d, ptr %2, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.a to i64
  store i64 %i.k, ptr %3, align 8, !tbaa !52
  store ptr @_ZNSt17_Function_handlerIFP11lean_objectRN4lean2ir11interpreterEEZNS4_10stub_m_auxEPS1_EUlS5_E_E9_M_invokeERKSt9_Any_dataS5_, ptr %i.i, align 8, !tbaa !55
  store ptr @_ZNSt17_Function_handlerIFP11lean_objectRN4lean2ir11interpreterEEZNS4_10stub_m_auxEPS1_EUlS5_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.h, align 8, !tbaa !56
  %i.l = invoke noundef ptr @_ZN4lean2ir11interpreter16with_interpreterIP11lean_objectEET_RKNS_16elab_environmentERKNS_7optionsERKNS_4nameERKSt8functionIFS5_RS1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.q = load ptr, ptr %2, align 8, !tbaa !20     ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4lean10object_refD2Ev.exit

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.t = load i32, ptr %i.q, align 4, !tbaa !29   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !29
  br label %_ZN4lean10object_refD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %.not.i1.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.q)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.y = load ptr, ptr %1, align 8, !tbaa !20     ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i.i.i3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i3, label %bb.j, label %_ZN4lean10object_refD2Ev.exit5

bb.j:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !29  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !30

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !29
  br label %_ZN4lean10object_refD2Ev.exit5

bb.l:                                             ; preds = %bb.j
  %.not.i1.i.i4 = icmp eq i32 %i.ab, 0
  br i1 %.not.i1.i.i4, label %_ZN4lean10object_refD2Ev.exit5, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.y)
          to label %_ZN4lean10object_refD2Ev.exit5 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #26
  unreachable

_ZN4lean10object_refD2Ev.exit5:                   ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret ptr %i.l

bb.o:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %.not.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFP11lean_objectRN4lean2ir11interpreterEEZNS4_10stub_m_auxEPS1_EUlS5_E_E9_M_invokeERKSt9_Any_dataS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !342, !nonnull !46, !align !86
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = tail call noundef ptr @_ZN4lean2ir11interpreter6stub_mEPP11lean_object(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %i.b), !inline_history !340
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFP11lean_objectRN4lean2ir11interpreterEEZNS4_10stub_m_auxEPS1_EUlS5_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS1_E_, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !21
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !52
  store i64 %i.a, ptr %0, align 8, !tbaa !52
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4lean2ir11interpreter6stub_mEPP11lean_object(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.lean::object_ref", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !117
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val.i.i26 = load i64, ptr %i.n, align 8, !tbaa !37
  %.not = icmp eq i64 %.val.i.i26, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit, %bb.a
  %.lcssa23 = phi ptr [ %i.d, %bb.a ], [ %i.bq, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.a, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa23, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !147
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122  ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !123
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !20  ; 5 uses
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !20
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !29 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.ag = add nuw i32 %.val.i.i.i.i.i.i.i.i.i, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !29
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = atomicrmw sub ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !122
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.ai = phi ptr [ %i.z, %bb.b ], [ %i.z, %bb.d ], [ %i.z, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.k, ptr %i.aj, align 8, !tbaa !149
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.x, ptr %i.ak, align 8, !tbaa !150
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.al, ptr %i.y, align 8, !tbaa !122
  br label %bb.m

bb.g:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE17_M_realloc_insertIJRKNS0_4nameERmmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %bb.v

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %i.an = phi ptr [ %i.d, %.lr.ph ], [ %i.bq, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ]
  %i.ao = phi ptr [ %i.f, %.lr.ph ], [ %i.br, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %.01327 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %.01327
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %3 = load ptr, ptr %i.o, align 8, !tbaa !118
  %.not.i.i18 = icmp eq ptr %i.ao, %3
  br i1 %.not.i.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !22
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !146
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.e, align 8, !tbaa !146
  %.pre.a = load ptr, ptr %2, align 8, !tbaa !20
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.k, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #27
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i64 %i.as, ptr %i.bh, align 8, !tbaa !22
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.bg, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %.noexc20 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !348, !noalias !347
  store i64 %i.bi, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !347, !noalias !348
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bg, %.noexc20 ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bo) #25
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bg, ptr %0, align 8, !tbaa !117
  store ptr %i.bl, ptr %i.e, align 8, !tbaa !146
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bp, ptr %i.o, align 8, !tbaa !118
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.i
  %i.bq = phi ptr [ %i.an, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.pre.a, %bb.i ] ; 3 uses
  %i.br = phi ptr [ %i.bl, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.au, %bb.i ]
  %i.bs = add nuw i64 %.01327, 1                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val.i.i = load i64, ptr %i.bv, align 8, !tbaa !37
  %i.bw = icmp ult i64 %i.bs, %.val.i.i
  br i1 %i.bw, label %bb.h, label %._crit_edge, !llvm.loop !346

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.m:                                             ; preds = %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean2ir13decl_fun_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.by = invoke i64 @_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.o unwind label %bb.w       ; 2 uses

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4lean2ir11interpreter9pop_frameENS0_5valueENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.by, i32 noundef 8)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %2, align 8, !tbaa !20    ; 4 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = and i64 %i.ca, 1
  %.not.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i, label %bb.q, label %_ZN4lean10object_refD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !29 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.r, label %bb.s, !prof !30

bb.r:                                             ; preds = %bb.q
  %i.ce = add nsw i32 %i.cc, -1
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !29
  br label %_ZN4lean10object_refD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %.not.i1.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bz)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #26
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %i.ch = inttoptr i64 %i.by to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.ch

bb.v:                                             ; preds = %bb.g
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.n, %bb.m
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.x, %bb.v
  %.pn15.pn = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.cj, %bb.w ], [ %i.ck, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn15.pn
}

declare ptr @lean_apply_n(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFjRN4lean2ir11interpreterEEZNS1_8run_mainERKNS0_16elab_environmentERKNS0_7optionsERKNS0_8list_refINS0_10string_refEEEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !350
  %i.a = tail call noundef i32 @_ZN4lean2ir11interpreter8run_mainERKNS_8list_refINS_10string_refEEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %.val)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFjRN4lean2ir11interpreterEEZNS1_8run_mainERKNS0_16elab_environmentERKNS0_7optionsERKNS0_8list_refINS0_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4lean2ir8run_mainERKNS_16elab_environmentERKNS_7optionsERKNS_8list_refINS_10string_refEEEE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !21
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !89
  store i64 %.val.i, ptr %0, align 8, !tbaa !89
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN4lean2ir11interpreter8run_mainERKNS_8list_refINS_10string_refEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::environment", align 8 ; 7 uses
  %3 = alloca %"class.lean::name", align 8        ; 7 uses
  %4 = alloca %"class.lean::name", align 8        ; 7 uses
  %5 = alloca %"class.lean::name", align 8        ; 7 uses
  %6 = alloca %"class.lean::object_ref", align 8  ; 7 uses
  %7 = alloca %"class.lean::name", align 8        ; 7 uses
  %8 = alloca %"class.lean::buffer", align 8      ; 16 uses
  %9 = alloca %"class.lean::name", align 8        ; 7 uses
  %10 = alloca %"class.lean::expr", align 8       ; 10 uses
  %11 = alloca %"class.lean::constant_info", align 8 ; 6 uses
  %12 = alloca %"class.lean::name", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr inttoptr (i64 1 to ptr), ptr %5, align 8, !tbaa !20
  invoke void @_ZN4lean4nameC2ERKS0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.7)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !20     ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4lean4nameC2EPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 4, !tbaa !29   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !29
  br label %_ZN4lean4nameC2EPKc.exit

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean4nameC2EPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.a)
          to label %_ZN4lean4nameC2EPKc.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #26
  unreachable

common.resume:                                    ; preds = %bb.do, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.h ], [ %.pn20.pn.pn.pn.pn, %bb.do ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

_ZN4lean4nameC2EPKc.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  invoke void @_ZN4lean2ir11interpreter8get_declERKNS_4nameE(ptr dead_on_unwind nonnull writable sret(%"class.lean::object_ref") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %_ZN4lean4nameC2EPKc.exit
  %i.j = load ptr, ptr %7, align 8, !tbaa !20     ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.o
end_hunk_0
