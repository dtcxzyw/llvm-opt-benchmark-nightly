Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/protocol_requests?download=true
inline.NumInlined: 9185
inline.NumDeleted: 3620
loop-unroll.NumCompletelyUnrolled: 172
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 186
begin_hunk_0_@_ZNK3dap12Deserializer11deserializeISt6vectorINS_7integerESaIS3_EEEEbPNS_8optionalIT_EE:bb.a
bb.n:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3dap7integerESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN3dap8optionalISt6vectorINS_7integerESaIS2_EEEaSIRS4_vEERS5_OT_.exit unwind label %bb.p ; 0 uses

_ZN3dap8optionalISt6vectorINS_7integerESaIS2_EEEaSIRS4_vEERS5_OT_.exit: ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.bf, align 8, !tbaa !210
  br label %bb.r

bb.p:                                             ; preds = %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.d, %bb.o, %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit5.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %i.az, %_ZNSt14_Function_baseD2Ev.exit5.i ]
  %i.bh = load ptr, ptr %3, align 8, !tbaa !192   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !193
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #21
  br label %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit

_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit:     ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %eh.lpad-body

bb.r:                                             ; preds = %_ZN3dap8optionalISt6vectorINS_7integerESaIS2_EEEaSIRS4_vEERS5_OT_.exit, %bb.n
  %i.bn = load ptr, ptr %3, align 8, !tbaa !192   ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit7, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !193
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #21
  br label %_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit7

_ZNSt6vectorIN3dap7integerESaIS1_EED2Ev.exit7:    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3dap7integerESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !192    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN3dap7integerEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN3dap7integerEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !106
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !204
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #24
  unreachable

_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #23 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !106
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3dap7integerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.x = load i64, ptr %.0911.i.i.i, align 8, !tbaa !61, !alias.scope !932
  store i64 %i.x, ptr %.012.i.i.i, align 8, !tbaa !61, !alias.scope !931
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3dap7integerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !23

_ZNSt6vectorIN3dap7integerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN3dap7integerESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3dap7integerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #21
  br label %_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN3dap7integerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !192
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !193
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3dap7integerEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN3dap12DeserializerEEZNKS1_11deserializeINS0_7integerEEEbPSt6vectorIT_SaIS7_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !935, !nonnull !78, !align !93
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !936, !nonnull !78, !align !93 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !61
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.i), !inline_history !933
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN3dap12DeserializerEEZNKS1_11deserializeINS0_7integerEEEbPSt6vectorIT_SaIS7_EEEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK3dap12Deserializer11deserializeINS1_7integerEEEbPSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZNK3dap12Deserializer11deserializeINS_7integerEEEbPSt6vectorIT_SaIS4_EEEUlPS0_E_, ptr %0, align 8, !tbaa !95
  br label %_ZNSt14_Function_base13_Base_managerIZNK3dap12Deserializer11deserializeINS1_7integerEEEbPSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !35
  br label %_ZNSt14_Function_base13_Base_managerIZNK3dap12Deserializer11deserializeINS1_7integerEEEbPSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !937
  br label %_ZNSt14_Function_base13_Base_managerIZNK3dap12Deserializer11deserializeINS1_7integerEEEbPSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK3dap12Deserializer11deserializeINS1_7integerEEEbPSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3dap7integerESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !192    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193
  %i.i = load ptr, ptr %0, align 8, !tbaa !192    ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !84

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 4 uses
  %i.o = add i64 %i.d, -8
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false), !tbaa !61
  %3 = load ptr, ptr %0, align 8, !tbaa !192      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !193
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #21
  br label %_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !192
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !193
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap7integerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !204  ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 5 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 8
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !939

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !192
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap7integerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 8
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap7integerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !61
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !61
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap7integerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 8
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !939

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !192
  %.pre25 = load ptr, ptr %i.x, align 8, !tbaa !204 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !192 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !204
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 8
  br i1 %i.af, label %bb.n, label %_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !61
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !61
  br label %_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit:    ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.aa, %bb.m ], [ 8, %bb.n ]
  %i.ah = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 2 uses
  %i.ai = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 2 uses
  %i.aj = phi ptr [ %.pre25, %bb.l ], [ %i.y, %bb.m ], [ %i.y, %bb.n ]
  %i.ak = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.pre-phi33 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap7integerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %i.am = load i64, ptr %.0810.i.i.i.i, align 8, !tbaa !61
  store i64 %i.am, ptr %.011.i.i.i.i, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap7integerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !938

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap7integerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ap = phi ptr [ %2, %_ZNSt12_Vector_baseIN3dap7integerESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.ai, %_ZSt4copyIPN3dap7integerES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ai, %.lr.ph.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !204
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap7integerESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN3dap10SerializerEEZNS1_9serializeINS0_7integerEEEbRKSt6vectorIT_SaIS7_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !97     ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !942, !nonnull !78, !align !93 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !944  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.b, align 8, !tbaa !944
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !tbaa !61
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 %.sroa.0.0.copyload.i.i.i), !inline_history !940
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN3dap10SerializerEEZNS1_9serializeINS0_7integerEEEbRKSt6vectorIT_SaIS7_EEEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3dap10Serializer9serializeINS1_7integerEEEbRKSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3dap10Serializer9serializeINS_7integerEEEbRKSt6vectorIT_SaIS4_EEEUlPS0_E_, ptr %0, align 8, !tbaa !95
  br label %_ZNSt14_Function_base13_Base_managerIZN3dap10Serializer9serializeINS1_7integerEEEbRKSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !35
  br label %_ZNSt14_Function_base13_Base_managerIZN3dap10Serializer9serializeINS1_7integerEEEbRKSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !305
  store i64 %i.a, ptr %0, align 8, !tbaa !305
  br label %_ZNSt14_Function_base13_Base_managerIZN3dap10Serializer9serializeINS1_7integerEEEbRKSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3dap10Serializer9serializeINS1_7integerEEEbRKSt6vectorIT_SaIS6_EEEUlPS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3dap8TypeInfo6createINS_13BasicTypeInfoISt6vectorINS_7integerESaIS4_EEEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3dap13BasicTypeInfoISt6vectorINS_7integerESaIS2_EEEE, i64 16), ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !38
  %i.d = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN3dap13BasicTypeInfoISt6vectorINS_7integerESaIS2_EEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !57
  %i.k = load i64, ptr %i.e, align 8, !tbaa !42
  store i64 %i.k, ptr %i.c, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZN3dap13BasicTypeInfoISt6vectorINS_7integerESaIS2_EEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN3dap13BasicTypeInfoISt6vectorINS_7integerESaIS2_EEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !tbaa !41
  store ptr %i.e, ptr %0, align 8, !tbaa !57
  store i64 0, ptr %i.m, align 8, !tbaa !41
  store i8 0, ptr %i.e, align 8, !tbaa !42
  tail call void @_ZN3dap8TypeInfo12deleteOnExitEPS0_(ptr noundef nonnull %i.a)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap13BasicTypeInfoISt6vectorINS_7integerESaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3dap13BasicTypeInfoISt6vectorINS_7integerESaIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !42
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN3dap8TypeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap13BasicTypeInfoISt6vectorINS_7integerESaIS2_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3dap13BasicTypeInfoISt6vectorINS_7integerESaIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
end_hunk_0
