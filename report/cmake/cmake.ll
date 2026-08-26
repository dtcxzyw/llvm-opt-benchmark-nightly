Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmake?download=true
inline.NumInlined: 11246
inline.NumDeleted: 4087
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5cmakeC2EN7cmState4RoleENS0_10TryCompileE:bb.a
  %i.ja = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %.noexc59.13 unwind label %.loopexit.split-lp301.loopexit ; 0 uses

.noexc59.13:                                      ; preds = %.noexc59.12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 224), i64 16, i1 false), !tbaa.struct !234
  %i.jb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %.noexc59.14 unwind label %.loopexit.split-lp301.loopexit ; 0 uses

.noexc59.14:                                      ; preds = %.noexc59.13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit, i64 240), i64 16, i1 false), !tbaa.struct !234
  %i.jc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %.noexc59.15 unwind label %.loopexit.split-lp301.loopexit ; 0 uses

.noexc59.15:                                      ; preds = %.noexc59.14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.jd = load ptr, ptr %i.bu, align 8, !tbaa !237 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  store ptr %i.bv, ptr %13, align 8, !tbaa !238
  %.not6.i.i.i.i = icmp eq ptr %i.jd, %i.jf
  br i1 %.not6.i.i.i.i, label %.loopexit304, label %.lr.ph.i.i.i.i

.loopexit304:                                     ; preds = %.noexc58, %.noexc59.15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !223
  %i.ji = load ptr, ptr %i.cb, align 8, !tbaa !224
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.ji to i64               ; 2 uses
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = icmp ult i64 %i.jl, 256
  br i1 %i.jm, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i175, label %.noexc68

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i175: ; preds = %.loopexit304
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 3 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !225
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = sub i64 %i.jp, %i.jk
  %i.jr = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #36
          to label %.noexc190 unwind label %.loopexit.split-lp293.loopexit.split-lp ; 4 uses

.noexc190:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i175
  %i.js = load ptr, ptr %i.cb, align 8, !tbaa !224 ; 3 uses
  %i.jt = load ptr, ptr %i.jn, align 8, !tbaa !225 ; 2 uses
  %.not10.i.i.i.i176 = icmp eq ptr %i.js, %i.jt
  br i1 %.not10.i.i.i.i176, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i187, label %.lr.ph.i.i.i.i177

.lr.ph.i.i.i.i177:                                ; preds = %.noexc190, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i183
  %.012.i.i.i.i178 = phi ptr [ %i.kh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i183 ], [ %i.jr, %.noexc190 ] ; 5 uses
  %.0911.i.i.i.i179 = phi ptr [ %i.kg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i183 ], [ %i.js, %.noexc190 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.ju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i178, i64 16 ; 3 uses
  store ptr %i.ju, ptr %.012.i.i.i.i178, align 8, !tbaa !9, !alias.scope !240, !noalias !243
  %i.jv = load ptr, ptr %.0911.i.i.i.i179, align 8, !tbaa !15, !alias.scope !243, !noalias !240 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i179, i64 16 ; 5 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i180

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i177
  %i.jy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i179, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !18, !alias.scope !243, !noalias !240 ; 3 uses
  %i.ka = icmp ult i64 %i.jz, 16
  call void @llvm.assume(i1 %i.ka)
  %i.kb = add nuw nsw i64 %i.jz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ju, ptr noundef nonnull align 8 dereferenceable(1) %i.jw, i64 %i.kb, i1 false), !alias.scope !245
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i180: ; preds = %.lr.ph.i.i.i.i177
  store ptr %i.jv, ptr %.012.i.i.i.i178, align 8, !tbaa !15, !alias.scope !240, !noalias !243
  %i.kc = load i64, ptr %i.jw, align 8, !tbaa !17, !alias.scope !243, !noalias !240
  store i64 %i.kc, ptr %i.ju, align 8, !tbaa !17, !alias.scope !240, !noalias !243
  %.phi.trans.insert.i.i.i.i.i181 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i179, i64 8
  %.pre.i.i.i.i.i182 = load i64, ptr %.phi.trans.insert.i.i.i.i.i181, align 8, !tbaa !18, !alias.scope !243, !noalias !240
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i183

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i183: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i180, %bb.ai
  %i.kd = phi i64 [ %i.jz, %bb.ai ], [ %.pre.i.i.i.i.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i180 ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i179, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i178, i64 8
  store i64 %i.kd, ptr %i.kf, align 8, !tbaa !18, !alias.scope !240, !noalias !243
  store ptr %i.jw, ptr %.0911.i.i.i.i179, align 8, !tbaa !15, !alias.scope !243, !noalias !240
  store i64 0, ptr %i.ke, align 8, !tbaa !18, !alias.scope !243, !noalias !240
  store i8 0, ptr %i.jw, align 8, !tbaa !17, !alias.scope !243, !noalias !240
  %i.kg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i179, i64 32 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i178, i64 32
  %.not.i.i.i.i184 = icmp eq ptr %i.kg, %i.jt
  br i1 %.not.i.i.i.i184, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i185, label %.lr.ph.i.i.i.i177, !llvm.loop !232

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i185: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i183
  %.pr.i186 = load ptr, ptr %i.cb, align 8, !tbaa !224
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i187

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i187: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i185, %.noexc190
  %i.ki = phi ptr [ %.pr.i186, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i185 ], [ %i.js, %.noexc190 ] ; 3 uses
  %.not.i8.i188 = icmp eq ptr %i.ki, null
  br i1 %.not.i8.i188, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i189, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i187
  %i.kj = load ptr, ptr %i.jg, align 8, !tbaa !223
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.ki to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.km) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i189

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i189: ; preds = %bb.aj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i187
  store ptr %i.jr, ptr %i.cb, align 8, !tbaa !224
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jq
  store ptr %i.kn, ptr %i.jn, align 8, !tbaa !225
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jr, i64 256
  store ptr %i.ko, ptr %i.jg, align 8, !tbaa !223
  br label %.noexc68

.noexc68:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i189, %.loopexit304
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) @constinit.56, i64 16, i1 false), !tbaa.struct !234
  %i.kp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc70 unwind label %.loopexit.split-lp293.loopexit ; 0 uses

.lr.ph.i.i.i.i65:                                 ; preds = %.noexc70.7, %.noexc69
  %.sroa.03.07.i.i.i.i66 = phi ptr [ %i.kr, %.noexc69 ], [ %i.kz, %.noexc70.7 ] ; 3 uses
  %i.kq = invoke { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRNSt7__cxx1112basic_stringIcS2_SaIcEEESM_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i66, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i66, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc69 unwind label %.loopexit292 ; 0 uses

.noexc69:                                         ; preds = %.lr.ph.i.i.i.i65
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i66, i64 32 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.kr, %i.lb
  br i1 %.not.i.i.i.i67, label %.loopexit296, label %.lr.ph.i.i.i.i65, !llvm.loop !236

.noexc70:                                         ; preds = %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.56, i64 16), i64 16, i1 false), !tbaa.struct !234
  %i.ks = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc70.1 unwind label %.loopexit.split-lp293.loopexit ; 0 uses

.noexc70.1:                                       ; preds = %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.56, i64 32), i64 16, i1 false), !tbaa.struct !234
  %i.kt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc70.2 unwind label %.loopexit.split-lp293.loopexit ; 0 uses

.noexc70.2:                                       ; preds = %.noexc70.1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.56, i64 48), i64 16, i1 false), !tbaa.struct !234
  %i.ku = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc70.3 unwind label %.loopexit.split-lp293.loopexit ; 0 uses

.noexc70.3:                                       ; preds = %.noexc70.2
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.56, i64 64), i64 16, i1 false), !tbaa.struct !234
  %i.kv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc70.4 unwind label %.loopexit.split-lp293.loopexit ; 0 uses

.noexc70.4:                                       ; preds = %.noexc70.3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.56, i64 80), i64 16, i1 false), !tbaa.struct !234
  %i.kw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc70.5 unwind label %.loopexit.split-lp293.loopexit ; 0 uses

.noexc70.5:                                       ; preds = %.noexc70.4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.56, i64 96), i64 16, i1 false), !tbaa.struct !234
  %i.kx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc70.6 unwind label %.loopexit.split-lp293.loopexit ; 0 uses

.noexc70.6:                                       ; preds = %.noexc70.5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.56, i64 112), i64 16, i1 false), !tbaa.struct !234
  %i.ky = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc70.7 unwind label %.loopexit.split-lp293.loopexit ; 0 uses

.noexc70.7:                                       ; preds = %.noexc70.6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.kz = load ptr, ptr %i.cb, align 8, !tbaa !237 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store ptr %i.cc, ptr %11, align 8, !tbaa !238
  %.not6.i.i.i.i64 = icmp eq ptr %i.kz, %i.lb
  br i1 %.not6.i.i.i.i64, label %.loopexit296, label %.lr.ph.i.i.i.i65

.loopexit296:                                     ; preds = %.noexc69, %.noexc70.7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 3 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !223 ; 2 uses
  %i.le = load ptr, ptr %i.ci, align 8, !tbaa !224
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i192, label %.noexc81

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i192: ; preds = %.loopexit296
  %i.lg = ptrtoint ptr %i.ld to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !225
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = sub i64 %i.lj, %i.lg
  %i.ll = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %.noexc207 unwind label %.loopexit.split-lp285.loopexit.split-lp ; 4 uses

.noexc207:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i192
  %i.lm = load ptr, ptr %i.ci, align 8, !tbaa !224 ; 3 uses
  %i.ln = load ptr, ptr %i.lh, align 8, !tbaa !225 ; 2 uses
  %.not10.i.i.i.i193 = icmp eq ptr %i.lm, %i.ln
  br i1 %.not10.i.i.i.i193, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i204, label %.lr.ph.i.i.i.i194

.lr.ph.i.i.i.i194:                                ; preds = %.noexc207, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i200
  %.012.i.i.i.i195 = phi ptr [ %i.mb, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i200 ], [ %i.ll, %.noexc207 ] ; 5 uses
  %.0911.i.i.i.i196 = phi ptr [ %i.ma, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i200 ], [ %i.lm, %.noexc207 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.lo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i195, i64 16 ; 3 uses
  store ptr %i.lo, ptr %.012.i.i.i.i195, align 8, !tbaa !9, !alias.scope !246, !noalias !249
  %i.lp = load ptr, ptr %.0911.i.i.i.i196, align 8, !tbaa !15, !alias.scope !249, !noalias !246 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i196, i64 16 ; 5 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i197

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i194
  %i.ls = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i196, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !18, !alias.scope !249, !noalias !246 ; 3 uses
  %i.lu = icmp ult i64 %i.lt, 16
  call void @llvm.assume(i1 %i.lu)
  %i.lv = add nuw nsw i64 %i.lt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lo, ptr noundef nonnull align 8 dereferenceable(1) %i.lq, i64 %i.lv, i1 false), !alias.scope !251
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i197: ; preds = %.lr.ph.i.i.i.i194
  store ptr %i.lp, ptr %.012.i.i.i.i195, align 8, !tbaa !15, !alias.scope !246, !noalias !249
  %i.lw = load i64, ptr %i.lq, align 8, !tbaa !17, !alias.scope !249, !noalias !246
  store i64 %i.lw, ptr %i.lo, align 8, !tbaa !17, !alias.scope !246, !noalias !249
  %.phi.trans.insert.i.i.i.i.i198 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i196, i64 8
  %.pre.i.i.i.i.i199 = load i64, ptr %.phi.trans.insert.i.i.i.i.i198, align 8, !tbaa !18, !alias.scope !249, !noalias !246
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i200

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i200: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i197, %bb.ak
  %i.lx = phi i64 [ %i.lt, %bb.ak ], [ %.pre.i.i.i.i.i199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i197 ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i196, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i195, i64 8
  store i64 %i.lx, ptr %i.lz, align 8, !tbaa !18, !alias.scope !246, !noalias !249
  store ptr %i.lq, ptr %.0911.i.i.i.i196, align 8, !tbaa !15, !alias.scope !249, !noalias !246
  store i64 0, ptr %i.ly, align 8, !tbaa !18, !alias.scope !249, !noalias !246
  store i8 0, ptr %i.lq, align 8, !tbaa !17, !alias.scope !249, !noalias !246
  %i.ma = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i196, i64 32 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i195, i64 32
  %.not.i.i.i.i201 = icmp eq ptr %i.ma, %i.ln
  br i1 %.not.i.i.i.i201, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i202, label %.lr.ph.i.i.i.i194, !llvm.loop !232

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i202: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i200
  %.pr.i203 = load ptr, ptr %i.ci, align 8, !tbaa !224
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i204

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i204: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i202, %.noexc207
  %i.mc = phi ptr [ %.pr.i203, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i202 ], [ %i.lm, %.noexc207 ] ; 3 uses
  %.not.i8.i205 = icmp eq ptr %i.mc, null
  br i1 %.not.i8.i205, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i206, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i204
  %i.md = load ptr, ptr %i.lc, align 8, !tbaa !223
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.mc to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mg) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i206

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i206: ; preds = %bb.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i204
  store ptr %i.ll, ptr %i.ci, align 8, !tbaa !224
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lk
  store ptr %i.mh, ptr %i.lh, align 8, !tbaa !225
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store ptr %i.mi, ptr %i.lc, align 8, !tbaa !223
  br label %.noexc81

.noexc80:                                         ; preds = %.noexc82, %.lr.ph.i.i.i.i77
  %.sroa.03.07.i.i.i.i78 = phi ptr [ %17, %.lr.ph.i.i.i.i77 ], [ %i.mk, %.noexc82 ] ; 3 uses
  %16 = invoke { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRNSt7__cxx1112basic_stringIcS2_SaIcEEESM_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i78, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i78, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.lr.ph.i.i.i.i77 unwind label %.loopexit284 ; 0 uses

.lr.ph.i.i.i.i77:                                 ; preds = %.noexc80
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i78, i64 32 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %17, %i.mm
  br i1 %.not.i.i.i.i79, label %.loopexit288, label %.noexc80, !llvm.loop !236

.noexc81:                                         ; preds = %.loopexit296, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i206
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store i64 2, ptr %10, align 8, !tbaa !13
  %i.mj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.38, ptr %i.mj, align 8, !tbaa !235
  %18 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc82 unwind label %.loopexit.split-lp285.loopexit ; 0 uses

.noexc82:                                         ; preds = %.noexc81
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.mk = load ptr, ptr %i.ci, align 8, !tbaa !237 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store ptr %i.cj, ptr %9, align 8, !tbaa !238
  %.not6.i.i.i.i76 = icmp eq ptr %i.mk, %i.mm
  br i1 %.not6.i.i.i.i76, label %.loopexit288, label %.noexc80

.loopexit288:                                     ; preds = %.lr.ph.i.i.i.i77, %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !223
  %i.mp = load ptr, ptr %i.cw, align 8, !tbaa !224
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = ptrtoint ptr %i.mp to i64               ; 2 uses
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = icmp ult i64 %i.ms, 224
  br i1 %i.mt, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i209, label %.noexc92

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i209: ; preds = %.loopexit288
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 3 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !225
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = sub i64 %i.mw, %i.mr
  %i.my = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #36
          to label %.noexc224 unwind label %.loopexit.split-lp277.loopexit.split-lp ; 4 uses

.noexc224:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i209
  %i.mz = load ptr, ptr %i.cw, align 8, !tbaa !224 ; 3 uses
  %i.na = load ptr, ptr %i.mu, align 8, !tbaa !225 ; 2 uses
  %.not10.i.i.i.i210 = icmp eq ptr %i.mz, %i.na
  br i1 %.not10.i.i.i.i210, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i221, label %.lr.ph.i.i.i.i211

.lr.ph.i.i.i.i211:                                ; preds = %.noexc224, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i217
  %.012.i.i.i.i212 = phi ptr [ %i.no, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i217 ], [ %i.my, %.noexc224 ] ; 5 uses
  %.0911.i.i.i.i213 = phi ptr [ %i.nn, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i217 ], [ %i.mz, %.noexc224 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.nb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i212, i64 16 ; 3 uses
  store ptr %i.nb, ptr %.012.i.i.i.i212, align 8, !tbaa !9, !alias.scope !252, !noalias !255
  %i.nc = load ptr, ptr %.0911.i.i.i.i213, align 8, !tbaa !15, !alias.scope !255, !noalias !252 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i213, i64 16 ; 5 uses
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i214

bb.am:                                            ; preds = %.lr.ph.i.i.i.i211
  %i.nf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i213, i64 8
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !18, !alias.scope !255, !noalias !252 ; 3 uses
  %i.nh = icmp ult i64 %i.ng, 16
  call void @llvm.assume(i1 %i.nh)
  %i.ni = add nuw nsw i64 %i.ng, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nb, ptr noundef nonnull align 8 dereferenceable(1) %i.nd, i64 %i.ni, i1 false), !alias.scope !257
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i214: ; preds = %.lr.ph.i.i.i.i211
  store ptr %i.nc, ptr %.012.i.i.i.i212, align 8, !tbaa !15, !alias.scope !252, !noalias !255
  %i.nj = load i64, ptr %i.nd, align 8, !tbaa !17, !alias.scope !255, !noalias !252
  store i64 %i.nj, ptr %i.nb, align 8, !tbaa !17, !alias.scope !252, !noalias !255
  %.phi.trans.insert.i.i.i.i.i215 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i213, i64 8
  %.pre.i.i.i.i.i216 = load i64, ptr %.phi.trans.insert.i.i.i.i.i215, align 8, !tbaa !18, !alias.scope !255, !noalias !252
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i217

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i217: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i214, %bb.am
  %i.nk = phi i64 [ %i.ng, %bb.am ], [ %.pre.i.i.i.i.i216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i214 ]
  %i.nl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i213, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i212, i64 8
  store i64 %i.nk, ptr %i.nm, align 8, !tbaa !18, !alias.scope !252, !noalias !255
  store ptr %i.nd, ptr %.0911.i.i.i.i213, align 8, !tbaa !15, !alias.scope !255, !noalias !252
  store i64 0, ptr %i.nl, align 8, !tbaa !18, !alias.scope !255, !noalias !252
  store i8 0, ptr %i.nd, align 8, !tbaa !17, !alias.scope !255, !noalias !252
  %i.nn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i213, i64 32 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i212, i64 32
  %.not.i.i.i.i218 = icmp eq ptr %i.nn, %i.na
  br i1 %.not.i.i.i.i218, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i219, label %.lr.ph.i.i.i.i211, !llvm.loop !232

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i219: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i217
  %.pr.i220 = load ptr, ptr %i.cw, align 8, !tbaa !224
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i221

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i221: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i219, %.noexc224
  %i.np = phi ptr [ %.pr.i220, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i219 ], [ %i.mz, %.noexc224 ] ; 3 uses
  %.not.i8.i222 = icmp eq ptr %i.np, null
  br i1 %.not.i8.i222, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i223, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i221
  %i.nq = load ptr, ptr %i.mn, align 8, !tbaa !223
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = ptrtoint ptr %i.np to i64
  %i.nt = sub i64 %i.nr, %i.ns
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.nt) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i223

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i223: ; preds = %bb.an, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i221
  store ptr %i.my, ptr %i.cw, align 8, !tbaa !224
  %i.nu = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mx
  store ptr %i.nu, ptr %i.mu, align 8, !tbaa !225
  %i.nv = getelementptr inbounds nuw i8, ptr %i.my, i64 224
  store ptr %i.nv, ptr %i.mn, align 8, !tbaa !223
  br label %.noexc92

.noexc92:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i223, %.loopexit288
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @constinit.64, i64 16, i1 false), !tbaa.struct !234
  %i.nw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc94 unwind label %.loopexit.split-lp277.loopexit ; 0 uses

.lr.ph.i.i.i.i89:                                 ; preds = %.noexc94.6, %.noexc93
  %.sroa.03.07.i.i.i.i90 = phi ptr [ %i.ny, %.noexc93 ], [ %i.of, %.noexc94.6 ] ; 3 uses
  %i.nx = invoke { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRNSt7__cxx1112basic_stringIcS2_SaIcEEESM_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i90, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i90, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc93 unwind label %.loopexit276 ; 0 uses

.noexc93:                                         ; preds = %.lr.ph.i.i.i.i89
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i90, i64 32 ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.ny, %i.oh
  br i1 %.not.i.i.i.i91, label %.loopexit280, label %.lr.ph.i.i.i.i89, !llvm.loop !236

.noexc94:                                         ; preds = %.noexc92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.64, i64 16), i64 16, i1 false), !tbaa.struct !234
  %i.nz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc94.1 unwind label %.loopexit.split-lp277.loopexit ; 0 uses

.noexc94.1:                                       ; preds = %.noexc94
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.64, i64 32), i64 16, i1 false), !tbaa.struct !234
  %i.oa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc94.2 unwind label %.loopexit.split-lp277.loopexit ; 0 uses

.noexc94.2:                                       ; preds = %.noexc94.1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.64, i64 48), i64 16, i1 false), !tbaa.struct !234
  %i.ob = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc94.3 unwind label %.loopexit.split-lp277.loopexit ; 0 uses

.noexc94.3:                                       ; preds = %.noexc94.2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.64, i64 64), i64 16, i1 false), !tbaa.struct !234
  %i.oc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc94.4 unwind label %.loopexit.split-lp277.loopexit ; 0 uses

.noexc94.4:                                       ; preds = %.noexc94.3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.64, i64 80), i64 16, i1 false), !tbaa.struct !234
  %i.od = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc94.5 unwind label %.loopexit.split-lp277.loopexit ; 0 uses

.noexc94.5:                                       ; preds = %.noexc94.4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @constinit.64, i64 96), i64 16, i1 false), !tbaa.struct !234
  %i.oe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc94.6 unwind label %.loopexit.split-lp277.loopexit ; 0 uses

.noexc94.6:                                       ; preds = %.noexc94.5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.of = load ptr, ptr %i.cw, align 8, !tbaa !237 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store ptr %i.cx, ptr %7, align 8, !tbaa !238
  %.not6.i.i.i.i88 = icmp eq ptr %i.of, %i.oh
  br i1 %.not6.i.i.i.i88, label %.loopexit280, label %.lr.ph.i.i.i.i89

.loopexit280:                                     ; preds = %.noexc93, %.noexc94.6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 3 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !223 ; 2 uses
  %i.ok = load ptr, ptr %i.dd, align 8, !tbaa !224
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i226, label %.noexc105

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i226: ; preds = %.loopexit280
  %i.om = ptrtoint ptr %i.oj to i64
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 3 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !225
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = sub i64 %i.op, %i.om
  %i.or = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %.noexc241 unwind label %.loopexit.split-lp269.loopexit.split-lp ; 4 uses

.noexc241:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i226
  %i.os = load ptr, ptr %i.dd, align 8, !tbaa !224 ; 3 uses
  %i.ot = load ptr, ptr %i.on, align 8, !tbaa !225 ; 2 uses
  %.not10.i.i.i.i227 = icmp eq ptr %i.os, %i.ot
  br i1 %.not10.i.i.i.i227, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i238, label %.lr.ph.i.i.i.i228

.lr.ph.i.i.i.i228:                                ; preds = %.noexc241, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i234
  %.012.i.i.i.i229 = phi ptr [ %i.ph, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i234 ], [ %i.or, %.noexc241 ] ; 5 uses
  %.0911.i.i.i.i230 = phi ptr [ %i.pg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i234 ], [ %i.os, %.noexc241 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ou = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i229, i64 16 ; 3 uses
  store ptr %i.ou, ptr %.012.i.i.i.i229, align 8, !tbaa !9, !alias.scope !258, !noalias !261
  %i.ov = load ptr, ptr %.0911.i.i.i.i230, align 8, !tbaa !15, !alias.scope !261, !noalias !258 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i230, i64 16 ; 5 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i231

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i228
  %i.oy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i230, i64 8
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !18, !alias.scope !261, !noalias !258 ; 3 uses
  %i.pa = icmp ult i64 %i.oz, 16
  call void @llvm.assume(i1 %i.pa)
  %i.pb = add nuw nsw i64 %i.oz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ou, ptr noundef nonnull align 8 dereferenceable(1) %i.ow, i64 %i.pb, i1 false), !alias.scope !263
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i231: ; preds = %.lr.ph.i.i.i.i228
  store ptr %i.ov, ptr %.012.i.i.i.i229, align 8, !tbaa !15, !alias.scope !258, !noalias !261
  %i.pc = load i64, ptr %i.ow, align 8, !tbaa !17, !alias.scope !261, !noalias !258
  store i64 %i.pc, ptr %i.ou, align 8, !tbaa !17, !alias.scope !258, !noalias !261
  %.phi.trans.insert.i.i.i.i.i232 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i230, i64 8
  %.pre.i.i.i.i.i233 = load i64, ptr %.phi.trans.insert.i.i.i.i.i232, align 8, !tbaa !18, !alias.scope !261, !noalias !258
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i234

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i234: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i231, %bb.ao
  %i.pd = phi i64 [ %i.oz, %bb.ao ], [ %.pre.i.i.i.i.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i231 ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i230, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i229, i64 8
  store i64 %i.pd, ptr %i.pf, align 8, !tbaa !18, !alias.scope !258, !noalias !261
  store ptr %i.ow, ptr %.0911.i.i.i.i230, align 8, !tbaa !15, !alias.scope !261, !noalias !258
  store i64 0, ptr %i.pe, align 8, !tbaa !18, !alias.scope !261, !noalias !258
  store i8 0, ptr %i.ow, align 8, !tbaa !17, !alias.scope !261, !noalias !258
  %i.pg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i230, i64 32 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i229, i64 32
  %.not.i.i.i.i235 = icmp eq ptr %i.pg, %i.ot
  br i1 %.not.i.i.i.i235, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i236, label %.lr.ph.i.i.i.i228, !llvm.loop !232

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i236: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i234
  %.pr.i237 = load ptr, ptr %i.dd, align 8, !tbaa !224
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i238

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i238: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i236, %.noexc241
  %i.pi = phi ptr [ %.pr.i237, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i236 ], [ %i.os, %.noexc241 ] ; 3 uses
  %.not.i8.i239 = icmp eq ptr %i.pi, null
  br i1 %.not.i8.i239, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i240, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i238
  %i.pj = load ptr, ptr %i.oi, align 8, !tbaa !223
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.pi to i64
  %i.pm = sub i64 %i.pk, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %i.pi, i64 noundef %i.pm) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i240

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i240: ; preds = %bb.ap, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i238
  store ptr %i.or, ptr %i.dd, align 8, !tbaa !224
  %i.pn = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.oq
  store ptr %i.pn, ptr %i.on, align 8, !tbaa !225
  %i.po = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  store ptr %i.po, ptr %i.oi, align 8, !tbaa !223
  br label %.noexc105

.noexc104:                                        ; preds = %.noexc106, %.lr.ph.i.i.i.i101
  %.sroa.03.07.i.i.i.i102 = phi ptr [ %20, %.lr.ph.i.i.i.i101 ], [ %i.pq, %.noexc106 ] ; 3 uses
  %19 = invoke { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRNSt7__cxx1112basic_stringIcS2_SaIcEEESM_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i102, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i102, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.lr.ph.i.i.i.i101 unwind label %.loopexit268 ; 0 uses

.lr.ph.i.i.i.i101:                                ; preds = %.noexc104
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i102, i64 32 ; 2 uses
  %.not.i.i.i.i103 = icmp eq ptr %20, %i.ps
  br i1 %.not.i.i.i.i103, label %.loopexit272, label %.noexc104, !llvm.loop !236

.noexc105:                                        ; preds = %.loopexit280, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i240
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i64 3, ptr %6, align 8, !tbaa !13
  %i.pp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.65, ptr %i.pp, align 8, !tbaa !235
  %21 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc106 unwind label %.loopexit.split-lp269.loopexit ; 0 uses

.noexc106:                                        ; preds = %.noexc105
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.pq = load ptr, ptr %i.dd, align 8, !tbaa !237 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %i.de, ptr %5, align 8, !tbaa !238
  %.not6.i.i.i.i100 = icmp eq ptr %i.pq, %i.ps
  br i1 %.not6.i.i.i.i100, label %.loopexit272, label %.noexc104

.loopexit272:                                     ; preds = %.lr.ph.i.i.i.i101, %.noexc106
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 3 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !223 ; 2 uses
  %i.pv = load ptr, ptr %i.cp, align 8, !tbaa !224
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i243, label %.noexc117

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i243: ; preds = %.loopexit272
  %i.px = ptrtoint ptr %i.pu to i64
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !225
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = sub i64 %i.qa, %i.px
  %i.qc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc258:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i243
  %i.qd = load ptr, ptr %i.cp, align 8, !tbaa !224 ; 3 uses
  %i.qe = load ptr, ptr %i.py, align 8, !tbaa !225 ; 2 uses
  %.not10.i.i.i.i244 = icmp eq ptr %i.qd, %i.qe
  br i1 %.not10.i.i.i.i244, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i255, label %.lr.ph.i.i.i.i245

.lr.ph.i.i.i.i245:                                ; preds = %.noexc258, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i251
  %.012.i.i.i.i246 = phi ptr [ %i.qs, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i251 ], [ %i.qc, %.noexc258 ] ; 5 uses
  %.0911.i.i.i.i247 = phi ptr [ %i.qr, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i251 ], [ %i.qd, %.noexc258 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.qf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i246, i64 16 ; 3 uses
  store ptr %i.qf, ptr %.012.i.i.i.i246, align 8, !tbaa !9, !alias.scope !264, !noalias !267
  %i.qg = load ptr, ptr %.0911.i.i.i.i247, align 8, !tbaa !15, !alias.scope !267, !noalias !264 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i247, i64 16 ; 5 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i248

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i245
  %i.qj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i247, i64 8
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !18, !alias.scope !267, !noalias !264 ; 3 uses
  %i.ql = icmp ult i64 %i.qk, 16
  call void @llvm.assume(i1 %i.ql)
  %i.qm = add nuw nsw i64 %i.qk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qf, ptr noundef nonnull align 8 dereferenceable(1) %i.qh, i64 %i.qm, i1 false), !alias.scope !269
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i248: ; preds = %.lr.ph.i.i.i.i245
  store ptr %i.qg, ptr %.012.i.i.i.i246, align 8, !tbaa !15, !alias.scope !264, !noalias !267
  %i.qn = load i64, ptr %i.qh, align 8, !tbaa !17, !alias.scope !267, !noalias !264
  store i64 %i.qn, ptr %i.qf, align 8, !tbaa !17, !alias.scope !264, !noalias !267
  %.phi.trans.insert.i.i.i.i.i249 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i247, i64 8
  %.pre.i.i.i.i.i250 = load i64, ptr %.phi.trans.insert.i.i.i.i.i249, align 8, !tbaa !18, !alias.scope !267, !noalias !264
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i251

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i251: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i248, %bb.aq
  %i.qo = phi i64 [ %i.qk, %bb.aq ], [ %.pre.i.i.i.i.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i248 ]
  %i.qp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i247, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i246, i64 8
  store i64 %i.qo, ptr %i.qq, align 8, !tbaa !18, !alias.scope !264, !noalias !267
  store ptr %i.qh, ptr %.0911.i.i.i.i247, align 8, !tbaa !15, !alias.scope !267, !noalias !264
  store i64 0, ptr %i.qp, align 8, !tbaa !18, !alias.scope !267, !noalias !264
  store i8 0, ptr %i.qh, align 8, !tbaa !17, !alias.scope !267, !noalias !264
  %i.qr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i247, i64 32 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i246, i64 32
  %.not.i.i.i.i252 = icmp eq ptr %i.qr, %i.qe
  br i1 %.not.i.i.i.i252, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i253, label %.lr.ph.i.i.i.i245, !llvm.loop !232

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i253: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i251
  %.pr.i254 = load ptr, ptr %i.cp, align 8, !tbaa !224
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i255

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i255: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i253, %.noexc258
  %i.qt = phi ptr [ %.pr.i254, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i253 ], [ %i.qd, %.noexc258 ] ; 3 uses
  %.not.i8.i256 = icmp eq ptr %i.qt, null
  br i1 %.not.i8.i256, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i257, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i255
  %i.qu = load ptr, ptr %i.pt, align 8, !tbaa !223
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %i.qt to i64
  %i.qx = sub i64 %i.qv, %i.qw
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef %i.qx) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i257

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i257: ; preds = %bb.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i255
  store ptr %i.qc, ptr %i.cp, align 8, !tbaa !224
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.qb
  store ptr %i.qy, ptr %i.py, align 8, !tbaa !225
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  store ptr %i.qz, ptr %i.pt, align 8, !tbaa !223
  br label %.noexc117

.noexc116:                                        ; preds = %.noexc118, %.lr.ph.i.i.i.i113
  %.sroa.03.07.i.i.i.i114 = phi ptr [ %23, %.lr.ph.i.i.i.i113 ], [ %i.rb, %.noexc118 ] ; 3 uses
  %22 = invoke { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRNSt7__cxx1112basic_stringIcS2_SaIcEEESM_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i114, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i.i.i114, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.lr.ph.i.i.i.i113 unwind label %.loopexit ; 0 uses

.lr.ph.i.i.i.i113:                                ; preds = %.noexc116
  %23 = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i114, i64 32 ; 2 uses
  %.not.i.i.i.i115 = icmp eq ptr %23, %i.rd
  br i1 %.not.i.i.i.i115, label %.loopexit264, label %.noexc116, !llvm.loop !236

.noexc117:                                        ; preds = %.loopexit272, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i257
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i64 4, ptr %4, align 8, !tbaa !13
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.66, ptr %i.ra, align 8, !tbaa !235
  %24 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc118:                                        ; preds = %.noexc117
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.rb = load ptr, ptr %i.cp, align 8, !tbaa !237 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.cq, ptr %3, align 8, !tbaa !238
  %.not6.i.i.i.i112 = icmp eq ptr %i.rb, %i.rd
  br i1 %.not6.i.i.i.i112, label %.loopexit264, label %.noexc116

.loopexit264:                                     ; preds = %.lr.ph.i.i.i.i113, %.noexc118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

.loopexit300:                                     ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit302 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp301.loopexit:                   ; preds = %.noexc59.14, %.noexc59.13, %.noexc59.12, %.noexc59.11, %.noexc59.10, %.noexc59.9, %.noexc59.8, %.noexc59.7, %.noexc59.6, %.noexc59.5, %.noexc59.4, %.noexc59.3, %.noexc59.2, %.noexc59.1, %.noexc59, %.noexc57
  %lpad.loopexit305 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp301.loopexit.split-lp:          ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp306 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit292:                                     ; preds = %.lr.ph.i.i.i.i65
  %lpad.loopexit294 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp293.loopexit:                   ; preds = %.noexc70.6, %.noexc70.5, %.noexc70.4, %.noexc70.3, %.noexc70.2, %.noexc70.1, %.noexc70, %.noexc68
  %lpad.loopexit297 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp293.loopexit.split-lp:          ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i175
  %lpad.loopexit.split-lp298 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit284:                                     ; preds = %.noexc80
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp285.loopexit:                   ; preds = %.noexc81
  %lpad.loopexit289 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp285.loopexit.split-lp:          ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i192
  %lpad.loopexit.split-lp290 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit276:                                     ; preds = %.lr.ph.i.i.i.i89
  %lpad.loopexit278 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp277.loopexit:                   ; preds = %.noexc94.5, %.noexc94.4, %.noexc94.3, %.noexc94.2, %.noexc94.1, %.noexc94, %.noexc92
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp277.loopexit.split-lp:          ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i209
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit268:                                     ; preds = %.noexc104
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp269.loopexit:                   ; preds = %.noexc105
  %lpad.loopexit273 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp269.loopexit.split-lp:          ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i226
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit:                                        ; preds = %.noexc116
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp.loopexit:                      ; preds = %.noexc117
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i243
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp301

.loopexit.split-lp301:                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit268, %.loopexit.split-lp269.loopexit.split-lp, %.loopexit.split-lp269.loopexit, %.loopexit284, %.loopexit.split-lp285.loopexit.split-lp, %.loopexit.split-lp285.loopexit, %.loopexit276, %.loopexit.split-lp277.loopexit.split-lp, %.loopexit.split-lp277.loopexit, %.loopexit292, %.loopexit.split-lp293.loopexit.split-lp, %.loopexit.split-lp293.loopexit, %.loopexit300, %.loopexit.split-lp301.loopexit.split-lp, %.loopexit.split-lp301.loopexit, %bb.ab, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.ab ], [ %i.gy, %bb.aa ], [ %lpad.loopexit.split-lp274, %.loopexit.split-lp269.loopexit.split-lp ], [ %lpad.loopexit.split-lp290, %.loopexit.split-lp285.loopexit.split-lp ], [ %lpad.loopexit.split-lp298, %.loopexit.split-lp293.loopexit.split-lp ], [ %lpad.loopexit.split-lp282, %.loopexit.split-lp277.loopexit.split-lp ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp301.loopexit.split-lp ], [ %lpad.loopexit302, %.loopexit300 ], [ %lpad.loopexit305, %.loopexit.split-lp301.loopexit ], [ %lpad.loopexit294, %.loopexit292 ], [ %lpad.loopexit297, %.loopexit.split-lp293.loopexit ], [ %lpad.loopexit278, %.loopexit276 ], [ %lpad.loopexit281, %.loopexit.split-lp277.loopexit ], [ %lpad.loopexit286, %.loopexit284 ], [ %lpad.loopexit289, %.loopexit.split-lp285.loopexit ], [ %lpad.loopexit270, %.loopexit268 ], [ %lpad.loopexit273, %.loopexit.split-lp269.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit265, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.re = load ptr, ptr %i.ga, align 8, !tbaa !15 ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.gb
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp301
  %i.rg = load i64, ptr %i.gb, align 8, !tbaa !17
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.rh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ri = load ptr, ptr %i.fx, align 8, !tbaa !15 ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.fy
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.rk = load i64, ptr %i.fy, align 8, !tbaa !17
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @_ZNSt12__shared_ptrIN10cmDebugger17cmDebuggerAdapterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fw) #34
  call void @_ZNSt10unique_ptrI23cmMakefileProfilingDataSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fv) #34
  %i.rm = load ptr, ptr %i.fu, align 8, !tbaa !270 ; 3 uses
  %.not.i123 = icmp eq ptr %i.rm, null
  br i1 %.not.i123, label %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI17cmGlobalGeneratorEclEPS0_.exit.i

_ZNKSt14default_deleteI17cmGlobalGeneratorEclEPS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !212
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(2202) %i.rm) #34, !inline_history !271
  br label %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt14default_deleteI17cmGlobalGeneratorEclEPS0_.exit.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ft) #34
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.fk) #34
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.fe) #34
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fd) #34
  %i.rq = load ptr, ptr %i.fa, align 8, !tbaa !15 ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.fb
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit
  %i.rs = load i64, ptr %i.fb, align 8, !tbaa !17
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  %i.ru = load ptr, ptr %i.ez, align 8, !tbaa !272 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5cmake20DiagnosticAlterationESaIS1_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !273
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = ptrtoint ptr %i.ru to i64
  %i.rz = sub i64 %i.rx, %i.ry
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef %i.rz) #35
  br label %_ZNSt6vectorIN5cmake20DiagnosticAlterationESaIS1_EED2Ev.exit

_ZNSt6vectorIN5cmake20DiagnosticAlterationESaIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %bb.as
  %i.sa = load ptr, ptr %i.eu, align 8, !tbaa !207 ; 2 uses
  %.not.i127 = icmp eq ptr %i.sa, null
  br i1 %.not.i127, label %.body50, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN5cmake20DiagnosticAlterationESaIS1_EED2Ev.exit
  call void @_ZNKSt14default_deleteI11cmMessengerEclEPS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull %i.sa)
  br label %.body50

.body50:                                          ; preds = %bb.at, %_ZNSt6vectorIN5cmake20DiagnosticAlterationESaIS1_EED2Ev.exit, %bb.z, %.body.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ex, %.body.i ], [ %i.gx, %bb.z ], [ %.pn.pn, %_ZNSt6vectorIN5cmake20DiagnosticAlterationESaIS1_EED2Ev.exit ], [ %.pn.pn, %bb.at ]
  call void @_ZNSt10unique_ptrI7cmStateSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eq) #34
  br label %.body47

.body47:                                          ; preds = %bb.y, %bb.k, %.body50
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body50 ], [ %i.gw, %bb.y ], [ %i.es, %bb.k ]
  call void @_ZNSt10unique_ptrI17cmInstrumentationSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ep) #34
  call void @_ZNSt10unique_ptrI9cmFileAPISt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eo) #34
  call void @_ZNSt10unique_ptrI15cmVariableWatchSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.el) #34
  br label %.body44

.body44:                                          ; preds = %bb.x, %bb.i, %.body47
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body47 ], [ %i.gv, %bb.x ], [ %i.en, %bb.i ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS5_ESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ef) #34
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.dz) #34
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE15cmInstalledFileSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.dt) #34
  %i.sb = load ptr, ptr %i.dq, align 8, !tbaa !15 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.dr
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %.body44
  %i.sd = load i64, ptr %i.dr, align 8, !tbaa !17
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.se) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %.body44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @_ZNSt10unique_ptrI15cmFileTimeCacheSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dn) #34
  br label %.body

.body:                                            ; preds = %bb.w, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %i.gu, %bb.w ], [ %i.dp, %bb.g ]
  %i.sf = load ptr, ptr %i.dk, align 8, !tbaa !15 ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.dl
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %.body
  %i.sh = load i64, ptr %i.dl, align 8, !tbaa !17
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.si) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @_ZN5cmake14FileExtensionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dd) #34
  call void @_ZN5cmake14FileExtensionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cw) #34
  call void @_ZN5cmake14FileExtensionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cp) #34
  call void @_ZN5cmake14FileExtensionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ci) #34
  call void @_ZN5cmake14FileExtensionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cb) #34
  call void @_ZN5cmake14FileExtensionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bu) #34
  %i.sj = load ptr, ptr %i.br, align 8, !tbaa !15 ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.bs
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.sl = load i64, ptr %i.bs, align 8, !tbaa !17
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  %i.sn = load ptr, ptr %i.bo, align 8, !tbaa !15 ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.bp
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.sp = load i64, ptr %i.bp, align 8, !tbaa !17
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.sr = load ptr, ptr %i.bl, align 8, !tbaa !15 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.bm
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.st = load i64, ptr %i.bm, align 8, !tbaa !17
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  %i.sv = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.bj
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.sx = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  %i.sz = load ptr, ptr %i.bf, align 8, !tbaa !15 ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.bg
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.tb = load i64, ptr %i.bg, align 8, !tbaa !17
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.td = load ptr, ptr %i.bc, align 8, !tbaa !15 ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.bd
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.tf = load i64, ptr %i.bd, align 8, !tbaa !17
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
end_hunk_0
