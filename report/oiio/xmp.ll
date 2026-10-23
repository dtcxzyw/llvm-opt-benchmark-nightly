Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/xmp?download=true
inline.NumInlined: 4181
inline.NumDeleted: 1184
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_112_GLOBAL__N_19XMPtagMapD2Ev:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !203
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i2.i.i.i, label %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SC_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.o = ptrtoint ptr %.val1.i.i.i to i64
  %i.p = ptrtoint ptr %.val.i.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.q) #31
  br label %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SC_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit

_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SC_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

declare void @_ZN11OpenImageIO4v3_17Strutil8to_lowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SC_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i16, ptr %i.e, align 4, !tbaa !193
  %i.f = icmp eq i16 %.val.i.i.i.i.i.i.i, -1
  br i1 %i.f, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !97
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store i16 -1, ptr %i.e, align 4, !tbaa !193
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !203
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.o = ptrtoint ptr %.val1.i.i to i64
  %i.p = ptrtoint ptr %.val.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.q) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.c
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EED2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.val.i = load i16, ptr %i.a, align 4, !tbaa !193
  %i.b = icmp eq i16 %.val.i, -1
  br i1 %i.b, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !97
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #31
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store i16 -1, ptr %i.a, align 4, !tbaa !193
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE5clearEv.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE5clearEv.exit: ; preds = %bb.a, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i
  ret void
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E11rehash_implEm(i64 noundef %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 64), align 8, !tbaa !119 ; 2 uses
  %i.b = icmp ugt i64 %0, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.240)
          to label %.noexc unwind label %common.resume.i

.noexc:                                           ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #30
  unreachable

common.resume.i:                                  ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #29
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i.i: ; preds = %bb.c
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %0)
  %i.f = icmp samesign ult i64 %i.e, 2
  br i1 %i.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i.i
  %i.g = add i64 %0, -1                           ; 2 uses
  %i.h = lshr i64 %i.g, 1
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 4
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 8
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 16
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = or i64 %i.r, %i.q
  %i.t = add nuw i64 %i.s, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit.i: ; preds = %bb.d, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i.i
  %.012.i.i.i = phi i64 [ %i.t, %bb.d ], [ %0, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i.i ] ; 10 uses
  %i.u = add nsw i64 %.012.i.i.i, -1
  %i.v = icmp ugt i64 %.012.i.i.i, 192153584101141162
  br i1 %i.v, label %.noexc.i, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i

.noexc.i:                                         ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.241) #30
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit.i
  %i.w = mul nuw nsw i64 %.012.i.i.i, 48
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32 ; 5 uses
  %xtraiter = and i64 %.012.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i ] ; 5 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.012.i.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i ]
  store i32 0, ptr %.08.i.i.i.i.i.i.prol, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.y, align 4, !tbaa !193
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.z, align 2, !tbaa !201
  %i.aa = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !600

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i
  %.08.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i ], [ %.08.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa28.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %.012.i.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESaISH_EEC2EmRKSI_.exit.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ac = icmp ult i64 %.012.i.i.i, 4
  br i1 %i.ac, label %bb.h, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 14 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.ad, align 4, !tbaa !193
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ae, align 2, !tbaa !201
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 52
  store i16 -1, ptr %i.ag, align 4, !tbaa !193
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 54
  store i8 0, ptr %i.ah, align 2, !tbaa !201
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 100
  store i16 -1, ptr %i.aj, align 4, !tbaa !193
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 102
  store i8 0, ptr %i.ak, align 2, !tbaa !201
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 144
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 148
  store i16 -1, ptr %i.am, align 4, !tbaa !193
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 150
  store i8 0, ptr %i.an, align 2, !tbaa !201
  %i.ao = add nsw i64 %.057.i.i.i.i.i.i, -4       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !601

bb.e:                                             ; preds = %bb.c
  %i.aq = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11 acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %.thread.i, !prof !107

bb.f:                                             ; preds = %bb.e
  %i.as = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11) #29
  %.not.i13.i = icmp eq i32 %i.as, 0
  br i1 %.not.i13.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, i64 4), align 4, !tbaa !193
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, i64 6), align 2, !tbaa !201
  %i.at = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11) #29
  br label %.thread.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 144
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.unr-lcssa
  %.08.i.i.i.i.i.i.lcssa = phi ptr [ %.08.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.au, %.unr-lcssa ]
  %.lcssa28 = phi ptr [ %.lcssa28.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ap, %.unr-lcssa ]
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.lcssa, i64 6
  %1 = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.012.i.i.i
  store i8 1, ptr %i.av, align 2, !tbaa !201
  %i.aw = uitofp nneg i64 %.012.i.i.i to float
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.val165 = phi i64 [ %.012.i.i.i, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.12.0 = phi ptr [ %i.x, %bb.h ], [ @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, %bb.g ], [ @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, %bb.f ], [ @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, %bb.e ] ; 2 uses
  %2 = phi ptr [ %1, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ]
  %3 = phi ptr [ %.lcssa28, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ]
  %.sroa.15.0 = phi ptr [ %i.x, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ]
  %.val194 = phi i64 [ %i.u, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.0691720.i = phi float [ %i.aw, %bb.h ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ax = fcmp olt <2 x float> %i.a, <float 0.000000e+00, float 2.000000e-01>
  %i.ay = select <2 x i1> %i.ax, <2 x float> <float 0.000000e+00, float 2.000000e-01>, <2 x float> %i.a ; 2 uses
  %i.az = fcmp ogt <2 x float> %i.ay, <float 1.500000e-01, float f0x3F733333>
  %i.ba = select <2 x i1> %i.az, <2 x float> <float 1.500000e-01, float f0x3F733333>, <2 x float> %i.ay ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 1
  %i.bc = fmul float %i.bb, %.0691720.i
  %i.bd = fptoui float %i.bc to i64
  %i.be = icmp samesign ult i64 %.val165, 4294967297
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 8), align 8, !tbaa !603 ; 4 uses
  %.val14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 16), align 8, !tbaa !603 ; 2 uses
  %.not6 = icmp eq ptr %.val.i, %.val14
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.u
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 8), align 8, !tbaa !203
  %.pre11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 16), align 8, !tbaa !204
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread.i
  %i.bf = phi ptr [ %.pre11, %._crit_edge.loopexit ], [ %.val.i, %.thread.i ] ; 2 uses
  %i.bg = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.val.i, %.thread.i ] ; 5 uses
  store i64 %.val194, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, align 8, !tbaa !92
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 24), align 8, !tbaa !205
  store ptr %.sroa.15.0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 8), align 8, !tbaa !203
  store ptr %3, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 16), align 8, !tbaa !204
  store ptr %2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 24), align 8, !tbaa !205
  store ptr %.sroa.12.0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 32), align 8, !tbaa !603
  store i64 %.val165, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 40), align 8, !tbaa !92
  store i64 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 56), align 8, !tbaa !92
  store <2 x float> %i.ba, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 64), align 8, !tbaa !119
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 72), align 8, !tbaa !207
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, i64 73), align 1, !tbaa !207
  %.not4.i.i.i.i = icmp eq ptr %i.bg, %i.bf
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i ], [ %i.bg, %._crit_edge ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i16, ptr %i.bi, align 4, !tbaa !193
  %i.bj = icmp eq i16 %.val.i.i.i.i.i.i.i, -1
  br i1 %i.bj, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !97
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #31
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store i16 -1, ptr %i.bi, align 4, !tbaa !193
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, %i.bf
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEEEvPT_.exit.i.i.i.i, %._crit_edge
  %.not.i.i2.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i2.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.br = ptrtoint ptr %i.bh to i64
  %i.bs = ptrtoint ptr %i.bg to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bt) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEELb1EEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.j
  ret void

.lr.ph:                                           ; preds = %.thread.i, %bb.u
  %.sroa.02.07 = phi ptr [ %i.dh, %bb.u ], [ %.val.i, %.thread.i ] ; 10 uses
  %i.bu = getelementptr i8, ptr %.sroa.02.07, i64 4
  %.val = load i16, ptr %i.bu, align 4, !tbaa !193
  %i.bv = icmp eq i16 %.val, -1
  br i1 %i.bv, label %bb.u, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = load i32, ptr %.sroa.02.07, align 4, !tbaa !202
  %i.bx = zext i32 %i.bw to i64
  br label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit

bb.m:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 8
  %.val17 = load ptr, ptr %i.by, align 8, !tbaa !104
  %i.bz = getelementptr i8, ptr %.sroa.02.07, i64 16
  %.val18 = load i64, ptr %i.bz, align 8, !tbaa !96
  %i.ca = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val17, i64 noundef %.val18, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #28
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit: ; preds = %bb.m, %bb.l
  %i.cd = phi i64 [ %i.bx, %bb.l ], [ %i.ca, %bb.m ] ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 40 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit
  %.015.i = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit ], [ %i.da, %bb.t ] ; 4 uses
  %.014.i = phi i32 [ %i.ce, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit ], [ %.1.i, %bb.t ] ; 3 uses
  %.0.i.a = phi i64 [ %i.cd, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E8hash_keyIS8_EEmRKT_.exit ], [ %i.db, %bb.t ]
  %.0.i = and i64 %.0.i.a, %.val194               ; 2 uses
  %i.ch = getelementptr inbounds nuw [48 x i8], ptr %.sroa.12.0, i64 %.0.i ; 9 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 4      ; 4 uses
  %.val7.i = load i16, ptr %i.ci, align 4, !tbaa !193 ; 2 uses
  %i.cj = icmp sgt i16 %.015.i, %.val7.i
  br i1 %i.cj, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp eq i16 %.val7.i, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  br i1 %i.ck, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 3 uses
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !94
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !104 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 24 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 16
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false)
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22insert_value_on_rehashEmsjOSF_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !104
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !97
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !97
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22insert_value_on_rehashEmsjOSF_.exit

bb.s:                                             ; preds = %bb.p
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %i.cl) #29
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  %i.cw = load ptr, ptr %i.cg, align 8, !tbaa !147
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !147
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !147
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !147
  %i.cy = load i16, ptr %i.ci, align 4, !tbaa !149
  store i16 %.015.i, ptr %i.ci, align 4, !tbaa !149
  %i.cz = load i32, ptr %i.ch, align 8, !tbaa !202
  store i32 %.014.i, ptr %i.ch, align 8, !tbaa !202
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.116.i = phi i16 [ %i.cy, %bb.s ], [ %.015.i, %bb.o ]
  %.1.i = phi i32 [ %i.cz, %bb.s ], [ %.014.i, %bb.o ]
  %i.da = add i16 %.116.i, 1
  %i.db = add nuw nsw i64 %.0.i, 1
  br label %bb.o, !llvm.loop !602

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22insert_value_on_rehashEmsjOSF_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 16 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !96
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !96
  store ptr %i.co, ptr %i.cf, align 8, !tbaa !104
  store i64 0, ptr %i.dc, align 8, !tbaa !96
  store i8 0, ptr %i.co, align 8, !tbaa !97
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !196
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !196
  store i32 %.014.i, ptr %i.ch, align 8, !tbaa !202
  store i16 %.015.i, ptr %i.ci, align 4, !tbaa !193
  br label %bb.u

bb.u:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEENS_9robin_mapIS8_SE_St4hashIS8_ESt8equal_toIS8_ESaISF_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSP_11ValueSelectESI_SK_SL_Lb0ESO_E22insert_value_on_rehashEmsjOSF_.exit, %.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.dh, %.val14
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil9parse_intERNS0_17basic_string_viewIcSt11char_traitsIcEEERib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #15

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #15

declare ptr @_ZNK11OpenImageIO4v3_114ParamValueList4findENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ParamValueList20getattribute_indexedENS0_17basic_string_viewIcSt11char_traitsIcEEEiNS0_8TypeDescEPvb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef dead_on_return, i32 noundef, i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_17Strutil5stouiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef dead_on_return, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(39), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !137
  store i64 500, ptr %i.b, align 8, !tbaa !138
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %1, i64 %2, i64 %3, ptr %4, ptr null)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.f = load i64, ptr %i.d, align 8, !tbaa !146, !noalias !606 ; 6 uses
  %i.g = icmp ult i64 %i.f, 4611686018427387903
  call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %5, align 8, !tbaa !137, !noalias !606 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !94, !alias.scope !606
  %i.j = icmp eq ptr %i.h, null
  %i.k = icmp ne i64 %i.f, 0
  %or.cond.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.238) #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !606
  store i64 %i.f, ptr %i.a, align 8, !tbaa !92, !noalias !606
  %i.l = icmp samesign ugt i64 %i.f, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %bb.h    ; 2 uses

.noexc7:                                          ; preds = %.noexc.i.i
  store ptr %i.m, ptr %0, align 8, !tbaa !104, !alias.scope !606
  %i.n = load i64, ptr %i.a, align 8, !tbaa !92, !noalias !606
  store i64 %i.n, ptr %i.i, align 8, !tbaa !97, !alias.scope !606
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc7, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc7 ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !97
  store i8 %i.p, ptr %i.o, align 1, !tbaa !97
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.h, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !92, !noalias !606 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !96, !alias.scope !606
  %i.s = load ptr, ptr %0, align 8, !tbaa !104, !alias.scope !606
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !606
  %i.u = load ptr, ptr %5, align 8, !tbaa !137    ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.u) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.h:                                             ; preds = %.noexc.i.i, %.noexc.i, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %5, align 8, !tbaa !137    ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i8, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.w) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::default_arg_formatter", align 8 ; 10 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = icmp eq i64 %2, 2
  br i1 %i.a, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 1
  %i.c = icmp ne i16 %i.b, 32123
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %3, -1
  %i.g = trunc i64 %3 to i32                      ; 2 uses
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread

bb.e:                                             ; preds = %bb.d
end_hunk_0
