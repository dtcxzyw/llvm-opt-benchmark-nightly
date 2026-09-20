Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/CompressTracer?download=true
inline.NumInlined: 617
inline.NumDeleted: 426
begin_hunk_0_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !139
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !37
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #22
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !139
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !101
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !139
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

declare i64 @A1C_Item_encode(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare { i32, ptr } @A1C_Error_convert(ptr noundef, ptr noundef byval(%struct.A1C_Error) align 8) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 88 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !37
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !37
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 104) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_CCtx_getOperationContext(ptr noundef) local_unnamed_addr #13

declare ptr @A1C_MapBuilder_add(ptr noundef byval(%struct.A1C_MapBuilder) align 8) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #20
  unreachable

_ZNKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 128102389400760775)
  %i.k = select i1 %i.i, i64 128102389400760775, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 72
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 7 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !50
  store i64 %i.q, ptr %i.p, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !35
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !37
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !37
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !36
  store ptr %i.v, ptr %i.s, align 8, !tbaa !35
  store i64 0, ptr %i.ad, align 8, !tbaa !36
  store i8 0, ptr %i.v, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !32
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !36 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !35
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !37
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !37
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !36
  br label %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit

_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !36
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !35
  store i64 0, ptr %i.ar, align 8, !tbaa !36
  store i8 0, ptr %i.aj, align 8, !tbaa !37
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.at = load i64, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !148, !noalias !147
  store i64 %i.at, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !147, !noalias !148
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !32, !alias.scope !147, !noalias !148
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !35, !alias.scope !148, !noalias !147 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !36, !alias.scope !148, !noalias !147 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !35, !alias.scope !147, !noalias !148
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !37, !alias.scope !148, !noalias !147
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !37, !alias.scope !147, !noalias !148
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !36, !alias.scope !148, !noalias !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.bf = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.bb, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !36, !alias.scope !147, !noalias !148
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !35, !alias.scope !148, !noalias !147
  store i64 0, ptr %i.bg, align 8, !tbaa !36, !alias.scope !148, !noalias !147
  store i8 0, ptr %i.ay, align 8, !tbaa !37, !alias.scope !148, !noalias !147
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !32, !alias.scope !147, !noalias !148
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !35, !alias.scope !148, !noalias !147 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36, !alias.scope !148, !noalias !147 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false), !alias.scope !149
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !35, !alias.scope !147, !noalias !148
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !37, !alias.scope !148, !noalias !147
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !37, !alias.scope !147, !noalias !148
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !36, !alias.scope !148, !noalias !147
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i, %bb.f
  %i.bt = phi i64 [ %i.bp, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !36, !alias.scope !147, !noalias !148
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !35, !alias.scope !148, !noalias !147
  store i64 0, ptr %i.bu, align 8, !tbaa !36, !alias.scope !148, !noalias !147
  store i8 0, ptr %i.bm, align 8, !tbaa !37, !alias.scope !148, !noalias !147
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZN6openzl10visualizer15StreamdumpEntryC2EOS1_.exit ], [ %i.bx, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.dd, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.by, %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.dc, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.bz = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !50, !alias.scope !151, !noalias !150
  store i64 %i.bz, ptr %.012.i.i.i18, align 8, !tbaa !50, !alias.scope !150, !noalias !151
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !32, !alias.scope !150, !noalias !151
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !35, !alias.scope !151, !noalias !150 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !36, !alias.scope !151, !noalias !150 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false), !alias.scope !152
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !35, !alias.scope !150, !noalias !151
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !37, !alias.scope !151, !noalias !150
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !37, !alias.scope !150, !noalias !151
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !36, !alias.scope !151, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.cl = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.ch, %bb.g ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !36, !alias.scope !150, !noalias !151
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !35, !alias.scope !151, !noalias !150
  store i64 0, ptr %i.cm, align 8, !tbaa !36, !alias.scope !151, !noalias !150
  store i8 0, ptr %i.ce, align 8, !tbaa !37, !alias.scope !151, !noalias !150
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 3 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !32, !alias.scope !150, !noalias !151
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !35, !alias.scope !151, !noalias !150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 5 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !36, !alias.scope !151, !noalias !150 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = add nuw nsw i64 %i.cv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.cs, i64 %i.cx, i1 false), !alias.scope !152
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !35, !alias.scope !150, !noalias !151
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !37, !alias.scope !151, !noalias !150
  store i64 %i.cy, ptr %i.cq, align 8, !tbaa !37, !alias.scope !150, !noalias !151
  %.phi.trans.insert5.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %.pre6.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i25, align 8, !tbaa !36, !alias.scope !151, !noalias !150
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24, %bb.h
  %i.cz = phi i64 [ %i.cv, %bb.h ], [ %.pre6.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i24 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !36, !alias.scope !150, !noalias !151
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !35, !alias.scope !151, !noalias !150
  store i64 0, ptr %i.da, align 8, !tbaa !36, !alias.scope !151, !noalias !150
  store i8 0, ptr %i.cs, align 8, !tbaa !37, !alias.scope !151, !noalias !150
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30: ; preds = %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.by, %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.dd, %_ZSt19__relocate_object_aIN6openzl10visualizer15StreamdumpEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dh) #22
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, %bb.i
  store ptr %i.o, ptr %0, align 8, !tbaa !52
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !51
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.k
  store ptr %i.di, ptr %i.de, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #20
  unreachable

_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.k = select i1 %i.i, i64 384307168202282325, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 24
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !25
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  store ptr %i.t, ptr %i.r, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !25, !alias.scope !160, !noalias !159
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !159, !noalias !160
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27, !alias.scope !160, !noalias !159
  store ptr %i.x, ptr %i.v, align 8, !tbaa !27, !alias.scope !159, !noalias !160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !160, !noalias !159
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.z, %.lr.ph.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %i.aa, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.ab = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !25, !alias.scope !162, !noalias !161
  store <2 x ptr> %i.ab, ptr %.012.i.i.i18, align 8, !tbaa !25, !alias.scope !161, !noalias !162
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27, !alias.scope !162, !noalias !161
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !27, !alias.scope !161, !noalias !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !162, !noalias !161
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !0

_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aa, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ag, %.lr.ph.i.i.i17 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #22
  br label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !22
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE17_M_realloc_insertIJRmRbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #20
  unreachable

_ZNKSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %4, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %4, i64 44343134792571037)
  %i.k = select i1 %i.i, i64 44343134792571037, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 208
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 15 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !48
  %i.r = load i8, ptr %3, align 1, !tbaa !65, !range !66, !noundef !67
  store i64 %i.q, ptr %i.p, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr null, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.t, ptr %i.v, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.t, ptr %i.w, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 0, ptr %i.x, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr null, ptr %i.z, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i8 0, i64 56, i1 false)
  store i8 %i.r, ptr %i.ad, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 169
  store i8 0, ptr %i.ae, align 1, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  store i8 0, ptr %i.af, align 8, !tbaa !96
  %i.ag = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.o, ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  %i.ai = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #22
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNKSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !18
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %i.k
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN6openzl10visualizer18CompressChunkTraceES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN6openzl10visualizer18CompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN6openzl10visualizer18CompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 18 uses
  %.0911.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN6openzl10visualizer18CompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i, i64 24, i1 false), !alias.scope !169
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42, !alias.scope !168, !noalias !167 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !43, !alias.scope !168, !noalias !167
  %i.f = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46, !alias.scope !168, !noalias !167
  %i.h = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47, !alias.scope !168, !noalias !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.j, align 8, !tbaa !44, !noalias !169
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45, !alias.scope !168, !noalias !167
  store ptr null, ptr %i.b, align 8, !tbaa !42, !alias.scope !168, !noalias !167
  store ptr %i.d, ptr %i.f, align 8, !tbaa !46, !alias.scope !168, !noalias !167
  store ptr %i.d, ptr %i.h, align 8, !tbaa !47, !alias.scope !168, !noalias !167
  store i64 0, ptr %i.k, align 8, !tbaa !45, !alias.scope !168, !noalias !167
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i.i.i.i

_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.sink6.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.a, %.lr.ph.i.i ]
  %.sink5.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.a, %.lr.ph.i.i ]
  %.sink.i.i.i = phi i64 [ %i.l, %bb.b ], [ 0, %.lr.ph.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.b ], [ 0, %.lr.ph.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40
  store ptr %i.c, ptr %i.m, align 8, !tbaa !42, !alias.scope !167, !noalias !168
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 48
  store ptr %.sink6.i.i.i, ptr %i.n, align 8, !tbaa !46, !alias.scope !167, !noalias !168
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 56
  store ptr %.sink5.i.i.i, ptr %i.o, align 8, !tbaa !47, !alias.scope !167, !noalias !168
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64
  store i64 %.sink.i.i.i, ptr %i.p, align 8, !tbaa !45, !alias.scope !167, !noalias !168
  store i32 %.sink.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !43, !alias.scope !167, !noalias !168
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42, !alias.scope !168, !noalias !167 ; 3 uses
  %.not.i.i.i.i7.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i7.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !43, !alias.scope !168, !noalias !167
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88
  store ptr %i.s, ptr %i.v, align 8, !tbaa !42, !alias.scope !167, !noalias !168
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46, !alias.scope !168, !noalias !167
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47, !alias.scope !168, !noalias !167
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.q, ptr %i.aa, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !45, !alias.scope !168, !noalias !167
  store ptr null, ptr %i.r, align 8, !tbaa !42, !alias.scope !168, !noalias !167
  store ptr %i.t, ptr %i.w, align 8, !tbaa !46, !alias.scope !168, !noalias !167
  store ptr %i.t, ptr %i.y, align 8, !tbaa !47, !alias.scope !168, !noalias !167
  store i64 0, ptr %i.ab, align 8, !tbaa !45, !alias.scope !168, !noalias !167
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer18CompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

bb.d:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88
  store ptr null, ptr %i.ad, align 8, !tbaa !42, !alias.scope !167, !noalias !168
  br label %_ZSt19__relocate_object_aIN6openzl10visualizer18CompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN6openzl10visualizer18CompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.d, %bb.c
  %.sink9.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.x, %bb.c ]
  %.sink8.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.z, %bb.c ]
  %.sink7.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ac, %bb.c ]
  %.sink.i.i.i.i8.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.u, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  store ptr %.sink9.i.i.i, ptr %i.ae, align 8, !tbaa !46, !alias.scope !167, !noalias !168
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  store ptr %.sink8.i.i.i, ptr %i.af, align 8, !tbaa !47, !alias.scope !167, !noalias !168
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 112
  store i64 %.sink7.i.i.i, ptr %i.ag, align 8, !tbaa !45, !alias.scope !167, !noalias !168
  store i32 %.sink.i.i.i.i8.i.i.i.i, ptr %i.q, align 8, !tbaa !43, !alias.scope !167, !noalias !168
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 120 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !170, !alias.scope !168, !noalias !167
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !170, !alias.scope !167, !noalias !168
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !104, !alias.scope !168, !noalias !167
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !104, !alias.scope !167, !noalias !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !168, !noalias !167
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 144 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !171, !alias.scope !168, !noalias !167
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !171, !alias.scope !167, !noalias !168
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 160
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !105, !alias.scope !168, !noalias !167
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !105, !alias.scope !167, !noalias !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false), !alias.scope !168, !noalias !167
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 168
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !alias.scope !169
  tail call void @_ZN6openzl10visualizer18CompressChunkTraceD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i) #23
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 208 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN6openzl10visualizer18CompressChunkTraceES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !166

_ZSt12__relocate_aIPN6openzl10visualizer18CompressChunkTraceES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN6openzl10visualizer18CompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.aw, %_ZSt19__relocate_object_aIN6openzl10visualizer18CompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer18CompressChunkTraceD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZNSt6vectorIN6openzl10visualizer5GraphESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer5CodecEEEvT_S6_(ptr noundef %i.c, ptr noundef %i.e)
          to label %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.c

_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !172  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = ptrtoint ptr %i.h to i64
end_hunk_0
begin_hunk_1_@_ZdaPv
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer5CodecEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6openzl10visualizer5CodecEEvPT_.exit
  %.05 = phi ptr [ %i.aa, %_ZSt8_DestroyIN6openzl10visualizer5CodecEEvPT_.exit ], [ %0, %bb.a ] ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i:     ; preds = %bb.b, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i:    ; preds = %bb.c, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 96
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.o) #23
  %i.p = getelementptr inbounds nuw i8, ptr %.05, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 80 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !37
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.v = load ptr, ptr %.05, align 8, !tbaa !35   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyIN6openzl10visualizer5CodecEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !37
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #22
  br label %_ZSt8_DestroyIN6openzl10visualizer5CodecEEvPT_.exit

_ZSt8_DestroyIN6openzl10visualizer5CodecEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05, i64 360 ; 2 uses
  %.not = icmp eq ptr %i.aa, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !212

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN6openzl10visualizer5CodecEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  tail call void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.07) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !213

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.c = load i8, ptr %i.b, align 8, !tbaa !216
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !217  ; 7 uses
  switch i8 %i.c, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i8.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !220  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !37
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !214

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !221
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.m = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  %.sink20.i.i.i.i.i.i = phi ptr [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !217
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.sink20.i.i.i.i.i.i to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i.i.i.i.i, i64 noundef %i.r) #22
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !109
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #22
  br label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E.exit

_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 192) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE17_M_realloc_insertIJRKmRbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #20
  unreachable

_ZNKSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %4, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %4, i64 44343134792571037)
  %i.k = select i1 %i.i, i64 44343134792571037, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 208
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 15 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !48
  %i.r = load i8, ptr %3, align 1, !tbaa !65, !range !66, !noundef !67
  store i64 %i.q, ptr %i.p, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr null, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.t, ptr %i.v, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.t, ptr %i.w, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 0, ptr %i.x, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr null, ptr %i.z, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i8 0, i64 56, i1 false)
  store i8 %i.r, ptr %i.ad, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 169
  store i8 0, ptr %i.ae, align 1, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  store i8 0, ptr %i.af, align 8, !tbaa !96
  %i.ag = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.o, ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  %i.ai = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #22
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNKSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !18
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %i.k
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !64
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTSN6openzl10visualizer18CompressChunkTraceE", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 8}
!18 = !{!16, !15, i64 0}
!19 = !{!"p1 _ZTSSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE", !14, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 16}
!22 = !{!20, !19, i64 0}
!23 = !{!20, !19, i64 8}
!24 = !{!"p1 _ZTSN6openzl10visualizer15StreamdumpEntryE", !14, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!27 = !{!26, !24, i64 16}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!15, !15, i64 0}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"long", !10, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !33, i64 8, !10, i64 16}
!35 = !{!34, !30, i64 0}
!36 = !{!34, !33, i64 8}
!37 = !{!10, !10, i64 0}
!38 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!39 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!40 = !{!"_ZTSSt18_Rb_tree_node_base", !38, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!41 = !{!"_ZTSSt15_Rb_tree_header", !40, i64 0, !33, i64 32}
!42 = !{!41, !39, i64 8}
!43 = !{!41, !38, i64 0}
!44 = !{!40, !39, i64 8}
!45 = !{!41, !33, i64 32}
!46 = !{!41, !39, i64 16}
!47 = !{!41, !39, i64 24}
!48 = !{!33, !33, i64 0}
!49 = !{!"_ZTSN6openzl10visualizer15StreamdumpEntryE", !33, i64 0, !34, i64 8, !34, i64 40}
!50 = !{!49, !33, i64 0}
!51 = !{!26, !24, i64 8}
!52 = !{!26, !24, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE12_Vector_implE", !16, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIN6openzl10visualizer18CompressChunkTraceESaIS2_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIN6openzl10visualizer18CompressChunkTraceESaIS2_EE", !54, i64 0}
!56 = !{!"bool", !10, i64 0}
!57 = !{!"p1 _ZTS21ZL_OperationContext_s", !14, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE12_Vector_implE", !20, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE", !59, i64 0}
!61 = !{!"_ZTSN6openzl10visualizer11TraceResultE", !34, i64 0, !60, i64 32}
!62 = !{!"_ZTSN6openzl10visualizer14CompressTracerE", !11, i64 0, !33, i64 8, !55, i64 16, !15, i64 40, !56, i64 48, !57, i64 56, !56, i64 64, !61, i64 72}
!63 = !{!62, !15, i64 40}
!64 = !{!16, !15, i64 16}
!65 = !{!56, !56, i64 0}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!"_ZTSN6openzl10visualizer25ZL_DataIDCustomComparatorE"}
!69 = !{!"_ZTSSt20_Rb_tree_key_compareIN6openzl10visualizer25ZL_DataIDCustomComparatorEE", !68, i64 0}
!70 = !{!"_ZTSNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE13_Rb_tree_implIS9_Lb1EEE", !69, i64 0, !41, i64 8}
!71 = !{!"_ZTSSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE", !70, i64 0}
!72 = !{!"_ZTSSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEE", !71, i64 0}
!73 = !{!"_ZTSSt4lessImE"}
!74 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !73, i64 0}
!75 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !74, i64 0, !41, i64 8}
!76 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE", !75, i64 0}
!77 = !{!"_ZTSSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEE", !76, i64 0}
!78 = !{!"p1 _ZTSN6openzl10visualizer5CodecE", !14, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE12_Vector_implE", !79, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorIN6openzl10visualizer5CodecESaIS2_EE", !81, i64 0}
!83 = !{!"p1 _ZTSN6openzl10visualizer5GraphE", !14, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer5GraphESaIS2_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!85 = !{!"_ZTSNSt12_Vector_baseIN6openzl10visualizer5GraphESaIS2_EE12_Vector_implE", !84, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIN6openzl10visualizer5GraphESaIS2_EE", !85, i64 0}
!87 = !{!"_ZTSSt6vectorIN6openzl10visualizer5GraphESaIS2_EE", !86, i64 0}
!88 = !{!"_ZTSSt22_Optional_payload_baseIN6openzl10visualizer18CompressChunkTrace15ConversionErrorEE", !10, i64 0, !56, i64 24}
!89 = !{!"_ZTSSt17_Optional_payloadIN6openzl10visualizer18CompressChunkTrace15ConversionErrorELb1ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt14_Optional_baseIN6openzl10visualizer18CompressChunkTrace15ConversionErrorELb1ELb1EE", !89, i64 0}
!91 = !{!"_ZTSSt8optionalIN6openzl10visualizer18CompressChunkTrace15ConversionErrorEE", !90, i64 0}
!92 = !{!"_ZTSN6openzl10visualizer18CompressChunkTraceE", !33, i64 0, !33, i64 8, !33, i64 16, !72, i64 24, !77, i64 72, !82, i64 120, !87, i64 144, !56, i64 168, !56, i64 169, !91, i64 176}
!93 = !{!92, !33, i64 0}
!94 = !{!92, !56, i64 168}
!95 = !{!92, !56, i64 169}
!96 = !{!88, !56, i64 24}
end_hunk_1
