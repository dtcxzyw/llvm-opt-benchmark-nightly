inline.NumInlined: 8393
inline.NumDeleted: 3725
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE:bb.a

bb.u:                                             ; preds = %bb.t
  switch i32 %.sroa.095.0.copyload, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
    i32 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.er = load i32, ptr %i.eg, align 8, !tbaa !311
  %.not.i.i.i.i.i63 = icmp ne i32 %i.er, %.sroa.497.0.copyload
  %i.es = load i32, ptr %i.eh, align 8
  %i.et = icmp ne i32 %i.es, %.sroa.6100.0.copyload
  %i.eu = select i1 %.not.i.i.i.i.i63, i1 true, i1 %i.et
  br i1 %i.eu, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i: ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ev = load i32, ptr %i.eg, align 8, !tbaa !314
  %.not.i.i.i = icmp eq i32 %i.ev, %.sroa.497.0.copyload
  br i1 %.not.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit": ; preds = %bb.t, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !274
  %.not = icmp eq i32 %i.ew, %.sroa.7102.0.copyload
  br i1 %.not, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %bb.aa

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread": ; preds = %bb.u, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.ex = load i16, ptr %i.cm, align 1, !tbaa !22 ; 2 uses
  %i.ey = icmp eq i16 %i.ex, 0
  %i.ez = call i16 @llvm.bswap.i16(i16 %i.ex)
  %i.fa = zext i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fa
  %.0.i.i64 = select i1 %i.ey, ptr @_hb_NullPool, ptr %i.fb, !prof !33 ; 2 uses
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !441 ; 2 uses
  %i.fd = load i32, ptr %i.eo, align 4, !tbaa !443 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.fd to i64
  %i.fe = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  %.not9.i = icmp eq i32 %i.fd, 0
  br i1 %.not9.i, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i64, i64 2
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %.lr.ph.i
  %.010.i = phi ptr [ %i.fc, %.lr.ph.i ], [ %i.fq, %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i ] ; 2 uses
  %i.fh = load i32, ptr %.010.i, align 4, !tbaa !60
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 1, !tbaa !22 ; 2 uses
  %i.fl = icmp eq i16 %i.fk, 0
  %i.fm = call i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i64, i64 %i.fn
  %.0.i.i.i = select i1 %i.fl, ptr @_hb_NullPool, ptr %i.fo, !prof !33 ; 2 uses
  %i.fp = load i16, ptr %.0.i.i.i, align 1, !tbaa !22
  %cond.i.i = icmp eq i16 %i.fp, 768
  br i1 %cond.i.i, label %bb.w, label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

bb.w:                                             ; preds = %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  call void @_ZNK2OT6Layout9GPOS_impl13AnchorFormat325collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef %1)
  br label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i: ; preds = %bb.w, %bb.v
  %i.fq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.fq, %i.ff
  br i1 %.not.i, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %bb.v

_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit: ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fr = load i32, ptr %11, align 8, !tbaa !444
  %i.fs = add i32 %i.fr, -1
  %spec.select.i.i.i = icmp ult i32 %i.fs, -2
  br i1 %spec.select.i.i.i, label %bb.x, label %_ZN11hb_vector_tIjLb1EED2Ev.exit

bb.x:                                             ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit
  store i32 0, ptr %i.eo, align 4, !tbaa !443
  %i.ft = load ptr, ptr %i.ep, align 8, !tbaa !441
  call void @hb_free(ptr noundef %i.ft) #10
  br label %_ZN11hb_vector_tIjLb1EED2Ev.exit

_ZN11hb_vector_tIjLb1EED2Ev.exit:                 ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  store atomic i32 -57005, ptr %8 monotonic, align 8
  %i.fu = load atomic ptr, ptr %i.bx acquire, align 8 ; 5 uses
  %.not.i.i.i65 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i65, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN11hb_vector_tIjLb1EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(56) %i.fu)
  %i.fw = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.fu) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.fu) #10
  store atomic ptr null, ptr %i.bx monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i: ; preds = %bb.y, %_ZN11hb_vector_tIjLb1EED2Ev.exit
  %i.fx = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit, label %bb.z, !prof !33

bb.z:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.fx) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret void

bb.aa:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  %i.fy = load i32, ptr %12, align 8, !tbaa !272
  switch i32 %i.fy, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" [
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.fz = load ptr, ptr %i.ej, align 8, !tbaa !317
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gb = load i32, ptr %i.eg, align 8, !tbaa !314
  %i.gc = load i16, ptr %i.ga, align 1, !tbaa !22
  %i.gd = call noundef i16 @llvm.bswap.i16(i16 %i.gc)
  %i.ge = zext i16 %i.gd to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.gb, %i.ge
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit", !prof !47

bb.ac:                                            ; preds = %bb.ab
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"

bb.ad:                                            ; preds = %bb.aa
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit": ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.ei, align 8, !tbaa !60
  %i.gf = load i16, ptr %i.ek, align 1, !tbaa !22 ; 2 uses
  %i.gg = call noundef i16 @llvm.bswap.i16(i16 %i.gf)
  %i.gh = zext i16 %i.gg to i32                   ; 5 uses
  %.not6.i.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not6.i.i.i, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"
  %i.gi = load ptr, ptr %i.ca, align 8, !tbaa !56, !noalias !445 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gi, null
  %i.gj = load i32, ptr %i.el, align 8, !noalias !445
  br i1 %.not.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %i.gk = load i32, ptr %i.em, align 4
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i"
  %.sroa.090.sroa.0.0 = phi i32 [ %i.hg, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ], [ 0, %.lr.ph.split.i.i.i.preheader ] ; 5 uses
  %i.gl = mul i32 %.sroa.090.sroa.0.0, 506952113
  %i.gm = and i32 %i.gl, 1073741823
  %i.gn = urem i32 %i.gm, %i.gj                   ; 2 uses
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !noalias !445 ; 2 uses
  %i.gs = and i32 %i.gr, 2
  %.not15.i.i.i.i.i.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not15.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i
  %i.gt = load i32, ptr %i.gp, align 4, !tbaa !60, !noalias !445
  %i.gu = icmp eq i32 %i.gt, %.sroa.090.sroa.0.0
  br i1 %i.gu, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gv = load i32, ptr %i.hb, align 4, !tbaa !60, !noalias !445
  %i.gw = icmp eq i32 %i.gv, %.sroa.090.sroa.0.0
  br i1 %i.gw, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ae
  %.01016.i20.i.i.i.i.i.i.i = phi i32 [ %i.gz, %bb.ae ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i = phi i32 [ %i.gx, %bb.ae ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.gx = add i32 %.017.i19.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.gy = add i32 %i.gx, %.01016.i20.i.i.i.i.i.i.i
  %i.gz = and i32 %i.gy, %i.gk                    ; 2 uses
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !noalias !445 ; 2 uses
  %i.he = and i32 %i.hd, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", label %bb.ae, !llvm.loop !61

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i": ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i = phi i32 [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.hd, %bb.ae ]
  %i.hf = trunc i32 %.lcssa17.i.i.i.i.i.i.i to i1
  br i1 %i.hf, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i"

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", %.lr.ph.split.i.i.i
  %i.hg = add i32 %.sroa.090.sroa.0.0, 1          ; 2 uses
  %.not.i.i.i74 = icmp eq i32 %i.hg, %i.gh
  br i1 %.not.i.i.i74, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i, !llvm.loop !450

"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"
  %.sroa.090.sroa.0.1 = phi i32 [ 0, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" ], [ %.sroa.090.sroa.0.0, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i" ] ; 2 uses
  %.not4.i.i = icmp eq i32 %.sroa.090.sroa.0.1, %i.gh
  br i1 %.not4.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i"
  %i.hh = phi i32 [ %i.hz, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.090.sroa.0.1, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 2 uses
  %.val2.val.i.i.i.i = load i16, ptr %i.ek, align 1, !tbaa !22
  %i.hi = call noundef i16 @llvm.bswap.i16(i16 %.val2.val.i.i.i.i)
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul i32 %.val.i.i.i.i.i.i.i.i, %i.hj
  %i.hl = add i32 %i.hk, %i.hh
  %i.hm = load i32, ptr %i.eo, align 4, !tbaa !443 ; 3 uses
  %i.hn = load i32, ptr %11, align 8, !tbaa !444
  %.not.i.i.i.i77 = icmp slt i32 %i.hm, %i.hn
  br i1 %.not.i.i.i.i77, label %.critedge.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.ho = add i32 %i.hm, 1
  %i.hp = call noundef zeroext i1 @_ZN11hb_vector_tIjLb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.ho, i1 noundef zeroext false)
  br i1 %i.hp, label %..critedge_crit_edge.i.i.i.i, label %bb.ag, !prof !47

..critedge_crit_edge.i.i.i.i:                     ; preds = %bb.af
  %.pre.i.i.i.i = load i32, ptr %i.eo, align 4, !tbaa !443
  br label %.critedge.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  store i32 %i.en, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %.lr.ph.i.i
  %i.hq = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.hm, %.lr.ph.i.i ] ; 2 uses
  %i.hr = load ptr, ptr %i.ep, align 8, !tbaa !441
  %i.hs = add i32 %i.hq, 1
  store i32 %i.hs, ptr %i.eo, align 4, !tbaa !443
  %i.ht = zext i32 %i.hq to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ht
  store i32 %i.hl, ptr %i.hu, align 4, !tbaa !60
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i:    ; preds = %.critedge.i.i.i.i, %bb.ag
  %i.hv = add i32 %i.hh, 1                        ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.hv, %i.gh
  br i1 %.not2.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i
  %i.hw = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hx = load i32, ptr %i.el, align 8, !tbaa !59
  %i.hy = load i32, ptr %i.em, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %.backedge.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  %i.hz = phi i32 [ %i.hv, %.lr.ph.split.i.i.i.i.i.i ], [ %i.iv, %.backedge.i.i.i.i.i.i ] ; 6 uses
  %i.ia = mul i32 %i.hz, 506952113
  %i.ib = and i32 %i.ia, 1073741823
  %i.ic = urem i32 %i.ib, %i.hx                   ; 2 uses
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.if, align 4            ; 2 uses
  %i.ih = and i32 %i.ig, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ah
  %i.ii = load i32, ptr %i.ie, align 4, !tbaa !60
  %i.ij = icmp eq i32 %i.ii, %i.hz
  br i1 %i.ij, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ik = load i32, ptr %i.iq, align 4, !tbaa !60
  %i.il = icmp eq i32 %i.ik, %i.hz
  br i1 %i.il, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ai
  %.01016.i20.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.io, %bb.ai ], [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.im, %bb.ai ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.im = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.in = add i32 %i.im, %.01016.i20.i.i.i.i.i.i.i.i.i.i
  %i.io = and i32 %i.in, %i.hy                    ; 2 uses
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4            ; 2 uses
  %i.it = and i32 %i.is, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i78 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i78, label %.backedge.i.i.i.i.i.i, label %bb.ai, !llvm.loop !61

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.is, %bb.ai ]
  %i.iu = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.iu, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %i.iv = add i32 %i.hz, 1                        ; 2 uses
  %.not.i.i.i.i.i.i79 = icmp eq i32 %i.iv, %i.gh
  br i1 %.not.i.i.i.i.i.i79, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %bb.ah, !llvm.loop !451

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i
  %.not.i.i80 = icmp eq i32 %i.hz, %i.gh
  br i1 %.not.i.i80, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i, !llvm.loop !452

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i, %.lr.ph.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", %.backedge.i.i.i.i.i.i, %.lr.ph.i.i.i, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit"
  %i.iw = call fastcc noundef nonnull align 8 dereferenceable(72) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %12) ; 0 uses
  br label %bb.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_"(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr %.0.val, ptr %.8.val) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %.0.val, ptr %i.a, align 8, !tbaa !305, !alias.scope !453
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.8.val, ptr %i.b, align 8, !tbaa !309, !alias.scope !453
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !272, !alias.scope !453
  switch i32 %i.g, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSB_9GPOS_impl10MarkRecordEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_S3_S6_LDnEESM_.exit" [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.h = load i32, ptr %i.e, align 8, !tbaa !60, !alias.scope !453
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !149, !alias.scope !453
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i16, ptr %i.j, align 1, !tbaa !22
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %i.n = icmp ult i32 %i.h, %i.m
  br i1 %i.n, label %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEcvbEv.exit.i.i, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSB_9GPOS_impl10MarkRecordEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_S3_S6_LDnEESM_.exit"

_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEcvbEv.exit.i.i: ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i
  %i.o = load i32, ptr %i.c, align 8, !tbaa !402, !alias.scope !453
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSB_9GPOS_impl10MarkRecordEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_S3_S6_LDnEESM_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEcvbEv.exit.i.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !305, !alias.scope !453
  %i.q = load i32, ptr %0, align 8, !tbaa !272, !alias.scope !453
  switch i32 %i.q, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !317, !alias.scope !453 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i32, ptr %i.e, align 8, !tbaa !314, !alias.scope !453 ; 2 uses
  %i.u = load i16, ptr %i.s, align 1, !tbaa !22
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.t, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, !prof !47

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.aa = load i16, ptr %.0.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !318, !alias.scope !453
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i: ; preds = %bb.h, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.h ], [ %i.ac, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !132 ; 5 uses
  %i.af = lshr i32 %.0.i.i.i.i.i.i.i, 9           ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE:bb.a
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !45 ; 5 uses
  %i.vk = zext i32 %i.vg to i64                   ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.vd to i64 ; 3 uses
  %i.vl = sub nsw i64 %wide.trip.count.i.i, %i.vk
  %xtraiter705 = and i64 %i.vl, 3                 ; 2 uses
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  br i1 %lcmp.mod706.not, label %.prol.loopexit704, label %.prol.preheader703

.prol.preheader703:                               ; preds = %.lr.ph.i.i205, %.prol.preheader703
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.prol.preheader703 ], [ %i.vk, %.lr.ph.i.i205 ] ; 2 uses
  %prol.iter707 = phi i64 [ %prol.iter707.next, %.prol.preheader703 ], [ 0, %.lr.ph.i.i205 ]
  %i.vm = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vn, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.vm, align 8, !tbaa !167
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter707.next = add i64 %prol.iter707, 1   ; 2 uses
  %prol.iter707.cmp.not = icmp eq i64 %prol.iter707.next, %xtraiter705
  br i1 %prol.iter707.cmp.not, label %.prol.loopexit704, label %.prol.preheader703, !llvm.loop !551

.prol.loopexit704:                                ; preds = %.prol.preheader703, %.lr.ph.i.i205
  %indvars.iv.i.i.unr = phi i64 [ %i.vk, %.lr.ph.i.i205 ], [ %indvars.iv.next.i.i.prol, %.prol.preheader703 ]
  %i.vo = sub nsw i64 %i.vk, %wide.trip.count.i.i
  %i.vp = icmp ugt i64 %i.vo, -4
  br i1 %i.vp, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i205.new

.lr.ph.i.i205.new:                                ; preds = %.prol.loopexit704, %.lr.ph.i.i205.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i205.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit704 ] ; 5 uses
  %i.vq = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vr, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.vq, align 8, !tbaa !167
  %i.vs = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 72
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vu, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.vt, align 8, !tbaa !167
  %i.vv = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 144
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vx, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.vw, align 8, !tbaa !167
  %i.vy = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 216
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wa, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.vz, align 8, !tbaa !167
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i205.new, !llvm.loop !184

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %.prol.loopexit704, %.lr.ph.i.i205.new, %bb.cw
  store i32 %i.vd, ptr %i.rs, align 4, !tbaa !44
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit

_ZN12hb_bit_set_t6resizeEjbb.exit:                ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, %bb.cv, %.critedge.i189
  store i8 0, ptr %i.pm, align 8, !tbaa !25
  br label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

bb.cx:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit.thread, %bb.ct, %bb.cu
  store i32 %i.se, ptr %i.rk, align 4, !tbaa !41
  %i.wb = getelementptr inbounds nuw i8, ptr %i.pj, i64 56
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !52
  %i.wd = zext i32 %i.rt to i64                   ; 2 uses
  %i.we = getelementptr inbounds nuw [72 x i8], ptr %i.wc, i64 %i.wd ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wf, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.we, align 8, !tbaa !167
  %i.wg = load ptr, ptr %i.rn, align 8, !tbaa !171
  %i.wh = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i to i64 ; 3 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.wh ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = sub i32 %i.rt, %storemerge.i.i.ph.sink.i.i.ph.i.i
  %i.wl = shl i32 %i.wk, 3
  %i.wm = zext i32 %i.wl to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wj, ptr align 4 %i.wi, i64 %i.wm, i1 false)
  %i.wn = load ptr, ptr %i.rn, align 8, !tbaa !171
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.wh
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %i.wd, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.rh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.wo, align 4
  %.pre20.i.i = load ptr, ptr %i.rn, align 8, !tbaa !171
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i: ; preds = %bb.cc, %bb.cx
  %.pre-phi.i.i = phi i64 [ %i.wh, %bb.cx ], [ %i.rx, %bb.cc ]
  %i.wp = phi ptr [ %.pre20.i.i, %bb.cx ], [ %i.ro, %bb.cc ]
  %storemerge.i.i.ph.sink.i.i17.i.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i, %bb.cx ], [ %i.rw, %bb.cc ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i, ptr %i.ri monotonic, align 8
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %.pre-phi.i.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i

_ZN12hb_bit_set_t8page_forEjb.exit.i:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, %bb.ca
  %.sink30.i.i = phi ptr [ %i.wq, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i ], [ %i.rq, %bb.ca ]
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 56
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i126 = icmp eq ptr %.sink.i.i, null
  br i1 %.not.i126, label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, label %bb.cy, !prof !179

bb.cy:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i
  %i.wr = getelementptr inbounds nuw i8, ptr %.sink30.i.i, i64 4
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !53
  %i.wt = zext i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i, i64 %i.wt ; 2 uses
  %i.wv = and i32 %i.pl, 63
  %i.ww = zext nneg i32 %i.wv to i64
  %i.wx = shl nuw i64 1, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.wz = lshr i32 %i.pl, 6
  %i.xa = and i32 %i.wz, 7
  %i.xb = zext nneg i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %i.xb ; 2 uses
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !54
  %i.xe = or i64 %i.xd, %i.wx
  store i64 %i.xe, ptr %i.xc, align 8, !tbaa !54
  store i32 -1, ptr %i.wu, align 8, !tbaa !167
  br label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i: ; preds = %bb.bw, %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %bb.bq, %._crit_edge.i.i129, %_ZN12hb_bit_set_t8page_forEjb.exit.i140, %bb.bx, %_ZN12hb_bit_set_t6resizeEjbb.exit, %bb.by, %_ZN12hb_bit_set_t8page_forEjb.exit.i, %bb.cy, %bb.ad
  %i.xf = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i102 = icmp eq ptr %i.xf, %i.gm
  br i1 %.not.i102, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %bb.ad

_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit: ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit98
  br i1 %.sroa.0.0.lcssa, label %bb.cz, label %_ZN11hb_vector_tIjLb1EED2Ev.exit

bb.cz:                                            ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit
  call void @hb_free(ptr noundef %.sroa.14.0.lcssa) #10
  br label %_ZN11hb_vector_tIjLb1EED2Ev.exit

_ZN11hb_vector_tIjLb1EED2Ev.exit:                 ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, %bb.cz
  %i.xg = call fastcc noundef nonnull align 8 dereferenceable(72) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %11) ; 0 uses
  br label %bb.t

.lr.ph:                                           ; preds = %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit"
  %.sroa.0313.0.extract.trunc471 = phi i32 [ %.sroa.0313.0.extract.trunc, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ]
  %.sroa.0313.0470 = phi i64 [ %i.aai, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ]
  %.sroa.14.0469 = phi ptr [ %.sroa.14.4, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ null, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ] ; 4 uses
  %.sroa.8.0468 = phi i32 [ %.sroa.8.3, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ] ; 4 uses
  %.sroa.0.0467 = phi i32 [ %.sroa.0.4, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ] ; 4 uses
  %i.xh = load i16, ptr %i.eq, align 1, !tbaa !22 ; 2 uses
  %i.xi = call noundef i16 @llvm.bswap.i16(i16 %i.xh)
  %i.xj = zext i16 %i.xi to i32                   ; 5 uses
  %.not6.i.i.i = icmp eq i16 %i.xh, 0
  br i1 %.not6.i.i.i, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.xk = load ptr, ptr %i.ca, align 8, !tbaa !56, !noalias !552 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.xk, null
  %i.xl = load i32, ptr %i.er, align 8, !noalias !552
  br i1 %.not.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %i.xm = load i32, ptr %i.es, align 4
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i"
  %.sroa.0306.sroa.0.0 = phi i32 [ %i.yi, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ], [ 0, %.lr.ph.split.i.i.i.preheader ] ; 5 uses
  %i.xn = mul i32 %.sroa.0306.sroa.0.0, 506952113
  %i.xo = and i32 %i.xn, 1073741823
  %i.xp = urem i32 %i.xo, %i.xl                   ; 2 uses
  %i.xq = zext nneg i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw [12 x i8], ptr %i.xk, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !noalias !552 ; 2 uses
  %i.xu = and i32 %i.xt, 2
  %.not15.i.i.i.i.i.i.i.i = icmp eq i32 %i.xu, 0
  br i1 %.not15.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i
  %i.xv = load i32, ptr %i.xr, align 4, !tbaa !60, !noalias !552
  %i.xw = icmp eq i32 %i.xv, %.sroa.0306.sroa.0.0
  br i1 %i.xw, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.xx = load i32, ptr %i.yd, align 4, !tbaa !60, !noalias !552
  %i.xy = icmp eq i32 %i.xx, %.sroa.0306.sroa.0.0
  br i1 %i.xy, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.da
  %.01016.i20.i.i.i.i.i.i.i = phi i32 [ %i.yb, %bb.da ], [ %i.xp, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i = phi i32 [ %i.xz, %bb.da ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.xz = add i32 %.017.i19.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.ya = add i32 %i.xz, %.01016.i20.i.i.i.i.i.i.i
  %i.yb = and i32 %i.ya, %i.xm                    ; 2 uses
  %i.yc = zext i32 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [12 x i8], ptr %i.xk, i64 %i.yc ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !noalias !552 ; 2 uses
  %i.yg = and i32 %i.yf, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.yg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", label %bb.da, !llvm.loop !61

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i": ; preds = %bb.da, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i = phi i32 [ %i.xt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.yf, %bb.da ]
  %i.yh = trunc i32 %.lcssa17.i.i.i.i.i.i.i to i1
  br i1 %i.yh, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i"

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", %.lr.ph.split.i.i.i
  %i.yi = add i32 %.sroa.0306.sroa.0.0, 1         ; 2 uses
  %.not.i.i.i114 = icmp eq i32 %i.yi, %i.xj
  br i1 %.not.i.i.i114, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i, !llvm.loop !450

"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", %.lr.ph
  %.sroa.0306.sroa.0.1 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0306.sroa.0.0, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i" ] ; 2 uses
  %.not4.i.i = icmp eq i32 %.sroa.0306.sroa.0.1, %i.xj
  br i1 %.not4.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i"
  %.sroa.0.1 = phi i32 [ %.sroa.0.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0.0467, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 10 uses
  %.sroa.8.1 = phi i32 [ %.sroa.8.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.8.0468, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 6 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.14.0469, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 6 uses
  %i.yj = phi i32 [ %i.zl, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0306.sroa.0.1, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 2 uses
  %.val2.val.i.i.i.i = load i16, ptr %i.eq, align 1, !tbaa !22
  %i.yk = call noundef i16 @llvm.bswap.i16(i16 %.val2.val.i.i.i.i)
  %i.yl = zext i16 %i.yk to i32
  %i.ym = mul i32 %.sroa.0313.0.extract.trunc471, %i.yl
  %i.yn = add i32 %i.ym, %i.yj
  %.not.i.i.i.i117 = icmp slt i32 %.sroa.8.1, %.sroa.0.1
  %.pre = add i32 %.sroa.8.1, 1                   ; 6 uses
  br i1 %.not.i.i.i.i117, label %.critedge.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i
  %i.yo = icmp slt i32 %.sroa.0.1, 0
  br i1 %i.yo, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit, label %bb.dc, !prof !33

bb.dc:                                            ; preds = %bb.db
  %.not.i123 = icmp ugt i32 %.pre, %.sroa.0.1
  br i1 %.not.i123, label %.preheader.i, label %.critedge.i.i.i.i, !prof !33

.preheader.i:                                     ; preds = %bb.dc, %.preheader.i
  %.043.i = phi i32 [ %i.yr, %.preheader.i ], [ %.sroa.0.1, %bb.dc ] ; 2 uses
  %i.yp = lshr i32 %.043.i, 1
  %i.yq = add i32 %.043.i, 8
  %i.yr = add i32 %i.yq, %i.yp                    ; 8 uses
  %i.ys = icmp ugt i32 %.pre, %i.yr
  br i1 %i.ys, label %.preheader.i, label %.thread.i, !llvm.loop !482

.thread.i:                                        ; preds = %.preheader.i
  %i.yt = icmp ugt i32 %i.yr, 1073741823
  br i1 %i.yt, label %.critedge.i, label %bb.dd, !prof !33

.critedge.i:                                      ; preds = %.thread.i
  %i.yu = xor i32 %.sroa.0.1, -1
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit

bb.dd:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not49.i, label %bb.de, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.de:                                            ; preds = %bb.dd
  %.not9.i.i.i = icmp eq ptr %.sroa.14.1, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.yv = shl nuw i32 %i.yr, 2
  %i.yw = zext i32 %i.yv to i64
  %i.yx = call ptr @hb_malloc(i64 noundef %i.yw) #10 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.yx, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %bb.dg, !prof !33

bb.dg:                                            ; preds = %bb.df
  %.not.i.i.i.i125 = icmp eq i32 %.sroa.8.1, 0
  br i1 %.not.i.i.i.i125, label %.critedge.i.i.i.i, label %bb.dh, !prof !33

bb.dh:                                            ; preds = %bb.dg
  %i.yy = zext i32 %.sroa.8.1 to i64
  %i.yz = shl nuw nsw i64 %i.yy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yx, ptr nonnull readonly align 1 %.sroa.14.1, i64 range(i64 0, 309237645241) %i.yz, i1 false), !alias.scope !557
  br label %.critedge.i.i.i.i

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.de, %bb.dd
  %i.za = phi ptr [ null, %bb.de ], [ %.sroa.14.1, %bb.dd ]
  %i.zb = shl nuw i32 %i.yr, 2
  %i.zc = zext i32 %i.zb to i64
  %i.zd = call ptr @hb_realloc(ptr noundef %i.za, i64 noundef %i.zc) #10 ; 2 uses
  %.not22.i = icmp eq ptr %i.zd, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i.i.i.i, !prof !65

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %bb.df, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.ze = xor i32 %.sroa.0.1, -1
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit

_ZN11hb_vector_tIjLb1EE5allocEjb.exit:            ; preds = %bb.db, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.critedge.i
  %.sroa.0.5 = phi i32 [ %.sroa.0.1, %bb.db ], [ %i.ze, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.yu, %.critedge.i ]
  store i32 %i.et, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i, %bb.dg, %bb.dh, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.dc
  %.pre-phi = phi i32 [ %.pre, %bb.dc ], [ 1, %bb.dg ], [ %.pre, %bb.dh ], [ %.pre, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.pre, %.lr.ph.i.i ]
  %.sroa.0.3 = phi i32 [ %.sroa.0.1, %bb.dc ], [ %i.yr, %bb.dg ], [ %i.yr, %bb.dh ], [ %i.yr, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0.1, %.lr.ph.i.i ]
  %.sroa.14.3 = phi ptr [ %.sroa.14.1, %bb.dc ], [ %i.yx, %bb.dg ], [ %i.yx, %bb.dh ], [ %i.zd, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.14.1, %.lr.ph.i.i ] ; 2 uses
  %i.zf = zext i32 %.sroa.8.1 to i64
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.3, i64 %i.zf
  store i32 %i.yn, ptr %i.zg, align 4, !tbaa !60
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i:    ; preds = %.critedge.i.i.i.i, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit
  %.sroa.0.2 = phi i32 [ %.sroa.0.3, %.critedge.i.i.i.i ], [ %.sroa.0.5, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %.sroa.8.2 = phi i32 [ %.pre-phi, %.critedge.i.i.i.i ], [ %.sroa.8.1, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.3, %.critedge.i.i.i.i ], [ %.sroa.14.1, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %i.zh = add i32 %i.yj, 1                        ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.zh, %i.xj
  br i1 %.not2.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i
  %i.zi = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i
  %i.zj = load i32, ptr %i.er, align 8, !tbaa !59
  %i.zk = load i32, ptr %i.es, align 4
  br label %bb.di

bb.di:                                            ; preds = %.backedge.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  %i.zl = phi i32 [ %i.zh, %.lr.ph.split.i.i.i.i.i.i ], [ %i.aah, %.backedge.i.i.i.i.i.i ] ; 6 uses
  %i.zm = mul i32 %i.zl, 506952113
  %i.zn = and i32 %i.zm, 1073741823
  %i.zo = urem i32 %i.zn, %i.zj                   ; 2 uses
  %i.zp = zext nneg i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.zi, i64 %i.zp ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.zs = load i32, ptr %i.zr, align 4            ; 2 uses
  %i.zt = and i32 %i.zs, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.zt, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.di
  %i.zu = load i32, ptr %i.zq, align 4, !tbaa !60
  %i.zv = icmp eq i32 %i.zu, %i.zl
  br i1 %i.zv, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.zw = load i32, ptr %i.aac, align 4, !tbaa !60
  %i.zx = icmp eq i32 %i.zw, %i.zl
  br i1 %i.zx, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.dj
  %.01016.i20.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aaa, %bb.dj ], [ %i.zo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.zy, %bb.dj ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.zy = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.zz = add i32 %i.zy, %.01016.i20.i.i.i.i.i.i.i.i.i.i
  %i.aaa = and i32 %i.zz, %i.zk                   ; 2 uses
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [12 x i8], ptr %i.zi, i64 %i.aab ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.aae = load i32, ptr %i.aad, align 4          ; 2 uses
  %i.aaf = and i32 %i.aae, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i118 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i118, label %.backedge.i.i.i.i.i.i, label %bb.dj, !llvm.loop !61

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.zs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aae, %bb.dj ]
  %i.aag = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.aag, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, %bb.di
  %i.aah = add i32 %i.zl, 1                       ; 2 uses
  %.not.i.i.i.i.i.i119 = icmp eq i32 %i.aah, %i.xj
  br i1 %.not.i.i.i.i.i.i119, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %bb.di, !llvm.loop !451

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i
  %.not.i.i120 = icmp eq i32 %i.zl, %i.xj
  br i1 %.not.i.i120, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i, !llvm.loop !561

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i, %.lr.ph.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", %.backedge.i.i.i.i.i.i, %.lr.ph.i.i.i, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit"
  %.sroa.0.4 = phi i32 [ %.sroa.0.0467, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.0.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.0.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.0.0467, %.lr.ph.i.i.i ], [ %.sroa.0.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0467, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %.sroa.8.3 = phi i32 [ %.sroa.8.0468, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.8.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.8.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.8.0468, %.lr.ph.i.i.i ], [ %.sroa.8.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.8.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.8.0468, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %.sroa.14.4 = phi ptr [ %.sroa.14.0469, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.14.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.14.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.14.0469, %.lr.ph.i.i.i ], [ %.sroa.14.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.14.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.14.0469, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %i.aai = add i64 %.sroa.0313.0470, 1            ; 2 uses
  %.sroa.0313.0.extract.trunc = trunc i64 %i.aai to i32 ; 2 uses
  %.not432 = icmp eq i32 %.sroa.0313.0.extract.trunc, %.sroa.0311.0.extract.trunc
  br i1 %.not432, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_zip_iter_t.202, align 8  ; 6 uses
  %3 = alloca %struct.hb_filter_iter_t.198, align 8 ; 7 uses
  %4 = alloca %struct.hb_zip_iter_t.202, align 8  ; 12 uses
  %5 = alloca %struct.hb_map_iter_t.269, align 8  ; 11 uses
  %6 = alloca %struct.hb_filter_iter_t.271, align 8 ; 4 uses
  %7 = alloca %struct.hb_zip_iter_t.275, align 8  ; 12 uses
  %8 = alloca %struct.hb_map_t, align 8           ; 12 uses
  %9 = alloca %struct.hb_map_iter_t.206, align 8  ; 10 uses
  %10 = alloca %struct.hb_filter_iter_t.198, align 8 ; 4 uses
  %11 = alloca %struct.hb_vector_t.287, align 8   ; 8 uses
  %12 = alloca %struct.hb_map_iter_t.206, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE:bb.a

bb.u:                                             ; preds = %bb.t
  switch i32 %.sroa.095.0.copyload, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
    i32 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.er = load i32, ptr %i.eg, align 8, !tbaa !311
  %.not.i.i.i.i.i63 = icmp ne i32 %i.er, %.sroa.497.0.copyload
  %i.es = load i32, ptr %i.eh, align 8
  %i.et = icmp ne i32 %i.es, %.sroa.6100.0.copyload
  %i.eu = select i1 %.not.i.i.i.i.i63, i1 true, i1 %i.et
  br i1 %i.eu, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i: ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ev = load i32, ptr %i.eg, align 8, !tbaa !314
  %.not.i.i.i = icmp eq i32 %i.ev, %.sroa.497.0.copyload
  br i1 %.not.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit": ; preds = %bb.t, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !274
  %.not = icmp eq i32 %i.ew, %.sroa.7102.0.copyload
  br i1 %.not, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %bb.aa

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread": ; preds = %bb.u, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.ex = load i16, ptr %i.cm, align 1, !tbaa !22 ; 2 uses
  %i.ey = icmp eq i16 %i.ex, 0
  %i.ez = call i16 @llvm.bswap.i16(i16 %i.ex)
  %i.fa = zext i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fa
  %.0.i.i64 = select i1 %i.ey, ptr @_hb_NullPool, ptr %i.fb, !prof !33 ; 2 uses
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !441 ; 2 uses
  %i.fd = load i32, ptr %i.eo, align 4, !tbaa !443 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.fd to i64
  %i.fe = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  %.not9.i = icmp eq i32 %i.fd, 0
  br i1 %.not9.i, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i64, i64 2
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %.lr.ph.i
  %.010.i = phi ptr [ %i.fc, %.lr.ph.i ], [ %i.fq, %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i ] ; 2 uses
  %i.fh = load i32, ptr %.010.i, align 4, !tbaa !60
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 1, !tbaa !22 ; 2 uses
  %i.fl = icmp eq i16 %i.fk, 0
  %i.fm = call i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i64, i64 %i.fn
  %.0.i.i.i = select i1 %i.fl, ptr @_hb_NullPool, ptr %i.fo, !prof !33 ; 2 uses
  %i.fp = load i16, ptr %.0.i.i.i, align 1, !tbaa !22
  %cond.i.i = icmp eq i16 %i.fp, 768
  br i1 %cond.i.i, label %bb.w, label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

bb.w:                                             ; preds = %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  call void @_ZNK2OT6Layout9GPOS_impl13AnchorFormat325collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef %1)
  br label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i: ; preds = %bb.w, %bb.v
  %i.fq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.fq, %i.ff
  br i1 %.not.i, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %bb.v

_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit: ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fr = load i32, ptr %11, align 8, !tbaa !444
  %i.fs = add i32 %i.fr, -1
  %spec.select.i.i.i = icmp ult i32 %i.fs, -2
  br i1 %spec.select.i.i.i, label %bb.x, label %_ZN11hb_vector_tIjLb1EED2Ev.exit

bb.x:                                             ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit
  store i32 0, ptr %i.eo, align 4, !tbaa !443
  %i.ft = load ptr, ptr %i.ep, align 8, !tbaa !441
  call void @hb_free(ptr noundef %i.ft) #10
  br label %_ZN11hb_vector_tIjLb1EED2Ev.exit

_ZN11hb_vector_tIjLb1EED2Ev.exit:                 ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  store atomic i32 -57005, ptr %8 monotonic, align 8
  %i.fu = load atomic ptr, ptr %i.bx acquire, align 8 ; 5 uses
  %.not.i.i.i65 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i65, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN11hb_vector_tIjLb1EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(56) %i.fu)
  %i.fw = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.fu) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.fu) #10
  store atomic ptr null, ptr %i.bx monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i: ; preds = %bb.y, %_ZN11hb_vector_tIjLb1EED2Ev.exit
  %i.fx = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit, label %bb.z, !prof !33

bb.z:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.fx) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret void

bb.aa:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  %i.fy = load i32, ptr %12, align 8, !tbaa !272
  switch i32 %i.fy, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" [
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.fz = load ptr, ptr %i.ej, align 8, !tbaa !317
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gb = load i32, ptr %i.eg, align 8, !tbaa !314
  %i.gc = load i16, ptr %i.ga, align 1, !tbaa !22
  %i.gd = call noundef i16 @llvm.bswap.i16(i16 %i.gc)
  %i.ge = zext i16 %i.gd to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.gb, %i.ge
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit", !prof !47

bb.ac:                                            ; preds = %bb.ab
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"

bb.ad:                                            ; preds = %bb.aa
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit": ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.ei, align 8, !tbaa !60
  %i.gf = load i16, ptr %i.ek, align 1, !tbaa !22 ; 2 uses
  %i.gg = call noundef i16 @llvm.bswap.i16(i16 %i.gf)
  %i.gh = zext i16 %i.gg to i32                   ; 5 uses
  %.not6.i.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not6.i.i.i, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"
  %i.gi = load ptr, ptr %i.ca, align 8, !tbaa !56, !noalias !606 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gi, null
  %i.gj = load i32, ptr %i.el, align 8, !noalias !606
  br i1 %.not.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %i.gk = load i32, ptr %i.em, align 4
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i"
  %.sroa.090.sroa.0.0 = phi i32 [ %i.hg, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ], [ 0, %.lr.ph.split.i.i.i.preheader ] ; 5 uses
  %i.gl = mul i32 %.sroa.090.sroa.0.0, 506952113
  %i.gm = and i32 %i.gl, 1073741823
  %i.gn = urem i32 %i.gm, %i.gj                   ; 2 uses
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !noalias !606 ; 2 uses
  %i.gs = and i32 %i.gr, 2
  %.not15.i.i.i.i.i.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not15.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i
  %i.gt = load i32, ptr %i.gp, align 4, !tbaa !60, !noalias !606
  %i.gu = icmp eq i32 %i.gt, %.sroa.090.sroa.0.0
  br i1 %i.gu, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gv = load i32, ptr %i.hb, align 4, !tbaa !60, !noalias !606
  %i.gw = icmp eq i32 %i.gv, %.sroa.090.sroa.0.0
  br i1 %i.gw, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ae
  %.01016.i20.i.i.i.i.i.i.i = phi i32 [ %i.gz, %bb.ae ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i = phi i32 [ %i.gx, %bb.ae ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.gx = add i32 %.017.i19.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.gy = add i32 %i.gx, %.01016.i20.i.i.i.i.i.i.i
  %i.gz = and i32 %i.gy, %i.gk                    ; 2 uses
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !noalias !606 ; 2 uses
  %i.he = and i32 %i.hd, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", label %bb.ae, !llvm.loop !61

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i": ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i = phi i32 [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.hd, %bb.ae ]
  %i.hf = trunc i32 %.lcssa17.i.i.i.i.i.i.i to i1
  br i1 %i.hf, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i"

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", %.lr.ph.split.i.i.i
  %i.hg = add i32 %.sroa.090.sroa.0.0, 1          ; 2 uses
  %.not.i.i.i74 = icmp eq i32 %i.hg, %i.gh
  br i1 %.not.i.i.i74, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i, !llvm.loop !450

"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"
  %.sroa.090.sroa.0.1 = phi i32 [ 0, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" ], [ %.sroa.090.sroa.0.0, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i" ] ; 2 uses
  %.not4.i.i = icmp eq i32 %.sroa.090.sroa.0.1, %i.gh
  br i1 %.not4.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i"
  %i.hh = phi i32 [ %i.hz, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.090.sroa.0.1, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 2 uses
  %.val2.val.i.i.i.i = load i16, ptr %i.ek, align 1, !tbaa !22
  %i.hi = call noundef i16 @llvm.bswap.i16(i16 %.val2.val.i.i.i.i)
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul i32 %.val.i.i.i.i.i.i.i.i, %i.hj
  %i.hl = add i32 %i.hk, %i.hh
  %i.hm = load i32, ptr %i.eo, align 4, !tbaa !443 ; 3 uses
  %i.hn = load i32, ptr %11, align 8, !tbaa !444
  %.not.i.i.i.i77 = icmp slt i32 %i.hm, %i.hn
  br i1 %.not.i.i.i.i77, label %.critedge.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.ho = add i32 %i.hm, 1
  %i.hp = call noundef zeroext i1 @_ZN11hb_vector_tIjLb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.ho, i1 noundef zeroext false)
  br i1 %i.hp, label %..critedge_crit_edge.i.i.i.i, label %bb.ag, !prof !47

..critedge_crit_edge.i.i.i.i:                     ; preds = %bb.af
  %.pre.i.i.i.i = load i32, ptr %i.eo, align 4, !tbaa !443
  br label %.critedge.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  store i32 %i.en, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %.lr.ph.i.i
  %i.hq = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.hm, %.lr.ph.i.i ] ; 2 uses
  %i.hr = load ptr, ptr %i.ep, align 8, !tbaa !441
  %i.hs = add i32 %i.hq, 1
  store i32 %i.hs, ptr %i.eo, align 4, !tbaa !443
  %i.ht = zext i32 %i.hq to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ht
  store i32 %i.hl, ptr %i.hu, align 4, !tbaa !60
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i:    ; preds = %.critedge.i.i.i.i, %bb.ag
  %i.hv = add i32 %i.hh, 1                        ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.hv, %i.gh
  br i1 %.not2.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i
  %i.hw = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hx = load i32, ptr %i.el, align 8, !tbaa !59
  %i.hy = load i32, ptr %i.em, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %.backedge.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  %i.hz = phi i32 [ %i.hv, %.lr.ph.split.i.i.i.i.i.i ], [ %i.iv, %.backedge.i.i.i.i.i.i ] ; 6 uses
  %i.ia = mul i32 %i.hz, 506952113
  %i.ib = and i32 %i.ia, 1073741823
  %i.ic = urem i32 %i.ib, %i.hx                   ; 2 uses
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.if, align 4            ; 2 uses
  %i.ih = and i32 %i.ig, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ah
  %i.ii = load i32, ptr %i.ie, align 4, !tbaa !60
  %i.ij = icmp eq i32 %i.ii, %i.hz
  br i1 %i.ij, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ik = load i32, ptr %i.iq, align 4, !tbaa !60
  %i.il = icmp eq i32 %i.ik, %i.hz
  br i1 %i.il, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ai
  %.01016.i20.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.io, %bb.ai ], [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.im, %bb.ai ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.im = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.in = add i32 %i.im, %.01016.i20.i.i.i.i.i.i.i.i.i.i
  %i.io = and i32 %i.in, %i.hy                    ; 2 uses
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4            ; 2 uses
  %i.it = and i32 %i.is, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i78 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i78, label %.backedge.i.i.i.i.i.i, label %bb.ai, !llvm.loop !61

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.is, %bb.ai ]
  %i.iu = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.iu, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %i.iv = add i32 %i.hz, 1                        ; 2 uses
  %.not.i.i.i.i.i.i79 = icmp eq i32 %i.iv, %i.gh
  br i1 %.not.i.i.i.i.i.i79, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %bb.ah, !llvm.loop !451

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i
  %.not.i.i80 = icmp eq i32 %i.hz, %i.gh
  br i1 %.not.i.i80, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i, !llvm.loop !611

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i, %.lr.ph.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", %.backedge.i.i.i.i.i.i, %.lr.ph.i.i.i, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit"
  %i.iw = call fastcc noundef nonnull align 8 dereferenceable(72) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %12) ; 0 uses
  br label %bb.t
}

declare void @hb_blob_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN16hb_subset_plan_t19source_table_loaderIN2OT4GDEFEEclEPS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hb::unique_ptr", align 8   ; 5 uses
  %3 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !612  ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #10 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !612
  br label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit

_ZN9hb_lock_tC2EP10hb_mutex_t.exit:               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %i.h = select i1 %.not14, ptr %i.g, ptr %i.f    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !613, !range !38, !noundef !39
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4GDEFEEEP9hb_blob_tPK9hb_face_tj.exit

bb.c:                                             ; preds = %_ZN9hb_lock_tC2EP10hb_mutex_t.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !614  ; 5 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4GDEFEEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !615
  %i.p = urem i32 553384806, %i.o                 ; 3 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 2
  %.not15.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not15.i.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4GDEFEEEP9hb_blob_tPK9hb_face_tj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !60
  %i.y = icmp eq i32 %i.x, 1195656518
  br i1 %i.y, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = load i32, ptr %i.af, align 4, !tbaa !60
  %i.aa = icmp eq i32 %i.z, 1195656518
  br i1 %i.aa, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !616

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i20.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.p, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.ab, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.ab = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ac = add i32 %i.ab, %.01016.i20.i.i
  %i.ad = and i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i32 %i.ah, 2
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4GDEFEEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.e, !llvm.loop !616

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit: ; preds = %bb.e
  %i.aj = trunc i32 %i.ah to i1
  br i1 %i.aj, label %.lr.ph.i.i19, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4GDEFEEEP9hb_blob_tPK9hb_face_tj.exit

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i.i
  %i.ak = trunc i32 %i.t to i1
  br i1 %i.ak, label %._crit_edge.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIN2OT4GDEFEEEP9hb_blob_tPK9hb_face_tj.exit

bb.f:                                             ; preds = %.lr.ph.i.i19
  %i.al = load i32, ptr %i.av, align 4, !tbaa !60
  %i.am = icmp eq i32 %i.al, 1195656518
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i19, !llvm.loop !616

end_hunk_2
begin_hunk_3_@_ZN2OT28hb_closure_lookups_context_t7recurseEj:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 3 uses
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i.i.i.i.i, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.w = zext i32 %i.q to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d, %bb.c
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.s, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.z = add nsw i32 %i.s, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aa = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.ab = lshr i32 %i.aa, 1                       ; 4 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48 ; 2 uses
  %i.ag = icmp slt i32 %i.o, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ah = add nsw i32 %i.ab, -1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, %i.af
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = add nuw nsw i32 %i.ab, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.g ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.ah, %bb.e ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !50

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.f
  store atomic i32 %i.ab, ptr %i.p monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.d
  %i.aj = phi i64 [ %i.ac, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.w, %bb.d ]
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !53
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = lshr i32 %1, 6
  %i.ar = and i32 %i.aq, 7
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !54
  %i.av = and i32 %1, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 %i.au, %i.aw
  %i.ay = trunc i64 %i.ax to i8
  %i.az = and i8 %i.ay, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.i
  %.0.i.i.i.i.i = phi i8 [ %i.az, %bb.i ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !36, !range !38, !noundef !39
  %.not4 = icmp eq i8 %i.bb, %.0.i.i.i.i.i
  br i1 %.not4, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !874
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr %i.a, align 8, !tbaa !874
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !878
  tail call void %i.be(ptr noundef nonnull %0, i32 noundef %1) #10
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !874
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !874
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, %bb.a, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_map_t, align 8           ; 10 uses
  %3 = alloca %"struct.OT::ContextClosureLookupContext", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !873  ; 2 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !22
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  switch i16 %i.j, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread [
    i16 1, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
    i16 2, label %.split
  ]

.split:                                           ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.k = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.k, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit: ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.l = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.l, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

bb.b:                                             ; preds = %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i16, ptr %i.m, align 1, !tbaa !22   ; 2 uses
  %i.o = icmp eq i16 %i.n, 0
  %i.p = tail call i16 @llvm.bswap.i16(i16 %i.n)
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %.0.i.i16 = select i1 %i.o, ptr @_hb_NullPool, ptr %i.r, !prof !33 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store atomic i32 1, ptr %2 monotonic, align 8
  store atomic i8 1, ptr %i.s monotonic, align 4
  store atomic ptr null, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.u, align 8, !tbaa !152
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.v, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr @_ZN2OTL16intersects_classEPK8hb_set_tjPKvPv, ptr %3, align 8, !tbaa !936
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !937
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 2, ptr %i.y, align 8, !tbaa !938
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.0.i.i16, ptr %i.z, align 8, !tbaa !922
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %2, ptr %i.aa, align 8, !tbaa !923
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ab, align 8, !tbaa !939
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !22 ; 2 uses
  %.not12.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not12.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %.sroa.10.sroa.0.0.extract.trunc = zext i16 %i.af to i32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i"
  %.sroa.048.sroa.0.0 = phi i32 [ %i.am, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i" ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.sroa.10.sroa.0.0 = phi i32 [ %i.an, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i" ], [ %.sroa.10.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.sroa.749.0 = phi ptr [ %i.ao, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i" ], [ %i.ae, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.val6.val.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !873, !noalias !1019 ; 2 uses
  %i.ag = load i16, ptr %.0.i.i16, align 1, !tbaa !22, !noalias !1019
  %i.ah = call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  switch i16 %i.ah, label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i" [
    i16 1, label %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i"
    i16 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1019, !srcloc !21
  %i.ai = trunc i32 %.sroa.048.sroa.0.0 to i16
  %i.aj = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i16, ptr noundef %.val6.val.val.i.i.i, i16 noundef zeroext %i.ai), !noalias !1019
  br i1 %i.aj, label %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i"

"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1019, !srcloc !21
  %i.ak = trunc i32 %.sroa.048.sroa.0.0 to i16
  %i.al = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i16, ptr noundef %.val6.val.val.i.i.i, i16 noundef zeroext %i.ak), !noalias !1019
  br i1 %i.al, label %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i": ; preds = %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i", %.split.i.i.i, %.lr.ph.i.i.i
  %i.am = add i32 %.sroa.048.sroa.0.0, 1
  %i.an = add i32 %.sroa.10.sroa.0.0, -1          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.749.0, i64 2
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i.i, !llvm.loop !1024

"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit": ; preds = %.split.i.i.i, %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i"
  %.not25.i.i = icmp eq i32 %.sroa.10.sroa.0.0, 0
  br i1 %.not25.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i"

"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i": ; preds = %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit"
  %.val1.i.i.i.i.i.i.i.i.i18.i = load i16, ptr %.sroa.749.0, align 1, !tbaa !22 ; 2 uses
  %i.aq = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i18.i, 0
  %i.ar = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i18.i)
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19.i = select i1 %i.aq, ptr @_hb_NullPool, ptr %i.at, !prof !33
  call void @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_27ContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.au = add i32 %.sroa.10.sroa.0.0, -1          ; 2 uses
  %.not.i.i.i.i9.i21.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i9.i21.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i", %.lr.ph.i.i.backedge
  %.pn.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.backedge ], [ %.sroa.749.0, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ]
  %i.av = phi i32 [ %.be, %.lr.ph.i.i.backedge ], [ %i.au, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ] ; 2 uses
  %.pn52.i.i = phi i32 [ %i.aw, %.lr.ph.i.i.backedge ], [ %.sroa.048.sroa.0.0, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ]
  %i.aw = add i32 %.pn52.i.i, 1                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2 ; 2 uses
  %.val2.val.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !873 ; 2 uses
  %i.ay = load i16, ptr %.0.i.i16, align 1, !tbaa !22
  %i.az = call noundef i16 @llvm.bswap.i16(i16 %i.ay)
  switch i16 %i.az, label %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i" [
    i16 1, label %.split7.i.i.i.i.i.i
    i16 2, label %.split.i.i.i.i.i.i
  ]

.split7.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ba = trunc i32 %i.aw to i16
  %i.bb = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i16, ptr noundef %.val2.val.val.i.i.i.i.i.i, i16 noundef zeroext %i.ba)
  br i1 %i.bb, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i", label %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i"

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.bc = trunc i32 %i.aw to i16
  %i.bd = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i16, ptr noundef %.val2.val.val.i.i.i.i.i.i, i16 noundef zeroext %i.bc)
  br i1 %i.bd, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i", label %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i"

"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i": ; preds = %.split.i.i.i.i.i.i, %.split7.i.i.i.i.i.i, %.lr.ph.i.i
  %i.be = add i32 %i.av, -1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i"
  %.be = phi i32 [ %i.be, %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i" ], [ %i.bj, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i" ]
  br label %.lr.ph.i.i, !llvm.loop !1025

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i": ; preds = %.split.i.i.i.i.i.i, %.split7.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ax, align 1, !tbaa !22 ; 2 uses
  %i.bf = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  %i.bg = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i)
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bf, ptr @_hb_NullPool, ptr %i.bi, !prof !33
  call void @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_27ContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.bj = add i32 %i.av, -1                       ; 2 uses
  %.not.i.i.i.i9.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i9.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i.backedge

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit": ; preds = %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i", %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i", %bb.b, %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit", %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  store atomic i32 -57005, ptr %2 monotonic, align 8
  %i.bk = load atomic ptr, ptr %i.t acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit"
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %i.bk)
  %i.bm = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.bk) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.bk) #10
  store atomic ptr null, ptr %i.t monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i: ; preds = %bb.c, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit"
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !56  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit, label %bb.d, !prof !33

bb.d:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.bn) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread: ; preds = %bb.a, %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit, %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_map_iter_t.736, align 8  ; 13 uses
  %3 = alloca %"struct.OT::ChainContextClosureLookupContext", align 8 ; 4 uses
  %4 = alloca %struct.hb_filter_iter_t.740, align 8 ; 4 uses
  %5 = alloca %struct.hb_zip_iter_t.744, align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) @__const._ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE.lookup_context, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !1026
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 2 uses
  switch i16 %i.i, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1026
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !1026
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1026
  %i.p = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.q = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !1026
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1026
  %i.s = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.t = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !1026
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t) ; 2 uses
  br i1 %i.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.o, %bb.e ]
  %i.v = phi i16 [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.u, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.u, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.l, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !22, !noalias !1026
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = icmp ugt i16 %i.v, %i.y
  br i1 %i.z, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.aa = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1026
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ac, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ad = zext i16 %i.i to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.af = load i16, ptr %i.g, align 1, !tbaa !22, !noalias !1033
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.ag to i64
  store i32 %i.ad, ptr %5, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.426.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_3
begin_hunk_4_@_ZNK2OT12ChainRuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_32ChainContextClosureLookupContextE:bb.a
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !53
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = lshr i32 %i.aq, 6
  %i.ce = and i32 %i.cd, 7
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !54
  %i.ci = and i32 %i.aq, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 %i.ch, %i.cj
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = and i8 %i.cl, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i: ; preds = %bb.k, %bb.l, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i8 [ %i.cm, %bb.l ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %bb.k ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !36, !range !38, !noundef !39
  %.not4.i.i.i = icmp eq i8 %i.co, %.0.i.i.i.i.i.i.i.i
  br i1 %.not4.i.i.i, label %bb.m, label %_ZN2OT28hb_closure_lookups_context_t7recurseEj.exit.i.i

bb.m:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !874
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr %i.g, align 8, !tbaa !874
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !878
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %i.aq) #10, !inline_history !1035
  %i.cs = load i32, ptr %i.g, align 8, !tbaa !874
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.g, align 8, !tbaa !874
  br label %_ZN2OT28hb_closure_lookups_context_t7recurseEj.exit.i.i

_ZN2OT28hb_closure_lookups_context_t7recurseEj.exit.i.i: ; preds = %bb.m, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1006

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i": ; preds = %_ZN2OT28hb_closure_lookups_context_t7recurseEj.exit.i.i, %bb.d, %bb.c, %.lr.ph.split.i.i
  %i.cu = add i32 %.val812.i.i, -1                ; 2 uses
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_15closure_lookupsEPNS2_28hb_closure_lookups_context_tERNS2_32ChainContextClosureLookupContextEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISZ_Efp_EEEOSZ_OS14_.exit", label %.lr.ph.split.i.i, !llvm.loop !1036

"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_15closure_lookupsEPNS2_28hb_closure_lookups_context_tERNS2_32ChainContextClosureLookupContextEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISZ_Efp_EEEOSZ_OS14_.exit": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca [3 x %struct.hb_map_t], align 16    ; 30 uses
  %3 = alloca %"struct.OT::ChainContextClosureLookupContext", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !873  ; 2 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !22
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  switch i16 %i.j, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread [
    i16 1, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
    i16 2, label %.split
  ]

.split:                                           ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.k = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.k, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit: ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.l = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.l, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

bb.b:                                             ; preds = %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i16, ptr %i.m, align 1, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.p = load i16, ptr %i.o, align 1, !tbaa !22   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i16, ptr %i.q, align 1, !tbaa !22   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store atomic i32 1, ptr %2 monotonic, align 16
  store atomic i8 1, ptr %i.s monotonic, align 4
  store atomic ptr null, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.u, align 16, !tbaa !152
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.w, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.v, i8 0, i64 18, i1 false)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  store atomic i32 1, ptr %.ptr.1 monotonic, align 16
  store atomic i8 1, ptr %i.x monotonic, align 4
  store atomic ptr null, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 1, ptr %i.z, align 16, !tbaa !152
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 66
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr null, ptr %i.ab, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.aa, i8 0, i64 18, i1 false)
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i32 1, ptr %.ptr.2 monotonic, align 16
  store atomic i8 1, ptr %i.ac monotonic, align 4
  store atomic ptr null, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 1, ptr %i.ae, align 16, !tbaa !152
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 114
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr null, ptr %i.ag, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.af, i8 0, i64 18, i1 false)
  %i.ah = icmp eq i16 %i.n, 0
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.n)
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %.0.i.i19 = select i1 %i.ah, ptr @_hb_NullPool, ptr %i.ak, !prof !33
  %i.al = icmp eq i16 %i.p, 0
  %i.am = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.an = zext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %.0.i.i20 = select i1 %i.al, ptr @_hb_NullPool, ptr %i.ao, !prof !33 ; 7 uses
  %i.ap = icmp eq i16 %i.r, 0
  %i.aq = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %.0.i.i21 = select i1 %i.ap, ptr @_hb_NullPool, ptr %i.as, !prof !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr @_ZN2OTL16intersects_classEPK8hb_set_tjPKvPv, ptr %3, align 8, !tbaa !936
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !937
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 2, ptr %i.au, align 8, !tbaa !993
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.0.i.i19, ptr %i.av, align 8, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.0.i.i20, ptr %i.aw, align 8, !tbaa !149
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %.0.i.i21, ptr %i.ax, align 8, !tbaa !149
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.ay, align 8, !tbaa !149
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %.ptr.1, ptr %i.az, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %.ptr.2, ptr %i.ba, align 8, !tbaa !149
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr null, ptr %i.bb, align 8, !tbaa !994
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !22 ; 2 uses
  %.not13.i.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not13.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bf = call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %.sroa.10.sroa.0.0.extract.trunc = zext i16 %i.bf to i32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i"
  %.sroa.053.sroa.0.0 = phi i32 [ %i.bm, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i" ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.sroa.10.sroa.0.0 = phi i32 [ %i.bn, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i" ], [ %.sroa.10.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.sroa.754.0 = phi ptr [ %i.bo, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i" ], [ %i.be, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.val7.val.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !873, !noalias !1037 ; 2 uses
  %i.bg = load i16, ptr %.0.i.i20, align 1, !tbaa !22, !noalias !1037
  %i.bh = call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  switch i16 %i.bh, label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i" [
    i16 1, label %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i"
    i16 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1037, !srcloc !21
  %i.bi = trunc i32 %.sroa.053.sroa.0.0 to i16
  %i.bj = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i20, ptr noundef %.val7.val.val.i.i.i, i16 noundef zeroext %i.bi), !noalias !1037
  br i1 %i.bj, label %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUljE_RK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i"

"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1037, !srcloc !21
  %i.bk = trunc i32 %.sroa.053.sroa.0.0 to i16
  %i.bl = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i20, ptr noundef %.val7.val.val.i.i.i, i16 noundef zeroext %i.bk), !noalias !1037
  br i1 %i.bl, label %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUljE_RK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i": ; preds = %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i", %.split.i.i.i, %.lr.ph.i.i.i
  %i.bm = add i32 %.sroa.053.sroa.0.0, 1
  %i.bn = add i32 %.sroa.10.sroa.0.0, -1          ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.754.0, i64 2
  %i.bp = icmp eq i32 %i.bn, 0
  br i1 %i.bp, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit", label %.lr.ph.i.i.i, !llvm.loop !1042

"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUljE_RK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit": ; preds = %.split.i.i.i, %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i"
  %.not25.i.i = icmp eq i32 %.sroa.10.sroa.0.0, 0
  br i1 %.not25.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i"

"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i": ; preds = %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUljE_RK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"
  %.val1.i.i.i.i.i.i.i.i.i18.i = load i16, ptr %.sroa.754.0, align 1, !tbaa !22 ; 2 uses
  %i.bq = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i18.i, 0
  %i.br = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i18.i)
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19.i = select i1 %i.bq, ptr @_hb_NullPool, ptr %i.bt, !prof !33
  call void @_ZNK2OT12ChainRuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_32ChainContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bu = add i32 %.sroa.10.sroa.0.0, -1          ; 2 uses
  %.not.i.i.i.i9.i21.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i9.i21.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i", %.lr.ph.i.i.backedge
  %.pn.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.backedge ], [ %.sroa.754.0, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ]
  %i.bv = phi i32 [ %.be, %.lr.ph.i.i.backedge ], [ %i.bu, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ] ; 2 uses
  %.pn52.i.i = phi i32 [ %i.bw, %.lr.ph.i.i.backedge ], [ %.sroa.053.sroa.0.0, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ]
  %i.bw = add i32 %.pn52.i.i, 1                   ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2 ; 2 uses
  %.val3.val.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !873 ; 2 uses
  %i.by = load i16, ptr %.0.i.i20, align 1, !tbaa !22
  %i.bz = call noundef i16 @llvm.bswap.i16(i16 %i.by)
  switch i16 %i.bz, label %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i.i.i.i" [
    i16 1, label %.split8.i.i.i.i.i.i
    i16 2, label %.split.i.i.i.i.i.i
  ]

.split8.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ca = trunc i32 %i.bw to i16
  %i.cb = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i20, ptr noundef %.val3.val.val.i.i.i.i.i.i, i16 noundef zeroext %i.ca)
  br i1 %i.cb, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EERKSB_EppEv.exit.i.i", label %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i.i.i.i"

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cc = trunc i32 %i.bw to i16
  %i.cd = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i20, ptr noundef %.val3.val.val.i.i.i.i.i.i, i16 noundef zeroext %i.cc)
  br i1 %i.cd, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EERKSB_EppEv.exit.i.i", label %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i.i.i.i"

"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i.i.i.i": ; preds = %.split.i.i.i.i.i.i, %.split8.i.i.i.i.i.i, %.lr.ph.i.i
  %i.ce = add i32 %i.bv, -1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit", label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i.i.i.i", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EERKSB_EppEv.exit.i.i"
  %.be = phi i32 [ %i.ce, %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i.i.i.i" ], [ %i.cj, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EERKSB_EppEv.exit.i.i" ]
  br label %.lr.ph.i.i, !llvm.loop !1043

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EERKSB_EppEv.exit.i.i": ; preds = %.split.i.i.i.i.i.i, %.split8.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.bx, align 1, !tbaa !22 ; 2 uses
  %i.cf = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  %i.cg = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i)
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cf, ptr @_hb_NullPool, ptr %i.ci, !prof !33
  call void @_ZNK2OT12ChainRuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_32ChainContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.cj = add i32 %i.bv, -1                       ; 2 uses
  %.not.i.i.i.i9.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i9.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit", label %.lr.ph.i.i.backedge

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit": ; preds = %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EERKSB_EppEv.exit.i.i", %"_ZNK4$_23clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i.i.i.i", %bb.b, %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUljE_RK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit", %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_12ChainRuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_21ChainContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 96
  store atomic i32 -57005, ptr %i.ck monotonic, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.cm = load atomic ptr, ptr %i.cl acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit"
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(56) %i.cm)
  %i.co = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.cm) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.cm) #10
  store atomic ptr null, ptr %i.cl monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i: ; preds = %bb.c, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_12ChainRuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_21ChainContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUljE_RK3$_6LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlRKSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit"
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit, label %bb.d, !prof !33

bb.d:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.cq) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, %bb.d
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 48
  store atomic i32 -57005, ptr %i.cr monotonic, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ct = load atomic ptr, ptr %i.cs acquire, align 8 ; 5 uses
  %.not.i.i.i.1 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.1, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.1, label %bb.e

bb.e:                                             ; preds = %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(56) %i.ct)
  %i.cv = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ct) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.ct) #10
  store atomic ptr null, ptr %i.cs monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.1

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.1: ; preds = %bb.e, %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.1, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.1, label %bb.f, !prof !33

bb.f:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.1
  call void @hb_free(ptr noundef nonnull %i.cx) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.1

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.1:             ; preds = %bb.f, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.1
  store atomic i32 -57005, ptr %2 monotonic, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cz = load atomic ptr, ptr %i.cy acquire, align 8 ; 5 uses
  %.not.i.i.i.2 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.2, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.2, label %bb.g

bb.g:                                             ; preds = %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(56) %i.cz)
  %i.db = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.cz) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.cz) #10
  store atomic ptr null, ptr %i.cy monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.2

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.2: ; preds = %bb.g, %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.1
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.2, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.2, label %bb.h, !prof !33

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.2
  call void @hb_free(ptr noundef nonnull %i.dd) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.2

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.2:             ; preds = %bb.h, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread: ; preds = %bb.a, %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit, %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit.2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT17FeatureVariations16closure_featuresEPK8hb_map_tPK12hb_hashmap_tIjN2hb10shared_ptrI8hb_set_tEELb0EEPS7_(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 1, !tbaa !34   ; 2 uses
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b)
  %.not = icmp eq ptr %2, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2OT22FeatureVariationRecord16closure_featuresEPKvPK8hb_map_tP8hb_set_t.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK2OT22FeatureVariationRecord16closure_featuresEPKvPK8hb_map_tP8hb_set_t.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2OT22FeatureVariationRecord16closure_featuresEPKvPK8hb_map_tP8hb_set_t.exit ] ; 6 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !826  ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK2OT22FeatureVariationRecord16closure_featuresEPKvPK8hb_map_tP8hb_set_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = trunc nuw i64 %indvars.iv to i32
  %i.s = mul i32 %i.r, 506952113
  %i.t = and i32 %i.s, 1073741823
  %i.u = load i32, ptr %i.e, align 8, !tbaa !825
  %i.v = urem i32 %i.t, %i.u                      ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK2OT6Script13prune_langsysEPNS_26hb_prune_langsys_context_tEj:bb.a
  %spec.select.i.i.i.i59 = select i1 %.not.i.i.i.i58.not, ptr @_hb_NullPool, ptr %.sroa.7.0133, !prof !33
  %i.dp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i59, i64 4
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !22 ; 2 uses
  %i.dr = icmp eq i16 %i.dq, 0
  %i.ds = call i16 @llvm.bswap.i16(i16 %i.dq)
  %i.dt = zext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.dt
  %.0.i.i62 = select i1 %i.dr, ptr @_hb_Null_OT_LangSys, ptr %i.du, !prof !33 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i62, i64 4
  %i.dw = load i16, ptr %i.dv, align 1, !tbaa !22
  %i.dx = call noundef i16 @llvm.bswap.i16(i16 %i.dw)
  %i.dy = zext i16 %i.dx to i32
  %i.dz = load i32, ptr %i.do, align 4, !tbaa !755
  %i.ea = add i32 %i.dz, %i.dy                    ; 2 uses
  store i32 %i.ea, ptr %i.do, align 4, !tbaa !755
  %i.eb = icmp ult i32 %i.ea, 50000
  br i1 %i.eb, label %bb.q, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit76

bb.q:                                             ; preds = %bb.p
  call void @_ZNK2OT7LangSys16collect_featuresEPNS_26hb_prune_langsys_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i62, ptr noundef nonnull %1)
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !751 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !723 ; 4 uses
  %.not.i63 = icmp eq ptr %i.ee, null
  br i1 %.not.i63, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit75, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i64 = load i32, ptr %i.a, align 4, !tbaa !60 ; 3 uses
  %i.ef = mul i32 %.val.i64, 506952113
  %i.eg = and i32 %i.ef, 1073741823
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !724
  %i.ej = urem i32 %i.eg, %i.ei                   ; 2 uses
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = and i32 %i.en, 2
  %.not15.i.i.i65 = icmp eq i32 %i.eo, 0
  br i1 %.not15.i.i.i65, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit75, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %bb.r
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 28
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = load i32, ptr %i.el, align 4, !tbaa !60
  %i.es = icmp eq i32 %i.er, %.val.i64
  br i1 %i.es, label %._crit_edge.i.i71, label %.lr.ph.i.i67

bb.s:                                             ; preds = %.lr.ph.i.i67
  %i.et = load i32, ptr %i.fd, align 4, !tbaa !60
  %i.eu = icmp eq i32 %i.et, %.val.i64
  br i1 %i.eu, label %._crit_edge.i.i71, label %.lr.ph.i.i67, !llvm.loop !725

._crit_edge.i.i71:                                ; preds = %bb.s, %.lr.ph.i.i.i66
  %.lcssa10.i.i72 = phi i32 [ %i.en, %.lr.ph.i.i.i66 ], [ %i.ff, %bb.s ]
  %i.ev = phi i64 [ %i.ek, %.lr.ph.i.i.i66 ], [ %i.fc, %bb.s ]
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ev
  %i.ex = trunc i32 %.lcssa10.i.i72 to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %spec.select.i.i73 = select i1 %i.ex, ptr %i.ey, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit75

.lr.ph.i.i67:                                     ; preds = %.lr.ph.i.i.i66, %bb.s
  %.01016.i13.i.i68 = phi i32 [ %i.fb, %bb.s ], [ %i.ej, %.lr.ph.i.i.i66 ]
  %.017.i12.i.i69 = phi i32 [ %i.ez, %bb.s ], [ 0, %.lr.ph.i.i.i66 ]
  %i.ez = add i32 %.017.i12.i.i69, 1              ; 2 uses
  %i.fa = add i32 %i.ez, %.01016.i13.i.i68
  %i.fb = and i32 %i.fa, %i.eq                    ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4            ; 2 uses
  %i.fg = and i32 %i.ff, 2
  %.not.i.i.i70 = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i.i70, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit75, label %bb.s, !llvm.loop !725

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit75: ; preds = %.lr.ph.i.i67, %bb.q, %bb.r, %._crit_edge.i.i71
  %.0.i74 = phi ptr [ @_hb_NullPool, %bb.q ], [ %spec.select.i.i73, %._crit_edge.i.i71 ], [ @_hb_NullPool, %bb.r ], [ @_hb_NullPool, %.lr.ph.i.i67 ]
  %i.fh = load ptr, ptr %.0.i74, align 8, !tbaa !726 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !36, !range !38, !noundef !39
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.t, label %bb.u, !prof !33

bb.t:                                             ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit75
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.fi, i32 noundef %.sroa.079.0134)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit76

bb.u:                                             ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit75
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.fi, i32 noundef %.sroa.079.0134)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit76

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit76: ; preds = %bb.u, %bb.t, %bb.p
  %i.fm = add i32 %.sroa.079.0134, 1
  %.sroa.11.1 = call i32 @llvm.usub.sat.i32(i32 %.sroa.11.0132, i32 1)
  %.sroa.7.1.idx = select i1 %.not.i.i.i.i58.not, i64 0, i64 6, !prof !33
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.sroa.7.0133, i64 %.sroa.7.1.idx ; 2 uses
  %.not.i.i56 = icmp ne ptr %.sroa.7.1, %i.dn
  %i.fn = icmp ugt i32 %.sroa.11.0132, 1
  %i.fo = or i1 %.not.i.i56, %i.fn
  br i1 %i.fo, label %bb.p, label %.loopexit

.loopexit:                                        ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit76, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE17hb_sorted_array_tIKN2OT6RecordINS4_7LangSysEEEEE9hb_pair_tIjRS8_EE3endEv.exit, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE17hb_sorted_array_tIKN2OT6RecordINS4_7LangSysEEEEE9hb_pair_tIjRS8_EE3endEv.exit55, %bb.a, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT7LangSys16collect_featuresEPNS_26hb_prune_langsys_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %.not41 = icmp eq i16 %i.b, -1
  br i1 %.not41, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1, !tbaa !22
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %"_ZorI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSP_.exit", label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !752  ; 3 uses
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  %i.h = zext i16 %i.g to i32                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = mul i32 %i.h, 506952113
  %i.l = and i32 %i.k, 1073741823
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !59
  %i.o = urem i32 %i.l, %i.n                      ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = and i32 %i.s, 2
  %.not15.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not15.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.v = load i32, ptr %i.u, align 4
  %i.w = load i32, ptr %i.q, align 4, !tbaa !60
  %i.x = icmp eq i32 %i.w, %i.h
  br i1 %i.x, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.y = load i32, ptr %i.ae, align 4, !tbaa !60
  %i.z = icmp eq i32 %i.y, %i.h
  br i1 %i.z, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !61

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i20.i.i = phi i32 [ %i.ac, %bb.e ], [ %i.o, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.aa, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.aa = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ab = add i32 %i.aa, %.01016.i20.i.i
  %i.ac = and i32 %i.ab, %i.v                     ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = and i32 %i.ag, 2
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %bb.e, !llvm.loop !61

_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit:  ; preds = %bb.e, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.s, %.lr.ph.i.i.i ], [ %i.ag, %bb.e ]
  %i.ai = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.ai, label %bb.f, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.f:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !753 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.an = load i8, ptr %i.am, align 8, !tbaa !36, !range !38, !noundef !39
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.h, !prof !33

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.al, i32 noundef %i.h)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.al, i32 noundef %i.h)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %.lr.ph.i.i, %bb.d, %bb.c, %bb.b, %bb.h, %bb.g, %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !22 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar) ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i16 %i.as to i64 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = zext i16 %i.as to i32
  %.not8.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not8.i.i.i, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !1066, !noalias !1067 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56, !noalias !1067 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 28
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i11
  %i.ay = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 1
  %i.az = add nuw nsw i64 %i.ay, 8589934590
  %i.ba = and i64 %i.az, 8589934590
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba
  %scevgep.i.i.i = getelementptr i8, ptr %i.bb, i64 2
  %.sroa.6.12.insert.shift37 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 32
  br label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit"

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i11
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !59, !noalias !1067
  br label %bb.i

bb.i:                                             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.6.0 = phi i64 [ %.sroa.2.8.insert.ext.i.i.i.i, %.lr.ph.split.i.i.i ], [ %.sroa.6.8.insert.ext, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ]
  %.sroa.031.0 = phi ptr [ %i.aq, %.lr.ph.split.i.i.i ], [ %i.ce, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ] ; 3 uses
  %i.be = phi i32 [ %i.au, %.lr.ph.split.i.i.i ], [ %i.cd, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ]
  %.val4.i.i.i = load i16, ptr %.sroa.031.0, align 1, !tbaa !22, !noalias !1067
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %.val4.i.i.i)
  %i.bg = zext i16 %i.bf to i32                   ; 3 uses
  %i.bh = mul i32 %i.bg, 506952113
  %i.bi = and i32 %i.bh, 1073741823
  %i.bj = urem i32 %i.bi, %i.bd                   ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !1067 ; 2 uses
  %i.bo = and i32 %i.bn, 2
  %.not15.i.i.i.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not15.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.i
  %i.bp = load i32, ptr %i.ax, align 4, !noalias !1067
  %i.bq = load i32, ptr %i.bl, align 4, !tbaa !60, !noalias !1067
  %i.br = icmp eq i32 %i.bq, %i.bg
  br i1 %i.br, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bs = load i32, ptr %i.by, align 4, !tbaa !60, !noalias !1067
  %i.bt = icmp eq i32 %i.bs, %i.bg
  br i1 %i.bt, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.j
  %.01016.i20.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.j ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bu = add i32 %.017.i19.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.bv = add i32 %i.bu, %.01016.i20.i.i.i.i.i.i.i
  %i.bw = and i32 %i.bv, %i.bp                    ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !noalias !1067 ; 2 uses
  %i.cb = and i32 %i.ca, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, label %bb.j, !llvm.loop !61

"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i": ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i = phi i32 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ca, %bb.j ]
  %i.cc = trunc i32 %.lcssa17.i.i.i.i.i.i.i to i1
  br i1 %i.cc, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", %bb.i
  %i.cd = add i32 %i.be, -1                       ; 3 uses
  %.sroa.6.8.insert.ext = zext i32 %i.cd to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 2
  %.not.i.i.i12 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i12, label %"_ZorI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSP_.exit", label %bb.i, !llvm.loop !733

"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit": ; preds = %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, %.lr.ph.split.us.i.i.i
  %.sroa.6.1 = phi i64 [ %.sroa.2.8.insert.ext.i.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit ], [ %.sroa.6.12.insert.shift37, %.lr.ph.split.us.i.i.i ], [ %.sroa.6.0, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i" ]
  %.sroa.031.1 = phi ptr [ %i.aq, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit ], [ %scevgep.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.031.0, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i" ] ; 2 uses
  %.sroa.6.8.extract.trunc = trunc i64 %.sroa.6.1 to i32 ; 2 uses
  %.not4.i.i = icmp eq i32 %.sroa.6.8.extract.trunc, 0
  br i1 %.not4.i.i, label %"_ZorI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSP_.exit", label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit"
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !753 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %.pre.i = load i16, ptr %.sroa.031.1, align 1, !tbaa !22
  br label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i
  %i.cj = phi i16 [ %.pre.i, %.lr.ph.i.preheader.i ], [ %.val1.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i ]
  %.sroa.8.0.i = phi i32 [ %.sroa.6.8.extract.trunc, %.lr.ph.i.preheader.i ], [ %.sroa.8.1.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i ]
  %.sroa.0.0.i = phi ptr [ %.sroa.031.1, %.lr.ph.i.preheader.i ], [ %.sroa.0.1.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i ]
  %i.ck = tail call noundef i16 @llvm.bswap.i16(i16 %i.cj)
  %i.cl = zext i16 %i.ck to i32                   ; 2 uses
  %i.cm = load i8, ptr %i.ci, align 8, !tbaa !36, !range !38, !noundef !39
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.k, label %bb.l, !prof !33

bb.k:                                             ; preds = %.lr.ph.i.i15
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ch, i32 noundef %i.cl)
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i15
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ch, i32 noundef %i.cl)
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i.i: ; preds = %bb.l, %bb.k
  %i.co = add i32 %.sroa.8.0.i, -1                ; 2 uses
  %.not.i2.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i2.i.i, label %"_ZorI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSP_.exit", label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i.i
  %.val.i.i.i16 = load ptr, ptr %i.at, align 8, !tbaa !1066 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i.i16, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i17 = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i.i16, i64 28
  br i1 %.not.i.i.i.i.i.i17, label %"_ZorI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSP_.exit", label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i2.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i16, i64 32
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i.i, %.lr.ph.split.i.i
  %.sroa.8.1.i = phi i32 [ %i.co, %.lr.ph.split.i.i ], [ %i.ds, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i.i ] ; 2 uses
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.split.i.i ], [ %.sroa.0.1.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i.i ]
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.pn.i, i64 2 ; 3 uses
  %.val1.i.i.i = load i16, ptr %.sroa.0.1.i, align 1, !tbaa !22 ; 2 uses
  %i.cu = tail call noundef i16 @llvm.bswap.i16(i16 %.val1.i.i.i)
  %i.cv = zext i16 %i.cu to i32                   ; 3 uses
  %i.cw = mul i32 %i.cv, 506952113
  %i.cx = and i32 %i.cw, 1073741823
  %i.cy = urem i32 %i.cx, %i.ct                   ; 2 uses
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.cq, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = and i32 %i.dc, 2
  %.not15.i.i.i.i.i.i.i.i18 = icmp eq i32 %i.dd, 0
  br i1 %.not15.i.i.i.i.i.i.i.i18, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i.i.i19:                         ; preds = %bb.m
  %i.de = load i32, ptr %i.cr, align 4
  %i.df = load i32, ptr %i.da, align 4, !tbaa !60
  %i.dg = icmp eq i32 %i.df, %i.cv
  br i1 %i.dg, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i20

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i20
  %i.dh = load i32, ptr %i.dn, align 4, !tbaa !60
  %i.di = icmp eq i32 %i.dh, %i.cv
  br i1 %i.di, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i20, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i20:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i19, %bb.n
  %.01016.i20.i.i.i.i.i.i.i21 = phi i32 [ %i.dl, %bb.n ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i19 ]
  %.017.i19.i.i.i.i.i.i.i22 = phi i32 [ %i.dj, %bb.n ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i19 ]
  %i.dj = add i32 %.017.i19.i.i.i.i.i.i.i22, 1    ; 2 uses
  %i.dk = add i32 %i.dj, %.01016.i20.i.i.i.i.i.i.i21
  %i.dl = and i32 %i.dk, %i.de                    ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.cq, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = and i32 %i.dp, 2
  %.not.i.i.i.i.i.i.i.i23 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i.i.i23, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i.i, label %bb.n, !llvm.loop !61

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i19
  %.lcssa17.i.i.i.i.i.i.i24 = phi i32 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i19 ], [ %i.dp, %bb.n ]
  %i.dr = trunc i32 %.lcssa17.i.i.i.i.i.i.i24 to i1
  br i1 %i.dr, label %.lr.ph.i.i15, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i.i, !prof !742, !llvm.loop !1072

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i20, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i, %bb.m
  %i.ds = add i32 %.sroa.8.1.i, -1                ; 2 uses
  %.not.i.i.i25 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i25, label %"_ZorI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSP_.exit", label %bb.m, !llvm.loop !743

"_ZorI16hb_filter_iter_tI10hb_array_tIKN2OT5IndexEERPK8hb_map_tRK4$_19LPv0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSP_.exit": ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, %.lr.ph.i2.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.lr.ph.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.backedge.i.i.i, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT7LangSys7compareERKS0_PK8hb_map_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.a, align 1, !tbaa !22
  %i.d = load i16, ptr %i.b, align 1, !tbaa !22
  %.not158 = icmp eq i16 %i.c, %i.d
  br i1 %.not158, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.g = load i16, ptr %i.e, align 1, !tbaa !22   ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i16 %i.h to i64
  %.sroa.6119.sroa.0.0.extract.trunc = zext i16 %i.h to i32 ; 2 uses
  %.not8.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not8.i.i.i, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56, !noalias !1073 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.l = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 1
  %i.m = add nuw nsw i64 %i.l, 8589934590
  %i.n = and i64 %i.m, 8589934590
  %i.o = getelementptr i8, ptr %i.f, i64 %i.n
  %scevgep.i.i.i = getelementptr i8, ptr %i.o, i64 2
  br label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit"

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !59, !noalias !1073
  %i.r = add nsw i32 %.sroa.6119.sroa.0.0.extract.trunc, -1
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.6119.sroa.0.0 = phi i32 [ %.sroa.6119.sroa.0.0.extract.trunc, %.lr.ph.split.i.i.i ], [ %i.at, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0118.0 = phi ptr [ %i.f, %.lr.ph.split.i.i.i ], [ %i.au, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ] ; 3 uses
  %.val4.i.i.i = load i16, ptr %.sroa.0118.0, align 1, !tbaa !22, !noalias !1073
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %.val4.i.i.i)
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = mul i32 %i.w, 506952113
  %i.y = and i32 %i.x, 1073741823
  %i.z = urem i32 %i.y, %i.q                      ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !1073 ; 2 uses
  %i.ae = and i32 %i.ad, 2
  %.not15.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not15.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.af = load i32, ptr %i.k, align 4, !noalias !1073
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !60, !noalias !1073
  %i.ah = icmp eq i32 %i.ag, %i.w
  br i1 %i.ah, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = load i32, ptr %i.ao, align 4, !tbaa !60, !noalias !1073
  %i.aj = icmp eq i32 %i.ai, %i.w
  br i1 %i.aj, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.01016.i20.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.d ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ak = add i32 %.017.i19.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.al = add i32 %i.ak, %.01016.i20.i.i.i.i.i.i.i
  %i.am = and i32 %i.al, %i.af                    ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !1073 ; 2 uses
  %i.ar = and i32 %i.aq, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, label %bb.d, !llvm.loop !61

"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i": ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i = phi i32 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.d ]
  %i.as = trunc i32 %.lcssa17.i.i.i.i.i.i.i to i1
  br i1 %i.as, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", %bb.c
  %i.at = add i32 %.sroa.6119.sroa.0.0, -1        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 2
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", label %bb.c, !llvm.loop !733

"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit": ; preds = %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i, %bb.b, %.lr.ph.split.us.i.i.i
  %.sroa.6119.sroa.0.1 = phi i32 [ 0, %bb.b ], [ 0, %.lr.ph.split.us.i.i.i ], [ %.sroa.6119.sroa.0.0, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ] ; 2 uses
  %.sroa.0118.1 = phi ptr [ %i.f, %bb.b ], [ %scevgep.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0118.0, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i" ], [ %scevgep, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %i.ax = load i16, ptr %i.av, align 1, !tbaa !22 ; 2 uses
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i23 = zext i16 %i.ay to i64
  %.sroa.6.sroa.0.0.extract.trunc = zext i16 %i.ay to i32 ; 2 uses
  %.not8.i.i.i33 = icmp eq i16 %i.ax, 0
  br i1 %.not8.i.i.i33, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit51", label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit"
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !56, !noalias !1078 ; 3 uses
  %.not.i.i.i.i.i.i36 = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 28
  br i1 %.not.i.i.i.i.i.i36, label %.lr.ph.split.us.i.i.i49, label %.lr.ph.split.i.i.i37

.lr.ph.split.us.i.i.i49:                          ; preds = %.lr.ph.i.i.i34
  %i.bc = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i23, 1
  %i.bd = add nuw nsw i64 %i.bc, 8589934590
  %i.be = and i64 %i.bd, 8589934590
  %i.bf = getelementptr i8, ptr %i.aw, i64 %i.be
  %scevgep.i.i.i50 = getelementptr i8, ptr %i.bf, i64 2
  br label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit51"

.lr.ph.split.i.i.i37:                             ; preds = %.lr.ph.i.i.i34
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !59, !noalias !1078
  %i.bi = add nsw i32 %.sroa.6.sroa.0.0.extract.trunc, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %scevgep191 = getelementptr i8, ptr %i.bl, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47, %.lr.ph.split.i.i.i37
  %.sroa.6.sroa.0.0 = phi i32 [ %.sroa.6.sroa.0.0.extract.trunc, %.lr.ph.split.i.i.i37 ], [ %i.ck, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47 ] ; 2 uses
  %.sroa.0103.0 = phi ptr [ %i.aw, %.lr.ph.split.i.i.i37 ], [ %i.cl, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47 ] ; 3 uses
  %.val4.i.i.i38 = load i16, ptr %.sroa.0103.0, align 1, !tbaa !22, !noalias !1078
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %.val4.i.i.i38)
  %i.bn = zext i16 %i.bm to i32                   ; 3 uses
  %i.bo = mul i32 %i.bn, 506952113
  %i.bp = and i32 %i.bo, 1073741823
  %i.bq = urem i32 %i.bp, %i.bh                   ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !1078 ; 2 uses
  %i.bv = and i32 %i.bu, 2
  %.not15.i.i.i.i.i.i.i.i39 = icmp eq i32 %i.bv, 0
  br i1 %.not15.i.i.i.i.i.i.i.i39, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47, label %.lr.ph.i.i.i.i.i.i.i.i40

.lr.ph.i.i.i.i.i.i.i.i40:                         ; preds = %bb.e
  %i.bw = load i32, ptr %i.bb, align 4, !noalias !1078
  %i.bx = load i32, ptr %i.bs, align 4, !tbaa !60, !noalias !1078
  %i.by = icmp eq i32 %i.bx, %i.bn
  br i1 %i.by, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i45", label %.lr.ph.i.i.i.i.i.i.i41

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i41
  %i.bz = load i32, ptr %i.cf, align 4, !tbaa !60, !noalias !1078
  %i.ca = icmp eq i32 %i.bz, %i.bn
  br i1 %i.ca, label %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i45", label %.lr.ph.i.i.i.i.i.i.i41, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i41:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i40, %bb.f
  %.01016.i20.i.i.i.i.i.i.i42 = phi i32 [ %i.cd, %bb.f ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i40 ]
  %.017.i19.i.i.i.i.i.i.i43 = phi i32 [ %i.cb, %bb.f ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i40 ]
  %i.cb = add i32 %.017.i19.i.i.i.i.i.i.i43, 1    ; 2 uses
  %i.cc = add i32 %i.cb, %.01016.i20.i.i.i.i.i.i.i42
  %i.cd = and i32 %i.cc, %i.bw                    ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !noalias !1078 ; 2 uses
  %i.ci = and i32 %i.ch, 2
  %.not.i.i.i.i.i.i.i.i44 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i44, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47, label %bb.f, !llvm.loop !61

"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i45": ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i40
  %.lcssa17.i.i.i.i.i.i.i46 = phi i32 [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i40 ], [ %i.ch, %bb.f ]
  %i.cj = trunc i32 %.lcssa17.i.i.i.i.i.i.i46 to i1
  br i1 %i.cj, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit51", label %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47

_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47: ; preds = %.lr.ph.i.i.i.i.i.i.i41, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i45", %bb.e
  %i.ck = add i32 %.sroa.6.sroa.0.0, -1           ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0103.0, i64 2
  %.not.i.i.i48 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i48, label %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit51", label %bb.e, !llvm.loop !733

"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit51": ; preds = %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i45", %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit", %.lr.ph.split.us.i.i.i49
  %.sroa.6.sroa.0.1 = phi i32 [ 0, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit" ], [ 0, %.lr.ph.split.us.i.i.i49 ], [ %.sroa.6.sroa.0.0, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i45" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47 ] ; 2 uses
  %.sroa.0103.1 = phi ptr [ %i.aw, %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit" ], [ %scevgep.i.i.i50, %.lr.ph.split.us.i.i.i49 ], [ %.sroa.0103.0, %"_ZNK4$_23clIRPK8hb_map_tRKN2OT5IndexEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i45" ], [ %scevgep191, %_ZNR9hb_iter_tI10hb_array_tIKN2OT5IndexEERS3_EppEv.exit.i.i.i47 ]
  %.not159173 = icmp eq i32 %.sroa.6119.sroa.0.1, 0
  br i1 %.not159173, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZorI10hb_array_tIKN2OT5IndexEE24hb_filter_iter_factory_tIRPK8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_.exit51"
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
end_hunk_5
