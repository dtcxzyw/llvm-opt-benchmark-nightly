Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FactPointTo?download=true
inline.NumInlined: 915
inline.NumDeleted: 381
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !102
  store i8 %i.t, ptr %i.s, align 1, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !102
  store i8 %i.x, ptr %i.w, align 1, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !102
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !102
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !101
  store i64 %.0, ptr %i.h, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
  unreachable

_ZNKSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !16     ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNKSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds i8, ptr null, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !17
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.aa = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i.i, !prof !41

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26
          to label %.noexc26 unwind label %bb.j   ; 5 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !17
  %i.af = icmp samesign ugt i64 %i.w, 8
  br i1 %i.af, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.t, i64 %i.w, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.w, 8
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !26
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.f
  %i.ai = phi ptr [ %i.ad, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ %i.y, %.thread ]
  %i.aj = phi ptr [ %i.ac, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.x, %.thread ]
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !24
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !43, !alias.scope !209, !noalias !207
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !tbaa !43, !alias.scope !207, !noalias !209
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17, !alias.scope !209, !noalias !207
  store ptr %i.an, ptr %i.al, align 8, !tbaa !17, !alias.scope !207, !noalias !209
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !209, !noalias !207
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !197

_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.aw, %.lr.ph.i.i.i28 ], [ %i.aq, %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ar = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !43, !alias.scope !214, !noalias !212
  store <2 x ptr> %i.ar, ptr %.012.i.i.i29, align 8, !tbaa !43, !alias.scope !212, !noalias !214
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17, !alias.scope !214, !noalias !212
  store ptr %i.au, ptr %i.as, align 8, !tbaa !17, !alias.scope !212, !noalias !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !214, !noalias !212
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !197

_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.aq, %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.aw, %.lr.ph.i.i.i28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorIPK8VariableSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #23
  br label %_ZNSt12_Vector_baseISt6vectorIPK8VariableSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIPK8VariableSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !20
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !23
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #24 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #25
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bc

bb.l:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FactPointTo.cpp() #17 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !131
  store i32 1819047278, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !102
  %i.d = invoke noundef ptr @_ZN16VariableSelector26make_dummy_static_variableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !101    ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !102
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #23
  br label %__cxx_global_var_init.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !101    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !102
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i2 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i7 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

__cxx_global_var_init.exit:                       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  store ptr %i.d, ptr @_ZN11FactPointTo8null_ptrE, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.n, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.o, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.p, align 1, !tbaa !102
  %i.q = invoke noundef ptr @_ZN16VariableSelector26make_dummy_static_variableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %__cxx_global_var_init.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.d
  %i.t = load i64, ptr %i.n, align 8, !tbaa !102
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #23
  br label %__cxx_global_var_init.1.exit

bb.e:                                             ; preds = %__cxx_global_var_init.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.n
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i1: ; preds = %bb.e
  %i.y = load i64, ptr %i.n, align 8, !tbaa !102
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i2: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

__cxx_global_var_init.1.exit:                     ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  store ptr %i.q, ptr @_ZN11FactPointTo11garbage_ptrE, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.ab, align 8, !tbaa !123
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.ac, align 1, !tbaa !102
  %i.ad = invoke noundef ptr @_ZN16VariableSelector26make_dummy_static_variableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.aa
  br i1 %i.af, label %__cxx_global_var_init.3.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.f
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !102
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #23
  br label %__cxx_global_var_init.3.exit

bb.g:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i6: ; preds = %bb.g
  %i.al = load i64, ptr %i.aa, align 8, !tbaa !102
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  br label %common.resume

__cxx_global_var_init.3.exit:                     ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  store ptr %i.ad, ptr @_ZN11FactPointTo7tbd_ptrE, align 8, !tbaa !26
  %i.an = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPK8VariableSaIS2_EED2Ev, ptr nonnull @_ZN11FactPointTo8all_ptrsE, ptr nonnull @__dso_handle) #24 ; 0 uses
  %i.ao = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIS_IPK8VariableSaIS2_EESaIS4_EED2Ev, ptr nonnull @_ZN11FactPointTo11all_aliasesE, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

end_hunk_0
begin_hunk_1_@bcmp
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"any p2 pointer", !12, i64 0}
!14 = !{!"p2 _ZTS8Variable", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIPK8VariableSaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 16}
!18 = !{!"p1 _ZTSSt6vectorIPK8VariableSaIS2_EE", !12, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPK8VariableSaIS3_EESaIS5_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!19, !18, i64 0}
!21 = !{!19, !18, i64 8}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!19, !18, i64 16}
!24 = !{!15, !14, i64 8}
!25 = !{!"p1 _ZTS8Variable", !12, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTS13eFactCategory", !8, i64 0}
!28 = !{!"_ZTS4Fact", !27, i64 8}
!29 = !{!"_ZTSNSt12_Vector_baseIPK8VariableSaIS2_EE12_Vector_implE", !15, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIPK8VariableSaIS2_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIPK8VariableSaIS2_EE", !30, i64 0}
!32 = !{!"_ZTS11FactPointTo", !28, i64 0, !25, i64 16, !31, i64 24}
!33 = !{!32, !25, i64 16}
!34 = !{!"_ZTS14eStatementType", !8, i64 0}
!35 = !{!"p1 _ZTS8Function", !12, i64 0}
!36 = !{!"p1 _ZTS5Block", !12, i64 0}
!37 = !{!"_ZTS9Statement", !34, i64 8, !9, i64 12, !35, i64 16, !36, i64 24}
!38 = !{!37, !36, i64 24}
!39 = !{!"vtable pointer", !7, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!43 = !{!14, !14, i64 0}
!44 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!45 = !{ptr @_ZN11FactPointToC2EPK8VariableRKSt6vectorIS2_SaIS2_EE}
!46 = !{!"p2 _ZTS4Fact", !13, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIP4FactSaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!47, !46, i64 8}
!49 = !{!47, !46, i64 16}
!50 = !{!"p1 _ZTS4Fact", !12, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!47, !46, i64 0}
!53 = !{!"_ZTS9eTypeDesc", !8, i64 0}
!54 = !{!"p1 _ZTS4Type", !12, i64 0}
!55 = !{!"_ZTS11eSimpleType", !8, i64 0}
!56 = !{!"p1 int", !12, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIjSaIjEE", !59, i64 0}
!61 = !{!"p2 _ZTS4Type", !13, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIPK4TypeSaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIPK4TypeSaIS2_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIPK4TypeSaIS2_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIPK4TypeSaIS2_EE", !64, i64 0}
!66 = !{!"bool", !8, i64 0}
!67 = !{!"p1 _ZTS12CVQualifiers", !12, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseI12CVQualifiersSaIS0_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseI12CVQualifiersSaIS0_EE12_Vector_implE", !68, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseI12CVQualifiersSaIS0_EE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorI12CVQualifiersSaIS0_EE", !70, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIiSaIiEE", !74, i64 0}
!76 = !{!"_ZTS4Type", !53, i64 0, !54, i64 8, !55, i64 16, !60, i64 24, !65, i64 48, !9, i64 72, !66, i64 76, !66, i64 77, !66, i64 78, !66, i64 79, !66, i64 80, !71, i64 88, !75, i64 112}
!77 = !{!76, !53, i64 0}
!78 = !{!"_ZTS9eTermType", !8, i64 0}
!79 = !{!"_ZTS10Expression", !78, i64 8, !9, i64 12, !54, i64 16}
!80 = !{!79, !78, i64 8}
!81 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIP8VariableSaIS1_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIP8VariableSaIS1_EE", !83, i64 0}
!85 = !{!"p1 omnipotent char", !12, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !85, i64 0}
!87 = !{!"long", !8, i64 0}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !86, i64 0, !87, i64 8, !8, i64 16}
!89 = !{!"p1 _ZTS10Expression", !12, i64 0}
!90 = !{!"p1 long", !12, i64 0}
!91 = !{!"_ZTSSt18_Bit_iterator_base", !90, i64 0, !9, i64 8}
!92 = !{!"_ZTSSt13_Bit_iterator", !91, i64 0}
!93 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !92, i64 0, !92, i64 16, !90, i64 32}
!94 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !93, i64 0}
!95 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIbSaIbEE", !95, i64 0}
!97 = !{!"_ZTS12CVQualifiers", !66, i64 8, !66, i64 9, !96, i64 16, !96, i64 56}
!98 = !{!"_ZTS8Variable", !84, i64 8, !88, i64 32, !54, i64 64, !89, i64 72, !66, i64 80, !66, i64 81, !66, i64 82, !66, i64 83, !66, i64 84, !66, i64 85, !25, i64 88, !66, i64 96, !97, i64 104}
!99 = !{!98, !25, i64 88}
!100 = !{!98, !54, i64 64}
!101 = !{!88, !85, i64 0}
!102 = !{!8, !8, i64 0}
!103 = !{!"_ZTS18ExpressionVariable", !79, i64 0, !25, i64 24, !54, i64 32}
!104 = !{!103, !25, i64 24}
!105 = !{}
!106 = !{i64 8}
!107 = !{!"_ZTSNSt12_Vector_baseIPK4FactSaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!108 = !{!107, !46, i64 0}
!109 = !{!107, !46, i64 16}
!110 = !{!"p2 _ZTS10Expression", !13, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIPK10ExpressionSaIS2_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!112 = !{!"_ZTS6Effect", !31, i64 0, !31, i64 24, !31, i64 48, !66, i64 72, !66, i64 73}
!113 = !{!"p2 _ZTS5Block", !13, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIP5BlockSaIS1_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIP5BlockSaIS1_EE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIP5BlockSaIS1_EE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIP5BlockSaIS1_EE", !116, i64 0}
!118 = !{!"p1 _ZTS8Constant", !12, i64 0}
!119 = !{!"_ZTSN8Function10BuildStateE", !8, i64 0}
!120 = !{!"_ZTS8Function", !88, i64 0, !84, i64 32, !54, i64 56, !112, i64 64, !117, i64 144, !117, i64 168, !36, i64 192, !118, i64 200, !25, i64 208, !31, i64 216, !31, i64 240, !66, i64 264, !66, i64 265, !66, i64 266, !66, i64 267, !9, i64 268, !112, i64 272, !66, i64 352, !88, i64 360, !119, i64 392, !31, i64 400}
!121 = !{!107, !46, i64 8}
!122 = !{!89, !89, i64 0}
!123 = !{!88, !87, i64 8}
!124 = !{!"_ZTS3Lhs", !79, i64 0, !25, i64 24, !54, i64 32, !66, i64 40}
!125 = !{!124, !25, i64 24}
!126 = !{ptr @_ZN11FactPointToC2EPK8Variable}
!127 = !{ptr @_ZN11FactPointToD2Ev}
!128 = !{!28, !27, i64 8}
!129 = !{!98, !66, i64 96}
!130 = !{i8 0, i8 2}
!131 = !{!86, !85, i64 0}
!132 = distinct !{!132, !22}
!133 = distinct !{null}
!134 = distinct !{!134, !22}
!135 = !{!37, !35, i64 16}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !22}
!139 = !{!"_ZTS15eInvocationType", !8, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIPK10ExpressionSaIS2_EE12_Vector_implE", !111, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseIPK10ExpressionSaIS2_EE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorIPK10ExpressionSaIS2_EE", !141, i64 0}
!143 = !{!"p1 _ZTS11SafeOpFlags", !12, i64 0}
!144 = !{!"_ZTS18FunctionInvocation", !139, i64 8, !142, i64 16, !66, i64 40, !66, i64 41, !143, i64 48}
!145 = !{!144, !139, i64 8}
!146 = !{!"_ZTS22FunctionInvocationUser", !144, i64 0, !35, i64 56, !66, i64 64}
!147 = !{!146, !35, i64 56}
!148 = !{!120, !25, i64 208}
!149 = !{!"p1 _ZTS15StatementAssign", !12, i64 0}
!150 = !{!"_ZTS16ExpressionAssign", !79, i64 0, !149, i64 24}
!151 = !{!150, !149, i64 24}
!152 = distinct !{!152, !22}
!153 = distinct !{!153, !22}
!154 = distinct !{!154, !22}
!155 = distinct !{!155, !22}
!156 = !{!46, !46, i64 0}
!157 = !{ptr @_ZN11FactPointToC2EPK8VariableS2_}
!158 = distinct !{!158, !22}
!159 = distinct !{!159, !22}
!160 = distinct !{!160, !22}
!161 = distinct !{!161, !22}
!162 = distinct !{!162, !22}
!163 = distinct !{!163, !22}
!164 = distinct !{!164, !22}
!165 = distinct !{!165, !22}
!166 = !{ptr @_Z10output_varPK8VariableRSo}
!167 = !{ptr @_ZNK11FactPointTo13has_invisibleEPK9Statement}
!168 = distinct !{!168, !22}
!169 = distinct !{!169, !22}
!170 = distinct !{!170, !22}
!171 = distinct !{!171, !22}
!172 = distinct !{!172, !22}
!173 = distinct !{!173, !22}
!174 = !{!111, !110, i64 8}
!175 = !{!111, !110, i64 0}
!176 = !{!87, !87, i64 0}
!177 = distinct !{!177, !22}
!178 = distinct !{!178, !22}
!179 = distinct !{!179, !22}
!180 = distinct !{!180, !22}
!181 = distinct !{!181, !22}
!182 = !{!"p2 _ZTS8Function", !13, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseIP8FunctionSaIS1_EE17_Vector_impl_dataE", !182, i64 0, !182, i64 8, !182, i64 16}
!184 = !{!183, !182, i64 8}
!185 = !{!183, !182, i64 0}
!186 = !{!35, !35, i64 0}
!187 = !{!120, !66, i64 267}
!188 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!189 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!190 = !{!"_ZTSSt18_Rb_tree_node_base", !188, i64 0, !189, i64 8, !189, i64 16, !189, i64 24}
!191 = !{!"_ZTSSt15_Rb_tree_header", !190, i64 0, !87, i64 32}
!192 = !{!191, !189, i64 16}
!193 = distinct !{!193, !22}
!197 = distinct !{!197, !22}
!205 = distinct !{!205, i1 false, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!206 = distinct !{!206, !205, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!207 = !{!206}
!208 = distinct !{!208, !205, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!209 = !{!208}
!210 = distinct !{!210, i1 false, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!211 = distinct !{!211, !210, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!212 = !{!211}
!213 = distinct !{!213, !210, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!214 = !{!213}
end_hunk_1
