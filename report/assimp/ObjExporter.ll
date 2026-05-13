inline.NumInlined: 1263
inline.NumDeleted: 528
begin_hunk_0_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  store i64 0, ptr %i.b, align 8, !alias.scope !70
  store i8 0, ptr %i.a, align 8, !alias.scope !70
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !70 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !70 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !70 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !70 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #22
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp11ObjExporter12MeshInstanceEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp11ObjExporter12MeshInstanceEEvPT_.exit
  %.05 = phi ptr [ %i.ad, %_ZSt8_DestroyIN6Assimp11ObjExporter12MeshInstanceEEvPT_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph, %_ZSt8_DestroyIN6Assimp11ObjExporter4FaceEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN6Assimp11ObjExporter4FaceEEvPT_.exit.i.i.i.i.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp11ObjExporter4FaceEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #24
  br label %_ZSt8_DestroyIN6Assimp11ObjExporter4FaceEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6Assimp11ObjExporter4FaceEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !54

_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6Assimp11ObjExporter4FaceEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph
  %i.m = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #24
  br label %_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6Assimp11ObjExporter4FaceES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05, i64 48 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EED2Ev.exit.i.i
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.y = load ptr, ptr %.05, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN6Assimp11ObjExporter12MeshInstanceEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZSt8_DestroyIN6Assimp11ObjExporter12MeshInstanceEEvPT_.exit

_ZSt8_DestroyIN6Assimp11ObjExporter12MeshInstanceEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.ad, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN6Assimp11ObjExporter12MeshInstanceEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 28                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 28                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 329406144173384851
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 329406144173384850, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter10vertexDataEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter10vertexDataEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 28                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #23
  unreachable

_ZNKSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 329406144173384850) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 28
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 28
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11ObjExporter10vertexDataES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.015.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.01214.i.i.i.i.i, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12
  %i.z = load float, ptr %i.y, align 4
  store float %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.ac = load float, ptr %i.ab, align 4
  store float %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 20
  %i.af = load float, ptr %i.ae, align 4
  store float %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24
  %i.ai = load i32, ptr %i.ah, align 4
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 28 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 28
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11ObjExporter10vertexDataES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !72

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11ObjExporter10vertexDataES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i45 = icmp eq ptr %i.c, null
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10vertexDataESaIS2_EE13_M_deallocateEPS2_m.exit46, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11ObjExporter10vertexDataES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %2 = load ptr, ptr %i.h, align 8
  %3 = ptrtoint ptr %2 to i64
  %i.al = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #24
  br label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10vertexDataESaIS2_EE13_M_deallocateEPS2_m.exit46

_ZNSt12_Vector_baseIN6Assimp11ObjExporter10vertexDataESaIS2_EE13_M_deallocateEPS2_m.exit46: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11ObjExporter10vertexDataES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.am = getelementptr inbounds nuw [28 x i8], ptr %i.v, i64 %1
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [28 x i8], ptr %i.u, i64 %i.s
  store ptr %i.an, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter10vertexDataEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10vertexDataESaIS2_EE13_M_deallocateEPS2_m.exit46, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #23
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !73
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !77

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %2 = load ptr, ptr %i.h, align 8
  %3 = ptrtoint ptr %2 to i64
  %i.z = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #23
  unreachable

_ZNKSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 88                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 104811045873349725)
  %i.l = select i1 %i.j, i64 104811045873349725, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 88
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.x, ptr %.012.i.i.i, align 8, !alias.scope !78, !noalias !81
  %i.y = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !81, !noalias !78 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !81, !noalias !78 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false), !alias.scope !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.y, ptr %.012.i.i.i, align 8, !alias.scope !78, !noalias !81
  %i.af = load i64, ptr %i.z, align 8, !alias.scope !81, !noalias !78
  store i64 %i.af, ptr %i.x, align 8, !alias.scope !78, !noalias !81
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !81, !noalias !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.ag = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ac, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !alias.scope !78, !noalias !81
  store ptr %i.z, ptr %.0911.i.i.i, align 8, !alias.scope !81, !noalias !78
  store i64 0, ptr %i.ah, align 8, !alias.scope !81, !noalias !78
  store i8 0, ptr %i.z, align 8, !alias.scope !81, !noalias !78
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !alias.scope !78, !noalias !81
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !81, !noalias !78 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !81, !noalias !78 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !83
  br label %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !alias.scope !78, !noalias !81
  %i.at = load i64, ptr %i.an, align 8, !alias.scope !81, !noalias !78
  store i64 %i.at, ptr %i.al, align 8, !alias.scope !78, !noalias !81
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !alias.scope !81, !noalias !78
  br label %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i, %bb.d
  %i.au = phi i64 [ %i.aq, %bb.d ], [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.au, ptr %i.aw, align 8, !alias.scope !78, !noalias !81
  store ptr %i.an, ptr %i.ak, align 8, !alias.scope !81, !noalias !78
  store i64 0, ptr %i.av, align 8, !alias.scope !81, !noalias !78
  store i8 0, ptr %i.an, align 8, !alias.scope !81, !noalias !78
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !alias.scope !81, !noalias !78
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !alias.scope !78, !noalias !81
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !81, !noalias !78
  store ptr %i.bc, ptr %i.ba, align 8, !alias.scope !78, !noalias !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false), !alias.scope !81, !noalias !78
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !84

_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.be, %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26
  %.012.i.i.i17 = phi ptr [ %i.cn, %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ], [ %i.bf, %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 10 uses
  %.0911.i.i.i18 = phi ptr [ %i.cm, %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ], [ %1, %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 3 uses
  store ptr %i.bg, ptr %.012.i.i.i17, align 8, !alias.scope !85, !noalias !88
  %i.bh = load ptr, ptr %.0911.i.i.i18, align 8, !alias.scope !88, !noalias !85 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19

bb.e:                                             ; preds = %.lr.ph.i.i.i16
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !88, !noalias !85 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false), !alias.scope !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i16
  store ptr %i.bh, ptr %.012.i.i.i17, align 8, !alias.scope !85, !noalias !88
  %i.bo = load i64, ptr %i.bi, align 8, !alias.scope !88, !noalias !85
  store i64 %i.bo, ptr %i.bg, align 8, !alias.scope !85, !noalias !88
  %.phi.trans.insert.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %.pre.i.i.i.i21 = load i64, ptr %.phi.trans.insert.i.i.i.i20, align 8, !alias.scope !88, !noalias !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19, %bb.e
  %i.bp = phi i64 [ %.pre.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19 ], [ %i.bl, %bb.e ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8
  store i64 %i.bp, ptr %i.br, align 8, !alias.scope !85, !noalias !88
  store ptr %i.bi, ptr %.0911.i.i.i18, align 8, !alias.scope !88, !noalias !85
  store i64 0, ptr %i.bq, align 8, !alias.scope !88, !noalias !85
  store i8 0, ptr %i.bi, align 8, !alias.scope !88, !noalias !85
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 3 uses
  store ptr %i.bu, ptr %i.bs, align 8, !alias.scope !85, !noalias !88
  %i.bv = load ptr, ptr %i.bt, align 8, !alias.scope !88, !noalias !85 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i23

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i22
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !88, !noalias !85 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false), !alias.scope !90
  br label %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i22
  store ptr %i.bv, ptr %i.bs, align 8, !alias.scope !85, !noalias !88
  %i.cc = load i64, ptr %i.bw, align 8, !alias.scope !88, !noalias !85
  store i64 %i.cc, ptr %i.bu, align 8, !alias.scope !85, !noalias !88
  %.phi.trans.insert6.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40
  %.pre7.i.i.i.i25 = load i64, ptr %.phi.trans.insert6.i.i.i.i24, align 8, !alias.scope !88, !noalias !85
  br label %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26

_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i23, %bb.f
  %i.cd = phi i64 [ %i.bz, %bb.f ], [ %.pre7.i.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i23 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  store i64 %i.cd, ptr %i.cf, align 8, !alias.scope !85, !noalias !88
  store ptr %i.bw, ptr %i.bt, align 8, !alias.scope !88, !noalias !85
  store i64 0, ptr %i.ce, align 8, !alias.scope !88, !noalias !85
  store i8 0, ptr %i.bw, align 8, !alias.scope !88, !noalias !85
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 64 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %i.ch, align 8, !alias.scope !88, !noalias !85
  store <2 x ptr> %i.ci, ptr %i.cg, align 8, !alias.scope !85, !noalias !88
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 80
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !88, !noalias !85
  store ptr %i.cl, ptr %i.cj, align 8, !alias.scope !85, !noalias !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false), !alias.scope !88, !noalias !85
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 88 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 88 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.cm, %i.b
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, label %.lr.ph.i.i.i16, !llvm.loop !84

_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29: ; preds = %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26, %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i28 = phi ptr [ %i.bf, %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cn, %_ZSt19__relocate_object_aIN6Assimp11ObjExporter12MeshInstanceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cr) #24
  br label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter12MeshInstanceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, %bb.g
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i28, ptr %i.a, align 8
  %i.cs = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cs, ptr %i.co, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter4FaceEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter4FaceEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 5                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #23
  unreachable

_ZNKSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 5
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.x = load i8, ptr %.0911.i.i.i, align 8, !alias.scope !94, !noalias !91
  store i8 %i.x, ptr %.012.i.i.i, align 8, !alias.scope !91, !noalias !94
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.z, align 8, !alias.scope !94, !noalias !91
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !alias.scope !91, !noalias !94
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !94, !noalias !91
  store ptr %i.ad, ptr %i.ab, align 8, !alias.scope !91, !noalias !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !alias.scope !94, !noalias !91
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !96

_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #24
  br label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN6Assimp11ObjExporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %1
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ak, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter4FaceEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp11ObjExporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter10FaceVertexEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter10FaceVertexEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #23
  unreachable

_ZNKSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !97
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !101

_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10FaceVertexESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %2 = load ptr, ptr %i.h, align 8
  %3 = ptrtoint ptr %2 to i64
  %i.z = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #24
  br label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10FaceVertexESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN6Assimp11ObjExporter10FaceVertexESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp11ObjExporter10FaceVertexEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10FaceVertexESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN6Assimp11ObjExporter10vertexDataESt4pairIKS2_iESt10_Select1stIS5_ENS1_17vertexDataCompareESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(28) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = load float, ptr %2, align 4              ; 2 uses
  %i.j = fcmp olt float %i.h, %i.i
  br i1 %i.j, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp ogt float %i.h, %i.i
  br i1 %i.k, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %i.p = fcmp olt float %i.m, %i.o
  br i1 %i.p, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = fcmp ogt float %i.m, %i.o
  br i1 %i.q, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load float, ptr %i.t, align 4            ; 2 uses
  %i.v = fcmp olt float %i.s, %i.u
  br i1 %i.v, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = fcmp ogt float %i.s, %i.u
  br i1 %i.w, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.y = load float, ptr %i.x, align 4            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load float, ptr %i.z, align 4           ; 2 uses
  %i.ab = fcmp olt float %i.y, %i.aa
  br i1 %i.ab, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = fcmp ogt float %i.y, %i.aa
  br i1 %i.ac, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ae = load float, ptr %i.ad, align 4          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load float, ptr %i.af, align 4          ; 2 uses
  %i.ah = fcmp olt float %i.ae, %i.ag
  br i1 %i.ah, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = fcmp ogt float %i.ae, %i.ag
  br i1 %i.ai, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.ak = load float, ptr %i.aj, align 4          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.am = load float, ptr %i.al, align 4          ; 2 uses
  %i.an = fcmp olt float %i.ak, %i.am
  br i1 %i.an, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = fcmp ogt float %i.ak, %i.am
  br i1 %i.ao, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit

_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit: ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp ult i32 %i.aq, %i.as
  br i1 %i.at, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41

_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread41: ; preds = %bb.h, %bb.n, %bb.f, %bb.j, %bb.d, %bb.l, %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit, %bb.b
  %i.au = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN6Assimp11ObjExporter10vertexDataESt4pairIKS2_iESt10_Select1stIS5_ENS1_17vertexDataCompareESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(28) %2) ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  br label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit.thread

bb.o:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load float, ptr %2, align 4             ; 6 uses
  %i.az = load float, ptr %i.ax, align 4          ; 2 uses
  %i.ba = fcmp olt float %i.ay, %i.az
  br i1 %i.ba, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = fcmp ogt float %i.ay, %i.az
  br i1 %i.bb, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit15.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load float, ptr %i.bc, align 4          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bf = load float, ptr %i.be, align 4          ; 2 uses
  %i.bg = fcmp olt float %i.bd, %i.bf
  br i1 %i.bg, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = fcmp ogt float %i.bd, %i.bf
  br i1 %i.bh, label %bb.am, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load float, ptr %i.bi, align 4          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load float, ptr %i.bk, align 4          ; 2 uses
  %i.bm = fcmp olt float %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = fcmp ogt float %i.bj, %i.bl
  br i1 %i.bn, label %bb.am, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bp = load float, ptr %i.bo, align 4          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.br = load float, ptr %i.bq, align 4          ; 2 uses
  %i.bs = fcmp olt float %i.bp, %i.br
  br i1 %i.bs, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = fcmp ogt float %i.bp, %i.br
  br i1 %i.bt, label %bb.am, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load float, ptr %i.bu, align 4          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bx = load float, ptr %i.bw, align 4          ; 2 uses
  %i.by = fcmp olt float %i.bv, %i.bx
  br i1 %i.by, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = fcmp ogt float %i.bv, %i.bx
  br i1 %i.bz, label %bb.am, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cb = load float, ptr %i.ca, align 4          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cd = load float, ptr %i.cc, align 4          ; 2 uses
  %i.ce = fcmp olt float %i.cb, %i.cd
  br i1 %i.ce, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = fcmp ogt float %i.cb, %i.cd
  br i1 %i.cf, label %bb.am, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11

_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11: ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp ult i32 %i.ch, %i.cj
  br i1 %i.ck, label %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11.thread, label %bb.am

_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11.thread: ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %_ZNK6Assimp11ObjExporter17vertexDataCompareclERKNS0_10vertexDataES4_.exit11
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
end_hunk_0
