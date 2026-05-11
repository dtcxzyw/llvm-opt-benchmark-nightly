inline.NumInlined: 4181
inline.NumDeleted: 1184
begin_hunk_0_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::vector.16", align 8    ; 33 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ag, %.lr.ph.i
  %29 = phi ptr [ null, %.lr.ph.i ], [ %35, %bb.ag ] ; 16 uses
  %30 = phi ptr [ null, %.lr.ph.i ], [ %36, %bb.ag ] ; 15 uses
  %31 = phi ptr [ null, %.lr.ph.i ], [ %37, %bb.ag ] ; 16 uses
  %.sroa.07.021.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.fj, %bb.ag ] ; 9 uses
  %i.n = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  store ptr %31, ptr %i.l, align 8
  store ptr %30, ptr %i.m, align 8
  store ptr %29, ptr %7, align 8
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T) #29
  br label %.body

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !98 ; 3 uses
  %i.ae = and i32 %i.ad, 16
  %.not10.i = icmp eq i32 %i.ae, 0
  br i1 %.not10.i, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread42.i
  %i.cq = phi i64 [ %i.aq, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread42.i ], [ %.pr.i, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i ] ; 8 uses
  %.not.i21.i = icmp eq ptr %31, %30
  br i1 %.not.i21.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.u, ptr %31, align 8, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 5 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !70
  %i.ct = load ptr, ptr %6, align 8, !tbaa !83    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit.i.i: ; preds = %bb.u, %bb.t
  %i.cz = phi ptr [ %.pre298, %bb.u ], [ %i.cs, %bb.t ]
  %i.da = phi i64 [ %.pre, %bb.u ], [ 1, %bb.t ]  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 %i.da, ptr %i.db, align 8, !tbaa !72
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da
  store i8 0, ptr %i.dc, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.dd = getelementptr inbounds nuw i8, ptr %31, i64 40
  br label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12emplace_backIJRS6_RSC_EEERSD_DpOT_.exit.i

bb.v:                                             ; preds = %bb.r
  %.val27.i.i.i = load ptr, ptr %6, align 8       ; 2 uses
  %i.de = ptrtoint ptr %30 to i64
  %i.df = ptrtoint ptr %29 to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 4 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.w, label %_ZNKSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  store ptr %31, ptr %i.l, align 8
  store ptr %30, ptr %i.m, align 8
  store ptr %29, ptr %7, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.242) #30
          to label %.noexc22.i unwind label %.loopexit.split-lp.i

end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a

_ZNKSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.di = sdiv exact i64 %i.dg, 40                ; 3 uses
  %i.dj = icmp eq ptr %30, %29                    ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.dj, i64 1, i64 %i.di
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.di
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a

.noexc23.i:                                       ; preds = %_ZNKSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dg ; 4 uses
  store ptr %i.u, ptr %i.dq, align 8, !tbaa !113
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 5 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !70
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  br i1 %cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dw = load i8, ptr %.val27.i.i.i, align 1, !tbaa !74
  store i8 %i.dw, ptr %i.ds, align 1, !tbaa !74
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.thread.i
  %i.dx = phi ptr [ %i.du, %._crit_edge.i.i.i.i.i.thread.i ], [ %i.ds, %._crit_edge.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val27.i.i.i, i64 %i.cq, i1 false)
  %.pre299 = load i64, ptr %i.c, align 8, !tbaa !64
  %.pre300 = load ptr, ptr %i.dr, align 8, !tbaa !83
  br label %bb.z
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.es, %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.dp, %bb.z ] ; 5 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.er, %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %29, %bb.z ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.ec = load ptr, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !113, !alias.scope !119, !noalias !116
  store ptr %i.ec, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !113, !alias.scope !116, !noalias !119
  %i.ed = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !70, !alias.scope !116, !noalias !119
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !83, !alias.scope !119, !noalias !116 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 5 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !72, !alias.scope !119, !noalias !116 ; 3 uses
  %i.el = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.el)
  %i.em = add nuw nsw i64 %i.ek, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ef, ptr noundef nonnull align 8 dereferenceable(1) %i.eh, i64 %i.em, i1 false), !alias.scope !121
  br label %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !83, !alias.scope !116, !noalias !119
  %i.en = load i64, ptr %i.eh, align 8, !tbaa !74, !alias.scope !119, !noalias !116
  store i64 %i.en, ptr %i.ef, align 8, !tbaa !74, !alias.scope !116, !noalias !119
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !72, !alias.scope !119, !noalias !116
  br label %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.aa
  %i.eo = phi i64 [ %i.ek, %bb.aa ], [ %.pre.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16
  store i64 %i.eo, ptr %i.eq, align 8, !tbaa !72, !alias.scope !116, !noalias !119
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !83, !alias.scope !119, !noalias !116
  store i64 0, ptr %i.ep, align 8, !tbaa !72, !alias.scope !119, !noalias !116
  store i8 0, ptr %i.eh, align 8, !tbaa !74, !alias.scope !119, !noalias !116
  %i.er = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.er, %30
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i: ; preds = %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i, %bb.z
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dp, %bb.z ], [ %i.es, %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40
  %.not.i43.i.i.i = icmp eq ptr %29, null
  br i1 %.not.i43.i.i.i, label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %29, i64 noundef %i.dg) #31
  br label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

bb.ac:                                            ; preds = %bb.ad
end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
bb.ad:                                            ; preds = %.noexc.i.i.i.i.i
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  store ptr %31, ptr %i.l, align 8
  store ptr %30, ptr %i.m, align 8
  store ptr %29, ptr %7, align 8
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  %i.ex = call ptr @__cxa_begin_catch(ptr %i.ew) #29 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.do) #31
end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  unreachable

_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.ab, %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %i.dp, i64 %i.dn
  br label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12emplace_backIJRS6_RSC_EEERSD_DpOT_.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %31, ptr %i.l, align 8
  store ptr %30, ptr %i.m, align 8
  store ptr %29, ptr %7, align 8
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.w
end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  br label %.body

_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12emplace_backIJRS6_RSC_EEERSD_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit.i.i, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread.i
  %32 = phi ptr [ %i.dp, %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %29, %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit.i.i ], [ %29, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i ], [ %29, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread.i ]
  %33 = phi ptr [ %i.fa, %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %30, %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit.i.i ], [ %30, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i ], [ %30, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread.i ]
  %34 = phi ptr [ %i.et, %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %i.dd, %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit.i.i ], [ %31, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i ], [ %31, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread.i ]
  %i.ff = load ptr, ptr %6, align 8, !tbaa !83    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.j
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i
end_hunk_12
begin_hunk_13_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, %.noexc78, %.noexc
  %35 = phi ptr [ %32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i ], [ %29, %.noexc78 ], [ %29, %.noexc ] ; 2 uses
  %36 = phi ptr [ %33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i ], [ %30, %.noexc78 ], [ %30, %.noexc ] ; 2 uses
  %37 = phi ptr [ %34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i ], [ %31, %.noexc78 ], [ %31, %.noexc ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i, i64 40 ; 2 uses
  %.not12.i = icmp eq ptr %i.fj, %.val77
  br i1 %.not12.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.k, %bb.ag
  %38 = phi ptr [ %29, %bb.k ], [ %35, %bb.ag ]
  %39 = phi ptr [ %30, %bb.k ], [ %36, %bb.ag ]
  %40 = phi ptr [ %31, %bb.k ], [ %37, %bb.ag ]
  store ptr %40, ptr %i.l, align 8
  store ptr %39, ptr %i.m, align 8
  store ptr %38, ptr %7, align 8
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
end_hunk_13
begin_hunk_14_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.nu = load ptr, ptr %25, align 8, !tbaa !83, !noalias !123
  %i.nv = load i64, ptr %i.nn, align 8, !tbaa !72, !noalias !123 ; 3 uses
  %i.nw = load ptr, ptr %0, align 8, !tbaa !83, !noalias !123
  %i.nx = load i64, ptr %i.fl, align 8, !tbaa !72, !noalias !123 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.ny, ptr %28, align 8, !tbaa !70, !alias.scope !126
  %i.nz = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  store i64 0, ptr %i.nz, align 8, !tbaa !72, !alias.scope !126
  store i8 0, ptr %i.ny, align 8, !tbaa !74, !alias.scope !126
  %i.oa = add i64 %i.nx, %i.nv
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef %i.oa)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %.noexc200
  %i.ob = load i64, ptr %i.nz, align 8, !tbaa !72, !alias.scope !126
  %i.oc = sub i64 4611686018427387903, %i.ob
  %i.od = icmp ult i64 %i.oc, %i.nv
  br i1 %i.od, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
end_hunk_14
begin_hunk_15_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.bq ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.of = load i64, ptr %i.nz, align 8, !tbaa !72, !alias.scope !126
  %i.og = sub i64 4611686018427387903, %i.of
  %i.oh = icmp ult i64 %i.og, %i.nx
  br i1 %i.oh, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
end_hunk_15
begin_hunk_16_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.noexc200
  %i.oj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ok = load ptr, ptr %28, align 8, !tbaa !83, !alias.scope !126 ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.ny
  br i1 %i.ol, label %.body203, label %.body203.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.om = load i64, ptr %i.ns, align 8, !tbaa !72, !noalias !129 ; 2 uses
  %i.on = load i64, ptr %i.nz, align 8, !tbaa !72, !noalias !129
  %i.oo = sub i64 4611686018427387903, %i.on
  %i.op = icmp ult i64 %i.oo, %i.om
  br i1 %i.op, label %bb.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i205
end_hunk_16
begin_hunk_17_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i205: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.oq = load ptr, ptr %26, align 8, !tbaa !83, !noalias !129
  %i.or = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %i.oq, i64 noundef %i.om)
          to label %.noexc208 unwind label %bb.dl ; 6 uses

.noexc208:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i205
  %i.os = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 9 uses
  store ptr %i.os, ptr %27, align 8, !tbaa !70, !alias.scope !129
  %i.ot = load ptr, ptr %i.or, align 8, !tbaa !83 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 16 ; 5 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
end_hunk_17
begin_hunk_18_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  br label %bb.bt

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %.noexc208
  store ptr %i.ot, ptr %27, align 8, !tbaa !83, !alias.scope !129
  %i.pa = load i64, ptr %i.ou, align 8, !tbaa !74
  store i64 %i.pa, ptr %i.os, align 8, !tbaa !74, !alias.scope !129
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !72
  br label %bb.bt
end_hunk_18
begin_hunk_19_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  %i.pb = phi i64 [ %i.ox, %bb.bs ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ]
  %i.pc = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  store i64 %i.pb, ptr %i.pd, align 8, !tbaa !72, !alias.scope !129
  store ptr %i.ou, ptr %i.or, align 8, !tbaa !83
  store i64 0, ptr %i.pc, align 8, !tbaa !72
  store i8 0, ptr %i.ou, align 8, !tbaa !74
end_hunk_19
begin_hunk_20_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  %i.pj = icmp ult i64 %i.pi, 16
  call void @llvm.assume(i1 %i.pj)
  %.not21.i = icmp eq ptr %27, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.bv, !prof !132

bb.bv:                                            ; preds = %bb.bu
  switch i64 %i.pi, label %bb.bx [
end_hunk_20
begin_hunk_21_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
bb.ca:                                            ; preds = %.invoke, %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i
  %i.qi = landingpad { ptr, i32 }
          cleanup
  store ptr %31, ptr %i.l, align 8
  store ptr %30, ptr %i.m, align 8
  store ptr %29, ptr %7, align 8
  br label %.body

bb.cb:                                            ; preds = %.loopexit.a
end_hunk_21
begin_hunk_22_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
  br label %bb.do

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.vn = load ptr, ptr %7, align 8, !tbaa !133   ; 5 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !136 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.vn, %i.vp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

end_hunk_22
begin_hunk_23_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a
_ZSt8_DestroyISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i283 = icmp eq ptr %i.vw, %i.vp
  br i1 %.not.i.i.i283, label %_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !137

_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, %bb.dm
  %.not.i.i2.i = icmp eq ptr %i.vn, null
end_hunk_23
begin_hunk_24_@_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb:bb.a

bb.dn:                                            ; preds = %_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exit.i
  %i.vx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val1.i = load ptr, ptr %i.vx, align 8, !tbaa !138
  %i.vy = ptrtoint ptr %.val1.i to i64
  %i.vz = ptrtoint ptr %i.vn to i64
  %i.wa = sub i64 %i.vy, %i.vz
end_hunk_24
begin_hunk_25_@_ZN11OpenImageIO4v3_1L19encode_xmp_categoryERSt6vectorISt4pairIPKNS0_12_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EEPKcSI_SI_SI_SI_bNS0_10XmpControlE:bb.a
  store i64 0, ptr %i.ak, align 8, !tbaa !72
  store i8 0, ptr %i.aj, align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.val335 = load ptr, ptr %1, align 8, !tbaa !133 ; 2 uses
  %.val95336 = load ptr, ptr %i.al, align 8, !tbaa !136
  %.not341 = icmp eq ptr %.val95336, %.val335
  br i1 %.not341, label %.thread, label %.lr.ph339

end_hunk_25
begin_hunk_26_@_ZN11OpenImageIO4v3_1L19encode_xmp_categoryERSt6vectorISt4pairIPKNS0_12_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EEPKcSI_SI_SI_SI_bNS0_10XmpControlE:bb.a
  %.val338 = phi ptr [ %.val335, %.lr.ph339 ], [ %.val, %bb.bz ]
  %.062337 = phi i64 [ 0, %.lr.ph339 ], [ %i.kh, %bb.bz ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %.val338, i64 %.062337 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !113 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !142 ; 9 uses
  br i1 %i.am, label %bb.l, label %bb.m
end_hunk_26
begin_hunk_27_@_ZN11OpenImageIO4v3_1L19encode_xmp_categoryERSt6vectorISt4pairIPKNS0_12_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EEPKcSI_SI_SI_SI_bNS0_10XmpControlE:bb.a
  %.0812.i.i.i.i.i.i.i = phi ptr [ %i.jn, %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOSC_.exit.i.i.i.i.i.i.i ], [ %i.id, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.jm, %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOSC_.exit.i.i.i.i.i.i.i ], [ %i.ie, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 8 uses
  %i.ik = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !182
  store ptr %i.ik, ptr %.0812.i.i.i.i.i.i.i, align 8, !tbaa !113
  %i.il = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !83 ; 6 uses
end_hunk_27
begin_hunk_28_@_ZN11OpenImageIO4v3_1L19encode_xmp_categoryERSt6vectorISt4pairIPKNS0_12_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EEPKcSI_SI_SI_SI_bNS0_10XmpControlE:bb.a
  br i1 %i.jp, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.loopexit.i.i, !llvm.loop !183

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOSC_.exit.i.i.i.i.i.i.i
  %.pre.i.i154 = load ptr, ptr %i.al, align 8, !tbaa !136
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.loopexit.i.i, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit145
  %i.jq = phi ptr [ %.pre.i.i154, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.loopexit.i.i ], [ %.val5.i.i, %bb.bs ], [ %.val5.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit145 ] ; 3 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -40
  store ptr %i.jr, ptr %i.al, align 8, !tbaa !136
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !83 ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %i.jq, i64 -16 ; 2 uses
end_hunk_28
begin_hunk_29_@_ZN11OpenImageIO4v3_1L19encode_xmp_categoryERSt6vectorISt4pairIPKNS0_12_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EEPKcSI_SI_SI_SI_bNS0_10XmpControlE:bb.a
bb.bz:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.q, %bb.l
  %.264 = phi i64 [ %.062337, %bb.q ], [ %.062337, %bb.l ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %.062337, %bb.v ]
  %i.kh = add i64 %.264, 1                        ; 2 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !133   ; 2 uses
  %.val95 = load ptr, ptr %i.al, align 8, !tbaa !136
  %i.ki = ptrtoint ptr %.val95 to i64
  %i.kj = ptrtoint ptr %.val to i64
  %i.kk = sub i64 %i.ki, %i.kj
end_hunk_29
begin_hunk_30_@_ZN11OpenImageIO4v3_1L19encode_xmp_categoryERSt6vectorISt4pairIPKNS0_12_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EEPKcSI_SI_SI_SI_bNS0_10XmpControlE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EED2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exit, label %.lr.ph.i.i

end_hunk_30
begin_hunk_31_@_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EED2Ev:bb.a
_ZSt8_DestroyISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !137

_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !133
  br label %_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split, %bb.a
end_hunk_31
begin_hunk_32_@_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EED2Ev:bb.a

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_EvT_SF_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.k, align 8, !tbaa !138
  %i.l = ptrtoint ptr %.val1 to i64
  %i.m = ptrtoint ptr %.val to i64
  %i.n = sub i64 %i.l, %i.m
end_hunk_32
begin_hunk_33_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ab = add i64 %i.aa, 64                       ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 32728
  br i1 %i.ac, label %bb.c, label %bb.e, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !12
end_hunk_33
begin_hunk_34_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !74  ; 2 uses
  %i.bi = and i8 %i.bh, 64
  %.not245 = icmp eq i8 %i.bi, 0
  br i1 %.not245, label %select.unfold, label %bb.l, !prof !132

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.2189, i64 1
end_hunk_34
begin_hunk_35_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !74  ; 2 uses
  %i.bo = and i8 %i.bn, 64
  %.not246 = icmp eq i8 %i.bo, 0
  br i1 %.not246, label %select.unfold.split.loop.exit640, label %bb.m, !prof !132

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.2189, i64 2
end_hunk_35
begin_hunk_36_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !74  ; 2 uses
  %i.bu = and i8 %i.bt, 64
  %.not247 = icmp eq i8 %i.bu, 0
  br i1 %.not247, label %select.unfold.split.loop.exit636, label %bb.n, !prof !132

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %.2189, i64 3
end_hunk_36
begin_hunk_37_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.ca = and i8 %i.bz, 64
  %.not248 = icmp eq i8 %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %.2189, i64 4
  br i1 %.not248, label %select.unfold.split.loop.exit644, label %bb.k, !prof !132

select.unfold.split.loop.exit636:                 ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.2189, i64 2
end_hunk_37
begin_hunk_38_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !31 ; 2 uses
  %i.cu = add i64 %i.ct, 40                       ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 32728
  br i1 %i.cv, label %bb.s, label %bb.u, !prof !132

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !12
end_hunk_38
begin_hunk_39_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !74  ; 2 uses
  %i.dz = and i8 %i.dy, 64
  %.not254 = icmp eq i8 %i.dz, 0
  br i1 %.not254, label %select.unfold292, label %bb.aa, !prof !132

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %.7, i64 1
end_hunk_39
begin_hunk_40_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !74  ; 2 uses
  %i.ef = and i8 %i.ee, 64
  %.not255 = icmp eq i8 %i.ef, 0
  br i1 %.not255, label %select.unfold292.split.loop.exit656, label %bb.ab, !prof !132

bb.ab:                                            ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %.7, i64 2
end_hunk_40
begin_hunk_41_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !74  ; 2 uses
  %i.el = and i8 %i.ek, 64
  %.not256 = icmp eq i8 %i.el, 0
  br i1 %.not256, label %select.unfold292.split.loop.exit652, label %bb.ac, !prof !132

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %.7, i64 3
end_hunk_41
begin_hunk_42_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.er = and i8 %i.eq, 64
  %.not257 = icmp eq i8 %i.er, 0
  %i.es = getelementptr inbounds nuw i8, ptr %.7, i64 4
  br i1 %.not257, label %select.unfold292.split.loop.exit660, label %bb.z, !prof !132

select.unfold292.split.loop.exit652:              ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %.7, i64 2
end_hunk_42
begin_hunk_43_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser10parse_treeEPcPNS1_15xml_node_structEjc:switch.lookup
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !31 ; 2 uses
  %i.jz = add i64 %i.jy, 64                       ; 2 uses
  %i.ka = icmp ugt i64 %i.jz, 32728
  br i1 %i.ka, label %bb.cg, label %bb.ci, !prof !132

bb.cg:                                            ; preds = %bb.cf
  %i.kb = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !12
end_hunk_43
begin_hunk_44_@_ZN11OpenImageIO4v3_14pugi4impl15append_new_nodeEPNS1_15xml_node_structERNS2_13xml_allocatorENS1_13xml_node_typeE:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = add i64 %i.b, 64                         ; 2 uses
  %i.d = icmp ugt i64 %i.c, 32728
  br i1 %i.d, label %bb.b, label %bb.d, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !12
end_hunk_44
begin_hunk_45_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser14parse_questionEPcRPNS1_15xml_node_structEjc:bb.a
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %i.ao = add i64 %i.an, 64                       ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 32728
  br i1 %i.ap, label %bb.m, label %bb.o, !prof !132

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !12
end_hunk_45
begin_hunk_46_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser14parse_questionEPcRPNS1_15xml_node_structEjc:bb.a
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %i.bu = add i64 %i.bt, 64                       ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, 32728
  br i1 %i.bv, label %bb.s, label %bb.u, !prof !132

bb.s:                                             ; preds = %.thread128
  %i.bw = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !12
end_hunk_46
begin_hunk_47_@_ZN11OpenImageIO4v3_14pugi4impl10xml_parser17parse_exclamationEPcPNS1_15xml_node_structEjc:bb.a
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %i.k = add i64 %i.j, 64                         ; 2 uses
  %i.l = icmp ugt i64 %i.k, 32728
  br i1 %i.l, label %bb.e, label %bb.g, !prof !132

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !12
end_hunk_47
begin_hunk_48_@_ZN3fmt3v1212format_facetISt6localeEC2ERS2_:bb.a
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %.not21.i = icmp eq ptr %2, %i.e
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !132

bb.d:                                             ; preds = %bb.c
  switch i64 %i.z, label %bb.f [
end_hunk_48
begin_hunk_49_@_ZN3fmt3v1212format_facetISt6localeEC2ERS2_:bb.a
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %.not21.i15 = icmp eq ptr %3, %i.b
  br i1 %.not21.i15, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit20, label %bb.k, !prof !132

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bd, label %bb.m [
end_hunk_49
begin_hunk_50_@llvm.bswap.v2i32
!110 = !{!111, !100}
!111 = distinct !{!111, !112, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJRjS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!112 = distinct !{!112, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJRjS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTSSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !115, i64 0, !73, i64 8}
!115 = !{!"p1 _ZTSN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagE", !11, i64 0}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !"_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!121 = !{!117, !120}
!122 = distinct !{!122, !46}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!125 = distinct !{!125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!126 = !{!127, !124}
!127 = distinct !{!127, !128, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!128 = distinct !{!128, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!131 = distinct !{!131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!132 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!133 = !{!134, !135, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!135 = !{!"p1 _ZTSSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !11, i64 0}
!136 = !{!134, !135, i64 8}
!137 = distinct !{!137, !46}
!138 = !{!134, !135, i64 16}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!141 = distinct !{!141, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
end_hunk_50
begin_hunk_51_@llvm.bswap.v2i32
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJPKcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_ELi3ELi0ELy3292EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!180 = distinct !{!180, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJPKcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_ELi3ELi0ELy3292EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!181 = !{!135, !135, i64 0}
!182 = !{!115, !115, i64 0}
!183 = distinct !{!183, !46}
!184 = distinct !{!184, !46}
!185 = !{!186}
end_hunk_51
begin_hunk_52_@llvm.bswap.v2i32
!385 = distinct !{!385, !46}
!386 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!387 = !{!375, !16, i64 40}
!388 = !{!389, !115, i64 32}
!389 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagEE", !73, i64 0, !115, i64 32}
!390 = !{!391, !391, i64 0}
!391 = !{!"vtable pointer", !6, i64 0}
!392 = !{!393, !395, i64 32}
end_hunk_52
