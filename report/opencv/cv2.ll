inline.NumInlined: 99484
inline.NumDeleted: 14987
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !11
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !11
  store <4 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !11
  %.not12.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not12.i.i.i, label %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13181)
  %i.w = load i64, ptr %.0913.i.i.i, align 8, !tbaa !1240, !alias.scope !13181, !noalias !13178 ; 2 uses
  store i64 %i.w, ptr %.014.i.i.i, align 8, !tbaa !1240, !alias.scope !13178, !noalias !13181
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @constinit.18332, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11, !noalias !13183
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  invoke void %i.y(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa)
          to label %_ZN2cv4util7variantIJNS_4GMatENS_5GMatPENS_6GFrameENS_7GScalarENS_6detail7GArrayUENS6_8GOpaqueUEEEC2EOS9_.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #36
  unreachable

_ZN2cv4util7variantIJNS_4GMatENS_5GMatPENS_6GFrameENS_7GScalarENS_6detail7GArrayUENS6_8GOpaqueUEEEC2EOS9_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load i64, ptr %.0913.i.i.i, align 8, !tbaa !1240, !alias.scope !13181, !noalias !13178
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @constinit, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11, !noalias !13183
  invoke void %i.af(ptr noundef nonnull %i.aa)
          to label %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_ZN2cv4util7variantIJNS_4GMatENS_5GMatPENS_6GFrameENS_7GScalarENS_6detail7GArrayUENS6_8GOpaqueUEEEC2EOS9_.exit.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable

_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN2cv4util7variantIJNS_4GMatENS_5GMatPENS_6GFrameENS_7GScalarENS_6detail7GArrayUENS6_8GOpaqueUEEEC2EOS9_.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i, !llvm.loop !13051

_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit: ; preds = %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE12_M_check_lenEmPKc.exit ], [ %i.aj, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not12.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not12.i.i.i26, label %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i31
  %.014.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %i.ak, %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 3 uses
  %.0913.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %1, %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13187)
  %i.al = load i64, ptr %.0913.i.i.i29, align 8, !tbaa !1240, !alias.scope !13187, !noalias !13184 ; 2 uses
  store i64 %i.al, ptr %.014.i.i.i28, align 8, !tbaa !1240, !alias.scope !13184, !noalias !13187
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @constinit.18332, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !11, !noalias !13189
  %i.ao = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 8 ; 2 uses
  invoke void %i.an(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap)
          to label %_ZN2cv4util7variantIJNS_4GMatENS_5GMatPENS_6GFrameENS_7GScalarENS_6detail7GArrayUENS6_8GOpaqueUEEEC2EOS9_.exit.i.i.i.i30 unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i27
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #36
  unreachable

_ZN2cv4util7variantIJNS_4GMatENS_5GMatPENS_6GFrameENS_7GScalarENS_6detail7GArrayUENS6_8GOpaqueUEEEC2EOS9_.exit.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  %i.as = load i64, ptr %.0913.i.i.i29, align 8, !tbaa !1240, !alias.scope !13187, !noalias !13184
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @constinit, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !11, !noalias !13189
  invoke void %i.au(ptr noundef nonnull %i.ap)
          to label %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i31 unwind label %bb.f

bb.f:                                             ; preds = %_ZN2cv4util7variantIJNS_4GMatENS_5GMatPENS_6GFrameENS_7GScalarENS_6detail7GArrayUENS6_8GOpaqueUEEEC2EOS9_.exit.i.i.i.i30
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #36
  unreachable

_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i31: ; preds = %_ZN2cv4util7variantIJNS_4GMatENS_5GMatPENS_6GFrameENS_7GScalarENS_6detail7GArrayUENS6_8GOpaqueUEEEC2EOS9_.exit.i.i.i.i30
  %i.ax = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34, label %.lr.ph.i.i.i27, !llvm.loop !13051

_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34: ; preds = %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i31, %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.ak, %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.ay, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i31 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1239
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #40
  br label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorIN2cv4util7variantIJNS0_4GMatENS0_5GMatPENS0_6GFrameENS0_7GScalarENS0_6detail7GArrayUENS7_8GOpaqueUEEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !1254
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !1236
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !1239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4gapi3wip24PythonCustomStreamSourceESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4gapi3wip24PythonCustomStreamSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #37, !inline_history !13190
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4gapi3wip24PythonCustomStreamSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv4gapi3wip24PythonCustomStreamSourceESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4gapi3wip24PythonCustomStreamSourceESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4941 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #37
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv4gapi3wip24PythonCustomStreamSource4pullERNS1_4DataE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %7 = alloca %class.ArgInfo, align 8             ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1269 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyGILState_Ensure()       ; 6 uses
  %i.d = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @__func__._ZN2cv4gapi3wip14GCaptureSource4pullERNS1_4DataE)
  %i.e = tail call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef nonnull %i.b, ptr noundef %i.d, i64 noundef 0) ; 16 uses
  %i.f = tail call ptr @PyErr_Occurred()
  %.not32 = icmp eq ptr %i.f, null
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_Print()
  tail call void @PyGILState_Release(i32 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.18335, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv4gapi3wip14GCaptureSource4pullERNS1_4DataE, ptr noundef nonnull @.str.22, i32 noundef 1212) #38
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !56     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.ba

bb.h:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.e, @_Py_NoneStruct
  br i1 %i.n, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = load i64, ptr @_Py_NoneStruct, align 8, !tbaa !21 ; 2 uses
  %i.p = and i64 %i.o, 2147483648
  %.not71 = icmp eq i64 %i.p, 0
  br i1 %.not71, label %bb.j, label %_ZL9Py_DECREFP7_object.exit54

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  store i64 %i.q, ptr @_Py_NoneStruct, align 8, !tbaa !21
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.k, label %_ZL9Py_DECREFP7_object.exit54

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct)
  br label %_ZL9Py_DECREFP7_object.exit54

_ZL9Py_DECREFP7_object.exit54:                    ; preds = %bb.i, %bb.j, %bb.k
  tail call void @PyGILState_Release(i32 noundef %i.c)
  br label %bb.bb

bb.l:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !888
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.v = getelementptr i8, ptr %i.e, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !876 ; 2 uses
  %.not.i55 = icmp eq ptr %.val, %i.u
  br i1 %.not.i55, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.l
  %i.w = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.u)
  %.not66 = icmp eq i32 %i.w, 0
  br i1 %.not66, label %bb.m, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

bb.m:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !827
  %i.y = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.18336) ; 0 uses
  tail call void @PyErr_Print()
  %i.z = load i64, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.aa = and i64 %i.z, 2147483648
  %.not67 = icmp eq i64 %i.aa, 0
  br i1 %.not67, label %bb.n, label %_ZL9Py_DECREFP7_object.exit52

bb.n:                                             ; preds = %bb.m
  %i.ab = add nsw i64 %i.z, -1                    ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8, !tbaa !21
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %_ZL9Py_DECREFP7_object.exit52

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e)
  br label %_ZL9Py_DECREFP7_object.exit52

_ZL9Py_DECREFP7_object.exit52:                    ; preds = %bb.m, %bb.n, %bb.o
  tail call void @PyGILState_Release(i32 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18337, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZL9Py_DECREFP7_object.exit52
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv4gapi3wip14GCaptureSource4pullERNS1_4DataE, ptr noundef nonnull @.str.22, i32 noundef 1228) #38
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %_ZL9Py_DECREFP7_object.exit52
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.s:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !56    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.s
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.r
  %.pn36 = phi { ptr, i32 } [ %i.ad, %bb.r ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.ae, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.ba

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %bb.l, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store ptr @.str.18338, ptr %7, align 8, !tbaa !885
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.ak, align 8
  %i.al = invoke noundef zeroext i1 @_Z11pyopencv_toIN2cv3MatEEbP7_objectRT_RK7ArgInfo(ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  br i1 %i.al, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.am = invoke ptr @PyErr_Occurred()
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %.not38 = icmp eq ptr %i.am, null
  br i1 %.not38, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  invoke void @PyErr_Print()
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.an = load i64, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %i.ao = and i64 %i.an, 2147483648
  %.not68 = icmp eq i64 %i.ao, 0
  br i1 %.not68, label %bb.y, label %_ZL9Py_DECREFP7_object.exit50

bb.y:                                             ; preds = %bb.x
  %i.ap = add nsw i64 %i.an, -1                   ; 2 uses
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !21
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.z, label %_ZL9Py_DECREFP7_object.exit50

bb.z:                                             ; preds = %bb.y
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZL9Py_DECREFP7_object.exit50 unwind label %bb.ad

_ZL9Py_DECREFP7_object.exit50:                    ; preds = %bb.y, %bb.x, %bb.z
  invoke void @PyGILState_Release(i32 noundef %i.c)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZL9Py_DECREFP7_object.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.18339, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv4gapi3wip14GCaptureSource4pullERNS1_4DataE, ptr noundef nonnull @.str.22, i32 noundef 1238) #38
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.z, %bb.ak, %bb.ar, %_ZL9Py_DECREFP7_object.exit, %_ZL9Py_DECREFP7_object.exit47, %bb.ag, %_ZL9Py_DECREFP7_object.exit50, %bb.w, %bb.u, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ae:                                            ; preds = %bb.aa
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.af:                                            ; preds = %bb.ab
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.af
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !21
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.ae
  %.pn41 = phi { ptr, i32 } [ %i.as, %bb.ae ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.at, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.az

bb.ag:                                            ; preds = %bb.v
  %i.az = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.ah unwind label %bb.ad     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.az, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %i.bb = and i64 %i.ba, 2147483648
  %.not70 = icmp eq i64 %i.bb, 0
  br i1 %.not70, label %bb.aj, label %_ZL9Py_DECREFP7_object.exit47

bb.aj:                                            ; preds = %bb.ai
  %i.bc = add nsw i64 %i.ba, -1                   ; 2 uses
  store i64 %i.bc, ptr %i.e, align 8, !tbaa !21
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.ak, label %_ZL9Py_DECREFP7_object.exit47

bb.ak:                                            ; preds = %bb.aj
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZL9Py_DECREFP7_object.exit47 unwind label %bb.ad

_ZL9Py_DECREFP7_object.exit47:                    ; preds = %bb.aj, %bb.ai, %bb.ak
  invoke void @PyGILState_Release(i32 noundef %i.c)
          to label %bb.ay unwind label %bb.ad

bb.al:                                            ; preds = %bb.ah
  %i.be = load i64, ptr %1, align 8, !tbaa !1209  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.be, 3
  br i1 %.not.i.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @constinit.7461, i64 %i.be
end_hunk_0
