inline.NumInlined: 442
inline.NumDeleted: 194
begin_hunk_0_@_ZN16OpenColorIO_v2_516CDLTransformImpl6CreateEv:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ah = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %.03882) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42, !noalias !45, !nonnull !48, !noundef !48
  %i.aj = tail call ptr @__dynamic_cast(ptr nonnull %i.ai, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_512CDLTransformE, i64 0) #24, !noalias !45 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23, !noalias !45 ; 6 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i52, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55, label %bb.m

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.o:                                             ; preds = %bb.m
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !45 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55: ; preds = %bb.l, %bb.n, %bb.o
  %i.ar = phi ptr [ null, %bb.l ], [ %i.al, %bb.n ], [ %i.al, %bb.o ] ; 8 uses
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bb, 0
  br i1 %i.be, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit.loopexit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.r
  %i.bf = load ptr, ptr %2, align 8, !tbaa !15
  %bcmp.i = tail call i32 @bcmp(ptr %i.bf, ptr nonnull %i.az, i64 %i.bb)
  %i.bg = icmp eq i32 %bcmp.i, 0
  br i1 %i.bg, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit.loopexit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68: ; preds = %bb.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.p, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bh, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !27
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !49
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !49
  br label %bb.y

bb.u:                                             ; preds = %bb.s
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.bv, label %bb.x, label %bb.y, !prof !50

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24
  br label %bb.y

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #24
  %i.cc = icmp slt i32 %i.bw, %i.cb
  br i1 %i.cc, label %bb.l, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit, !llvm.loop !51

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit: ; preds = %bb.y
  store ptr %i.aj, ptr %0, align 1
  store ptr %i.al, ptr %i.k, align 1
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.cd = load ptr, ptr %2, align 8, !tbaa !15
end_hunk_6
begin_hunk_7_@_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ax

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit.loopexit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.r
  store ptr %i.aj, ptr %0, align 1
  store ptr %i.al, ptr %i.k, align 1
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit.loopexit, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i, %bb.h, %bb.g, %bb.e, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit62
  ret void

bb.ax:                                            ; preds = %bb.aw, %bb.k
end_hunk_7
begin_hunk_8_@_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_512CDLTransform14CreateFromFileEPKcS2_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
end_hunk_8
