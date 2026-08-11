inline.NumInlined: 6448
inline.NumDeleted: 2427
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6google8protobuf24SimpleDescriptorDatabaseC2Ev:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf24SimpleDescriptorDatabaseD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6google8protobuf24SimpleDescriptorDatabaseE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIKN6google8protobuf19FileDescriptorProtoEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf19FileDescriptorProtoEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.e) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 200) #30
  br label %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIKN6google8protobuf19FileDescriptorProtoEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !63

_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #30
  br label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !65
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISC_ESaIS5_IKSC_SH_EELi256ELb0EEEEEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISB_ESaIS4_IKSB_SG_EELi256ELb0EEEE16clear_and_deleteEPSN_PSL_(ptr noundef %i.r, ptr noundef nonnull %i.s)
          to label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISC_ESaIS5_IKSC_SH_EELi256ELb0EEEEEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISC_ESaIS5_IKSC_SH_EELi256ELb0EEEEEED2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISC_ESaIS5_IKSC_SH_EELi256ELb0EEEEEED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16clear_and_deleteEPSM_PSK_(ptr noundef %i.z, ptr noundef nonnull %i.aa)
          to label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEEED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #26
  unreachable

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEEED2Ev.exit.i: ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEPKN6google8protobuf19FileDescriptorProtoESt4lessISC_ESaIS5_IKSC_SH_EELi256ELb0EEEEEED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN6google8protobuf24SimpleDescriptorDatabase15DescriptorIndexIPKNS0_19FileDescriptorProtoEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEEED2Ev.exit.i
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16clear_and_deleteEPSM_PSK_(ptr noundef %i.ag, ptr noundef nonnull %i.ah)
          to label %_ZN6google8protobuf24SimpleDescriptorDatabase15DescriptorIndexIPKNS0_19FileDescriptorProtoEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN6google8protobuf24SimpleDescriptorDatabase15DescriptorIndexIPKNS0_19FileDescriptorProtoEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEEED2Ev.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf24SimpleDescriptorDatabaseD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf24SimpleDescriptorDatabaseD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf24SimpleDescriptorDatabase3AddERKNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #31 ; 4 uses
  invoke void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef null)
          to label %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit unwind label %bb.b

_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit: ; preds = %bb.a
  tail call void @_ZN6google8protobuf19FileDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %1)
  %i.b = tail call noundef zeroext i1 @_ZN6google8protobuf24SimpleDescriptorDatabase9AddAndOwnEPKNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.a)
  ret i1 %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #30
  resume { ptr, i32 } %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN6google8protobuf19FileDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf24SimpleDescriptorDatabase9AddAndOwnEPKNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !60
  br label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE12emplace_backIJRPS4_EEERS7_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !57   ; 10 uses
  %i.h = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #32
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  store ptr %1, ptr %i.s, align 8, !tbaa !61
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %2 = sub i64 %i.h, %i.i
  %3 = add i64 %2, -8                             ; 2 uses
  %i.t = lshr i64 %3, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.v = add i64 %i.h, -8
  %i.w = sub i64 %i.v, %i.i
  %i.x = and i64 %i.w, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.y
  %scevgep5 = getelementptr i8, ptr %i.g, i64 %i.y
  %bound0 = icmp ult ptr %i.r, %scevgep5
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.g, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.g, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.ad = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !61, !alias.scope !71, !noalias !66
  %wide.load7 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !61, !alias.scope !71, !noalias !66
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !61, !alias.scope !74, !noalias !71
  store <2 x i64> %wide.load7, ptr %i.ae, align 8, !tbaa !61, !alias.scope !74, !noalias !71
  %i.af = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !61, !alias.scope !71, !noalias !66
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !61, !alias.scope !71, !noalias !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !69, !noalias !66
  store i64 %i.ah, ptr %.012.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !66, !noalias !69
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !69, !noalias !66
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !79

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJRPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #30
  br label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJRPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJRPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !57
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.al, ptr %i.d, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE12emplace_backIJRPS4_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE12emplace_backIJRPS4_EEERS7_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf19FileDescriptorProtoESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJRPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = tail call noundef zeroext i1 @_ZN6google8protobuf24SimpleDescriptorDatabase15DescriptorIndexIPKNS0_19FileDescriptorProtoEE7AddFileERS4_S5_(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %1)
  ret i1 %i.an
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6google8protobuf24SimpleDescriptorDatabase15DescriptorIndexIPKNS0_19FileDescriptorProtoEE7AddFileERS4_S5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %"struct.std::pair.277", align 8    ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -4
  %i.g = inttoptr i64 %i.f to ptr
  call void @_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19FileDescriptorProtoESt4lessISA_ESaISt4pairIKSA_SF_EELi256ELb0EEEEEE7emplaceIJRSJ_RSF_EEESI_INS1_14btree_iteratorINS1_10btree_nodeISM_EERSK_PSK_EEbEDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.277") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !80, !range !84, !noundef !85
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 123) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 33, ptr nonnull @.str.12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, -4
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.aq

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ar

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !86
  %i.s = and i32 %i.r, 512
  %.not172 = icmp eq i32 %i.s, 0
  br i1 %.not172, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -4
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !87
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !88
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !22
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.y, %bb.g ] ; 2 uses
  switch i64 %i.ab, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !30
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.j

.thread:                                          ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !26
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSC_EE:bb.a
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !363
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %i.bq, align 8, !tbaa !363
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.br, align 8, !tbaa !30
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !363
  store ptr %i.bo, ptr %0, align 8, !tbaa !363
  %.pre = load ptr, ptr %1, align 8, !tbaa !363
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bs = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !30
  %.not116 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !30
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #31 ; 9 uses
  store ptr %.082, ptr %i.bz, align 8, !tbaa !363
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.ca, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  store i8 0, ptr %i.cb, align 1, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i8 0, ptr %i.cc, align 2, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  store i8 61, ptr %i.cd, align 1, !tbaa !30
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !86
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !363
  %i.cg = load ptr, ptr %1, align 8, !tbaa !363
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !363
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #31 ; 7 uses
  store ptr %.082, ptr %i.ci, align 8, !tbaa !363
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !30
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !86
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !363
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !30
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = icmp sgt i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cu = xor i32 %i.cs, -1
  %i.cv = add nsw i32 %i.co, %i.cu
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cv, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !86
  store ptr %.sink, ptr %1, align 8, !tbaa !363
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_right_to_leftEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !30
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !30
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !363    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h
  %i.n = load i32, ptr %i.m, align 4
  store i32 %i.n, ptr %i.k, align 1
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.idx.i = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.t = zext i8 %1 to i64
  %i.u = add nuw nsw i64 %i.t, 4611686018427387902
  %i.v = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 19
  br i1 %min.iters.check, label %.lr.ph.i.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 2
  %i.y = add i64 %i.x, %i.b
  %i.z = sub i64 %i.y, %i.a
  %i.aa = add i64 %i.z, 3
  %diff.check = icmp ult i64 %i.aa, 31
  br i1 %diff.check, label %.lr.ph.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ae ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ag = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4
  %wide.load63 = load <4 x i32>, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.af, align 1
  store <4 x i32> %wide.load63, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader81

.lr.ph.i.preheader81:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader81, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader81 ]
  %.01214.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 4 ; 2 uses
  %i.aj = load i32, ptr %.01214.i, align 4
  store i32 %i.aj, ptr %.015.i, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !693

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !363
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !30
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.al = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !30  ; 3 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.o
  %i.au = sext i32 %i.at to i64
  %i.av = zext i8 %1 to i64                       ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.av ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.au, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ar, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.ay = zext i8 %i.ar to i64
  %4 = sub nsw i64 %i.ay, %i.av
  %i.az = add nsw i64 %4, 4611686018427387903
  %5 = and i64 %i.az, 4611686018427387903         ; 2 uses
  %i.ba = add nuw nsw i64 %5, 1                   ; 2 uses
  %min.iters.check66 = icmp samesign ult i64 %5, 7
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader80, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec68 = and i64 %i.ba, 9223372036854775800   ; 3 uses
  %i.bb = shl i64 %n.vec68, 2                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.r, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.bb
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.be = shl i64 %index70, 2                     ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.r, i64 %i.be ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.aw, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 4
  %wide.load74 = load <4 x i32>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep71, i64 16
  store <4 x i32> %wide.load73, ptr %next.gep71, align 1
  store <4 x i32> %wide.load74, ptr %i.bg, align 1
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.bh, label %middle.block76, label %vector.body69, !llvm.loop !694

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.ba, %n.vec68
  br i1 %cmp.n77, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47.preheader80

.lr.ph.i47.preheader80:                           ; preds = %.lr.ph.i47.preheader, %middle.block76
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bc, %middle.block76 ]
  %.01214.i49.ph = phi ptr [ %i.aw, %.lr.ph.i47.preheader ], [ %i.bd, %middle.block76 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader80, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bk, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader80 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bj, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader80 ] ; 2 uses
  %i.bi = load i32, ptr %.01214.i49, align 4
  store i32 %i.bi, ptr %.015.i48, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i48, i64 4
  %.not.i50 = icmp eq ptr %i.bj, %i.ax
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47, !llvm.loop !695

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51: ; preds = %.lr.ph.i47, %middle.block76, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !30
  %.not.i52 = icmp eq i8 %i.bm, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.bp = icmp eq i32 %i.p, 0
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.bq = load i8, ptr %i.c, align 2, !tbaa !30
  %i.br = trunc i64 %indvars.iv.epil.init to i8
  %i.bs = add i8 %i.br, 1
  %i.bt = add i8 %i.bq, %i.bs                     ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !363 ; 3 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !363
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !30
  store ptr %0, ptr %i.bv, align 8, !tbaa !363
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.bz = load i8, ptr %i.aq, align 1, !tbaa !30
  %.not55 = icmp ult i8 %i.bz, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cb = load i8, ptr %i.c, align 2, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next to i8
  %i.cd = add i8 %i.cb, %i.cc                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !363 ; 3 uses
  %i.cg = zext i8 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !363
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cd, ptr %i.ci, align 1, !tbaa !30
  store ptr %0, ptr %i.cf, align 8, !tbaa !363
  %i.cj = load i8, ptr %i.c, align 2, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ck = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cl = add i8 %i.cj, %i.ck                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !363 ; 3 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !363
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !30
  store ptr %0, ptr %i.cn, align 8, !tbaa !363
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !696

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.cy, %bb.c ] ; 4 uses
  %i.cr = add i8 %.056, %1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !363 ; 3 uses
  %i.cv = zext i8 %.056 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !363
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %.056, ptr %i.cx, align 1, !tbaa !30
  store ptr %2, ptr %i.cu, align 8, !tbaa !363
  %i.cy = add i8 %.056, 1                         ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.aq, align 1, !tbaa !30
  %i.db = zext i8 %i.da to i32
  %i.dc = sub nsw i32 %i.db, %i.o
  %.not = icmp slt i32 %i.dc, %i.cz
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !697

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %i.dd = load i8, ptr %i.c, align 2, !tbaa !30
  %i.de = add i8 %i.dd, %1
  store i8 %i.de, ptr %i.c, align 2, !tbaa !30
  %i.df = load i8, ptr %i.aq, align 1, !tbaa !30
  %i.dg = sub i8 %i.df, %1
  store i8 %i.dg, ptr %i.aq, align 1, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !30    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 2               ; 2 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 3 uses
  %i.l = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = mul i64 %n.vec, -4                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.r ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %next.gep65, i64 -16
  %i.t = getelementptr inbounds i8, ptr %next.gep65, i64 -32
  %wide.load = load <4 x i32>, ptr %i.s, align 4
  %wide.load66 = load <4 x i32>, ptr %i.t, align 4
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.u, align 1
end_hunk_1
