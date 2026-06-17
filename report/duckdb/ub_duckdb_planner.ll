inline.NumInlined: 13015
inline.NumDeleted: 6155
begin_hunk_0_@_ZN6duckdb20PushVarcharCollationERNS_13ClientContextERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEERKNS_11LogicalTypeENS_13CollationTypeE:bb.a
bb.aa:                                            ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

._crit_edge.i.i105:                               ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.cg, ptr %15, align 8, !tbaa !7
  store i32 1852399981, ptr %i.cg, align 8
  store i64 4, ptr %i.ch, align 8, !tbaa !11
  store i8 0, ptr %i.ck, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.df = invoke ptr @_ZN6duckdb7Catalog8GetEntryINS_19CollateCatalogEntryEEENS_12optional_ptrIT_Lb1EEERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_NS_15OnEntryNotFoundENS_17QueryErrorContextE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0192.0232, i8 noundef zeroext 0, i64 -1)
          to label %.noexc109 unwind label %bb.ad

.noexc109:                                        ; preds = %._crit_edge.i.i105
  store ptr %i.df, ptr %5, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_19CollateCatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.noexc109
  %i.dg = load ptr, ptr %5, align 8, !tbaa !238   ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.dh = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cg
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.dh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 672
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !241, !range !263, !noundef !72
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = load ptr, ptr %13, align 8, !tbaa !236  ; 2 uses
  br i1 %i.dl, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  store ptr %i.dg, ptr %16, align 8, !tbaa !264
  %i.dn = invoke ptr @_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEOS3_.exit unwind label %bb.ae ; 0 uses

_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEOS3_.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE9push_backEOS3_.exit

bb.ad:                                            ; preds = %.noexc109, %._crit_edge.i.i105
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cg
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.dp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.ca

bb.ae:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.ca

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.ds = load ptr, ptr %i.ci, align 8, !tbaa !236 ; 2 uses
  %i.dt = icmp eq ptr %i.dm, %i.ds
  br i1 %i.dt, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_19CollateCatalogEntryEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !264
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 672
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !241, !range !263, !noundef !72
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %._crit_edge246, label %bb.ai

._crit_edge246:                                   ; preds = %bb.ah
  %.pre247 = load ptr, ptr %i.ci, align 8, !tbaa !266
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.dz = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_19CollateCatalogEntryEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !264
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.cg unwind label %bb.an

bb.am:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE9push_backEOS3_.exit, %bb.ag
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread: ; preds = %bb.ai
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.055 = phi i1 [ false, %bb.al ], [ true, %bb.ak ], [ true, %bb.aj ] ; 2 uses
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eh = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.eh) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br i1 %.055, label %bb.ao, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br i1 %.055, label %bb.ao, label %bb.ca

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.pn67198 = phi { ptr, i32 } [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ]
  call void @__cxa_free_exception(ptr %i.dz) #32
  br label %bb.ca

bb.ap:                                            ; preds = %._crit_edge246, %bb.af
  %i.ek = phi ptr [ %.pre247, %._crit_edge246 ], [ %i.ds, %bb.af ] ; 5 uses
  %i.el = load ptr, ptr %i.cj, align 8, !tbaa !268
  %.not.i.i121 = icmp eq ptr %i.ek, %i.el
  br i1 %.not.i.i121, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = ptrtoint ptr %i.dg to i64
  store i64 %i.em, ptr %i.ek, align 8
  %i.en = load ptr, ptr %i.ci, align 8, !tbaa !266
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.eo, ptr %i.ci, align 8, !tbaa !266
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE9push_backEOS3_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ep = load ptr, ptr %13, align 8, !tbaa !269  ; 7 uses
  %i.eq = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64               ; 3 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 3 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.as, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ar
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i.i, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #35
          to label %.noexc123 unwind label %.loopexit ; 8 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es
  %i.fc = ptrtoint ptr %i.dg to i64
  store i64 %i.fc, ptr %i.fb, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ep, %i.ek
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc123
  %i.fd = ptrtoaddr ptr %i.fa to i64
  %24 = add i64 %i.eq, -8
  %25 = sub i64 %24, %i.er                        ; 2 uses
  %i.fe = lshr i64 %25, 3
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %25, 24
  %i.fg = sub i64 %i.fd, %i.er
  %diff.check = icmp ult i64 %i.fg, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader335, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ff, 4611686018427387900     ; 3 uses
  %i.fh = shl i64 %n.vec, 3                       ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fa, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ep, i64 %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fa, i64 %i.fk ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.ep, i64 %i.fk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.fl = getelementptr i8, ptr %next.gep332, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep332, align 8, !alias.scope !273, !noalias !270
  %wide.load333 = load <2 x i64>, ptr %i.fl, align 8, !alias.scope !273, !noalias !270
  %i.fm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !270, !noalias !273
  store <2 x i64> %wide.load333, ptr %i.fm, align 8, !alias.scope !270, !noalias !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader335

.lr.ph.i.i.i.i.i.i.i.preheader335:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fi, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader335, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader335 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader335 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.fo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !273, !noalias !270
  store i64 %i.fo, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !270, !noalias !273
  %i.fp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fp, %i.ek
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !278

_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc123
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fa, %.noexc123 ], [ %i.fi, %middle.block ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ep) #33
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.at, %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.fa, ptr %13, align 8, !tbaa !269
  store ptr %i.fr, ptr %i.ci, align 8, !tbaa !266
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ey
  store ptr %i.fs, ptr %i.cj, align 8, !tbaa !268
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE9push_backEOS3_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.aq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEOS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %14, ptr %4, align 8, !tbaa !279
  %i.ft = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0192.0232, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0192.0232, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.am ; 0 uses

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE9push_backEOS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE6insertERKS5_.exit, %bb.z
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0192.0232, i64 32 ; 2 uses
  %.not200 = icmp eq ptr %i.fu, %i.cf
  br i1 %.not200, label %._crit_edge, label %bb.y

bb.av:                                            ; preds = %.lr.ph237, %bb.bq
  %.sroa.0181.0234 = phi ptr [ %.pre248, %.lr.ph237 ], [ %i.ir, %bb.bq ] ; 2 uses
  %i.fv = load ptr, ptr %.sroa.0181.0234, align 8, !tbaa !264 ; 7 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 672
  %i.fx = load i8, ptr %i.fw, align 8, !tbaa !241, !range !263, !noundef !72
  %i.fy = trunc nuw i8 %i.fx to i1
  %or.cond.not = or i1 %i.cl, %i.fy               ; 3 uses
  br i1 %or.cond.not, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, label %.critedge

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.fz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35
          to label %.noexc136 unwind label %bb.br ; 5 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ga = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.ga, ptr %i.fz, align 8, !tbaa !104
  store ptr null, ptr %1, align 8, !tbaa !104
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 6 uses
  store ptr %i.fz, ptr %19, align 8, !tbaa !281
  store ptr %i.gb, ptr %i.cm, align 8, !tbaa !283
  store ptr %i.gb, ptr %i.cn, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  invoke void @_ZN6duckdb14FunctionBinderC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 1 %0)
          to label %bb.aw unwind label %bb.bs

bb.aw:                                            ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 312
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %22, ptr noundef nonnull align 8 dereferenceable(360) %i.gc)
          to label %.noexc137 unwind label %bb.bt

.noexc137:                                        ; preds = %bb.aw
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %22, align 8, !tbaa !16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 568 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, i8 0, i64 32, i1 false)
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.noexc137
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fv, i64 552
  %i.gg = invoke noundef zeroext i1 %i.ge(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i32 noundef 2)
          to label %bb.ay unwind label %bb.az     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.gh = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !118
  store <2 x ptr> %i.gh, ptr %i.cp, align 8, !tbaa !118
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.gi = landingpad { ptr, i32 }
          cleanup
  %i.gj = load ptr, ptr %i.cp, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gk = invoke noundef zeroext i1 %i.gj(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.co, i32 noundef 3)
          to label %.body.i unwind label %bb.bb   ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #36
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i: ; preds = %bb.ay, %.noexc137
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fv, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cq, ptr noundef nonnull align 8 dereferenceable(72) %i.gn, i64 72, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 656
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fv, i64 664
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !209 ; 2 uses
  %i.gr = load <2 x ptr>, ptr %i.go, align 8, !tbaa !118
  store <2 x ptr> %i.gr, ptr %i.cr, align 8, !tbaa !118
  %.not.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 3 uses
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !3
  br label %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit

bb.be:                                            ; preds = %bb.bc
  %i.gw = atomicrmw volatile add ptr %i.gs, i32 1 acq_rel, align 4 ; 0 uses
  %.pre250 = load ptr, ptr %19, align 8, !tbaa !281
  %.pre251 = load ptr, ptr %i.cm, align 8, !tbaa !283
  %.pre252 = load ptr, ptr %i.cn, align 8, !tbaa !284
  br label %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit

.body.i:                                          ; preds = %bb.ba, %bb.az
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %22) #32
  br label %.body

_ZN6duckdb14ScalarFunctionC2ERKS0_.exit:          ; preds = %bb.be, %bb.bd, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i
  %i.gx = phi ptr [ %.pre252, %bb.be ], [ %i.gb, %bb.bd ], [ %i.gb, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb20PushVariantCollationERNS_13ClientContextERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEERKNS_11LogicalTypeENS_13CollationTypeE:bb.a

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ai:                                            ; preds = %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE28GetFunctionReferenceByOffsetEm.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %.noexc58
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.m
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #32
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %13) #32
  br label %.body

bb.am:                                            ; preds = %bb.af, %_ZN6duckdb14ScalarFunctionD2Ev.exit
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %12, align 8, !tbaa !104  ; 3 uses
  %.not.i83 = icmp eq ptr %i.em, null
  br i1 %.not.i83, label %.body, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i84

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i84: ; preds = %bb.am
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(88) %i.em) #32, !inline_history !121
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i84, %bb.am, %bb.ak, %.body.i, %bb.al
  %.pn28 = phi { ptr, i32 } [ %i.bo, %.body.i ], [ %i.ek, %bb.al ], [ %i.ej, %bb.ak ], [ %i.el, %bb.am ], [ %i.el, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.an

bb.an:                                            ; preds = %.body, %bb.aj
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %.body ], [ %i.ei, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.an ], [ %i.eh, %bb.ai ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ah
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.ao ], [ %i.eg, %bb.ah ]
  %i.eq = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ao
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.eq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn33.pn = phi { ptr, i32 } [ %.pn3395, %bb.i ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn28.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ]
  resume { ptr, i32 } %.pn33.pn

bb.ar:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  ret i1 %.not

bb.as:                                            ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16CollationBindingC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35
          to label %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i4 unwind label %bb.a ; 5 uses

_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i4: ; preds = %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  store i64 ptrtoint (ptr @_ZN6duckdb20PushVarcharCollationERNS_13ClientContextERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEERKNS_11LogicalTypeENS_13CollationTypeE to i64), ptr %i.c, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !314
  store ptr %i.d, ptr %i.a, align 8, !tbaa !317
  store ptr %i.d, ptr %i.b, align 8, !tbaa !318
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35
          to label %.lr.ph.i.i.i.i.i.i.i8.preheader unwind label %bb.a ; 7 uses

.lr.ph.i.i.i.i.i.i.i8.preheader:                  ; preds = %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 ptrtoint (ptr @_ZN6duckdb19PushTimeTZCollationERNS_13ClientContextERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEERKNS_11LogicalTypeENS_13CollationTypeE to i64), ptr %i.f, align 8, !tbaa !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.g = load i64, ptr %i.c, align 8, !tbaa !118, !alias.scope !322, !noalias !319
  store i64 %i.g, ptr %i.e, align 8, !tbaa !118, !alias.scope !319, !noalias !322
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #33
  store ptr %i.e, ptr %0, align 8, !tbaa !314
  store ptr %i.h, ptr %i.a, align 8, !tbaa !317
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %i.b, align 8, !tbaa !318
  %i.j = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35
          to label %.lr.ph.i.i.i.i.i.i.i24.preheader unwind label %bb.a ; 5 uses

.lr.ph.i.i.i.i.i.i.i24.preheader:                 ; preds = %.lr.ph.i.i.i.i.i.i.i8.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 ptrtoint (ptr @_ZN6duckdb21PushIntervalCollationERNS_13ClientContextERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEERKNS_11LogicalTypeENS_13CollationTypeE to i64), ptr %i.k, align 8, !tbaa !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !118, !alias.scope !327, !noalias !324
  store <2 x i64> %wide.load, ptr %i.j, align 8, !tbaa !118, !alias.scope !324, !noalias !327
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #33
  store ptr %i.j, ptr %0, align 8, !tbaa !314
  store ptr %i.l, ptr %i.a, align 8, !tbaa !317
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %i.b, align 8, !tbaa !318
  store i64 ptrtoint (ptr @_ZN6duckdb20PushVariantCollationERNS_13ClientContextERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEERKNS_11LogicalTypeENS_13CollationTypeE to i64), ptr %i.l, align 8, !tbaa !118
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !317
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.a, align 8, !tbaa !317
  ret void

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i8.preheader, %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i4, %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !314    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #33
  br label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16CollationBinding17RegisterCollationENS_17CollationCallbackE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !317  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !318
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8, !tbaa !118
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !317
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !317
  br label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !314    ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !118
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = add i64 %i.i, -8
  %3 = sub i64 %2, %i.j                           ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.y = sub i64 %i.v, %i.j
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !118, !alias.scope !332, !noalias !329
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !118, !alias.scope !332, !noalias !329
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !118, !alias.scope !329, !noalias !332
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !tbaa !118, !alias.scope !329, !noalias !332
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !334

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.preheader7:                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !118, !alias.scope !332, !noalias !329
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !118, !alias.scope !329, !noalias !332
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !335

_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN6duckdb17CollationCallbackESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #33
  br label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.s, ptr %0, align 8, !tbaa !314
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !317
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !318
  br label %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb17CollationCallbackESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb16CollationBinding13PushCollationERNS_13ClientContextERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEERKNS_11LogicalTypeENS_13CollationTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !336    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !336  ; 2 uses
  %.not16.not = icmp eq ptr %i.a, %i.c
  br i1 %.not16.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.012.017 = phi ptr [ %i.f, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.012.017, align 8, !tbaa !337
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %.not.not = icmp eq ptr %i.f, %i.c
  %or.cond = select i1 %i.e, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.e, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ExpressionIterator17EnumerateChildrenERKNS_10ExpressionERKSt8functionIFvS3_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.258", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = ptrtoint ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %2, align 8, !tbaa !339
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator17EnumerateChildrenERKS2_RKSt8functionIFvSA_EEE3$_0E9_M_invokeERKSt9_Any_dataS6_", ptr %i.c, align 8, !tbaa !341
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator17EnumerateChildrenERKS2_RKSt8functionIFvSA_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.b, align 8, !tbaa !285
  invoke void @_ZN6duckdb18ExpressionIterator17EnumerateChildrenERNS_10ExpressionERKSt8functionIFvRNS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ExpressionIterator17EnumerateChildrenERNS_10ExpressionERKSt8functionIFvRNS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !343
  switch i8 %i.b, label %bb.bk [
    i8 25, label %bb.b
    i8 39, label %bb.k
    i8 26, label %bb.o
    i8 27, label %bb.t
    i8 29, label %bb.v
    i8 30, label %bb.y
    i8 33, label %bb.ab
    i8 34, label %bb.ae
    i8 37, label %bb.ah
    i8 38, label %bb.ak
    i8 40, label %bb.bi
    i8 28, label %.loopexit
    i8 42, label %.loopexit
    i8 31, label %.loopexit
    i8 32, label %.loopexit
    i8 35, label %.loopexit
    i8 36, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134  ; 2 uses
  %.not219265 = icmp eq ptr %i.e, %i.g
  br i1 %.not219265, label %._crit_edge269, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

._crit_edge269:                                   ; preds = %_ZNKSt8functionIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEEclES6_.exit, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 496 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104
end_hunk_1
begin_hunk_2_@_ZN6duckdb16ExpressionBinderC2ERNS_6BinderERNS_13ClientContextEb
define void @_ZN6duckdb16ExpressionBinderC2ERNS_6BinderERNS_13ClientContextEb(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 1 %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb16ExpressionBinderE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !551
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.e, align 8, !tbaa !553
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !554
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !554
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !532, !nonnull !72, !align !73
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 312
  %i.n = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc10 unwind label %bb.f

.noexc10:                                         ; preds = %bb.b
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %.noexc10
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !556
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !551
  %i.s = add i64 %i.r, 5
  br label %bb.c

bb.c:                                             ; preds = %.noexc11, %.noexc
  %.sink.i = phi i64 [ %i.s, %.noexc11 ], [ 5, %.noexc ]
  store i64 %.sink.i, ptr %i.c, align 8, !tbaa !551
  br i1 %3, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.noexc12
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !556
  %i.w = ptrtoint ptr %i.v to i64
  store i64 %i.w, ptr %i.f, align 8, !tbaa !558
  %i.x = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.e
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN6duckdb6Binder15SetActiveBinderERNS_16ExpressionBinderE.exit unwind label %bb.f

_ZN6duckdb6Binder15SetActiveBinderERNS_16ExpressionBinderE.exit: ; preds = %.noexc14
  %i.z = ptrtoint ptr %0 to i64
  store i64 %i.z, ptr %i.y, align 8
  br label %bb.i

bb.f:                                             ; preds = %.noexc14, %bb.e, %.noexc10, %bb.b, %bb.a, %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %.noexc12, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Binder20PushExpressionBinderERNS_16ExpressionBinderE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %_ZN6duckdb6Binder15SetActiveBinderERNS_16ExpressionBinderE.exit, %bb.h
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6vectorIN6duckdb24BoundColumnReferenceInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16ExpressionBinder20InitializeStackCheckEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((48, 56)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !532, !nonnull !72, !align !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !554
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !554
  %.not = icmp eq ptr %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !532, !nonnull !72, !align !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !556
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !551
  %i.o = add i64 %i.n, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.o, %bb.b ], [ 5, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink, ptr %i.p, align 8, !tbaa !551
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6Binder15GetActiveBinderEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !556
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder15SetActiveBinderERNS_16ExpressionBinderE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.d = ptrtoint ptr %1 to i64
  store i64 %i.d, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder20PushExpressionBinderERNS_16ExpressionBinderE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !559  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !561
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64
  store i64 %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !559
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !559
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !562  ; 7 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = ptrtoaddr ptr %i.u to i64
  %2 = add i64 %i.k, -8
  %3 = sub i64 %2, %i.l                           ; 2 uses
  %i.y = lshr i64 %3, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.aa = sub i64 %i.x, %i.l
  %diff.check = icmp ult i64 %i.aa, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.af = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !alias.scope !566, !noalias !563
  %wide.load6 = load <2 x i64>, ptr %i.af, align 8, !alias.scope !566, !noalias !563
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !563, !noalias !566
  store <2 x i64> %wide.load6, ptr %i.ag, align 8, !alias.scope !563, !noalias !566
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.preheader8:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !566, !noalias !563
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !563, !noalias !566
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !569

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.u, ptr %i.b, align 8, !tbaa !562
  store ptr %i.al, ptr %i.c, align 8, !tbaa !559
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.am, ptr %i.e, align 8, !tbaa !561
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb24BoundColumnReferenceInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !570    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !571  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #33
  br label %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !572

_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !570
  br label %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb24BoundColumnReferenceInfoESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #33
  br label %_ZNSt12_Vector_baseIN6duckdb24BoundColumnReferenceInfoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb24BoundColumnReferenceInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb6Binder15HasActiveBinderEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !554
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !554
  %i.f = icmp ne ptr %i.c, %i.e
  ret i1 %i.f
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #32 ; 0 uses
  tail call void @_ZSt9terminatev() #36
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder19PopExpressionBinderEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !559
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  store ptr %i.e, ptr %i.c, align 8, !tbaa !559
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb16ExpressionBinderD0Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN6duckdb16ExpressionBinderD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #32
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16ExpressionBinder10StackCheckERKNS_16ParsedExpressionEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::StackChecker") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !573
  %i.d = tail call noundef i64 @_ZN6duckdb8Settings3GetINS_25MaxExpressionDepthSettingENS_13ClientContextEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEmEE5valueEmE4typeERKT0_(ptr noundef nonnull align 1 %i.c) ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !551
  %i.g = add i64 %i.f, %3                         ; 2 uses
  %.not = icmp ult i64 %i.g, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb15BinderExceptionC2IJRmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.f

end_hunk_2
begin_hunk_3_@_ZN6duckdb14BaseExpression4CastINS_19ParameterExpressionEEERT_v:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.127, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb16ExpressionBinder23BindPositionalReferenceERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmb(ptr dead_on_unwind writable sret(%"struct.duckdb::BindResult") align 8, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN6duckdb15BinderException11UnsupportedERNS_16ParsedExpressionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.duckdb::BinderException") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.2052", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !584
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !300, !noalias !584 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !303, !noalias !584 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #33
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !304

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !300, !noalias !584
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #33
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !584
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !584
  invoke void @_ZN6duckdb23NotImplementedExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16ExpressionBinder21BindCorrelatedColumnsERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEENS_9ErrorDataE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::BindResult") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.582", align 8 ; 13 uses
  %5 = alloca %"class.duckdb::ErrorData", align 8 ; 20 uses
  %6 = alloca %"class.duckdb::ErrorData", align 8 ; 21 uses
  %7 = alloca %"class.duckdb::ErrorData", align 8 ; 15 uses
  %8 = alloca %"class.duckdb::ErrorData", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !532, !nonnull !72, !align !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !559  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !562  ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr null, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !561
  br label %_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEC2ERKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.n, label %.noexc.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !107

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #35 ; 7 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !562
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !559
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !561
  %9 = add i64 %i.h, -8
  %10 = sub i64 %9, %i.i                          ; 2 uses
  %i.s = lshr i64 %10, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  %i.u = ptrtoaddr ptr %i.o to i64
  %i.v = sub i64 %i.u, %i.i
  %diff.check = icmp ult i64 %i.v, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader155, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.o, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.g, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.g, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep151, align 8
  %wide.load152 = load <2 x i64>, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load152, ptr %i.ab, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i.preheader155

.lr.ph.i.i.i.i.i.i.preheader155:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader155, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader155 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader155 ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  store i64 %i.ad, ptr %.09.i.i.i.i.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !588

_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.thread
  %i.ag = phi ptr [ %i.k, %.thread ], [ %i.p, %middle.block ], [ %i.p, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ah = load i16, ptr %3, align 8
  store i16 %i.ah, ptr %5, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !7
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !15 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEC2ERKS5_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEC2ERKS5_.exit
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !15
  %i.as = load i64, ptr %i.am, align 8, !tbaa !14
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.at = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.at, ptr %i.av, align 8, !tbaa !11
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !15
  store i64 0, ptr %i.au, align 8, !tbaa !11
  store i8 0, ptr %i.am, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !7
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !15
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !14
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !14
  %.phi.trans.insert91 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.pre92 = load i64, ptr %.phi.trans.insert91, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i, %bb.d
  %i.bh = phi i64 [ %.pre92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i ], [ %i.bd, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !11
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !15
  store i64 0, ptr %i.bi, align 8, !tbaa !11
  store i8 0, ptr %i.ba, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !407 ; 3 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !407
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !409 ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !409
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !410 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !143
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !411
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !411
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !412
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 5 uses
  store ptr null, ptr %i.by, align 8, !tbaa !414
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 4 uses
  %i.ca = icmp eq ptr %i.bm, %i.bz
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i
  store ptr %i.by, ptr %i.bk, align 8, !tbaa !407
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !414
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !414
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i
  %i.cc = phi ptr [ %i.by, %bb.e ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i ]
  %.not.i.i.i.i.i25 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i25, label %_ZN6duckdb9ErrorDataC2EOS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !151
  %i.cf = urem i64 %i.ce, %i.bp
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf
  store ptr %i.bq, ptr %i.cg, align 8, !tbaa !150
  br label %_ZN6duckdb9ErrorDataC2EOS0_.exit

_ZN6duckdb9ErrorDataC2EOS0_.exit:                 ; preds = %bb.f, %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 0, ptr %i.ch, align 8, !tbaa !438
  store i64 1, ptr %i.bo, align 8, !tbaa !409
  store ptr null, ptr %i.bz, align 8, !tbaa !414
  store ptr %i.bz, ptr %i.bl, align 8, !tbaa !407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !559
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !559
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 104
end_hunk_3
begin_hunk_4_@_ZNK6duckdb10unique_ptrINS_12TreeRendererESt14default_deleteIS1_ELb1EEptEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12TreeRendererESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb12TreeRenderer8ToStreamERNS_10RenderTreeERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !802    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.121, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.e) #33
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %0, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.a, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !805
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb15LogicalOperator6VerifyERNS_13ClientContextE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LogicalOperator8AddChildENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !721  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !825
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !722
  store i64 %i.f, ptr %i.c, align 8, !tbaa !722
  store ptr null, ptr %1, align 8, !tbaa !722
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !721
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !720  ; 10 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i64, ptr %1, align 8, !tbaa !722
  store i64 %i.u, ptr %i.t, align 8, !tbaa !722
  store ptr null, ptr %1, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %2 = add i64 %i.i, -8
  %3 = sub i64 %2, %i.j                           ; 2 uses
  %i.v = lshr i64 %3, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.x = add i64 %i.i, -8
  %i.y = sub i64 %i.x, %i.j
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.aa
  %scevgep3 = getelementptr i8, ptr %i.h, i64 %i.aa
  %bound0 = icmp ult ptr %i.s, %scevgep3
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.af = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !722, !alias.scope !831, !noalias !826
  %wide.load5 = load <2 x i64>, ptr %i.af, align 8, !tbaa !722, !alias.scope !831, !noalias !826
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !722, !alias.scope !834, !noalias !831
  store <2 x i64> %wide.load5, ptr %i.ag, align 8, !tbaa !722, !alias.scope !834, !noalias !831
  %i.ah = getelementptr i8, ptr %next.gep4, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !722, !alias.scope !831, !noalias !826
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !722, !alias.scope !831, !noalias !826
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !836

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.preheader7:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !829, !noalias !826
  store i64 %i.aj, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !826, !noalias !829
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !829, !noalias !826
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !837

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !720
  store ptr %i.am, ptr %i.b, align 8, !tbaa !721
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.an, ptr %i.d, align 8, !tbaa !825
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb15LogicalOperator19EstimateCardinalityERNS_13ClientContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !733, !range !263, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !734
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !777  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !777  ; 2 uses
  %.not11 = icmp eq ptr %i.g, %i.i
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.07.lcssa = phi i64 [ 0, %bb.c ], [ %i.p, %.lr.ph ] ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !733
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.07.lcssa, ptr %i.j, align 8, !tbaa !734
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0713 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.c ]
  %.sroa.08.012 = phi ptr [ %i.q, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.08.012) ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(97) %i.k, ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0713) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %.07.lcssa, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15LogicalOperator5PrintEv(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(97) %0, i8 noundef zeroext 0)
  invoke void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.d) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.h) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK6duckdb15LogicalOperator13GetTableIndexEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.431") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15LogicalOperator4CopyERNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.301") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef nonnull align 8 dereferenceable(512) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.duckdb::MemoryStream", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::SerializationOptions", align 8 ; 14 uses
  %5 = alloca %"class.duckdb::SerializationCompatibility", align 8 ; 16 uses
  %6 = alloca %"class.duckdb::BinarySerializer", align 8 ; 16 uses
  %7 = alloca %"class.duckdb::SerializationOptions", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::ErrorData", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::unordered_map.129", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %2)
  call void @_ZN6duckdb12MemoryStreamC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 512)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i8 0, ptr %4, align 8, !tbaa !838
end_hunk_4
begin_hunk_5_@_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_17GlobalBinderStateELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(129) ptr @_ZN6duckdb6Binder22GetStatementPropertiesEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN6duckdb6Binder13GetParametersEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !1100
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder13SetParametersERNS_17BoundParameterMapE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.d = ptrtoint ptr %1 to i64
  store i64 %i.d, ptr %i.c, align 8, !tbaa !1100
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_16QueryBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !980    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_16QueryBinderStateELb1EE13AssertNotNullEb.exit, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.124, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_16QueryBinderStateELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder18AddUsingBindingSetENS_10unique_ptrINS_14UsingColumnSetESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1101 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 280 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1102
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !1103
  store i64 %i.h, ptr %i.e, align 8, !tbaa !1103
  store ptr null, ptr %1, align 8, !tbaa !1103
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !1101
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !1105 ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = load i64, ptr %1, align 8, !tbaa !1103
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1103
  store ptr null, ptr %1, align 8, !tbaa !1103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %2 = add i64 %i.k, -8
  %3 = sub i64 %2, %i.l                           ; 2 uses
  %i.x = lshr i64 %3, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.z = add i64 %i.k, -8
  %i.aa = sub i64 %i.z, %i.l
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep3 = getelementptr i8, ptr %i.j, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %scevgep3
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.j, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.ah = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !1103, !alias.scope !1111, !noalias !1106
  %wide.load5 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !1103, !alias.scope !1111, !noalias !1106
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1103, !alias.scope !1114, !noalias !1111
  store <2 x i64> %wide.load5, ptr %i.ai, align 8, !tbaa !1103, !alias.scope !1114, !noalias !1111
  %i.aj = getelementptr i8, ptr %next.gep4, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !1103, !alias.scope !1111, !noalias !1106
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !1103, !alias.scope !1111, !noalias !1106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.preheader7:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1103, !alias.scope !1109, !noalias !1106
  store i64 %i.al, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1103, !alias.scope !1106, !noalias !1109
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1103, !alias.scope !1109, !noalias !1106
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1117

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1105
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !1101
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !1102
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14UsingColumnSetESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder25MoveCorrelatedExpressionsERS0_(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(472) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !610  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i

_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i:      ; preds = %bb.a, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i
  %i.e = phi ptr [ %i.i, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i ], [ %i.d, %bb.a ]
  %storemerge4.i = phi i64 [ %i.g, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %storemerge4.i
  tail call void @_ZN6duckdb6Binder19AddCorrelatedColumnERKNS_20CorrelatedColumnInfoE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.f)
  %i.g = add nuw i64 %storemerge4.i, 1            ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !610  ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 80
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i, label %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit, !llvm.loop !1118

_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit: ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i, %bb.a
  %i.o = phi ptr [ %i.c, %bb.a ], [ %i.h, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i ] ; 2 uses
  %i.p = phi ptr [ %i.d, %bb.a ], [ %i.i, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i, label %_ZN6duckdb17CorrelatedColumns5clearEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i ], [ %i.p, %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.r) #33
  br label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #32
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !997

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.p, ptr %i.b, align 8, !tbaa !610
  br label %_ZN6duckdb17CorrelatedColumns5clearEv.exit

_ZN6duckdb17CorrelatedColumns5clearEv.exit:       ; preds = %_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE.exit, %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder22MergeCorrelatedColumnsERNS_17CorrelatedColumnsE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !610
  %i.c = load ptr, ptr %1, align 8, !tbaa !996    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit

._crit_edge:                                      ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, %bb.a
  ret void

_ZNK6duckdb17CorrelatedColumnsixERKm.exit:        ; preds = %bb.a, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.d = phi ptr [ %i.h, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit ], [ %i.c, %bb.a ]
  %storemerge4 = phi i64 [ %i.f, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %storemerge4
  tail call void @_ZN6duckdb6Binder19AddCorrelatedColumnERKNS_20CorrelatedColumnInfoE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e)
  %i.f = add nuw i64 %storemerge4, 1              ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !610
  %i.h = load ptr, ptr %1, align 8, !tbaa !996    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 80
  %i.m = icmp ult i64 %i.f, %i.l
  br i1 %i.m, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, label %._crit_edge, !llvm.loop !1118
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN6duckdb6Binder18GetMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !11
  store i8 0, ptr %i.c, align 8, !tbaa !14
  %i.e = invoke ptr @_ZN6duckdb6Binder18GetMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_RNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.f) #33
end_hunk_5
begin_hunk_6_@_ZN6duckdb6Binder13BindReturningENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_17TableCatalogEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS2_INS_15LogicalOperatorES4_ISJ_ELb1EEESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSN_EEE:bb.a
  %i.do = load ptr, ptr %17, align 8, !tbaa !1153 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1153 ; 2 uses
  %.not166 = icmp eq ptr %i.do, %i.dq
  br i1 %.not166, label %._crit_edge.thread, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.aj
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %.pre172 = load ptr, ptr %17, align 8, !tbaa !1153
  %.pre173 = load ptr, ptr %i.dp, align 8, !tbaa !1153
  %i.eb = icmp eq ptr %.pre172, %.pre173
  br i1 %i.eb, label %._crit_edge.thread, label %bb.bm

bb.ak:                                            ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #32
  br label %.body

bb.am:                                            ; preds = %bb.af, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.an:                                            ; preds = %bb.ag
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ao:                                            ; preds = %bb.ai, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ap:                                            ; preds = %.lr.ph168, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.eh = phi ptr [ null, %.lr.ph168 ], [ %i.gr, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 11 uses
  %i.ei = phi ptr [ null, %.lr.ph168 ], [ %i.gs, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.ej = phi ptr [ null, %.lr.ph168 ], [ %i.gt, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.sroa.0135.0167 = phi ptr [ %i.do, %.lr.ph168 ], [ %i.gu, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.ek = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0135.0167)
          to label %bb.aq unwind label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb17VerifyNotExcludedERKNS_16ParsedExpressionE(ptr noundef nonnull align 8 dereferenceable(56) %i.ek)
          to label %bb.ar unwind label %bb.bd

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_ZN6duckdb16ExpressionBinder4BindERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrINS_11LogicalTypeELb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.31") align 8 %18, ptr noundef nonnull align 8 dereferenceable(104) %14, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0135.0167, ptr nonnull %16, i1 noundef zeroext true)
          to label %bb.as unwind label %bb.be

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.el = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.at unwind label %bb.bf     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(56) %i.el)
          to label %bb.au unwind label %bb.bf

bb.au:                                            ; preds = %bb.at
  %i.ep = load ptr, ptr %i.ds, align 8, !tbaa !295 ; 6 uses
  %i.eq = load ptr, ptr %i.dt, align 8, !tbaa !380
  %.not.i.i = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 3 uses
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !7
  %i.es = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.du
  br i1 %i.et, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.eu = load i64, ptr %i.dv, align 8, !tbaa !11 ; 3 uses
  %i.ev = icmp ult i64 %i.eu, 16
  call void @llvm.assume(i1 %i.ev)
  %i.ew = add nuw nsw i64 %i.eu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(1) %i.du, i64 %i.ew, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.av
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !15
  %i.ex = load i64, ptr %i.du, align 8, !tbaa !14
  store i64 %i.ex, ptr %i.er, align 8, !tbaa !14
  %.pre = load i64, ptr %i.dv, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ey = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.eu, %bb.aw ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !11
  store ptr %i.du, ptr %19, align 8, !tbaa !15
  store i64 0, ptr %i.dv, align 8, !tbaa !11
  %i.fa = load ptr, ptr %i.ds, align 8, !tbaa !295
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.fb, ptr %i.ds, align 8, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ax:                                            ; preds = %bb.au
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.bg

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ax
  %.pre171 = load ptr, ptr %19, align 8, !tbaa !15 ; 2 uses
  %i.fc = icmp eq ptr %.pre171, %i.du
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef %.pre171) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.fd = load ptr, ptr %i.dw, align 8, !tbaa !392 ; 3 uses
  %i.fe = load ptr, ptr %i.dx, align 8, !tbaa !379
  %.not.i66 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i66, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %.noexc67 unwind label %.loopexit

.noexc67:                                         ; preds = %bb.ay
  %i.ff = load ptr, ptr %i.dw, align 8, !tbaa !392
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr %i.fg, ptr %i.dw, align 8, !tbaa !392
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit69

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit69 unwind label %.loopexit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit69: ; preds = %.noexc67, %bb.az
  %.not.i.i70 = icmp eq ptr %i.ej, %i.ei
  br i1 %.not.i.i70, label %bb.ba, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit69
  %i.fh = load i64, ptr %18, align 8, !tbaa !104
  store i64 %i.fh, ptr %i.ej, align 8, !tbaa !104
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  store ptr %i.fi, ptr %i.dz, align 8, !tbaa !283
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ba:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit69
  %i.fj = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.fk = ptrtoint ptr %i.eh to i64               ; 3 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 3 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775800
  br i1 %i.fm, label %bb.bb, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc72 unwind label %.loopexit.split-lp

.noexc72:                                         ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %i.fn = ashr exact i64 %i.fl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 1152921504606846975)
  %i.fr = select i1 %i.fp, i64 1152921504606846975, i64 %i.fq ; 3 uses
  %.not.i.i.i.i71 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i71)
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #35
          to label %.noexc73 unwind label %.loopexit ; 12 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl
  %i.fv = load i64, ptr %18, align 8, !tbaa !104
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !104
  store ptr null, ptr %18, align 8, !tbaa !104
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc73
  %23 = add i64 %i.fj, -8
  %24 = sub i64 %23, %i.fk                        ; 2 uses
  %i.fw = lshr i64 %24, 3
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %24, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader284, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ft, i64 8
  %i.fy = add i64 %i.fj, -8
  %i.fz = sub i64 %i.fy, %i.fk
  %i.ga = and i64 %i.fz, -8                       ; 2 uses
  %scevgep255 = getelementptr i8, ptr %scevgep, i64 %i.ga
  %scevgep256 = getelementptr i8, ptr %i.eh, i64 8
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %i.ga
  %bound0 = icmp ult ptr %i.ft, %scevgep257
  %bound1 = icmp ult ptr %i.eh, %scevgep255
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader284, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fx, 4611686018427387900     ; 3 uses
  %i.gb = shl i64 %n.vec, 3                       ; 2 uses
  %i.gc = getelementptr i8, ptr %i.ft, i64 %i.gb  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.eh, i64 %i.gb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ge = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ft, i64 %i.ge ; 2 uses
  %next.gep258 = getelementptr i8, ptr %i.eh, i64 %i.ge ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.gf = getelementptr i8, ptr %next.gep258, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep258, align 8, !tbaa !104, !alias.scope !1159, !noalias !1154
  %wide.load259 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !104, !alias.scope !1159, !noalias !1154
  %i.gg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !104, !alias.scope !1162, !noalias !1159
  store <2 x i64> %wide.load259, ptr %i.gg, align 8, !tbaa !104, !alias.scope !1162, !noalias !1159
  %i.gh = getelementptr i8, ptr %next.gep258, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep258, align 8, !tbaa !104, !alias.scope !1159, !noalias !1154
  store <2 x ptr> splat (ptr null), ptr %i.gh, align 8, !tbaa !104, !alias.scope !1159, !noalias !1154
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !1164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader284

.lr.ph.i.i.i.i.i.i.i.preheader284:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ft, %vector.memcheck ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gc, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.eh, %vector.memcheck ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader284, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader284 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader284 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.gj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !104, !alias.scope !1157, !noalias !1154
  store i64 %i.gj, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !104, !alias.scope !1154, !noalias !1157
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !104, !alias.scope !1157, !noalias !1154
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gk, %i.ei
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1165

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc73
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ft, %.noexc73 ], [ %i.gc, %middle.block ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.eh) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.bc
  store ptr %i.ft, ptr %15, align 8, !tbaa !281
  store ptr %i.gm, ptr %i.dz, align 8, !tbaa !283
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fr ; 3 uses
  store ptr %i.gn, ptr %i.ea, align 8, !tbaa !284
  %.pr = load ptr, ptr %18, align 8, !tbaa !104   ; 3 uses
  %.not.i74 = icmp eq ptr %.pr, null
  br i1 %.not.i74, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.go = load ptr, ptr %.pr, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #32, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  %i.gr = phi ptr [ %i.eh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ft, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.ft, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i ]
  %i.gs = phi ptr [ %i.ei, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.gn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.gn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i ] ; 2 uses
  %i.gt = phi ptr [ %i.fi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.gm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.gm, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0135.0167, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gu, %i.dq
  br i1 %.not, label %._crit_edge, label %bb.ap

bb.bd:                                            ; preds = %bb.aq, %bb.ap
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.be:                                            ; preds = %bb.ar
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80

bb.bf:                                            ; preds = %bb.at, %bb.as
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.bg:                                            ; preds = %bb.ax
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.du
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.gz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.bf
  %.pn40 = phi { ptr, i32 } [ %i.gx, %bb.bf ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.gy, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.bh

.loopexit:                                        ; preds = %bb.ay, %bb.az, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn42 = phi { ptr, i32 } [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hb = load ptr, ptr %18, align 8, !tbaa !104  ; 3 uses
  %.not.i78 = icmp eq ptr %i.hb, null
  br i1 %.not.i78, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79: ; preds = %bb.bh
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(88) %i.hb) #32, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79, %bb.bh, %bb.be
  %.pn42.pn = phi { ptr, i32 } [ %i.gw, %bb.be ], [ %.pn42, %bb.bh ], [ %.pn42, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.cn

._crit_edge.thread:                               ; preds = %bb.aj, %._crit_edge
  %i.hf = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bi unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread

bb.bi:                                            ; preds = %._crit_edge.thread
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @__cxa_throw(ptr nonnull %i.hf, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.cr unwind label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread: ; preds = %._crit_edge.thread
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.019 = phi i1 [ false, %bb.bj ], [ true, %bb.bi ] ; 2 uses
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hi = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef %i.hi) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br i1 %.019, label %bb.bl, label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br i1 %.019, label %bb.bl, label %bb.cn

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn38155 = phi { ptr, i32 } [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  call void @__cxa_free_exception(ptr %i.hf) #32
  br label %bb.cn

bb.bm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.hm = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl)
          to label %bb.bn unwind label %bb.cj     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !1087 ; 2 uses
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !1087
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.hp = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #35
          to label %.noexc87 unwind label %bb.cj  ; 3 uses

.noexc87:                                         ; preds = %bb.bn
  %i.hq = load ptr, ptr %15, align 8, !tbaa !281, !noalias !1166
  store ptr %i.hq, ptr %8, align 8, !tbaa !281, !noalias !1166
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.hr, align 8, !tbaa !283, !noalias !1166
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.gs, ptr %i.hs, align 8, !tbaa !284, !noalias !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !1166
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.hp, i64 noundef %i.hn, ptr noundef nonnull %8)
          to label %bb.bo unwind label %bb.bq, !noalias !1166

bb.bo:                                            ; preds = %.noexc87
  store ptr %i.hp, ptr %22, align 8, !tbaa !1169, !alias.scope !1166
  %i.ht = load ptr, ptr %8, align 8, !tbaa !281, !noalias !1166 ; 3 uses
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !283, !noalias !1166 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ht, %i.hu
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i85

.lr.ph.i.i.i.i85:                                 ; preds = %bb.bo, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hz, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.ht, %bb.bo ] ; 2 uses
  %i.hv = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !104, !noalias !1166 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i85
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !16, !noalias !1166
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !1166
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(88) %i.hv) #32, !noalias !1166, !inline_history !1171
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i85
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.hz, %i.hu
  br i1 %.not.i.i.i.i86, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i85, !llvm.loop !287

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !281, !noalias !1166
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.bo
  %i.ia = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ht, %bb.bo ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i1.i.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ia) #33, !noalias !1166
  br label %bb.br

bb.bq:                                            ; preds = %.noexc87
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #32, !noalias !1166
  call void @_ZdlPv(ptr noundef nonnull %i.hp) #33, !noalias !1166
  br label %.body88

bb.br:                                            ; preds = %bb.bp, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ic = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bs unwind label %bb.ck     ; 3 uses

bb.bs:                                            ; preds = %bb.br
  %i.id = load i64, ptr %6, align 8, !tbaa !722   ; 4 uses
  %i.ie = inttoptr i64 %i.id to ptr               ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !722
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 24 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !721 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 32 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !825
  %.not.i.i.i = icmp eq ptr %i.ih, %i.ij
  br i1 %.not.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i64 %i.id, ptr %i.ih, align 8, !tbaa !722
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.ik, ptr %i.ig, align 8, !tbaa !721
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

bb.bu:                                            ; preds = %bb.bs
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !720 ; 10 uses
  %i.im = ptrtoint ptr %i.ih to i64               ; 3 uses
  %i.in = ptrtoint ptr %i.il to i64               ; 3 uses
  %i.io = sub i64 %i.im, %i.in                    ; 3 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775800
  br i1 %i.ip, label %bb.bv, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc90 unwind label %bb.cl

.noexc90:                                         ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bu
  %i.iq = ashr exact i64 %i.io, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 1152921504606846975)
  %i.iu = select i1 %i.is, i64 1152921504606846975, i64 %i.it ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #35
          to label %.noexc91 unwind label %bb.cl  ; 10 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.io
  store i64 %i.id, ptr %i.ix, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.il, %i.ih
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc91
  %25 = add i64 %i.im, -8
  %26 = sub i64 %25, %i.in                        ; 2 uses
  %i.iy = lshr i64 %26, 3
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check268 = icmp ult i64 %26, 152
  br i1 %min.iters.check268, label %.lr.ph.i.i.i.i.i.i.i.i.preheader283, label %vector.memcheck261

vector.memcheck261:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ja = add i64 %i.im, -8
  %i.jb = sub i64 %i.ja, %i.in
  %i.jc = and i64 %i.jb, -8
  %i.jd = add i64 %i.jc, 8                        ; 2 uses
  %scevgep262 = getelementptr i8, ptr %i.iw, i64 %i.jd
  %scevgep263 = getelementptr i8, ptr %i.il, i64 %i.jd
  %bound0264 = icmp ult ptr %i.iw, %scevgep263
  %bound1265 = icmp ult ptr %i.il, %scevgep262
  %found.conflict266 = and i1 %bound0264, %bound1265
  br i1 %found.conflict266, label %.lr.ph.i.i.i.i.i.i.i.i.preheader283, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck261
  %n.vec271 = and i64 %i.iz, 4611686018427387900  ; 3 uses
  %i.je = shl i64 %n.vec271, 3                    ; 2 uses
  %i.jf = getelementptr i8, ptr %i.iw, i64 %i.je  ; 2 uses
  %i.jg = getelementptr i8, ptr %i.il, i64 %i.je
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph269
  %index273 = phi i64 [ 0, %vector.ph269 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.jh = shl i64 %index273, 3                    ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.iw, i64 %i.jh ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.il, i64 %i.jh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.ji = getelementptr i8, ptr %next.gep275, i64 16
  %wide.load276 = load <2 x i64>, ptr %next.gep275, align 8, !tbaa !722, !alias.scope !1177, !noalias !1172
  %wide.load277 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !722, !alias.scope !1177, !noalias !1172
  %i.jj = getelementptr i8, ptr %next.gep274, i64 16
  store <2 x i64> %wide.load276, ptr %next.gep274, align 8, !tbaa !722, !alias.scope !1180, !noalias !1177
  store <2 x i64> %wide.load277, ptr %i.jj, align 8, !tbaa !722, !alias.scope !1180, !noalias !1177
  %i.jk = getelementptr i8, ptr %next.gep275, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep275, align 8, !tbaa !722, !alias.scope !1177, !noalias !1172
  store <2 x ptr> splat (ptr null), ptr %i.jk, align 8, !tbaa !722, !alias.scope !1177, !noalias !1172
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.jl, label %middle.block279, label %vector.body272, !llvm.loop !1182

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.iz, %n.vec271
  br i1 %cmp.n280, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader283

.lr.ph.i.i.i.i.i.i.i.i.preheader283:              ; preds = %vector.memcheck261, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block279
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.iw, %vector.memcheck261 ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.jf, %middle.block279 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.il, %vector.memcheck261 ], [ %i.il, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.jg, %middle.block279 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader283, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader283 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader283 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.jm = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1175, !noalias !1172
  store i64 %i.jm, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1172, !noalias !1175
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1175, !noalias !1172
  %i.jn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.jn, %i.ih
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1183

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block279, %.noexc91
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.iw, %.noexc91 ], [ %i.jf, %middle.block279 ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.il) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.bw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.iw, ptr %i.if, align 8, !tbaa !720
  store ptr %i.jp, ptr %i.ig, align 8, !tbaa !721
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iu
  store ptr %i.jq, ptr %i.ii, align 8, !tbaa !825
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bt, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  %i.jr = load ptr, ptr %22, align 8, !tbaa !1169
  store ptr null, ptr %22, align 8, !tbaa !1169
  %i.js = load ptr, ptr %0, align 8, !tbaa !722   ; 3 uses
  store ptr %i.jr, ptr %0, align 8, !tbaa !722
  %.not.i.i.i.i.i93 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i.i.i93, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.js) #32, !inline_history !1057
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.jw = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17GlobalBinderStateELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl)
          to label %bb.bx unwind label %bb.cm     ; 2 uses

bb.bx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 121
  store i8 0, ptr %i.jx, align 1, !tbaa !1184
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 123
  store i8 0, ptr %i.jy, align 1, !tbaa !1185
  %i.jz = load ptr, ptr %22, align 8, !tbaa !1169 ; 3 uses
  %.not.i98 = icmp eq ptr %i.jz, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i: ; preds = %bb.bx
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(112) %i.jz) #32, !inline_history !1186
  br label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bx, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.kd = load ptr, ptr %17, align 8, !tbaa !520  ; 3 uses
  %i.ke = load ptr, ptr %i.dp, align 8, !tbaa !517 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kd, %i.ke
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.kd, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.kf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !471 ; 3 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i.i99, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(56) %i.kf) #32, !inline_history !1187
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.kj, %i.ke
  br i1 %.not.i.i.i100, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1059

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !520
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  %i.kk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.kd, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.kk) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.kl = load ptr, ptr %12, align 8, !tbaa !480
  %i.km = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !477
  invoke void @_ZSt8_DestroyIPN6duckdb11ColumnIndexEEvT_S3_(ptr noundef %i.kl, ptr noundef %i.kn)
          to label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.ca, !inline_history !1188

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.ko = load ptr, ptr %12, align 8, !tbaa !480  ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ko) #33, !inline_history !1188
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit

bb.ca:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #36, !inline_history !1188
  unreachable

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i109 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i109, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 4 uses
  %i.ku = load atomic i64, ptr %i.kt acquire, align 8 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 4294967297
  %i.kw = trunc i64 %i.ku to i32                  ; 2 uses
  br i1 %i.kv, label %bb.cc, label %bb.cd

end_hunk_6
begin_hunk_7_@_ZN6duckdb6Binder13BindReturningENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_17TableCatalogEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS2_INS_15LogicalOperatorES4_ISJ_ELb1EEESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSN_EEE:bb.a
  %i.lp = phi ptr [ %.pr.i115, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.li, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i116 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i1.i116, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.lp) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.lq = load ptr, ptr %9, align 8, !tbaa !393   ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !392 ; 2 uses
  %.not4.i.i.i117 = icmp eq ptr %i.lq, %i.ls
  br i1 %.not4.i.i.i117, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i118
  %.05.i.i.i119 = phi ptr [ %i.lt, %.lr.ph.i.i.i118 ], [ %i.lq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i119) #32
  %i.lt = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 24 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.lt, %i.ls
  br i1 %.not.i.i.i120, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i118, !llvm.loop !426

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i118
  %.pr.i121 = load ptr, ptr %9, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.lu = phi ptr [ %.pr.i121, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.lq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i122 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i1.i122, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.lu) #33
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.cj:                                            ; preds = %bb.bn, %bb.bm
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.body88

bb.ck:                                            ; preds = %bb.br
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125

bb.cl:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.bv
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i123 = icmp eq i64 %i.id, 0
  br i1 %.not.i123, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i124

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i124: ; preds = %bb.cl
  %i.ly = load ptr, ptr %i.ie, align 8, !tbaa !16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ie) #32, !inline_history !1073
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125

bb.cm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit96
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i124, %bb.cl, %bb.cm, %bb.ck
  %.pn = phi { ptr, i32 } [ %i.mb, %bb.cm ], [ %i.lw, %bb.ck ], [ %i.lx, %bb.cl ], [ %i.lx, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i124 ] ; 2 uses
  %i.mc = load ptr, ptr %22, align 8, !tbaa !1169 ; 3 uses
  %.not.i126 = icmp eq ptr %i.mc, null
  br i1 %.not.i126, label %.body88, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i127

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i127: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !16
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(112) %i.mc) #32, !inline_history !1186
  br label %.body88

.body88:                                          ; preds = %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i127, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125, %bb.cj, %bb.bq
  %.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.bq ], [ %i.lv, %bb.cj ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit125 ], [ %.pn, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.bd, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.bl, %.body88, %bb.ao
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.ao ], [ %.pn38155, %bb.bl ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn.pn, %.body88 ], [ %.pn42.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit80 ], [ %i.gv, %bb.bd ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #32
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #32
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.an
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %bb.cn ], [ %i.ef, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %14) #32
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.am
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn, %bb.co ], [ %i.ee, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %.body

.body:                                            ; preds = %bb.w, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h, %bb.cp, %bb.al, %bb.ak
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.ak ], [ %.pn42.pn.pn.pn.pn.pn, %bb.cp ], [ %i.ed, %bb.al ], [ %i.af, %bb.h ], [ %i.bx, %bb.y ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bo, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #32
  br label %bb.cq

bb.cq:                                            ; preds = %.body, %bb.g
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %.body ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn

bb.cr:                                            ; preds = %bb.bj
  unreachable
}

declare { ptr, i8 } @_ZNK6duckdb10ColumnList7LogicalEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb16ColumnDefinition4NameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition9GeneratedEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEERNS_17TableCatalogEntryESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %8 = alloca %"class.duckdb::unique_ptr.1397", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %6, ptr %i.b, align 8, !tbaa !1189
  call void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEPNS_17TableCatalogEntryERmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSS_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1397") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %7)
  %i.c = load ptr, ptr %8, align 8, !tbaa !1191   ; 5 uses
  store ptr null, ptr %8, align 8, !tbaa !1191
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1005 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !1006
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1004 ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.c, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #35
          to label %.noexc7 unwind label %bb.d    ; 12 uses

.noexc7:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.c to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc7
  %9 = add i64 %i.l, -8
  %10 = sub i64 %9, %i.m                          ; 2 uses
  %i.y = lshr i64 %10, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %10, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.aa = add i64 %i.l, -8
  %i.ab = sub i64 %i.aa, %i.m
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ad
  %scevgep27 = getelementptr i8, ptr %i.k, i64 %i.ad
  %bound0 = icmp ult ptr %i.v, %scevgep27
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.k, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ah ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.k, i64 %i.ah ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.ai = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !1006, !alias.scope !1199, !noalias !1194
  %wide.load29 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !1006, !alias.scope !1199, !noalias !1194
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1202, !noalias !1199
  store <2 x i64> %wide.load29, ptr %i.aj, align 8, !tbaa !1006, !alias.scope !1202, !noalias !1199
  %i.ak = getelementptr i8, ptr %next.gep28, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep28, align 8, !tbaa !1006, !alias.scope !1199, !noalias !1194
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !1006, !alias.scope !1199, !noalias !1194
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.i.i.i.preheader31:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader31 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1197, !noalias !1194
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1194, !noalias !1197
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1197, !noalias !1194
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1205

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc7
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc7 ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread24, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread24: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !1004
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !1005
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #33
  %.pre.pre = load ptr, ptr %8, align 8, !tbaa !1191 ; 3 uses
  store ptr %i.v, ptr %i.d, align 8, !tbaa !1004
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !1005
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !1193
  %.not.i8 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.as = load ptr, ptr %.pre.pre, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(296) %.pre.pre) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread24, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  ret void

bb.d:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  %.not.i9 = icmp eq ptr %i.c, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i10

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i10: ; preds = %bb.d
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.c) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i10
  %i.az = load ptr, ptr %8, align 8, !tbaa !1191  ; 3 uses
  %.not.i12 = icmp eq ptr %i.az, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i13: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(296) %i.az) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit14: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit11, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %i.av
}

declare void @_ZN6duckdb15ReturningBinderC1ERNS_6BinderERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #3

declare void @_ZN6duckdb6Binder21ExpandStarExpressionsERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES9_(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1169   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.121, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable
end_hunk_7
begin_hunk_8_@_ZN6duckdb11BindContext18GetSimilarBindingsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i68: ; preds = %.lr.ph.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i66, i64 40 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.gs, %i.go
  br i1 %.not.i.i.i69, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i70, label %.lr.ph.i.i.i65, !llvm.loop !1263

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i70: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i68
  %.pr.i71 = load ptr, ptr %5, align 8, !tbaa !1242
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i72

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i72: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i70, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit
  %i.gt = phi ptr [ %.pr.i71, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i70 ], [ %i.gn, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i73 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i1.i73, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit75, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i72
  call void @_ZdlPv(ptr noundef nonnull %i.gt) #33
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit75

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit75: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i72, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.ba:                                            ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bb:                                            ; preds = %bb.aw
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  br label %.body

.body:                                            ; preds = %bb.ba, %bb.d, %bb.c, %bb.g, %bb.av, %bb.bb
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %i.gv, %bb.bb ], [ %.pn.pn.pn.pn.pn.pn, %bb.av ], [ %i.gu, %bb.ba ], [ %i.ah, %bb.d ], [ %i.ah, %bb.c ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef double @_ZN6duckdb10StringUtil16SimilarityRatingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext19GetMatchingBindingsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::vector.1276") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1230 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1230 ; 2 uses
  %.not32 = icmp eq ptr %i.b, %i.d
  br i1 %.not32, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit
  store ptr %i.bp, ptr %i.e, align 8
  store ptr %i.bo, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.bo, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit ] ; 15 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.bp, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit ] ; 13 uses
  %.sroa.018.033 = phi ptr [ %i.b, %.lr.ph ], [ %i.bq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10unique_ptrINS_7BindingESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.018.033)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.k = load i64, ptr %i.j, align 8, !tbaa !383
  %.not.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.not.i.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.e
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %.sroa.06.0.i.i.i.i, %.noexc ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.n = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.g
  br i1 %i.n, label %_ZN6duckdb7Binding18HasMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f, !llvm.loop !384

bb.h:                                             ; preds = %bb.d
  %i.o = invoke noundef i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !382
  %i.s = urem i64 %i.o, %i.r                      ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !381
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !150  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc11
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !143  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !151
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.x = phi i64 [ %.pre.i.i.i.i.i.i, %bb.i ], [ %i.ae, %bb.k ]
  %.015.i.i.i.i.i.i = phi ptr [ %i.v, %bb.i ], [ %.0.i.i.i.i.i.i, %bb.k ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.w, %bb.i ], [ %i.ab, %bb.k ] ; 3 uses
  %i.y = icmp eq i64 %i.o, %i.x
  br i1 %i.y, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.aa = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i.i.i
  br i1 %i.aa, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEE4findERSA_.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i.i: ; preds = %.noexc12, %bb.j
  %i.ab = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !143 ; 3 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !382
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !151 ; 2 uses
  %i.af = urem i64 %i.ae, %i.ac
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i.i.i, label %bb.j, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit, !llvm.loop !385

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEE4findERSA_.exit.i.i: ; preds = %.noexc12
  %i.ag = load ptr, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !143
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit, label %_ZN6duckdb7Binding18HasMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb7Binding18HasMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEE4findERSA_.exit.i.i
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb7Binding18HasMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = ptrtoint ptr %i.i to i64
  store i64 %i.ai, ptr %i.h, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit

bb.m:                                             ; preds = %_ZN6duckdb7Binding18HasMatchingBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1127  ; 7 uses
  %i.al = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.n, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  store ptr %i.h, ptr %i.e, align 8
  store ptr %i.g, ptr %i.f, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc14 unwind label %.loopexit.split-lp27

.noexc14:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #35
          to label %.noexc15 unwind label %.loopexit26 ; 8 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = ptrtoint ptr %i.i to i64
  store i64 %i.ax, ptr %i.aw, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.g
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %i.ay = ptrtoaddr ptr %i.av to i64
  %3 = add i64 %i.al, -8
  %4 = sub i64 %3, %i.am                          ; 2 uses
  %i.az = lshr i64 %4, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 24
  %i.bb = sub i64 %i.ay, %i.am
  %diff.check = icmp ult i64 %i.bb, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.av, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.ak, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bf ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.ak, i64 %i.bf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.bg = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !1267, !noalias !1264
  %wide.load109 = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !1267, !noalias !1264
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1264, !noalias !1267
  store <2 x i64> %wide.load109, ptr %i.bh, align 8, !alias.scope !1264, !noalias !1267
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !1269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader111

.lr.ph.i.i.i.i.i.i.i.preheader111:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader111, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader111 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader111 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.bj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1267, !noalias !1264
  store i64 %i.bj, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1264, !noalias !1267
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1270

_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc15 ], [ %i.bd, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #33
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.av, ptr %0, align 8, !tbaa !1127
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.e, align 8
  store ptr %i.g, ptr %i.f, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i.i.i
  %lpad.loopexit22 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.e, align 8
  store ptr %i.g, ptr %i.f, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h, %bb.c
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.e, align 8
  store ptr %i.g, ptr %i.f, align 8
  br label %.loopexit.split-lp

.loopexit26:                                      ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit28 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.e, align 8
  store ptr %i.g, ptr %i.f, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp27:                             ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i.i, %bb.k, %bb.f, %.noexc11, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEE4findERSA_.exit.i.i, %bb.l, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.bo = phi ptr [ %i.g, %bb.f ], [ %i.bn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %.noexc11 ], [ %i.g, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEE4findERSA_.exit.i.i ], [ %i.g, %bb.l ], [ %i.g, %bb.k ], [ %i.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.bp = phi ptr [ %i.h, %bb.f ], [ %i.bm, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.h, %.noexc11 ], [ %i.h, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEE4findERSA_.exit.i.i ], [ %i.aj, %bb.l ], [ %i.h, %bb.k ], [ %i.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.018.033, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit26, %.loopexit.split-lp27, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp23, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit22, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit28, %.loopexit26 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp27 ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !1127  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %i.br) #33
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.p
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12emplace_backIJS6_RdEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1239 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !7
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IS5_RdTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !15
  %i.m = load i64, ptr %i.g, align 8, !tbaa !14
  store i64 %i.m, ptr %i.e, align 8, !tbaa !14
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IS5_RdTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IS5_RdTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !11
  store ptr %i.g, ptr %1, align 8, !tbaa !15
  store i64 0, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.g, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load double, ptr %2, align 8, !tbaa !599
  store double %i.r, ptr %i.q, align 8, !tbaa !1254
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1239
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1239
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_insertIJS6_RdEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IS5_RdTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  ret void
}

declare void @_ZN6duckdb10StringUtil11TopNStringsENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdELb1ESaIS9_EEEmd(ptr dead_on_unwind writable sret(%"class.duckdb::vector.183") align 8, ptr noundef, i64 noundef, double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdELb1ESaIS8_EEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1239 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1242   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = icmp ugt i64 %i.g, 230584300921369395
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i, !prof !107

.noexc.i.i:                                       ; preds = %bb.b
end_hunk_8
begin_hunk_9_@_ZN6duckdb17GetCandidateAliasB5cxx11ERKNS_12BindingAliasES2_:bb.a
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext11GetBindingsERKNS_12BindingAliasERNS_9ErrorDataE(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::vector.1276") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.2052", align 8  ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.duckdb::vector.183", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.duckdb::vector.183", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.duckdb::ErrorData", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.bf unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %.031, label %bb.f, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %.031, label %bb.f, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EED2Ev.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn148 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #32
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EED2Ev.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1230 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1230 ; 2 uses
  %.not150156 = icmp eq ptr %i.n, %i.p
  br i1 %.not150156, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit
  %i.w = icmp eq ptr %i.bt, %i.bs
  store ptr %i.bt, ptr %0, align 8
  br i1 %i.w, label %._crit_edge.thread, label %bb.bc

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.bs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit ] ; 9 uses
  %.sroa.0143.0157 = phi ptr [ %i.n, %.lr.ph ], [ %i.bu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.bt, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit ] ; 17 uses
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7BindingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0143.0157)
          to label %bb.i unwind label %bb.t       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !11
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  br i1 %i.ad, label %bb.k, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit

bb.k:                                             ; preds = %.noexc, %bb.i
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !11
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ah = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %.noexc51 unwind label %bb.t

.noexc51:                                         ; preds = %bb.l
  br i1 %i.ah, label %bb.m, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit

bb.m:                                             ; preds = %.noexc51, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.aj = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNK6duckdb12BindingAlias7MatchesERKS0_.exit unwind label %bb.t

_ZNK6duckdb12BindingAlias7MatchesERKS0_.exit:     ; preds = %bb.m
  br i1 %i.aj, label %bb.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %_ZNK6duckdb12BindingAlias7MatchesERKS0_.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10unique_ptrINS_7BindingESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0143.0157)
          to label %bb.o unwind label %.loopexit  ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !1317
  %.not.i.i = icmp eq ptr %i.x, %i.al
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = ptrtoint ptr %i.ak to i64
  store i64 %i.am, ptr %i.x, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.u, align 8, !tbaa !1244
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.ao = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ap = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.r, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.y, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #35
          to label %.noexc54 unwind label %.loopexit ; 8 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ak to i64
  store i64 %i.ba, ptr %i.az, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc54
  %i.bb = ptrtoaddr ptr %i.ay to i64
  %18 = add i64 %i.ao, -8
  %19 = sub i64 %18, %i.ap                        ; 2 uses
  %i.bc = lshr i64 %19, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %19, 24
  %i.be = sub i64 %i.bb, %i.ap
  %diff.check = icmp ult i64 %i.be, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader242, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.y, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bi ; 2 uses
  %next.gep239 = getelementptr i8, ptr %i.y, i64 %i.bi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.bj = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep239, align 8, !alias.scope !1321, !noalias !1318
  %wide.load240 = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !1321, !noalias !1318
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1318, !noalias !1321
  store <2 x i64> %wide.load240, ptr %i.bk, align 8, !alias.scope !1318, !noalias !1321
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !1323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader242

.lr.ph.i.i.i.i.i.i.i.preheader242:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader242, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader242 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader242 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1321, !noalias !1318
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1318, !noalias !1321
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1324

_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc54
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc54 ], [ %i.bg, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #33
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.bp, ptr %i.u, align 8, !tbaa !1244
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bq, ptr %i.v, align 8, !tbaa !1317
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %0, align 8
  br label %bb.bd

.loopexit:                                        ; preds = %bb.n, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %0, align 8
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE9push_backEOS3_.exit: ; preds = %.noexc, %.noexc51, %bb.p, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZNK6duckdb12BindingAlias7MatchesERKS0_.exit
  %i.bs = phi ptr [ %i.x, %.noexc ], [ %i.x, %.noexc51 ], [ %i.an, %bb.p ], [ %i.bp, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.x, %_ZNK6duckdb12BindingAlias7MatchesERKS0_.exit ] ; 2 uses
  %i.bt = phi ptr [ %i.y, %.noexc ], [ %i.y, %.noexc51 ], [ %i.y, %bb.p ], [ %i.ay, %_ZNSt6vectorISt17reference_wrapperIN6duckdb7BindingEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.y, %_ZNK6duckdb12BindingAlias7MatchesERKS0_.exit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0143.0157, i64 8 ; 2 uses
  %.not150 = icmp eq ptr %i.bu, %i.p
  br i1 %.not150, label %._crit_edge, label %bb.h

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %.lcssa152226 = phi ptr [ %i.bt, %._crit_edge ], [ null, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !1230 ; 2 uses
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !1230 ; 2 uses
  %.not151158 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not151158, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %._crit_edge.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  br label %bb.u

._crit_edge162:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN6duckdb17GetCandidateAliasB5cxx11ERKNS_12BindingAliasES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.ac unwind label %bb.as

bb.u:                                             ; preds = %.lr.ph161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.sroa.0137.0159 = phi ptr [ %i.bv, %.lr.ph161 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.cb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7BindingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0137.0159)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  invoke void @_ZN6duckdb17GetCandidateAliasB5cxx11ERKNS_12BindingAliasES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.cc)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !295 ; 7 uses
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !380
  %.not.i.i55 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i55, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !7
  %i.cg = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bz
  br i1 %i.ch, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.ci = load i64, ptr %i.ca, align 8, !tbaa !11 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.bz, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !15
  %i.cl = load i64, ptr %i.bz, align 8, !tbaa !14
  store i64 %i.cl, ptr %i.cf, align 8, !tbaa !14
  %.pre = load i64, ptr %i.ca, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cm = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ci, %bb.y ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !11
  store ptr %i.bz, ptr %8, align 8, !tbaa !15
  store i64 0, ptr %i.ca, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %i.co, ptr %i.bx, align 8, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.z:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ab

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.z
  %.pre168 = load ptr, ptr %8, align 8, !tbaa !15 ; 2 uses
  %i.cp = icmp eq ptr %.pre168, %i.bz
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef %.pre168) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0137.0159, i64 8 ; 2 uses
  %.not151 = icmp eq ptr %i.cq, %i.bw
  br i1 %.not151, label %._crit_edge162, label %bb.u

bb.aa:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.ab:                                            ; preds = %bb.z
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bz
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.ct) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.aa
  %.pn44 = phi { ptr, i32 } [ %i.cr, %bb.aa ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.cs, %bb.ab ]
end_hunk_9
begin_hunk_10_@_ZN6duckdb11BindContext28GenerateAllColumnExpressionsERNS_14StarExpressionERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br i1 %.0.i.i, label %bb.al, label %.body

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.fo) #32
  br label %.body

bb.am:                                            ; preds = %bb.aj
  unreachable

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.lr.ph758
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 9
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !343
  %.not.i214 = icmp eq i8 %i.fz, 10
  br i1 %.not.i214, label %_ZN6duckdb14BaseExpression4CastINS_18OperatorExpressionEEERT_v.exit, label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.ga = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.127, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.ga, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.as unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.an
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gd = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.gd) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br i1 %.0.i, label %bb.ar, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br i1 %.0.i, label %bb.ar, label %.body

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ga) #32
  br label %.body

bb.as:                                            ; preds = %bb.ap
  unreachable

_ZN6duckdb14BaseExpression4CastINS_18OperatorExpressionEEERT_v.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.gg = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35
          to label %.noexc220 unwind label %bb.bd ; 6 uses

.noexc220:                                        ; preds = %_ZN6duckdb14BaseExpression4CastINS_18OperatorExpressionEEERT_v.exit
  store ptr %i.bk, ptr %8, align 8, !tbaa !7, !noalias !1377
  %i.gh = load ptr, ptr %.sroa.0544.0761, align 8, !tbaa !15, !noalias !1377 ; 2 uses
  %i.gi = load i64, ptr %i.ci, align 8, !tbaa !11, !noalias !1377 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32, !noalias !1377
  store i64 %i.gi, ptr %i.e, align 8, !tbaa !18, !noalias !1377
  %i.gj = icmp ugt i64 %i.gi, 15
  br i1 %i.gj, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc220
  %i.gk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i219 unwind label %bb.ax, !noalias !1377 ; 2 uses

.noexc.i219:                                      ; preds = %.noexc.i.i
  store ptr %i.gk, ptr %8, align 8, !tbaa !15, !noalias !1377
  %i.gl = load i64, ptr %i.e, align 8, !tbaa !18, !noalias !1377
  store i64 %i.gl, ptr %i.bk, align 8, !tbaa !14, !noalias !1377
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i219, %.noexc220
  %i.gm = phi ptr [ %i.gk, %.noexc.i219 ], [ %i.bk, %.noexc220 ] ; 2 uses
  switch i64 %i.gi, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %bb.av
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i
  %i.gn = load i8, ptr %i.gh, align 1, !tbaa !14, !noalias !1377
  store i8 %i.gn, ptr %i.gm, align 1, !tbaa !14, !noalias !1377
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gm, ptr align 1 %i.gh, i64 %i.gi, i1 false), !noalias !1377
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i.i.i
  %i.go = load i64, ptr %i.e, align 8, !tbaa !18, !noalias !1377 ; 2 uses
  store i64 %i.go, ptr %i.bl, align 8, !tbaa !11, !noalias !1377
  %i.gp = load ptr, ptr %8, align 8, !tbaa !15, !noalias !1377
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  store i8 0, ptr %i.gq, align 1, !tbaa !14, !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32, !noalias !1377
  invoke void @_ZN6duckdb19ColumnRefExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12BindingAliasE(ptr noundef nonnull align 8 dereferenceable(80) %i.gg, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0533.0756)
          to label %bb.aw unwind label %bb.ay, !noalias !1377

bb.aw:                                            ; preds = %bb.av
  %i.gr = load ptr, ptr %8, align 8, !tbaa !15, !noalias !1377 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.bk
  br i1 %i.gs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.gr) #33, !noalias !1377
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.ax:                                            ; preds = %.noexc.i.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

bb.ay:                                            ; preds = %bb.av
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = load ptr, ptr %8, align 8, !tbaa !15, !noalias !1377 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.bk
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.ay
  call void @_ZdlPv(ptr noundef %i.gv) #33, !noalias !1377
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %bb.ax
  %.pn.i = phi { ptr, i32 } [ %i.gt, %bb.ax ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.gu, %bb.ay ]
  call void @_ZdlPv(ptr noundef nonnull %i.gg) #33, !noalias !1377
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fn, i64 56 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fn, i64 64 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !517 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fn, i64 72 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !1380
  %.not.i.i223 = icmp eq ptr %i.gz, %i.hb
  br i1 %.not.i.i223, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.hc = ptrtoint ptr %i.gg to i64
  store i64 %i.hc, ptr %i.gz, align 8, !tbaa !471
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hd, ptr %i.gy, align 8, !tbaa !517
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.he = load ptr, ptr %i.gx, align 8, !tbaa !520 ; 10 uses
  %i.hf = ptrtoint ptr %i.gz to i64               ; 3 uses
  %i.hg = ptrtoint ptr %i.he to i64               ; 3 uses
  %i.hh = sub i64 %i.hf, %i.hg                    ; 3 uses
  %i.hi = icmp eq i64 %i.hh, 9223372036854775800
  br i1 %i.hi, label %bb.bb, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc225 unwind label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234.loopexit.split-lp

.noexc225:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %i.hj = ashr exact i64 %i.hh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  %i.hk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hj ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hj
  %i.hm = call i64 @llvm.umin.i64(i64 %i.hk, i64 1152921504606846975)
  %i.hn = select i1 %i.hl, i64 1152921504606846975, i64 %i.hm ; 3 uses
  %.not.i.i.i.i224 = icmp ne i64 %i.hn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i224)
  %i.ho = shl nuw nsw i64 %i.hn, 3
  %i.hp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #35
          to label %.noexc226 unwind label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234.loopexit ; 10 uses

.noexc226:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hh
  %i.hr = ptrtoint ptr %i.gg to i64
  store i64 %i.hr, ptr %i.hq, align 8, !tbaa !471
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.he, %i.gz
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc226
  %47 = add i64 %i.hf, -8
  %48 = sub i64 %47, %i.hg                        ; 2 uses
  %i.hs = lshr i64 %48, 3
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check1055 = icmp ult i64 %48, 56
  br i1 %min.iters.check1055, label %.lr.ph.i.i.i.i.i.i.i.preheader1105, label %vector.memcheck1046

vector.memcheck1046:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep1047 = getelementptr i8, ptr %i.hp, i64 8
  %i.hu = add i64 %i.hf, -8
  %i.hv = sub i64 %i.hu, %i.hg
  %i.hw = and i64 %i.hv, -8                       ; 2 uses
  %scevgep1048 = getelementptr i8, ptr %scevgep1047, i64 %i.hw
  %scevgep1049 = getelementptr i8, ptr %i.he, i64 8
  %scevgep1050 = getelementptr i8, ptr %scevgep1049, i64 %i.hw
  %bound01051 = icmp ult ptr %i.hp, %scevgep1050
  %bound11052 = icmp ult ptr %i.he, %scevgep1048
  %found.conflict1053 = and i1 %bound01051, %bound11052
  br i1 %found.conflict1053, label %.lr.ph.i.i.i.i.i.i.i.preheader1105, label %vector.ph1056

vector.ph1056:                                    ; preds = %vector.memcheck1046
  %n.vec1058 = and i64 %i.ht, 4611686018427387900 ; 3 uses
  %i.hx = shl i64 %n.vec1058, 3                   ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hp, i64 %i.hx  ; 2 uses
  %i.hz = getelementptr i8, ptr %i.he, i64 %i.hx
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %vector.ph1056
  %index1060 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1065, %vector.body1059 ] ; 2 uses
  %i.ia = shl i64 %index1060, 3                   ; 2 uses
  %next.gep1061 = getelementptr i8, ptr %i.hp, i64 %i.ia ; 2 uses
  %next.gep1062 = getelementptr i8, ptr %i.he, i64 %i.ia ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.ib = getelementptr i8, ptr %next.gep1062, i64 16
  %wide.load1063 = load <2 x i64>, ptr %next.gep1062, align 8, !tbaa !471, !alias.scope !1386, !noalias !1381
  %wide.load1064 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !471, !alias.scope !1386, !noalias !1381
  %i.ic = getelementptr i8, ptr %next.gep1061, i64 16
  store <2 x i64> %wide.load1063, ptr %next.gep1061, align 8, !tbaa !471, !alias.scope !1389, !noalias !1386
  store <2 x i64> %wide.load1064, ptr %i.ic, align 8, !tbaa !471, !alias.scope !1389, !noalias !1386
  %i.id = getelementptr i8, ptr %next.gep1062, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1062, align 8, !tbaa !471, !alias.scope !1386, !noalias !1381
  store <2 x ptr> splat (ptr null), ptr %i.id, align 8, !tbaa !471, !alias.scope !1386, !noalias !1381
  %index.next1065 = add nuw i64 %index1060, 4     ; 2 uses
  %i.ie = icmp eq i64 %index.next1065, %n.vec1058
  br i1 %i.ie, label %middle.block1066, label %vector.body1059, !llvm.loop !1391

middle.block1066:                                 ; preds = %vector.body1059
  %cmp.n1067 = icmp eq i64 %i.ht, %n.vec1058
  br i1 %cmp.n1067, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1105

.lr.ph.i.i.i.i.i.i.i.preheader1105:               ; preds = %vector.memcheck1046, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1066
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.hp, %vector.memcheck1046 ], [ %i.hp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hy, %middle.block1066 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.he, %vector.memcheck1046 ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hz, %middle.block1066 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1105, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1105 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1105 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.if = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !471, !alias.scope !1384, !noalias !1381
  store i64 %i.if, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !471, !alias.scope !1381, !noalias !1384
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !471, !alias.scope !1384, !noalias !1381
  %i.ig = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ig, %i.gz
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1392

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block1066, %.noexc226
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.hp, %.noexc226 ], [ %i.hy, %middle.block1066 ], [ %i.ih, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.he) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.hp, ptr %i.gx, align 8, !tbaa !520
  store ptr %i.ii, ptr %i.gy, align 8, !tbaa !517
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hn
  store ptr %i.ij, ptr %i.ha, align 8, !tbaa !1380
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.az
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0533.0756, i64 96 ; 2 uses
  %.not616 = icmp eq ptr %i.ik, %i.fk
  br i1 %.not616, label %._crit_edge759, label %.lr.ph758

bb.bd:                                            ; preds = %_ZN6duckdb14BaseExpression4CastINS_18OperatorExpressionEEERT_v.exit
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit622 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234.loopexit.split-lp: ; preds = %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234: ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234.loopexit
  %lpad.phi623 = phi { ptr, i32 } [ %lpad.loopexit622, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234.loopexit.split-lp ]
  %i.im = load ptr, ptr %i.gg, align 8, !tbaa !16
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(56) %i.gg) #32, !inline_history !473
  br label %.body

bb.be:                                            ; preds = %._crit_edge759
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0544.0761)
          to label %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit637

_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.be
  %i.iq = invoke noundef zeroext i1 @_ZN6duckdb12HandleRenameERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEERNS_17ExclusionListInfoE(ptr noundef nonnull align 8 dereferenceable(265) %1, ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(176) %15)
          to label %bb.bf unwind label %.loopexit637

bb.bf:                                            ; preds = %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.iq, label %bb.bg, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit251

bb.bg:                                            ; preds = %bb.bf
  %i.ir = load ptr, ptr %i.bi, align 8, !tbaa !517 ; 6 uses
  %i.is = load ptr, ptr %i.bj, align 8, !tbaa !1380
  %.not.i.i236 = icmp eq ptr %i.ir, %i.is
  br i1 %.not.i.i236, label %bb.bh, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit251.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit251.thread: ; preds = %bb.bg
  %i.it = load i64, ptr %19, align 8, !tbaa !471
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !471
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.iu, ptr %i.bi, align 8, !tbaa !517
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit254

bb.bh:                                            ; preds = %bb.bg
  %i.iv = load ptr, ptr %2, align 8, !tbaa !520   ; 10 uses
  %i.iw = ptrtoint ptr %i.ir to i64               ; 3 uses
  %i.ix = ptrtoint ptr %i.iv to i64               ; 3 uses
  %i.iy = sub i64 %i.iw, %i.ix                    ; 3 uses
  %i.iz = icmp eq i64 %i.iy, 9223372036854775800
  br i1 %i.iz, label %bb.bi, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i237

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc249 unwind label %.loopexit.split-lp638

.noexc249:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i237: ; preds = %bb.bh
  %i.ja = ashr exact i64 %i.iy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i238 = call i64 @llvm.umax.i64(i64 %i.ja, i64 1)
  %i.jb = add nsw i64 %.sroa.speculated.i.i.i.i238, %i.ja ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.ja
  %i.jd = call i64 @llvm.umin.i64(i64 %i.jb, i64 1152921504606846975)
  %i.je = select i1 %i.jc, i64 1152921504606846975, i64 %i.jd ; 3 uses
  %.not.i.i.i.i239 = icmp ne i64 %i.je, 0
  call void @llvm.assume(i1 %.not.i.i.i.i239)
  %i.jf = shl nuw nsw i64 %i.je, 3
  %i.jg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jf) #35
          to label %.noexc250 unwind label %.loopexit637 ; 10 uses

.noexc250:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i237
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.iy
  %i.ji = load i64, ptr %19, align 8, !tbaa !471
  store i64 %i.ji, ptr %i.jh, align 8, !tbaa !471
  store ptr null, ptr %19, align 8, !tbaa !471
  %.not10.i.i.i.i.i.i.i240 = icmp eq ptr %i.iv, %i.ir
  br i1 %.not10.i.i.i.i.i.i.i240, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i245, label %.lr.ph.i.i.i.i.i.i.i241.preheader

.lr.ph.i.i.i.i.i.i.i241.preheader:                ; preds = %.noexc250
  %49 = add i64 %i.iw, -8
  %50 = sub i64 %49, %i.ix                        ; 2 uses
  %i.jj = lshr i64 %50, 3
  %i.jk = add nuw nsw i64 %i.jj, 1                ; 2 uses
  %min.iters.check1031 = icmp ult i64 %50, 56
  br i1 %min.iters.check1031, label %.lr.ph.i.i.i.i.i.i.i241.preheader1107, label %vector.memcheck1022

vector.memcheck1022:                              ; preds = %.lr.ph.i.i.i.i.i.i.i241.preheader
  %scevgep1023 = getelementptr i8, ptr %i.jg, i64 8
  %i.jl = add i64 %i.iw, -8
  %i.jm = sub i64 %i.jl, %i.ix
  %i.jn = and i64 %i.jm, -8                       ; 2 uses
  %scevgep1024 = getelementptr i8, ptr %scevgep1023, i64 %i.jn
  %scevgep1025 = getelementptr i8, ptr %i.iv, i64 8
  %scevgep1026 = getelementptr i8, ptr %scevgep1025, i64 %i.jn
  %bound01027 = icmp ult ptr %i.jg, %scevgep1026
  %bound11028 = icmp ult ptr %i.iv, %scevgep1024
  %found.conflict1029 = and i1 %bound01027, %bound11028
  br i1 %found.conflict1029, label %.lr.ph.i.i.i.i.i.i.i241.preheader1107, label %vector.ph1032

vector.ph1032:                                    ; preds = %vector.memcheck1022
  %n.vec1034 = and i64 %i.jk, 4611686018427387900 ; 3 uses
  %i.jo = shl i64 %n.vec1034, 3                   ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jg, i64 %i.jo  ; 2 uses
  %i.jq = getelementptr i8, ptr %i.iv, i64 %i.jo
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %vector.ph1032
  %index1036 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1041, %vector.body1035 ] ; 2 uses
  %i.jr = shl i64 %index1036, 3                   ; 2 uses
  %next.gep1037 = getelementptr i8, ptr %i.jg, i64 %i.jr ; 2 uses
  %next.gep1038 = getelementptr i8, ptr %i.iv, i64 %i.jr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.js = getelementptr i8, ptr %next.gep1038, i64 16
  %wide.load1039 = load <2 x i64>, ptr %next.gep1038, align 8, !tbaa !471, !alias.scope !1398, !noalias !1393
  %wide.load1040 = load <2 x i64>, ptr %i.js, align 8, !tbaa !471, !alias.scope !1398, !noalias !1393
  %i.jt = getelementptr i8, ptr %next.gep1037, i64 16
  store <2 x i64> %wide.load1039, ptr %next.gep1037, align 8, !tbaa !471, !alias.scope !1401, !noalias !1398
  store <2 x i64> %wide.load1040, ptr %i.jt, align 8, !tbaa !471, !alias.scope !1401, !noalias !1398
  %i.ju = getelementptr i8, ptr %next.gep1038, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1038, align 8, !tbaa !471, !alias.scope !1398, !noalias !1393
  store <2 x ptr> splat (ptr null), ptr %i.ju, align 8, !tbaa !471, !alias.scope !1398, !noalias !1393
  %index.next1041 = add nuw i64 %index1036, 4     ; 2 uses
  %i.jv = icmp eq i64 %index.next1041, %n.vec1034
  br i1 %i.jv, label %middle.block1042, label %vector.body1035, !llvm.loop !1403

middle.block1042:                                 ; preds = %vector.body1035
  %cmp.n1043 = icmp eq i64 %i.jk, %n.vec1034
  br i1 %cmp.n1043, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i245, label %.lr.ph.i.i.i.i.i.i.i241.preheader1107

.lr.ph.i.i.i.i.i.i.i241.preheader1107:            ; preds = %vector.memcheck1022, %.lr.ph.i.i.i.i.i.i.i241.preheader, %middle.block1042
  %.012.i.i.i.i.i.i.i242.ph = phi ptr [ %i.jg, %vector.memcheck1022 ], [ %i.jg, %.lr.ph.i.i.i.i.i.i.i241.preheader ], [ %i.jp, %middle.block1042 ]
  %.0911.i.i.i.i.i.i.i243.ph = phi ptr [ %i.iv, %vector.memcheck1022 ], [ %i.iv, %.lr.ph.i.i.i.i.i.i.i241.preheader ], [ %i.jq, %middle.block1042 ]
  br label %.lr.ph.i.i.i.i.i.i.i241

.lr.ph.i.i.i.i.i.i.i241:                          ; preds = %.lr.ph.i.i.i.i.i.i.i241.preheader1107, %.lr.ph.i.i.i.i.i.i.i241
  %.012.i.i.i.i.i.i.i242 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i.i241 ], [ %.012.i.i.i.i.i.i.i242.ph, %.lr.ph.i.i.i.i.i.i.i241.preheader1107 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i243 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i.i241 ], [ %.0911.i.i.i.i.i.i.i243.ph, %.lr.ph.i.i.i.i.i.i.i241.preheader1107 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.jw = load i64, ptr %.0911.i.i.i.i.i.i.i243, align 8, !tbaa !471, !alias.scope !1396, !noalias !1393
  store i64 %i.jw, ptr %.012.i.i.i.i.i.i.i242, align 8, !tbaa !471, !alias.scope !1393, !noalias !1396
  store ptr null, ptr %.0911.i.i.i.i.i.i.i243, align 8, !tbaa !471, !alias.scope !1396, !noalias !1393
  %i.jx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i243, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i242, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i244 = icmp eq ptr %i.jx, %i.ir
  br i1 %.not.i.i.i.i.i.i.i244, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i245, label %.lr.ph.i.i.i.i.i.i.i241, !llvm.loop !1404

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i245: ; preds = %.lr.ph.i.i.i.i.i.i.i241, %middle.block1042, %.noexc250
  %.0.lcssa.i.i.i.i.i.i.i246 = phi ptr [ %i.jg, %.noexc250 ], [ %i.jp, %middle.block1042 ], [ %i.jy, %.lr.ph.i.i.i.i.i.i.i241 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i246, i64 8
  %.not.i23.i.i.i247 = icmp eq ptr %i.iv, null
  br i1 %.not.i23.i.i.i247, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i248, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i245
  call void @_ZdlPv(ptr noundef nonnull %i.iv) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i248

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i248: ; preds = %bb.bj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i245
  store ptr %i.jg, ptr %2, align 8, !tbaa !520
  store ptr %i.jz, ptr %i.bi, align 8, !tbaa !517
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.je
  store ptr %i.ka, ptr %i.bj, align 8, !tbaa !1380
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit251

.loopexit637:                                     ; preds = %._crit_edge759, %_ZN6duckdb14BaseExpression8SetAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.be, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i237
  %lpad.loopexit639 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp638:                            ; preds = %bb.bi
  %lpad.loopexit.split-lp640 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit251: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i248, %bb.bf
  %.pr = load ptr, ptr %19, align 8, !tbaa !471   ; 3 uses
  %.not.i252 = icmp eq ptr %.pr, null
  br i1 %.not.i252, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit254, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i253

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i253: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit251
  %i.kb = load ptr, ptr %.pr, align 8, !tbaa !16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit254

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit254: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit251.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit251, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.bt

.body:                                            ; preds = %.loopexit637, %.loopexit.split-lp638, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.al, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234
  %.pn186.pn.pn = phi { ptr, i32 } [ %i.il, %bb.bd ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.al ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.ar ], [ %lpad.phi623, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit234 ], [ %lpad.loopexit639, %.loopexit637 ], [ %lpad.loopexit.split-lp640, %.loopexit.split-lp638 ] ; 2 uses
  %i.ke = load ptr, ptr %19, align 8, !tbaa !471  ; 3 uses
  %.not.i255 = icmp eq ptr %i.ke, null
  br i1 %.not.i255, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit257, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i256

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i256: ; preds = %.body
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(56) %i.ke) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit257

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit257: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i256, %.body, %bb.ai
  %.pn186.pn.pn.pn = phi { ptr, i32 } [ %i.fm, %bb.ai ], [ %.pn186.pn.pn, %.body ], [ %.pn186.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i256 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %.body492

bb.bk:                                            ; preds = %.loopexit624
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  invoke void @_ZN6duckdb14make_uniq_baseINS_16ParsedExpressionENS_19ColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12BindingAliasEEEENS_10unique_ptrIT_St14default_deleteISE_ELb1EEEDpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.416") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0544.0761, ptr noundef nonnull align 8 dereferenceable(96) %i.ec)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.ki = invoke noundef zeroext i1 @_ZN6duckdb12HandleRenameERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEERNS_17ExclusionListInfoE(ptr noundef nonnull align 8 dereferenceable(265) %1, ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(176) %15)
          to label %bb.bm unwind label %.loopexit632

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.ki, label %bb.bn, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit273

bb.bn:                                            ; preds = %bb.bm
  %i.kj = load ptr, ptr %i.bi, align 8, !tbaa !517 ; 6 uses
  %i.kk = load ptr, ptr %i.bj, align 8, !tbaa !1380
  %.not.i.i258 = icmp eq ptr %i.kj, %i.kk
  br i1 %.not.i.i258, label %bb.bo, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit273.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit273.thread: ; preds = %bb.bn
  %i.kl = load i64, ptr %20, align 8, !tbaa !471
  store i64 %i.kl, ptr %i.kj, align 8, !tbaa !471
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %i.km, ptr %i.bi, align 8, !tbaa !517
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279

bb.bo:                                            ; preds = %bb.bn
  %i.kn = load ptr, ptr %2, align 8, !tbaa !520   ; 10 uses
  %i.ko = ptrtoint ptr %i.kj to i64               ; 3 uses
  %i.kp = ptrtoint ptr %i.kn to i64               ; 3 uses
  %i.kq = sub i64 %i.ko, %i.kp                    ; 3 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775800
  br i1 %i.kr, label %bb.bp, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i259

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc271 unwind label %.loopexit.split-lp633

.noexc271:                                        ; preds = %bb.bp
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i259: ; preds = %bb.bo
  %i.ks = ashr exact i64 %i.kq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i260 = call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i.i260, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = call i64 @llvm.umin.i64(i64 %i.kt, i64 1152921504606846975)
  %i.kw = select i1 %i.ku, i64 1152921504606846975, i64 %i.kv ; 3 uses
  %.not.i.i.i.i261 = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i261)
  %i.kx = shl nuw nsw i64 %i.kw, 3
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #35
          to label %.noexc272 unwind label %.loopexit632 ; 10 uses

.noexc272:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i259
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kq
  %i.la = load i64, ptr %20, align 8, !tbaa !471
  store i64 %i.la, ptr %i.kz, align 8, !tbaa !471
  store ptr null, ptr %20, align 8, !tbaa !471
  %.not10.i.i.i.i.i.i.i262 = icmp eq ptr %i.kn, %i.kj
  br i1 %.not10.i.i.i.i.i.i.i262, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i267, label %.lr.ph.i.i.i.i.i.i.i263.preheader

.lr.ph.i.i.i.i.i.i.i263.preheader:                ; preds = %.noexc272
  %51 = add i64 %i.ko, -8
  %52 = sub i64 %51, %i.kp                        ; 2 uses
  %i.lb = lshr i64 %52, 3
  %i.lc = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %min.iters.check1079 = icmp ult i64 %52, 56
  br i1 %min.iters.check1079, label %.lr.ph.i.i.i.i.i.i.i263.preheader1108, label %vector.memcheck1070

vector.memcheck1070:                              ; preds = %.lr.ph.i.i.i.i.i.i.i263.preheader
  %scevgep1071 = getelementptr i8, ptr %i.ky, i64 8
  %i.ld = add i64 %i.ko, -8
  %i.le = sub i64 %i.ld, %i.kp
  %i.lf = and i64 %i.le, -8                       ; 2 uses
  %scevgep1072 = getelementptr i8, ptr %scevgep1071, i64 %i.lf
  %scevgep1073 = getelementptr i8, ptr %i.kn, i64 8
  %scevgep1074 = getelementptr i8, ptr %scevgep1073, i64 %i.lf
  %bound01075 = icmp ult ptr %i.ky, %scevgep1074
  %bound11076 = icmp ult ptr %i.kn, %scevgep1072
  %found.conflict1077 = and i1 %bound01075, %bound11076
  br i1 %found.conflict1077, label %.lr.ph.i.i.i.i.i.i.i263.preheader1108, label %vector.ph1080

vector.ph1080:                                    ; preds = %vector.memcheck1070
  %n.vec1082 = and i64 %i.lc, 4611686018427387900 ; 3 uses
  %i.lg = shl i64 %n.vec1082, 3                   ; 2 uses
  %i.lh = getelementptr i8, ptr %i.ky, i64 %i.lg  ; 2 uses
  %i.li = getelementptr i8, ptr %i.kn, i64 %i.lg
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %vector.ph1080
  %index1084 = phi i64 [ 0, %vector.ph1080 ], [ %index.next1089, %vector.body1083 ] ; 2 uses
  %i.lj = shl i64 %index1084, 3                   ; 2 uses
  %next.gep1085 = getelementptr i8, ptr %i.ky, i64 %i.lj ; 2 uses
  %next.gep1086 = getelementptr i8, ptr %i.kn, i64 %i.lj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.lk = getelementptr i8, ptr %next.gep1086, i64 16
  %wide.load1087 = load <2 x i64>, ptr %next.gep1086, align 8, !tbaa !471, !alias.scope !1410, !noalias !1405
  %wide.load1088 = load <2 x i64>, ptr %i.lk, align 8, !tbaa !471, !alias.scope !1410, !noalias !1405
  %i.ll = getelementptr i8, ptr %next.gep1085, i64 16
  store <2 x i64> %wide.load1087, ptr %next.gep1085, align 8, !tbaa !471, !alias.scope !1413, !noalias !1410
  store <2 x i64> %wide.load1088, ptr %i.ll, align 8, !tbaa !471, !alias.scope !1413, !noalias !1410
  %i.lm = getelementptr i8, ptr %next.gep1086, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1086, align 8, !tbaa !471, !alias.scope !1410, !noalias !1405
  store <2 x ptr> splat (ptr null), ptr %i.lm, align 8, !tbaa !471, !alias.scope !1410, !noalias !1405
  %index.next1089 = add nuw i64 %index1084, 4     ; 2 uses
  %i.ln = icmp eq i64 %index.next1089, %n.vec1082
  br i1 %i.ln, label %middle.block1090, label %vector.body1083, !llvm.loop !1415

middle.block1090:                                 ; preds = %vector.body1083
  %cmp.n1091 = icmp eq i64 %i.lc, %n.vec1082
  br i1 %cmp.n1091, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i267, label %.lr.ph.i.i.i.i.i.i.i263.preheader1108

.lr.ph.i.i.i.i.i.i.i263.preheader1108:            ; preds = %vector.memcheck1070, %.lr.ph.i.i.i.i.i.i.i263.preheader, %middle.block1090
  %.012.i.i.i.i.i.i.i264.ph = phi ptr [ %i.ky, %vector.memcheck1070 ], [ %i.ky, %.lr.ph.i.i.i.i.i.i.i263.preheader ], [ %i.lh, %middle.block1090 ]
  %.0911.i.i.i.i.i.i.i265.ph = phi ptr [ %i.kn, %vector.memcheck1070 ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i263.preheader ], [ %i.li, %middle.block1090 ]
  br label %.lr.ph.i.i.i.i.i.i.i263

.lr.ph.i.i.i.i.i.i.i263:                          ; preds = %.lr.ph.i.i.i.i.i.i.i263.preheader1108, %.lr.ph.i.i.i.i.i.i.i263
  %.012.i.i.i.i.i.i.i264 = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i.i263 ], [ %.012.i.i.i.i.i.i.i264.ph, %.lr.ph.i.i.i.i.i.i.i263.preheader1108 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i265 = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i.i263 ], [ %.0911.i.i.i.i.i.i.i265.ph, %.lr.ph.i.i.i.i.i.i.i263.preheader1108 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.lo = load i64, ptr %.0911.i.i.i.i.i.i.i265, align 8, !tbaa !471, !alias.scope !1408, !noalias !1405
  store i64 %i.lo, ptr %.012.i.i.i.i.i.i.i264, align 8, !tbaa !471, !alias.scope !1405, !noalias !1408
  store ptr null, ptr %.0911.i.i.i.i.i.i.i265, align 8, !tbaa !471, !alias.scope !1408, !noalias !1405
  %i.lp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i265, i64 8 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i264, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i266 = icmp eq ptr %i.lp, %i.kj
  br i1 %.not.i.i.i.i.i.i.i266, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i267, label %.lr.ph.i.i.i.i.i.i.i263, !llvm.loop !1416

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i267: ; preds = %.lr.ph.i.i.i.i.i.i.i263, %middle.block1090, %.noexc272
  %.0.lcssa.i.i.i.i.i.i.i268 = phi ptr [ %i.ky, %.noexc272 ], [ %i.lh, %middle.block1090 ], [ %i.lq, %.lr.ph.i.i.i.i.i.i.i263 ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i268, i64 8
  %.not.i23.i.i.i269 = icmp eq ptr %i.kn, null
  br i1 %.not.i23.i.i.i269, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i270, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i267
  call void @_ZdlPv(ptr noundef nonnull %i.kn) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i270

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i270: ; preds = %bb.bq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i267
  store ptr %i.ky, ptr %2, align 8, !tbaa !520
  store ptr %i.lr, ptr %i.bi, align 8, !tbaa !517
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kw
  store ptr %i.ls, ptr %i.bj, align 8, !tbaa !1380
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit273

bb.br:                                            ; preds = %bb.bk
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276

.loopexit632:                                     ; preds = %bb.bl, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i259
  %lpad.loopexit634 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp633:                            ; preds = %bb.bp
  %lpad.loopexit.split-lp635 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp633, %.loopexit632
  %lpad.phi636 = phi { ptr, i32 } [ %lpad.loopexit634, %.loopexit632 ], [ %lpad.loopexit.split-lp635, %.loopexit.split-lp633 ] ; 2 uses
  %i.lu = load ptr, ptr %20, align 8, !tbaa !471  ; 3 uses
  %.not.i274 = icmp eq ptr %i.lu, null
  br i1 %.not.i274, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i275

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i275: ; preds = %bb.bs
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(56) %i.lu) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit273: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i270, %bb.bm
  %.pr560 = load ptr, ptr %20, align 8, !tbaa !471 ; 3 uses
  %.not.i277 = icmp eq ptr %.pr560, null
  br i1 %.not.i277, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i278

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i278: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit273
  %i.ly = load ptr, ptr %.pr560, align 8, !tbaa !16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(56) %.pr560) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit273.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit273, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.bt

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i275, %bb.bs, %bb.br
  %.pn191 = phi { ptr, i32 } [ %i.lt, %bb.br ], [ %lpad.phi636, %bb.bs ], [ %lpad.phi636, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i275 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %.body492

bb.bt:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit254
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  store ptr %i.ec, ptr %21, align 8, !tbaa !1234
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %16, ptr %7, align 8, !tbaa !1272
  %i.mb = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb14UsingColumnSetEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bu unwind label %bb.bv     ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit

bb.bv:                                            ; preds = %bb.bt
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %.body492

bb.bw:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.md = load i64, ptr %i.cc, align 8, !tbaa !11
  %.not.i497 = icmp eq i64 %i.md, 0
  br i1 %.not.i497, label %bb.bx, label %.noexc281

bb.bx:                                            ; preds = %bb.bw
  %i.me = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.by unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i498

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.me, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @__cxa_throw(ptr nonnull %i.me, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.cc unwind label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i498: ; preds = %bb.bx
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0.i501 = phi i1 [ false, %bb.bz ], [ true, %bb.by ] ; 2 uses
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mh = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i502: ; preds = %bb.ca
  call void @_ZdlPv(ptr noundef %i.mh) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0.i501, label %bb.cb, label %.body504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i503: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0.i501, label %bb.cb, label %.body504

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i502, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i498
  %.pn9.i499 = phi { ptr, i32 } [ %i.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i498 ], [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i503 ], [ %i.mg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i502 ]
  call void @__cxa_free_exception(ptr %i.me) #32
  br label %.body504

bb.cc:                                            ; preds = %bb.bz
  unreachable

.noexc281:                                        ; preds = %bb.bw
  invoke void @_ZN6duckdb11BindContext21CreateColumnReferenceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_NS_14ColumnBindTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.416") align 8 %22, ptr noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0544.0761, i32 noundef 1)
          to label %_ZN6duckdb11BindContext21CreateColumnReferenceERKNS_12BindingAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ColumnBindTypeE.exit unwind label %bb.ci

_ZN6duckdb11BindContext21CreateColumnReferenceERKNS_12BindingAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ColumnBindTypeE.exit: ; preds = %.noexc281
  %i.mk = invoke noundef zeroext i1 @_ZN6duckdb12HandleRenameERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEERNS_17ExclusionListInfoE(ptr noundef nonnull align 8 dereferenceable(265) %1, ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(176) %15)
          to label %bb.cd unwind label %.loopexit642

bb.cd:                                            ; preds = %_ZN6duckdb11BindContext21CreateColumnReferenceERKNS_12BindingAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ColumnBindTypeE.exit
  br i1 %i.mk, label %bb.ce, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit298

bb.ce:                                            ; preds = %bb.cd
  %i.ml = load ptr, ptr %i.bi, align 8, !tbaa !517 ; 6 uses
  %i.mm = load ptr, ptr %i.bj, align 8, !tbaa !1380
  %.not.i.i283 = icmp eq ptr %i.ml, %i.mm
  br i1 %.not.i.i283, label %bb.cf, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit298.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit298.thread: ; preds = %bb.ce
  %i.mn = load i64, ptr %22, align 8, !tbaa !471
  store i64 %i.mn, ptr %i.ml, align 8, !tbaa !471
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store ptr %i.mo, ptr %i.bi, align 8, !tbaa !517
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit304

bb.cf:                                            ; preds = %bb.ce
  %i.mp = load ptr, ptr %2, align 8, !tbaa !520   ; 10 uses
  %i.mq = ptrtoint ptr %i.ml to i64               ; 3 uses
  %i.mr = ptrtoint ptr %i.mp to i64               ; 3 uses
  %i.ms = sub i64 %i.mq, %i.mr                    ; 3 uses
  %i.mt = icmp eq i64 %i.ms, 9223372036854775800
  br i1 %i.mt, label %bb.cg, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i284

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc296 unwind label %.loopexit.split-lp643

.noexc296:                                        ; preds = %bb.cg
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i284: ; preds = %bb.cf
  %i.mu = ashr exact i64 %i.ms, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i285 = call i64 @llvm.umax.i64(i64 %i.mu, i64 1)
  %i.mv = add nsw i64 %.sroa.speculated.i.i.i.i285, %i.mu ; 2 uses
  %i.mw = icmp ult i64 %i.mv, %i.mu
  %i.mx = call i64 @llvm.umin.i64(i64 %i.mv, i64 1152921504606846975)
  %i.my = select i1 %i.mw, i64 1152921504606846975, i64 %i.mx ; 3 uses
  %.not.i.i.i.i286 = icmp ne i64 %i.my, 0
  call void @llvm.assume(i1 %.not.i.i.i.i286)
  %i.mz = shl nuw nsw i64 %i.my, 3
  %i.na = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #35
          to label %.noexc297 unwind label %.loopexit642 ; 10 uses

.noexc297:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i284
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ms
  %i.nc = load i64, ptr %22, align 8, !tbaa !471
  store i64 %i.nc, ptr %i.nb, align 8, !tbaa !471
  store ptr null, ptr %22, align 8, !tbaa !471
  %.not10.i.i.i.i.i.i.i287 = icmp eq ptr %i.mp, %i.ml
  br i1 %.not10.i.i.i.i.i.i.i287, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i292, label %.lr.ph.i.i.i.i.i.i.i288.preheader

.lr.ph.i.i.i.i.i.i.i288.preheader:                ; preds = %.noexc297
  %53 = add i64 %i.mq, -8
  %54 = sub i64 %53, %i.mr                        ; 2 uses
  %i.nd = lshr i64 %54, 3
  %i.ne = add nuw nsw i64 %i.nd, 1                ; 2 uses
  %min.iters.check1007 = icmp ult i64 %54, 56
  br i1 %min.iters.check1007, label %.lr.ph.i.i.i.i.i.i.i288.preheader1106, label %vector.memcheck998

vector.memcheck998:                               ; preds = %.lr.ph.i.i.i.i.i.i.i288.preheader
  %scevgep999 = getelementptr i8, ptr %i.na, i64 8
  %i.nf = add i64 %i.mq, -8
  %i.ng = sub i64 %i.nf, %i.mr
  %i.nh = and i64 %i.ng, -8                       ; 2 uses
  %scevgep1000 = getelementptr i8, ptr %scevgep999, i64 %i.nh
  %scevgep1001 = getelementptr i8, ptr %i.mp, i64 8
  %scevgep1002 = getelementptr i8, ptr %scevgep1001, i64 %i.nh
  %bound01003 = icmp ult ptr %i.na, %scevgep1002
  %bound11004 = icmp ult ptr %i.mp, %scevgep1000
  %found.conflict1005 = and i1 %bound01003, %bound11004
  br i1 %found.conflict1005, label %.lr.ph.i.i.i.i.i.i.i288.preheader1106, label %vector.ph1008

vector.ph1008:                                    ; preds = %vector.memcheck998
  %n.vec1010 = and i64 %i.ne, 4611686018427387900 ; 3 uses
  %i.ni = shl i64 %n.vec1010, 3                   ; 2 uses
  %i.nj = getelementptr i8, ptr %i.na, i64 %i.ni  ; 2 uses
  %i.nk = getelementptr i8, ptr %i.mp, i64 %i.ni
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %vector.ph1008
  %index1012 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1017, %vector.body1011 ] ; 2 uses
  %i.nl = shl i64 %index1012, 3                   ; 2 uses
  %next.gep1013 = getelementptr i8, ptr %i.na, i64 %i.nl ; 2 uses
  %next.gep1014 = getelementptr i8, ptr %i.mp, i64 %i.nl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.nm = getelementptr i8, ptr %next.gep1014, i64 16
  %wide.load1015 = load <2 x i64>, ptr %next.gep1014, align 8, !tbaa !471, !alias.scope !1422, !noalias !1417
  %wide.load1016 = load <2 x i64>, ptr %i.nm, align 8, !tbaa !471, !alias.scope !1422, !noalias !1417
  %i.nn = getelementptr i8, ptr %next.gep1013, i64 16
  store <2 x i64> %wide.load1015, ptr %next.gep1013, align 8, !tbaa !471, !alias.scope !1425, !noalias !1422
  store <2 x i64> %wide.load1016, ptr %i.nn, align 8, !tbaa !471, !alias.scope !1425, !noalias !1422
  %i.no = getelementptr i8, ptr %next.gep1014, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1014, align 8, !tbaa !471, !alias.scope !1422, !noalias !1417
  store <2 x ptr> splat (ptr null), ptr %i.no, align 8, !tbaa !471, !alias.scope !1422, !noalias !1417
  %index.next1017 = add nuw i64 %index1012, 4     ; 2 uses
  %i.np = icmp eq i64 %index.next1017, %n.vec1010
  br i1 %i.np, label %middle.block1018, label %vector.body1011, !llvm.loop !1427

middle.block1018:                                 ; preds = %vector.body1011
  %cmp.n1019 = icmp eq i64 %i.ne, %n.vec1010
  br i1 %cmp.n1019, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i292, label %.lr.ph.i.i.i.i.i.i.i288.preheader1106

.lr.ph.i.i.i.i.i.i.i288.preheader1106:            ; preds = %vector.memcheck998, %.lr.ph.i.i.i.i.i.i.i288.preheader, %middle.block1018
  %.012.i.i.i.i.i.i.i289.ph = phi ptr [ %i.na, %vector.memcheck998 ], [ %i.na, %.lr.ph.i.i.i.i.i.i.i288.preheader ], [ %i.nj, %middle.block1018 ]
  %.0911.i.i.i.i.i.i.i290.ph = phi ptr [ %i.mp, %vector.memcheck998 ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i288.preheader ], [ %i.nk, %middle.block1018 ]
  br label %.lr.ph.i.i.i.i.i.i.i288

.lr.ph.i.i.i.i.i.i.i288:                          ; preds = %.lr.ph.i.i.i.i.i.i.i288.preheader1106, %.lr.ph.i.i.i.i.i.i.i288
  %.012.i.i.i.i.i.i.i289 = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i.i288 ], [ %.012.i.i.i.i.i.i.i289.ph, %.lr.ph.i.i.i.i.i.i.i288.preheader1106 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i290 = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i.i.i288 ], [ %.0911.i.i.i.i.i.i.i290.ph, %.lr.ph.i.i.i.i.i.i.i288.preheader1106 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.nq = load i64, ptr %.0911.i.i.i.i.i.i.i290, align 8, !tbaa !471, !alias.scope !1420, !noalias !1417
  store i64 %i.nq, ptr %.012.i.i.i.i.i.i.i289, align 8, !tbaa !471, !alias.scope !1417, !noalias !1420
  store ptr null, ptr %.0911.i.i.i.i.i.i.i290, align 8, !tbaa !471, !alias.scope !1420, !noalias !1417
  %i.nr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i290, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i289, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i291 = icmp eq ptr %i.nr, %i.ml
  br i1 %.not.i.i.i.i.i.i.i291, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i292, label %.lr.ph.i.i.i.i.i.i.i288, !llvm.loop !1428

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i292: ; preds = %.lr.ph.i.i.i.i.i.i.i288, %middle.block1018, %.noexc297
  %.0.lcssa.i.i.i.i.i.i.i293 = phi ptr [ %i.na, %.noexc297 ], [ %i.nj, %middle.block1018 ], [ %i.ns, %.lr.ph.i.i.i.i.i.i.i288 ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i293, i64 8
  %.not.i23.i.i.i294 = icmp eq ptr %i.mp, null
  br i1 %.not.i23.i.i.i294, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i295, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i292
  call void @_ZdlPv(ptr noundef nonnull %i.mp) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i295

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i295: ; preds = %bb.ch, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i292
  store ptr %i.na, ptr %2, align 8, !tbaa !520
  store ptr %i.nt, ptr %i.bi, align 8, !tbaa !517
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.my
  store ptr %i.nu, ptr %i.bj, align 8, !tbaa !1380
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit298

bb.ci:                                            ; preds = %.noexc281
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.body504

.loopexit642:                                     ; preds = %_ZN6duckdb11BindContext21CreateColumnReferenceERKNS_12BindingAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ColumnBindTypeE.exit, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i284
  %lpad.loopexit644 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp643:                            ; preds = %bb.cg
  %lpad.loopexit.split-lp645 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit.split-lp643, %.loopexit642
  %lpad.phi646 = phi { ptr, i32 } [ %lpad.loopexit644, %.loopexit642 ], [ %lpad.loopexit.split-lp645, %.loopexit.split-lp643 ] ; 2 uses
  %i.nw = load ptr, ptr %22, align 8, !tbaa !471  ; 3 uses
  %.not.i299 = icmp eq ptr %i.nw, null
  br i1 %.not.i299, label %.body504, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i300

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i300: ; preds = %bb.cj
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !16
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(56) %i.nw) #32, !inline_history !473
  br label %.body504

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit298: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i295, %bb.cd
  %.pr562 = load ptr, ptr %22, align 8, !tbaa !471 ; 3 uses
  %.not.i302 = icmp eq ptr %.pr562, null
  br i1 %.not.i302, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit304, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i303

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i303: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit298
  %i.oa = load ptr, ptr %.pr562, align 8, !tbaa !16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(56) %.pr562) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit304

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit304: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit298.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit298, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit

_ZNSt13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit: ; preds = %bb.ad, %bb.aa, %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit304, %bb.bu, %bb.ac
  %i.od = load ptr, ptr %i.az, align 8, !tbaa !15 ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.bm
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i305: ; preds = %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit
  call void @_ZdlPv(ptr noundef %i.od) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i306: ; preds = %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EE4findERKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i305
  %i.of = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.bn
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i306
  call void @_ZdlPv(ptr noundef %i.of) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.oh = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.bo
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.oh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.oj = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.bp
  br i1 %i.ok, label %_ZN6duckdb19QualifiedColumnNameD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef %i.oj) #33
  br label %_ZN6duckdb19QualifiedColumnNameD2Ev.exit

_ZN6duckdb19QualifiedColumnNameD2Ev.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0544.0761, i64 32 ; 2 uses
  %.not612 = icmp eq ptr %i.ol, %i.cb
  br i1 %.not612, label %._crit_edge764, label %bb.l

.body504:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i300, %bb.cj, %bb.ci, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i502
  %.pn184 = phi { ptr, i32 } [ %i.mg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i502 ], [ %i.nv, %bb.ci ], [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i503 ], [ %.pn9.i499, %bb.cb ], [ %lpad.phi646, %bb.cj ], [ %lpad.phi646, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i300 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %.body492

.body492:                                         ; preds = %.loopexit627, %.loopexit.split-lp628, %bb.af, %.body504, %bb.bv, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit257
  %.pn193.pn.pn = phi { ptr, i32 } [ %.pn186.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit257 ], [ %i.fe, %bb.af ], [ %.pn184, %.body504 ], [ %i.mc, %bb.bv ], [ %.pn191, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276 ], [ %lpad.loopexit629, %.loopexit627 ], [ %lpad.loopexit.split-lp630, %.loopexit.split-lp628 ]
  call void @_ZN6duckdb19QualifiedColumnNameD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %17) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208, %.body492, %bb.x
  %.pn193.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn, %.body492 ], [ %i.dy, %bb.x ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ], [ %i.dz, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %bb.k
  %.pn193.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.cg, %bb.k ]
  call void @_ZNSt13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %.loopexit.split-lp

bb.cl:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  invoke void @_ZN6duckdb9ErrorDataC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %23)
          to label %bb.cm unwind label %bb.cu

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.om = invoke ptr @_ZN6duckdb11BindContext10GetBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(128) %23)
          to label %bb.cn unwind label %bb.cv     ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb11BindContext28GenerateAllColumnExpressionsERNS_14StarExpressionERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE:bb.a
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.em:                                            ; preds = %.noexc.i.i331, %bb.dx, %.noexc327
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

bb.en:                                            ; preds = %bb.ea
  %i.th = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ti = load ptr, ptr %34, align 8, !tbaa !15   ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.qx
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %bb.en
  call void @_ZdlPv(ptr noundef %i.ti) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339, %bb.em
  %.pn155 = phi { ptr, i32 } [ %i.tg, %bb.em ], [ %i.th, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339 ], [ %i.th, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  br label %bb.fi

bb.eo:                                            ; preds = %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ep:                                            ; preds = %.lr.ph754, %_ZN6duckdb19QualifiedColumnNameD2Ev.exit393
  %.sroa.0522.0753 = phi ptr [ %i.si, %.lr.ph754 ], [ %i.wi, %_ZN6duckdb19QualifiedColumnNameD2Ev.exit393 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  store ptr %i.sl, ptr %36, align 8, !tbaa !7
  %i.tl = load ptr, ptr %.sroa.0522.0753, align 8, !tbaa !15 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.0522.0753, i64 8
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 %i.tn, ptr %i.c, align 8, !tbaa !18
  %i.to = icmp ugt i64 %i.tn, 15
  br i1 %i.to, label %.noexc.i343, label %._crit_edge.i.i342

.noexc.i343:                                      ; preds = %bb.ep
  %i.tp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc344 unwind label %bb.ev ; 2 uses

.noexc344:                                        ; preds = %.noexc.i343
  store ptr %i.tp, ptr %36, align 8, !tbaa !15
  %i.tq = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.tq, ptr %i.sl, align 8, !tbaa !14
  br label %._crit_edge.i.i342

._crit_edge.i.i342:                               ; preds = %.noexc344, %bb.ep
  %i.tr = phi ptr [ %i.tp, %.noexc344 ], [ %i.sl, %bb.ep ] ; 2 uses
  switch i64 %i.tn, label %bb.er [
    i64 1, label %bb.eq
    i64 0, label %bb.es
  ]

bb.eq:                                            ; preds = %._crit_edge.i.i342
  %i.ts = load i8, ptr %i.tl, align 1, !tbaa !14
  store i8 %i.ts, ptr %i.tr, align 1, !tbaa !14
  br label %bb.es

bb.er:                                            ; preds = %._crit_edge.i.i342
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tr, ptr align 1 %i.tl, i64 %i.tn, i1 false)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %._crit_edge.i.i342
  %i.tt = load i64, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  store i64 %i.tt, ptr %i.sm, align 8, !tbaa !11
  %i.tu = load ptr, ptr %36, align 8, !tbaa !15
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.tt
  store i8 0, ptr %i.tv, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  invoke void @_ZN6duckdb19QualifiedColumnNameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %35, ptr noundef nonnull %36)
          to label %bb.et unwind label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.tw = load ptr, ptr %36, align 8, !tbaa !15   ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.sl
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %bb.et
  call void @_ZdlPv(ptr noundef %i.tw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  %i.ty = invoke ptr @_ZNSt10_HashtableIN6duckdb19QualifiedColumnNameES1_SaIS1_ENSt8__detail9_IdentityENS0_23QualifiedColumnEqualityENS0_27QualifiedColumnHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.sn, ptr noundef nonnull align 8 dereferenceable(128) %35)
          to label %.noexc349 unwind label %bb.ex

.noexc349:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  %.not606 = icmp eq ptr %i.ty, null
  br i1 %.not606, label %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit351, label %bb.eu

bb.eu:                                            ; preds = %.noexc349
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %i.aa, ptr %6, align 8, !tbaa !1356
  %i.tz = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb19QualifiedColumnNameES1_SaIS1_ENSt8__detail9_IdentityENS0_23QualifiedColumnEqualityENS0_27QualifiedColumnHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(128) %35, ptr noundef nonnull align 8 dereferenceable(128) %35, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit351.thread unwind label %bb.ex ; 0 uses

_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit351.thread: ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.fg

bb.ev:                                            ; preds = %.noexc.i343
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

bb.ew:                                            ; preds = %bb.es
  %i.ub = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uc = load ptr, ptr %36, align 8, !tbaa !15   ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.sl
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %bb.ew
  call void @_ZdlPv(ptr noundef %i.uc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

bb.ex:                                            ; preds = %bb.ey, %bb.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit351
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit351: ; preds = %.noexc349
  %i.uf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %33, i64 noundef 2)
          to label %bb.ey unwind label %bb.ex

bb.ey:                                            ; preds = %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit351
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.uf, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0522.0753)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit356 unwind label %bb.ex

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit356: ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #32
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1334") align 8 %38, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit359 unwind label %bb.fe

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit356
  %i.ug = load ptr, ptr %38, align 8, !tbaa !1292
  store ptr %i.ug, ptr %37, align 8, !tbaa !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #32
  %i.uh = invoke noundef zeroext i1 @_ZN6duckdb12HandleRenameERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEERNS_17ExclusionListInfoE(ptr noundef nonnull align 8 dereferenceable(265) %1, ptr noundef nonnull align 8 dereferenceable(128) %35, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(176) %15)
          to label %bb.ez unwind label %.loopexit647

bb.ez:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit359
  br i1 %i.uh, label %bb.fa, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit375

bb.fa:                                            ; preds = %bb.ez
  %i.ui = load ptr, ptr %i.so, align 8, !tbaa !517 ; 6 uses
  %i.uj = load ptr, ptr %i.sp, align 8, !tbaa !1380
  %.not.i.i360 = icmp eq ptr %i.ui, %i.uj
  br i1 %.not.i.i360, label %bb.fb, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit375.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit375.thread: ; preds = %bb.fa
  %i.uk = load i64, ptr %37, align 8, !tbaa !471
  store i64 %i.uk, ptr %i.ui, align 8, !tbaa !471
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  store ptr %i.ul, ptr %i.so, align 8, !tbaa !517
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit381

bb.fb:                                            ; preds = %bb.fa
  %i.um = load ptr, ptr %2, align 8, !tbaa !520   ; 10 uses
  %i.un = ptrtoint ptr %i.ui to i64               ; 3 uses
  %i.uo = ptrtoint ptr %i.um to i64               ; 3 uses
  %i.up = sub i64 %i.un, %i.uo                    ; 3 uses
  %i.uq = icmp eq i64 %i.up, 9223372036854775800
  br i1 %i.uq, label %bb.fc, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i361

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc373 unwind label %.loopexit.split-lp648

.noexc373:                                        ; preds = %bb.fc
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i361: ; preds = %bb.fb
  %i.ur = ashr exact i64 %i.up, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i362 = call i64 @llvm.umax.i64(i64 %i.ur, i64 1)
  %i.us = add nsw i64 %.sroa.speculated.i.i.i.i362, %i.ur ; 2 uses
  %i.ut = icmp ult i64 %i.us, %i.ur
  %i.uu = call i64 @llvm.umin.i64(i64 %i.us, i64 1152921504606846975)
  %i.uv = select i1 %i.ut, i64 1152921504606846975, i64 %i.uu ; 3 uses
  %.not.i.i.i.i363 = icmp ne i64 %i.uv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i363)
  %i.uw = shl nuw nsw i64 %i.uv, 3
  %i.ux = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uw) #35
          to label %.noexc374 unwind label %.loopexit647 ; 10 uses

.noexc374:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i361
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.up
  %i.uz = load i64, ptr %37, align 8, !tbaa !471
  store i64 %i.uz, ptr %i.uy, align 8, !tbaa !471
  store ptr null, ptr %37, align 8, !tbaa !471
  %.not10.i.i.i.i.i.i.i364 = icmp eq ptr %i.um, %i.ui
  br i1 %.not10.i.i.i.i.i.i.i364, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i369, label %.lr.ph.i.i.i.i.i.i.i365.preheader

.lr.ph.i.i.i.i.i.i.i365.preheader:                ; preds = %.noexc374
  %55 = add i64 %i.un, -8
  %56 = sub i64 %55, %i.uo                        ; 2 uses
  %i.va = lshr i64 %56, 3
  %i.vb = add nuw nsw i64 %i.va, 1                ; 2 uses
  %min.iters.check983 = icmp ult i64 %56, 56
  br i1 %min.iters.check983, label %.lr.ph.i.i.i.i.i.i.i365.preheader1119, label %vector.memcheck974

vector.memcheck974:                               ; preds = %.lr.ph.i.i.i.i.i.i.i365.preheader
  %scevgep975 = getelementptr i8, ptr %i.ux, i64 8
  %i.vc = add i64 %i.un, -8
  %i.vd = sub i64 %i.vc, %i.uo
  %i.ve = and i64 %i.vd, -8                       ; 2 uses
  %scevgep976 = getelementptr i8, ptr %scevgep975, i64 %i.ve
  %scevgep977 = getelementptr i8, ptr %i.um, i64 8
  %scevgep978 = getelementptr i8, ptr %scevgep977, i64 %i.ve
  %bound0979 = icmp ult ptr %i.ux, %scevgep978
  %bound1980 = icmp ult ptr %i.um, %scevgep976
  %found.conflict981 = and i1 %bound0979, %bound1980
  br i1 %found.conflict981, label %.lr.ph.i.i.i.i.i.i.i365.preheader1119, label %vector.ph984

vector.ph984:                                     ; preds = %vector.memcheck974
  %n.vec986 = and i64 %i.vb, 4611686018427387900  ; 3 uses
  %i.vf = shl i64 %n.vec986, 3                    ; 2 uses
  %i.vg = getelementptr i8, ptr %i.ux, i64 %i.vf  ; 2 uses
  %i.vh = getelementptr i8, ptr %i.um, i64 %i.vf
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %vector.ph984
  %index988 = phi i64 [ 0, %vector.ph984 ], [ %index.next993, %vector.body987 ] ; 2 uses
  %i.vi = shl i64 %index988, 3                    ; 2 uses
  %next.gep989 = getelementptr i8, ptr %i.ux, i64 %i.vi ; 2 uses
  %next.gep990 = getelementptr i8, ptr %i.um, i64 %i.vi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.vj = getelementptr i8, ptr %next.gep990, i64 16
  %wide.load991 = load <2 x i64>, ptr %next.gep990, align 8, !tbaa !471, !alias.scope !1437, !noalias !1432
  %wide.load992 = load <2 x i64>, ptr %i.vj, align 8, !tbaa !471, !alias.scope !1437, !noalias !1432
  %i.vk = getelementptr i8, ptr %next.gep989, i64 16
  store <2 x i64> %wide.load991, ptr %next.gep989, align 8, !tbaa !471, !alias.scope !1440, !noalias !1437
  store <2 x i64> %wide.load992, ptr %i.vk, align 8, !tbaa !471, !alias.scope !1440, !noalias !1437
  %i.vl = getelementptr i8, ptr %next.gep990, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep990, align 8, !tbaa !471, !alias.scope !1437, !noalias !1432
  store <2 x ptr> splat (ptr null), ptr %i.vl, align 8, !tbaa !471, !alias.scope !1437, !noalias !1432
  %index.next993 = add nuw i64 %index988, 4       ; 2 uses
  %i.vm = icmp eq i64 %index.next993, %n.vec986
  br i1 %i.vm, label %middle.block994, label %vector.body987, !llvm.loop !1442

middle.block994:                                  ; preds = %vector.body987
  %cmp.n995 = icmp eq i64 %i.vb, %n.vec986
  br i1 %cmp.n995, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i369, label %.lr.ph.i.i.i.i.i.i.i365.preheader1119

.lr.ph.i.i.i.i.i.i.i365.preheader1119:            ; preds = %vector.memcheck974, %.lr.ph.i.i.i.i.i.i.i365.preheader, %middle.block994
  %.012.i.i.i.i.i.i.i366.ph = phi ptr [ %i.ux, %vector.memcheck974 ], [ %i.ux, %.lr.ph.i.i.i.i.i.i.i365.preheader ], [ %i.vg, %middle.block994 ]
  %.0911.i.i.i.i.i.i.i367.ph = phi ptr [ %i.um, %vector.memcheck974 ], [ %i.um, %.lr.ph.i.i.i.i.i.i.i365.preheader ], [ %i.vh, %middle.block994 ]
  br label %.lr.ph.i.i.i.i.i.i.i365

.lr.ph.i.i.i.i.i.i.i365:                          ; preds = %.lr.ph.i.i.i.i.i.i.i365.preheader1119, %.lr.ph.i.i.i.i.i.i.i365
  %.012.i.i.i.i.i.i.i366 = phi ptr [ %i.vp, %.lr.ph.i.i.i.i.i.i.i365 ], [ %.012.i.i.i.i.i.i.i366.ph, %.lr.ph.i.i.i.i.i.i.i365.preheader1119 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i367 = phi ptr [ %i.vo, %.lr.ph.i.i.i.i.i.i.i365 ], [ %.0911.i.i.i.i.i.i.i367.ph, %.lr.ph.i.i.i.i.i.i.i365.preheader1119 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.vn = load i64, ptr %.0911.i.i.i.i.i.i.i367, align 8, !tbaa !471, !alias.scope !1435, !noalias !1432
  store i64 %i.vn, ptr %.012.i.i.i.i.i.i.i366, align 8, !tbaa !471, !alias.scope !1432, !noalias !1435
  store ptr null, ptr %.0911.i.i.i.i.i.i.i367, align 8, !tbaa !471, !alias.scope !1435, !noalias !1432
  %i.vo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i367, i64 8 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i366, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i368 = icmp eq ptr %i.vo, %i.ui
  br i1 %.not.i.i.i.i.i.i.i368, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i369, label %.lr.ph.i.i.i.i.i.i.i365, !llvm.loop !1443

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i369: ; preds = %.lr.ph.i.i.i.i.i.i.i365, %middle.block994, %.noexc374
  %.0.lcssa.i.i.i.i.i.i.i370 = phi ptr [ %i.ux, %.noexc374 ], [ %i.vg, %middle.block994 ], [ %i.vp, %.lr.ph.i.i.i.i.i.i.i365 ]
  %i.vq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i370, i64 8
  %.not.i23.i.i.i371 = icmp eq ptr %i.um, null
  br i1 %.not.i23.i.i.i371, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i372, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i369
  call void @_ZdlPv(ptr noundef nonnull %i.um) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i372

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i372: ; preds = %bb.fd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i369
  store ptr %i.ux, ptr %2, align 8, !tbaa !520
  store ptr %i.vq, ptr %i.so, align 8, !tbaa !517
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uv
  store ptr %i.vr, ptr %i.sp, align 8, !tbaa !1380
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit375

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit356
  %i.vs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #32
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit378

.loopexit647:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit359, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i361
  %lpad.loopexit649 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

.loopexit.split-lp648:                            ; preds = %bb.fc
  %lpad.loopexit.split-lp650 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ff:                                            ; preds = %.loopexit.split-lp648, %.loopexit647
  %lpad.phi651 = phi { ptr, i32 } [ %lpad.loopexit649, %.loopexit647 ], [ %lpad.loopexit.split-lp650, %.loopexit.split-lp648 ] ; 2 uses
  %i.vt = load ptr, ptr %37, align 8, !tbaa !471  ; 3 uses
  %.not.i376 = icmp eq ptr %i.vt, null
  br i1 %.not.i376, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit378, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i377

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i377: ; preds = %bb.ff
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !16
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8
  call void %i.vw(ptr noundef nonnull align 8 dereferenceable(56) %i.vt) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit378

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit375: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i372, %bb.ez
  %.pr576 = load ptr, ptr %37, align 8, !tbaa !471 ; 3 uses
  %.not.i379 = icmp eq ptr %.pr576, null
  br i1 %.not.i379, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit381, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i380

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i380: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit375
  %i.vx = load ptr, ptr %.pr576, align 8, !tbaa !16
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8
  call void %i.vz(ptr noundef nonnull align 8 dereferenceable(56) %.pr576) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit381

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit381: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit375.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit375, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i380
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  br label %bb.fg

bb.fg:                                            ; preds = %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit351.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit381
  %i.wa = load ptr, ptr %i.sq, align 8, !tbaa !15 ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.sr
  br i1 %i.wb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382: ; preds = %bb.fg
  call void @_ZdlPv(ptr noundef %i.wa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i383: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382
  %i.wc = load ptr, ptr %i.ss, align 8, !tbaa !15 ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.st
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i383
  call void @_ZdlPv(ptr noundef %i.wc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i385: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i384
  %i.we = load ptr, ptr %i.su, align 8, !tbaa !15 ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.sv
  br i1 %i.wf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i385
  call void @_ZdlPv(ptr noundef %i.we) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i387: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i386
  %i.wg = load ptr, ptr %35, align 8, !tbaa !15   ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.sw
  br i1 %i.wh, label %_ZN6duckdb19QualifiedColumnNameD2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i387
  call void @_ZdlPv(ptr noundef %i.wg) #33
  br label %_ZN6duckdb19QualifiedColumnNameD2Ev.exit393

_ZN6duckdb19QualifiedColumnNameD2Ev.exit393:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i387, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.0522.0753, i64 56 ; 2 uses
  %.not605 = icmp eq ptr %i.wi, %i.sk
  br i1 %.not605, label %._crit_edge, label %bb.ep

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit378: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i377, %bb.ff, %bb.fe
  %.pn157 = phi { ptr, i32 } [ %i.vs, %bb.fe ], [ %lpad.phi651, %bb.ff ], [ %lpad.phi651, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i377 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit378, %bb.ex
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit378 ], [ %i.ue, %bb.ex ]
  call void @_ZN6duckdb19QualifiedColumnNameD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %35) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352, %bb.fh, %bb.ev
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %bb.fh ], [ %i.ua, %bb.ev ], [ %i.ub, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %i.ub, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %bb.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  %.pn157.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354 ], [ %i.tk, %bb.eo ], [ %.pn155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %33) #32
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.el
  %.pn157.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn, %bb.fi ], [ %i.tf, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  br label %bb.fk

bb.fk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324, %bb.ek, %bb.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %bb.du
  %.pn164.pn.pn.pn = phi { ptr, i32 } [ %.pn164.pn.pn566, %bb.du ], [ %.pn164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ], [ %.pn157.pn.pn.pn.pn, %bb.fj ], [ %i.te, %bb.ek ], [ %.pn164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #32
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.dr
  %.pn164.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn164.pn.pn.pn, %bb.fk ], [ %i.pp, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %bb.gg

bb.fm:                                            ; preds = %bb.dc
  %i.wj = load ptr, ptr %i.pa, align 8, !tbaa !234 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.oz, i64 152
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !234 ; 2 uses
  %.not607750 = icmp eq ptr %i.wj, %i.wl
  br i1 %.not607750, label %.loopexit652, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fm
  %i.wm = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ox, i64 48
  %i.wq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.wt = getelementptr inbounds nuw i8, ptr %39, i64 112
  %i.wu = getelementptr inbounds nuw i8, ptr %39, i64 64
  %i.wv = getelementptr inbounds nuw i8, ptr %39, i64 80
  %i.ww = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.wx = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.wy = getelementptr inbounds nuw i8, ptr %39, i64 16
  br label %bb.fn

bb.fn:                                            ; preds = %.lr.ph, %_ZN6duckdb19QualifiedColumnNameD2Ev.exit443
  %.sroa.0518.0751 = phi ptr [ %i.wj, %.lr.ph ], [ %i.zv, %_ZN6duckdb19QualifiedColumnNameD2Ev.exit443 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #32
  store ptr %i.wm, ptr %40, align 8, !tbaa !7
  %i.wz = load ptr, ptr %.sroa.0518.0751, align 8, !tbaa !15 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0518.0751, i64 8
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.xb, ptr %i.b, align 8, !tbaa !18
  %i.xc = icmp ugt i64 %i.xb, 15
  br i1 %i.xc, label %.noexc.i395, label %._crit_edge.i.i394

.noexc.i395:                                      ; preds = %bb.fn
  %i.xd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc396 unwind label %bb.ft ; 2 uses

.noexc396:                                        ; preds = %.noexc.i395
  store ptr %i.xd, ptr %40, align 8, !tbaa !15
  %i.xe = load i64, ptr %i.b, align 8, !tbaa !18
  store i64 %i.xe, ptr %i.wm, align 8, !tbaa !14
  br label %._crit_edge.i.i394

._crit_edge.i.i394:                               ; preds = %.noexc396, %bb.fn
  %i.xf = phi ptr [ %i.xd, %.noexc396 ], [ %i.wm, %bb.fn ] ; 2 uses
  switch i64 %i.xb, label %bb.fp [
    i64 1, label %bb.fo
    i64 0, label %bb.fq
  ]

bb.fo:                                            ; preds = %._crit_edge.i.i394
  %i.xg = load i8, ptr %i.wz, align 1, !tbaa !14
  store i8 %i.xg, ptr %i.xf, align 1, !tbaa !14
  br label %bb.fq

bb.fp:                                            ; preds = %._crit_edge.i.i394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xf, ptr align 1 %i.wz, i64 %i.xb, i1 false)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %._crit_edge.i.i394
  %i.xh = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  store i64 %i.xh, ptr %i.wn, align 8, !tbaa !11
  %i.xi = load ptr, ptr %40, align 8, !tbaa !15
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xh
  store i8 0, ptr %i.xj, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  invoke void @_ZN6duckdb19QualifiedColumnNameC1ERKNS_12BindingAliasENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %39, ptr noundef nonnull align 8 dereferenceable(96) %i.oy, ptr noundef nonnull %40)
          to label %bb.fr unwind label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  %i.xk = load ptr, ptr %40, align 8, !tbaa !15   ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.wm
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.fr
  call void @_ZdlPv(ptr noundef %i.xk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398
  %i.xm = invoke ptr @_ZNSt10_HashtableIN6duckdb19QualifiedColumnNameES1_SaIS1_ENSt8__detail9_IdentityENS0_23QualifiedColumnEqualityENS0_27QualifiedColumnHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.wo, ptr noundef nonnull align 8 dereferenceable(128) %39)
          to label %.noexc401 unwind label %bb.fv

.noexc401:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %.not608 = icmp eq ptr %i.xm, null
  br i1 %.not608, label %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit403, label %bb.fs

bb.fs:                                            ; preds = %.noexc401
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.aa, ptr %5, align 8, !tbaa !1356
  %i.xn = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb19QualifiedColumnNameES1_SaIS1_ENSt8__detail9_IdentityENS0_23QualifiedColumnEqualityENS0_27QualifiedColumnHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(128) %39, ptr noundef nonnull align 8 dereferenceable(128) %39, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit403.thread unwind label %bb.fv ; 0 uses

_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit403.thread: ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.gd

bb.ft:                                            ; preds = %.noexc.i395
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

bb.fu:                                            ; preds = %bb.fq
  %i.xp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xq = load ptr, ptr %40, align 8, !tbaa !15   ; 2 uses
  %i.xr = icmp eq ptr %i.xq, %i.wm
  br i1 %i.xr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %bb.fu
  call void @_ZdlPv(ptr noundef %i.xq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

bb.fv:                                            ; preds = %bb.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit403: ; preds = %.noexc401
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #32
  %i.xt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb12BindingAlias8GetAliasB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.oy)
          to label %.noexc407 unwind label %bb.gb

.noexc407:                                        ; preds = %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit403
  invoke void @_ZN6duckdb11BindContext21CreateColumnReferenceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_NS_14ColumnBindTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.416") align 8 %41, ptr noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.oy, ptr noundef nonnull align 8 dereferenceable(32) %i.wp, ptr noundef nonnull align 8 dereferenceable(32) %i.xt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0518.0751, i32 noundef 1)
          to label %_ZN6duckdb11BindContext21CreateColumnReferenceERKNS_12BindingAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ColumnBindTypeE.exit409 unwind label %bb.gb

_ZN6duckdb11BindContext21CreateColumnReferenceERKNS_12BindingAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ColumnBindTypeE.exit409: ; preds = %.noexc407
  %i.xu = invoke noundef zeroext i1 @_ZN6duckdb12HandleRenameERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEERNS_17ExclusionListInfoE(ptr noundef nonnull align 8 dereferenceable(265) %1, ptr noundef nonnull align 8 dereferenceable(128) %39, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(176) %15)
          to label %bb.fw unwind label %.loopexit653

bb.fw:                                            ; preds = %_ZN6duckdb11BindContext21CreateColumnReferenceERKNS_12BindingAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ColumnBindTypeE.exit409
  br i1 %i.xu, label %bb.fx, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit425

bb.fx:                                            ; preds = %bb.fw
  %i.xv = load ptr, ptr %i.wq, align 8, !tbaa !517 ; 6 uses
  %i.xw = load ptr, ptr %i.wr, align 8, !tbaa !1380
  %.not.i.i410 = icmp eq ptr %i.xv, %i.xw
  br i1 %.not.i.i410, label %bb.fy, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit425.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit425.thread: ; preds = %bb.fx
  %i.xx = load i64, ptr %41, align 8, !tbaa !471
  store i64 %i.xx, ptr %i.xv, align 8, !tbaa !471
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  store ptr %i.xy, ptr %i.wq, align 8, !tbaa !517
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit431

bb.fy:                                            ; preds = %bb.fx
  %i.xz = load ptr, ptr %2, align 8, !tbaa !520   ; 10 uses
  %i.ya = ptrtoint ptr %i.xv to i64               ; 3 uses
  %i.yb = ptrtoint ptr %i.xz to i64               ; 3 uses
  %i.yc = sub i64 %i.ya, %i.yb                    ; 3 uses
  %i.yd = icmp eq i64 %i.yc, 9223372036854775800
  br i1 %i.yd, label %bb.fz, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i411

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc423 unwind label %.loopexit.split-lp654

.noexc423:                                        ; preds = %bb.fz
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i411: ; preds = %bb.fy
  %i.ye = ashr exact i64 %i.yc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i412 = call i64 @llvm.umax.i64(i64 %i.ye, i64 1)
  %i.yf = add nsw i64 %.sroa.speculated.i.i.i.i412, %i.ye ; 2 uses
  %i.yg = icmp ult i64 %i.yf, %i.ye
  %i.yh = call i64 @llvm.umin.i64(i64 %i.yf, i64 1152921504606846975)
  %i.yi = select i1 %i.yg, i64 1152921504606846975, i64 %i.yh ; 3 uses
  %.not.i.i.i.i413 = icmp ne i64 %i.yi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i413)
  %i.yj = shl nuw nsw i64 %i.yi, 3
  %i.yk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yj) #35
          to label %.noexc424 unwind label %.loopexit653 ; 10 uses

.noexc424:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i411
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.yc
  %i.ym = load i64, ptr %41, align 8, !tbaa !471
  store i64 %i.ym, ptr %i.yl, align 8, !tbaa !471
  store ptr null, ptr %41, align 8, !tbaa !471
  %.not10.i.i.i.i.i.i.i414 = icmp eq ptr %i.xz, %i.xv
  br i1 %.not10.i.i.i.i.i.i.i414, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i419, label %.lr.ph.i.i.i.i.i.i.i415.preheader

.lr.ph.i.i.i.i.i.i.i415.preheader:                ; preds = %.noexc424
  %57 = add i64 %i.ya, -8
  %58 = sub i64 %57, %i.yb                        ; 2 uses
  %i.yn = lshr i64 %58, 3
  %i.yo = add nuw nsw i64 %i.yn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %58, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i415.preheader1121, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i415.preheader
  %scevgep = getelementptr i8, ptr %i.yk, i64 8
  %i.yp = add i64 %i.ya, -8
  %i.yq = sub i64 %i.yp, %i.yb
  %i.yr = and i64 %i.yq, -8                       ; 2 uses
  %scevgep968 = getelementptr i8, ptr %scevgep, i64 %i.yr
  %scevgep969 = getelementptr i8, ptr %i.xz, i64 8
  %scevgep970 = getelementptr i8, ptr %scevgep969, i64 %i.yr
  %bound0 = icmp ult ptr %i.yk, %scevgep970
  %bound1 = icmp ult ptr %i.xz, %scevgep968
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i415.preheader1121, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.yo, 4611686018427387900     ; 3 uses
  %i.ys = shl i64 %n.vec, 3                       ; 2 uses
  %i.yt = getelementptr i8, ptr %i.yk, i64 %i.ys  ; 2 uses
  %i.yu = getelementptr i8, ptr %i.xz, i64 %i.ys
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.yv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.yk, i64 %i.yv ; 2 uses
  %next.gep971 = getelementptr i8, ptr %i.xz, i64 %i.yv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.yw = getelementptr i8, ptr %next.gep971, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep971, align 8, !tbaa !471, !alias.scope !1449, !noalias !1444
  %wide.load972 = load <2 x i64>, ptr %i.yw, align 8, !tbaa !471, !alias.scope !1449, !noalias !1444
  %i.yx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !471, !alias.scope !1452, !noalias !1449
  store <2 x i64> %wide.load972, ptr %i.yx, align 8, !tbaa !471, !alias.scope !1452, !noalias !1449
  %i.yy = getelementptr i8, ptr %next.gep971, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep971, align 8, !tbaa !471, !alias.scope !1449, !noalias !1444
  store <2 x ptr> splat (ptr null), ptr %i.yy, align 8, !tbaa !471, !alias.scope !1449, !noalias !1444
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.yz = icmp eq i64 %index.next, %n.vec
  br i1 %i.yz, label %middle.block, label %vector.body, !llvm.loop !1454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i419, label %.lr.ph.i.i.i.i.i.i.i415.preheader1121

.lr.ph.i.i.i.i.i.i.i415.preheader1121:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i415.preheader, %middle.block
  %.012.i.i.i.i.i.i.i416.ph = phi ptr [ %i.yk, %vector.memcheck ], [ %i.yk, %.lr.ph.i.i.i.i.i.i.i415.preheader ], [ %i.yt, %middle.block ]
  %.0911.i.i.i.i.i.i.i417.ph = phi ptr [ %i.xz, %vector.memcheck ], [ %i.xz, %.lr.ph.i.i.i.i.i.i.i415.preheader ], [ %i.yu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i415

.lr.ph.i.i.i.i.i.i.i415:                          ; preds = %.lr.ph.i.i.i.i.i.i.i415.preheader1121, %.lr.ph.i.i.i.i.i.i.i415
  %.012.i.i.i.i.i.i.i416 = phi ptr [ %i.zc, %.lr.ph.i.i.i.i.i.i.i415 ], [ %.012.i.i.i.i.i.i.i416.ph, %.lr.ph.i.i.i.i.i.i.i415.preheader1121 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i417 = phi ptr [ %i.zb, %.lr.ph.i.i.i.i.i.i.i415 ], [ %.0911.i.i.i.i.i.i.i417.ph, %.lr.ph.i.i.i.i.i.i.i415.preheader1121 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.za = load i64, ptr %.0911.i.i.i.i.i.i.i417, align 8, !tbaa !471, !alias.scope !1447, !noalias !1444
  store i64 %i.za, ptr %.012.i.i.i.i.i.i.i416, align 8, !tbaa !471, !alias.scope !1444, !noalias !1447
  store ptr null, ptr %.0911.i.i.i.i.i.i.i417, align 8, !tbaa !471, !alias.scope !1447, !noalias !1444
  %i.zb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i417, i64 8 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i416, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i418 = icmp eq ptr %i.zb, %i.xv
  br i1 %.not.i.i.i.i.i.i.i418, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i419, label %.lr.ph.i.i.i.i.i.i.i415, !llvm.loop !1455

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i419: ; preds = %.lr.ph.i.i.i.i.i.i.i415, %middle.block, %.noexc424
  %.0.lcssa.i.i.i.i.i.i.i420 = phi ptr [ %i.yk, %.noexc424 ], [ %i.yt, %middle.block ], [ %i.zc, %.lr.ph.i.i.i.i.i.i.i415 ]
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i420, i64 8
  %.not.i23.i.i.i421 = icmp eq ptr %i.xz, null
  br i1 %.not.i23.i.i.i421, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i422, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i419
  call void @_ZdlPv(ptr noundef nonnull %i.xz) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i422

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i422: ; preds = %bb.ga, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i419
  store ptr %i.yk, ptr %2, align 8, !tbaa !520
  store ptr %i.zd, ptr %i.wq, align 8, !tbaa !517
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %i.yi
  store ptr %i.ze, ptr %i.wr, align 8, !tbaa !1380
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit425

bb.gb:                                            ; preds = %.noexc407, %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit403
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit428

.loopexit653:                                     ; preds = %_ZN6duckdb11BindContext21CreateColumnReferenceERKNS_12BindingAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ColumnBindTypeE.exit409, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i411
  %lpad.loopexit655 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

.loopexit.split-lp654:                            ; preds = %bb.fz
  %lpad.loopexit.split-lp656 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gc:                                            ; preds = %.loopexit.split-lp654, %.loopexit653
  %lpad.phi657 = phi { ptr, i32 } [ %lpad.loopexit655, %.loopexit653 ], [ %lpad.loopexit.split-lp656, %.loopexit.split-lp654 ] ; 2 uses
  %i.zg = load ptr, ptr %41, align 8, !tbaa !471  ; 3 uses
  %.not.i426 = icmp eq ptr %i.zg, null
  br i1 %.not.i426, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit428, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i427

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i427: ; preds = %bb.gc
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !16
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(56) %i.zg) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit428

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit425: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i422, %bb.fw
  %.pr578 = load ptr, ptr %41, align 8, !tbaa !471 ; 3 uses
  %.not.i429 = icmp eq ptr %.pr578, null
  br i1 %.not.i429, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit431, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i430

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i430: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit425
  %i.zk = load ptr, ptr %.pr578, align 8, !tbaa !16
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(56) %.pr578) #32, !inline_history !473
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit431

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit431: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit425.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit425, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i430
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #32
  br label %bb.gd

bb.gd:                                            ; preds = %_ZN6duckdb18CheckExclusionListERNS_14StarExpressionERKNS_19QualifiedColumnNameERNS_17ExclusionListInfoE.exit403.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit431
  %i.zn = load ptr, ptr %i.ws, align 8, !tbaa !15 ; 2 uses
  %i.zo = icmp eq ptr %i.zn, %i.wt
  br i1 %i.zo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432: ; preds = %bb.gd
  call void @_ZdlPv(ptr noundef %i.zn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i433: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432
  %i.zp = load ptr, ptr %i.wu, align 8, !tbaa !15 ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.wv
  br i1 %i.zq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i433
  call void @_ZdlPv(ptr noundef %i.zp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i434
  %i.zr = load ptr, ptr %i.ww, align 8, !tbaa !15 ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.wx
  br i1 %i.zs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i436

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i435
  call void @_ZdlPv(ptr noundef %i.zr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i436
  %i.zt = load ptr, ptr %39, align 8, !tbaa !15   ; 2 uses
  %i.zu = icmp eq ptr %i.zt, %i.wy
  br i1 %i.zu, label %_ZN6duckdb19QualifiedColumnNameD2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i437
  call void @_ZdlPv(ptr noundef %i.zt) #33
  br label %_ZN6duckdb19QualifiedColumnNameD2Ev.exit443

_ZN6duckdb19QualifiedColumnNameD2Ev.exit443:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i438
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #32
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.0518.0751, i64 32 ; 2 uses
  %.not607 = icmp eq ptr %i.zv, %i.wl
  br i1 %.not607, label %.loopexit652, label %bb.fn

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit428: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i427, %bb.gc, %bb.gb
  %.pn151 = phi { ptr, i32 } [ %i.zf, %bb.gb ], [ %lpad.phi657, %bb.gc ], [ %lpad.phi657, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i427 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #32
  br label %bb.ge

bb.ge:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit428, %bb.fv
  %.pn151.pn = phi { ptr, i32 } [ %.pn151, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit428 ], [ %i.xs, %bb.fv ]
  call void @_ZN6duckdb19QualifiedColumnNameD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %39) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.ge, %bb.ft
  %.pn151.pn.pn = phi { ptr, i32 } [ %.pn151.pn, %bb.ge ], [ %i.xo, %bb.ft ], [ %i.xp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %i.xp, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #32
  br label %bb.gg

.loopexit652:                                     ; preds = %_ZN6duckdb19QualifiedColumnNameD2Ev.exit443, %bb.fm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %i.zw = getelementptr inbounds nuw i8, ptr %23, i64 72 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 2 uses
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !410 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.zy, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit652, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.zz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.zy, %.loopexit652 ] ; 6 uses
  %i.zz = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.aab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !15 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
end_hunk_11
begin_hunk_12_@_ZN6duckdb11BindContext16GetTypesAndNamesERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERNS1_INS_11LogicalTypeELb1ESaISB_EEE:bb.a
  br i1 %i.ac, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !15
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !18
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.af = phi ptr [ %i.ad, %.noexc.i.i ], [ %i.y, %bb.c ] ; 2 uses
  switch i64 %i.ab, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !14
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !11
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !295
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.am, ptr %i.i, align 8, !tbaa !295
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.f:                                             ; preds = %_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.f
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !392
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !393 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.031, ptr %i.b, align 8, !tbaa !18
  store i64 %i.as, ptr %i.c, align 8, !tbaa !18
  %.not.i.i.i14 = icmp ult i64 %.031, %i.as
  br i1 %.not.i.i.i14, label %_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit, label %.noexc.i23, !prof !126

.noexc.i23:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.at = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.au, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 55, ptr %i.a, align 8, !tbaa !18
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i15 ; 3 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.av, ptr %3, align 8, !tbaa !15
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.av, ptr noundef nonnull align 1 dereferenceable(55) @.str.109, i64 55, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc24
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.k unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i15: ; preds = %.noexc.i23
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %.noexc24
  %.0.i.i.i18 = phi i1 [ false, %bb.g ], [ true, %.noexc24 ] ; 2 uses
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.au
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.bb) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0.i.i.i18, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0.i.i.i18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i15
  %.pn8.i.i.i16 = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i15 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19 ]
  call void @__cxa_free_exception(ptr %i.at) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19
  %.pn7.i.i.i17 = phi { ptr, i32 } [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i20 ], [ %.pn8.i.i.i16, %bb.i ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19 ]
  resume { ptr, i32 } %.pn7.i.i.i17

bb.k:                                             ; preds = %bb.g
  unreachable

_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.031 ; 2 uses
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !392 ; 3 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !379
  %.not.i21 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.bh, ptr %i.k, align 8, !tbaa !392
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.l, %bb.m
  %i.bi = add nuw i64 %.031, 1                    ; 2 uses
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !295
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !293 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 5
  %i.bp = icmp ult i64 %i.bi, %i.bo
  br i1 %i.bp, label %_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm.exit, label %._crit_edge, !llvm.loop !1471
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1005 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1193
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !1006
  store i64 %i.f, ptr %i.c, align 8, !tbaa !1006
  store ptr null, ptr %1, align 8, !tbaa !1006
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !1005
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1004 ; 10 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i64, ptr %1, align 8, !tbaa !1006
  store i64 %i.u, ptr %i.t, align 8, !tbaa !1006
  store ptr null, ptr %1, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %2 = add i64 %i.i, -8
  %3 = sub i64 %2, %i.j                           ; 2 uses
  %i.v = lshr i64 %3, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.x = add i64 %i.i, -8
  %i.y = sub i64 %i.x, %i.j
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.aa
  %scevgep3 = getelementptr i8, ptr %i.h, i64 %i.aa
  %bound0 = icmp ult ptr %i.s, %scevgep3
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.af = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !1006, !alias.scope !1477, !noalias !1472
  %wide.load5 = load <2 x i64>, ptr %i.af, align 8, !tbaa !1006, !alias.scope !1477, !noalias !1472
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1480, !noalias !1477
  store <2 x i64> %wide.load5, ptr %i.ag, align 8, !tbaa !1006, !alias.scope !1480, !noalias !1477
  %i.ah = getelementptr i8, ptr %next.gep4, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !1006, !alias.scope !1477, !noalias !1472
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !1006, !alias.scope !1477, !noalias !1472
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1482

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.preheader7:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1475, !noalias !1472
  store i64 %i.aj, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1472, !noalias !1475
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1475, !noalias !1472
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1483

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !1004
  store ptr %i.am, ptr %i.b, align 8, !tbaa !1005
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.an, ptr %i.d, align 8, !tbaa !1193
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEPNS_17TableCatalogEntryERmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSS_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1397") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(56) %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.212", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::vector.183", align 8 ; 8 uses
  %10 = alloca %"class.std::unordered_map.386", align 8 ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #35 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.m

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !293    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !107

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.j = phi ptr [ null, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !295
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !380
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %.body

bb.e:                                             ; preds = %.noexc13
  store ptr %i.n, ptr %i.k, align 8, !tbaa !295
  %i.p = load ptr, ptr %5, align 8, !tbaa !1189
  %i.q = load i64, ptr %6, align 8, !tbaa !18
  %i.r = load ptr, ptr %7, align 8, !tbaa !432    ; 3 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !432
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !434  ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !434
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !435  ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !436
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !436
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !412
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 5 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !437
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.af = icmp eq ptr %i.r, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.ad, ptr %10, align 8, !tbaa !432
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !437
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !437
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi ptr [ %i.ad, %bb.f ], [ %i.r, %bb.e ]
  %.not.i.i.i.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i14, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = urem i64 %i.aj, %i.u
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  store ptr %i.v, ptr %i.al, align 8, !tbaa !150
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit: ; preds = %bb.g, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.am, align 8, !tbaa !438
  store i64 1, ptr %i.t, align 8, !tbaa !434
  store ptr null, ptr %i.ae, align 8, !tbaa !437
  store ptr %i.ae, ptr %7, align 8, !tbaa !432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb12TableBindingC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISA_EEENS9_IS6_Lb1ESaIS6_EEERNS9_INS_11ColumnIndexELb1ESaISF_EEENS_12optional_ptrINS_13StandardEntryELb1EEEmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSN_EEE(ptr noundef nonnull align 8 dereferenceable(296) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.p, i64 noundef %i.q, ptr noundef nonnull %10)
          to label %bb.i unwind label %bb.o

end_hunk_12
begin_hunk_13_@_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEERNS_17TableCatalogEntryEb:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi ptr [ %i.ai, %bb.h ], [ %i.ac, %bb.g ]
  %.not.i.i.i.i12 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i12, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !18
  %i.ao = urem i64 %i.an, %i.ab
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao
  store ptr %i.af, ptr %i.ap, align 8, !tbaa !150
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit: ; preds = %bb.i, %bb.j
  store i64 0, ptr %i.e, align 8, !tbaa !438
  store i64 1, ptr %i.b, align 8, !tbaa !434
  store ptr null, ptr %i.a, align 8, !tbaa !437
  store ptr %i.a, ptr %8, align 8, !tbaa !432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEERNS_17TableCatalogEntryESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull %10)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !435 ; 2 uses
  %.not5.i.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not5.i.i.i.i13, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.k, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17
  %.06.i.i.i.i15 = phi ptr [ %i.ar, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17 ], [ %i.aq, %bb.k ] ; 5 uses
  %i.ar = load ptr, ptr %.06.i.i.i.i15, align 8, !tbaa !143 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.at) #32
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 32
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i16: ; preds = %.lr.ph.i.i.i.i14
  call void @_ZdlPv(ptr noundef %i.au) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17: ; preds = %.lr.ph.i.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i16
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i15) #33
  %.not.i.i.i.i18 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i18, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19, label %.lr.ph.i.i.i.i14, !llvm.loop !445

_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i17, %bb.k
  %i.ax = load ptr, ptr %10, align 8, !tbaa !432
  %i.ay = load i64, ptr %i.ae, align 8, !tbaa !434
  %i.az = shl i64 %i.ay, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.az, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %10, align 8, !tbaa !432  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ai
  br i1 %i.bb, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19
  call void @_ZdlPv(ptr noundef %i.ba) #33
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i19, %bb.l
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !435 ; 2 uses
  %.not5.i.i.i.i22 = icmp eq ptr %i.bc, null
  br i1 %.not5.i.i.i.i22, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28, label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26
  %.06.i.i.i.i24 = phi ptr [ %i.bd, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26 ], [ %i.bc, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21 ] ; 5 uses
  %i.bd = load ptr, ptr %.06.i.i.i.i24, align 8, !tbaa !143 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i24, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i24, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #32
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i24, i64 32
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i.i23
  call void @_ZdlPv(ptr noundef %i.bg) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26: ; preds = %.lr.ph.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i25
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i24) #33
  %.not.i.i.i.i27 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i27, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28, label %.lr.ph.i.i.i.i23, !llvm.loop !445

_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i26, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit21
  %i.bj = load ptr, ptr %8, align 8, !tbaa !432
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !434
  %i.bl = shl i64 %i.bk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %8, align 8, !tbaa !432   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.a
  br i1 %i.bn, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit30, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28
  call void @_ZdlPv(ptr noundef %i.bm) #33
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit30

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit30: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i28, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  ret void

bb.n:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.z, %bb.f ]
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEES8_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %7 = alloca %"class.std::unordered_map.386", align 8 ; 13 uses
  %8 = alloca %"class.duckdb::unique_ptr.1397", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !432
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 1, ptr %i.d, align 8, !tbaa !434
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, ptr %6, ptr %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr null, ptr %i.b, align 8, !tbaa !1484
  invoke void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEDnRmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1397") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %8, align 8, !tbaa !1191   ; 5 uses
  store ptr null, ptr %8, align 8, !tbaa !1191
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1005 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.b
  %i.r = ptrtoint ptr %i.l to i64
  store i64 %i.r, ptr %i.o, align 8, !tbaa !1006
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.n, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1004 ; 10 uses
  %i.u = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #35
          to label %.noexc10 unwind label %bb.g   ; 12 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  %i.ag = ptrtoint ptr %i.l to i64
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc10
  %9 = add i64 %i.u, -8
  %10 = sub i64 %9, %i.v                          ; 2 uses
  %i.ah = lshr i64 %10, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.aj = add i64 %i.u, -8
  %i.ak = sub i64 %i.aj, %i.v
  %i.al = and i64 %i.ak, -8
  %i.am = add i64 %i.al, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.am
  %scevgep34 = getelementptr i8, ptr %i.t, i64 %i.am
  %bound0 = icmp ult ptr %i.ae, %scevgep34
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.t, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.aq ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.t, i64 %i.aq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.ar = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !1006, !alias.scope !1491, !noalias !1486
  %wide.load36 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !1006, !alias.scope !1491, !noalias !1486
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1494, !noalias !1491
  store <2 x i64> %wide.load36, ptr %i.as, align 8, !tbaa !1006, !alias.scope !1494, !noalias !1491
  %i.at = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !1006, !alias.scope !1491, !noalias !1486
  store <2 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !1006, !alias.scope !1491, !noalias !1486
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1496

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.i.i.preheader38:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader38 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.av = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1489, !noalias !1486
  store i64 %i.av, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1486, !noalias !1489
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1489, !noalias !1486
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1497

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc10 ], [ %i.ao, %middle.block ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread31, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread31: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !1004
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !1005
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.az, ptr %i.p, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.t) #33
  %.pre.pre = load ptr, ptr %8, align 8, !tbaa !1191 ; 3 uses
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !1004
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !1005
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.ba, ptr %i.p, align 8, !tbaa !1193
  %.not.i11 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.bb = load ptr, ptr %.pre.pre, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(296) %.pre.pre) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread31, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !435 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i ], [ %i.be, %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.bf = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #32
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bi) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #33
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !445

_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit
  %i.bl = load ptr, ptr %7, align 8, !tbaa !432
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !434
  %i.bn = shl i64 %i.bm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 %i.bn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %7, align 8, !tbaa !432   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.c
  br i1 %i.bp, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bo) #33
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit17

bb.g:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i13: ; preds = %bb.g
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.l) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i13
  %i.bv = load ptr, ptr %8, align 8, !tbaa !1191  ; 3 uses
  %.not.i15 = icmp eq ptr %i.bv, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit17, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i16

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i16: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(296) %i.bv) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit17: ; preds = %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i16, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.f ], [ %i.br, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit14 ], [ %i.br, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEDnRmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1397") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(56) %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.212", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::vector.183", align 8 ; 8 uses
  %10 = alloca %"class.std::unordered_map.386", align 8 ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #35 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.m

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !293    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.b
end_hunk_13
begin_hunk_14_@_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEEDnRmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSQ_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  invoke void @_ZN6duckdb12TableBindingC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISA_EEENS9_IS6_Lb1ESaIS6_EEERNS9_INS_11ColumnIndexELb1ESaISF_EEENS_12optional_ptrINS_13StandardEntryELb1EEEmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSN_EEE(ptr noundef nonnull align 8 dereferenceable(296) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, i64 noundef %i.p, ptr noundef nonnull %10)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !1191
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !435 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.an, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i ], [ %i.am, %bb.i ] ; 5 uses
  %i.an = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !143 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #32
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.aq) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #33
  %.not.i.i.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i14, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !445

_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i.i, %bb.i
  %i.at = load ptr, ptr %10, align 8, !tbaa !432
  %i.au = load i64, ptr %i.r, align 8, !tbaa !434
  %i.av = shl i64 %i.au, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.av, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aw = load ptr, ptr %10, align 8, !tbaa !432  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ac
  br i1 %i.ax, label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.aw) #33
  br label %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit

_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.j
  %i.ay = load ptr, ptr %9, align 8, !tbaa !293   ; 3 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ay, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit ] ; 3 uses
  %i.ba = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ba) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %i.az
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit
  %i.be = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ay, %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  %i.bf = load ptr, ptr %8, align 8, !tbaa !393   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !392 ; 2 uses
  %.not4.i.i.i15 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4.i.i.i15, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i16
  %.05.i.i.i17 = phi ptr [ %i.bi, %.lr.ph.i.i.i16 ], [ %i.bf, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i17) #32
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i17, i64 24 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i16, !llvm.loop !426

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i16
  %.pr.i19 = load ptr, ptr %8, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bj = phi ptr [ %.pr.i19, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bf, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i20, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #33
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  ret void

bb.m:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEEC2EOSA_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #32
  br label %.body

.body:                                            ; preds = %bb.n, %bb.d, %bb.c, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bl, %bb.n ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bk, %bb.m ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext16AddTableFunctionEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEENS_12optional_ptrINS_13StandardEntryELb1EEESt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSR_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6, ptr noundef nonnull %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::optional_ptr.385", align 8 ; 2 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %9 = alloca %"class.duckdb::unique_ptr.1397", align 8 ; 8 uses
  %i.b = inttoptr i64 %6 to ptr
  store ptr %i.b, ptr %8, align 8
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEERNS_12optional_ptrINS_13StandardEntryELb1EEERmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSU_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1397") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %7)
  %i.c = load ptr, ptr %9, align 8, !tbaa !1191   ; 5 uses
  store ptr null, ptr %9, align 8, !tbaa !1191
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1005 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !1006
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1004 ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.c, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #35
          to label %.noexc6 unwind label %bb.d    ; 12 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.c to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc6
  %10 = add i64 %i.l, -8
  %11 = sub i64 %10, %i.m                         ; 2 uses
  %i.y = lshr i64 %11, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %11, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.aa = add i64 %i.l, -8
  %i.ab = sub i64 %i.aa, %i.m
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ad
  %scevgep26 = getelementptr i8, ptr %i.k, i64 %i.ad
  %bound0 = icmp ult ptr %i.v, %scevgep26
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.k, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ah ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.k, i64 %i.ah ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.ai = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !1006, !alias.scope !1503, !noalias !1498
  %wide.load28 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !1006, !alias.scope !1503, !noalias !1498
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1506, !noalias !1503
  store <2 x i64> %wide.load28, ptr %i.aj, align 8, !tbaa !1006, !alias.scope !1506, !noalias !1503
  %i.ak = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !1006, !alias.scope !1503, !noalias !1498
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !1006, !alias.scope !1503, !noalias !1498
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1508

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.i.i.preheader30:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader30 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1501, !noalias !1498
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1498, !noalias !1501
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1501, !noalias !1498
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1509

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc6
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc6 ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !1004
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !1005
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #33
  %.pre.pre = load ptr, ptr %9, align 8, !tbaa !1191 ; 3 uses
  store ptr %i.v, ptr %i.d, align 8, !tbaa !1004
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !1005
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !1193
  %.not.i7 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.as = load ptr, ptr %.pre.pre, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(296) %.pre.pre) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.d:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  %.not.i8 = icmp eq ptr %i.c, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9: ; preds = %bb.d
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.c) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9
  %i.az = load ptr, ptr %9, align 8, !tbaa !1191  ; 3 uses
  %.not.i11 = icmp eq ptr %i.az, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i12: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(296) %i.az) #32, !inline_history !1206
  br label %_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN6duckdb12TableBindingESt14default_deleteIS1_EED2Ev.exit13: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10, %_ZNKSt14default_deleteIN6duckdb12TableBindingEEclEPS1_.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %i.av
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12TableBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERNSA_INS_11ColumnIndexELb1ESaISK_EEERNS_12optional_ptrINS_13StandardEntryELb1EEERmSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSU_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1397") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(56) %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.212", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::vector.183", align 8 ; 8 uses
  %10 = alloca %"class.std::unordered_map.386", align 8 ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #35 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.m

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !293    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !107

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.j = phi ptr [ null, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !295
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !380
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc13
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %.body

bb.e:                                             ; preds = %.noexc13
  store ptr %i.n, ptr %i.k, align 8, !tbaa !295
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !427
  %i.p = load i64, ptr %6, align 8, !tbaa !18
  %i.q = load ptr, ptr %7, align 8, !tbaa !432    ; 3 uses
  store ptr %i.q, ptr %10, align 8, !tbaa !432
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !434  ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !434
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !435  ; 3 uses
end_hunk_14
begin_hunk_15_@_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev:bb.a
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #33
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !292

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !1368
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1367
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !1368   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.l) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext11AddSubqueryEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11SubqueryRefERNS_14BoundStatementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(136) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::vector.183", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZN6duckdb11BindContext16AliasColumnNamesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEESD_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.183") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_ZN6duckdb11BindContext17AddGenericBindingEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !293    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.g) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext17AddGenericBindingEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %5 = alloca %"class.duckdb::unique_ptr.1259", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"struct.duckdb::BindingAlias", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i32 0, ptr %i.c, align 4, !tbaa !1528
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !7
  %i.e = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.g, ptr %i.a, align 8, !tbaa !18
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !15
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.j, ptr %i.d, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !14
  store i8 %i.l, ptr %i.k, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !11
  %i.o = load ptr, ptr %7, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN6duckdb12BindingAliasC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull %7)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN6duckdb9make_uniqINS_7BindingEJNS_11BindingTypeENS_12BindingAliasERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERKNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISF_EEERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1259") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1005 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i.i, label %bb.f, label %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit.thread

_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit.thread: ; preds = %bb.e
  %i.v = load i64, ptr %5, align 8, !tbaa !1006
  store i64 %i.v, ptr %i.s, align 8, !tbaa !1006
  store ptr null, ptr %5, align 8, !tbaa !1006
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.r, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !1004 ; 10 uses
  %i.y = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #35
          to label %.noexc9 unwind label %bb.k    ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = load i64, ptr %5, align 8, !tbaa !1006
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !1006
  store ptr null, ptr %5, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc9
  %8 = add i64 %i.y, -8
  %9 = sub i64 %8, %i.z                           ; 2 uses
  %i.al = lshr i64 %9, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.an = add i64 %i.y, -8
  %i.ao = sub i64 %i.an, %i.z
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.aq
  %scevgep25 = getelementptr i8, ptr %i.x, i64 %i.aq
  %bound0 = icmp ult ptr %i.ai, %scevgep25
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.x, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.au ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.x, i64 %i.au ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.av = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !1006, !alias.scope !1534, !noalias !1529
  %wide.load27 = load <2 x i64>, ptr %i.av, align 8, !tbaa !1006, !alias.scope !1534, !noalias !1529
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1537, !noalias !1534
  store <2 x i64> %wide.load27, ptr %i.aw, align 8, !tbaa !1006, !alias.scope !1537, !noalias !1534
  %i.ax = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !1006, !alias.scope !1534, !noalias !1529
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !1006, !alias.scope !1534, !noalias !1529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.i.i.preheader29:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader29 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader29 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1532, !noalias !1529
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1529, !noalias !1532
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1532, !noalias !1529
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1540

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc9 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i.i, label %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #33
  br label %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit

_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, %bb.h
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !1004
  store ptr %i.bc, ptr %i.r, align 8, !tbaa !1005
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bd, ptr %i.t, align 8, !tbaa !1193
  %.pr = load ptr, ptr %5, align 8, !tbaa !1006   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i: ; preds = %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %.pr) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit.thread, %_ZN6duckdb11BindContext10AddBindingENS_10unique_ptrINS_7BindingESt14default_deleteIS2_ELb1EEE.exit, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !15 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bp = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN6duckdb12BindingAliasD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.bp) #33
  br label %_ZN6duckdb12BindingAliasD2Ev.exit

_ZN6duckdb12BindingAliasD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.bs = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.d
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !1006  ; 3 uses
  %.not.i10 = icmp eq ptr %i.bx, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i11: ; preds = %bb.k
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.bx) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i11, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.j ], [ %i.bw, %bb.k ], [ %i.bw, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i11 ]
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #32
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit12 ], [ %i.bu, %bb.i ]
  %i.cb = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.d
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.cb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext15AddEntryBindingEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS_13StandardEntryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(312) %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %6 = alloca %"class.duckdb::unique_ptr.1406", align 8 ; 8 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN6duckdb9make_uniqINS_12EntryBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERmRNS_13StandardEntryEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1406") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %5)
  %i.b = load ptr, ptr %6, align 8, !tbaa !1541   ; 5 uses
  store ptr null, ptr %6, align 8, !tbaa !1541
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1005 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1193
  %.not.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.a
  %i.h = ptrtoint ptr %i.b to i64
  store i64 %i.h, ptr %i.e, align 8, !tbaa !1006
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !1004 ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.c, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35
          to label %.noexc6 unwind label %bb.d    ; 12 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.b to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc6
  %7 = add i64 %i.k, -8
  %8 = sub i64 %7, %i.l                           ; 2 uses
  %i.x = lshr i64 %8, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.z = add i64 %i.k, -8
  %i.aa = sub i64 %i.z, %i.l
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep26 = getelementptr i8, ptr %i.j, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %scevgep26
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.j, i64 %i.ag ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.ah = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !1006, !alias.scope !1548, !noalias !1543
  %wide.load28 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !1006, !alias.scope !1548, !noalias !1543
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1551, !noalias !1548
  store <2 x i64> %wide.load28, ptr %i.ai, align 8, !tbaa !1006, !alias.scope !1551, !noalias !1548
  %i.aj = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !1006, !alias.scope !1548, !noalias !1543
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !1006, !alias.scope !1548, !noalias !1543
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1553

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.i.i.preheader30:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader30 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1546, !noalias !1543
  store i64 %i.al, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1543, !noalias !1546
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1546, !noalias !1543
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1554

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc6
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc6 ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1004
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !1005
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  %.pre.pre = load ptr, ptr %6, align 8, !tbaa !1541 ; 3 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1004
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !1005
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !1193
  %.not.i7 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.ar = load ptr, ptr %.pre.pre, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(232) %.pre.pre) #32, !inline_history !1555
  br label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread23, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

bb.d:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.not.i8 = icmp eq ptr %i.b, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9: ; preds = %bb.d
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.b) #32, !inline_history !1207
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i9
  %i.ay = load ptr, ptr %6, align 8, !tbaa !1541  ; 3 uses
  %.not.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i12: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(232) %i.ay) #32, !inline_history !1555
  br label %_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN6duckdb12EntryBindingESt14default_deleteIS1_EED2Ev.exit13: ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit10, %_ZNKSt14default_deleteIN6duckdb12EntryBindingEEclEPS1_.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %i.au
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_12EntryBindingEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISB_EEERKNSA_IS7_Lb1ESaIS7_EEERmRNS_13StandardEntryEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1406") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(312) %5) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::vector.212", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::vector.183", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #35 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.i

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !293    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %.noexc11, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !107

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.j = phi ptr [ null, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !295
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !380
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc11
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %.body

bb.e:                                             ; preds = %.noexc11
  store ptr %i.n, ptr %i.k, align 8, !tbaa !295
  %i.p = load i64, ptr %4, align 8, !tbaa !18
  invoke void @_ZN6duckdb12EntryBindingC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISA_EEENS9_IS6_Lb1ESaIS6_EEEmRNS_13StandardEntryE(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(312) %5)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !1541
  %i.q = load ptr, ptr %7, align 8, !tbaa !293    ; 3 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
end_hunk_15
begin_hunk_16_@_ZN6duckdb9make_uniqINS_7BindingEJNS_11BindingTypeENS_12BindingAliasERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERKNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISF_EEERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
bb.f:                                             ; preds = %.noexc11
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #33
  br label %.body

bb.h:                                             ; preds = %.noexc11
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !295
  %i.be = load i64, ptr %5, align 8, !tbaa !18
  invoke void @_ZN6duckdb7BindingC1ENS_11BindingTypeENS_12BindingAliasENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISC_EEEm(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef %i.b, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef %i.be)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %0, align 8, !tbaa !1006
  %i.bf = load ptr, ptr %8, align 8, !tbaa !293   ; 3 uses
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bf, %bb.i ] ; 3 uses
  %i.bh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bh) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.bl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bf, %bb.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.bm = load ptr, ptr %7, align 8, !tbaa !393   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !392 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i13
  %.05.i.i.i14 = phi ptr [ %i.bp, %.lr.ph.i.i.i13 ], [ %i.bm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i14) #32
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i13, !llvm.loop !426

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i13
  %.pr.i16 = load ptr, ptr %7, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bq = phi ptr [ %.pr.i16, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i17 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i17, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #33
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ae
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.br) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !15  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.q
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bv = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.c
  br i1 %i.bw, label %_ZN6duckdb12BindingAliasD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.bv) #33
  br label %_ZN6duckdb12BindingAliasD2Ev.exit

_ZN6duckdb12BindingAliasD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  ret void

bb.l:                                             ; preds = %_ZN6duckdb12BindingAliasC2EOS0_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.g, %bb.f, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.n ], [ %i.by, %bb.m ], [ %i.bd, %bb.g ], [ %i.bd, %bb.f ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #32
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bx, %bb.l ]
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #32
  call void @_ZdlPv(ptr noundef nonnull %i.a) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext13AddCTEBindingENS_10unique_ptrINS_10CTEBindingESt14default_deleteIS2_ELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1074 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1074 ; 3 uses
  %.not33 = icmp eq ptr %i.b, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !999
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1556
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = load i64, ptr %1, align 8, !tbaa !1000
  store i64 %i.h, ptr %i.e, align 8, !tbaa !1000
  store ptr null, ptr %1, align 8, !tbaa !1000
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !999
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !998  ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = load i64, ptr %1, align 8, !tbaa !1000
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1000
  store ptr null, ptr %1, align 8, !tbaa !1000
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %5 = add i64 %i.k, -8
  %6 = sub i64 %5, %i.l                           ; 2 uses
  %i.x = lshr i64 %6, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader49, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.z = add i64 %i.k, -8
  %i.aa = sub i64 %i.z, %i.l
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep45 = getelementptr i8, ptr %i.j, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %scevgep45
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.j, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.ah = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !1000, !alias.scope !1562, !noalias !1557
  %wide.load47 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !1000, !alias.scope !1562, !noalias !1557
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1000, !alias.scope !1565, !noalias !1562
  store <2 x i64> %wide.load47, ptr %i.ai, align 8, !tbaa !1000, !alias.scope !1565, !noalias !1562
  %i.aj = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !1000, !alias.scope !1562, !noalias !1557
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !1000, !alias.scope !1562, !noalias !1557
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1567

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.preheader49:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader49 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1000, !alias.scope !1560, !noalias !1557
  store i64 %i.al, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1000, !alias.scope !1557, !noalias !1560
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1000, !alias.scope !1560, !noalias !1557
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1568

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !998
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !999
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !1556
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10CTEBindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread
  %.sroa.015.034 = phi ptr [ %i.bq, %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.aq = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10CTEBindingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.034) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10CTEBindingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef nonnull align 8 dereferenceable(96) %i.at)
  br i1 %i.au, label %bb.f, label %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread

bb.f:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ax = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
  br i1 %i.ax, label %_ZNK6duckdb12BindingAliaseqERKS0_.exit, label %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread

_ZNK6duckdb12BindingAliaseqERKS0_.exit:           ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.ba = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  br i1 %i.ba, label %bb.g, label %_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread

bb.g:                                             ; preds = %_ZNK6duckdb12BindingAliaseqERKS0_.exit
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CTEBindingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  invoke void @_ZNK6duckdb12BindingAlias8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %i.bd)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.o unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bj = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bn = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.bn) #33
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bj) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.0, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread
  %.pn.pn21.ph = phi { ptr, i32 } [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn21 = phi { ptr, i32 } [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn21.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bb) #32
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn20 = phi { ptr, i32 } [ %.pn.pn21, %bb.m ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  resume { ptr, i32 } %.pn.pn20

_ZNK6duckdb12BindingAliaseqERKS0_.exit.thread:    ; preds = %.lr.ph, %bb.f, %_ZNK6duckdb12BindingAliaseqERKS0_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.015.034, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
end_hunk_16
begin_hunk_17_@_ZN6duckdb9make_uniqINS_10CTEBindingEJNS_12BindingAliasERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERKNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEERmRNS_7CTETypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %.05.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bf, %bb.i ] ; 3 uses
  %i.bh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bh) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.bl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bf, %bb.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.bm = load ptr, ptr %7, align 8, !tbaa !393   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !392 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i13
  %.05.i.i.i14 = phi ptr [ %i.bp, %.lr.ph.i.i.i13 ], [ %i.bm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i14) #32
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i13, !llvm.loop !426

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i13
  %.pr.i16 = load ptr, ptr %7, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bq = phi ptr [ %.pr.i16, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i17 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i17, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #33
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  %i.br = load ptr, ptr %i.ab, align 8, !tbaa !15 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ad
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.br) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !15  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.p
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bv = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.b
  br i1 %i.bw, label %_ZN6duckdb12BindingAliasD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.bv) #33
  br label %_ZN6duckdb12BindingAliasD2Ev.exit

_ZN6duckdb12BindingAliasD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  ret void

bb.l:                                             ; preds = %_ZN6duckdb12BindingAliasC2EOS0_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.g, %bb.f, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.n ], [ %i.by, %bb.m ], [ %i.bc, %bb.g ], [ %i.bc, %bb.f ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #32
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bx, %bb.l ]
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #32
  call void @_ZdlPv(ptr noundef nonnull %i.a) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11BindContext10AddContextES0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::unordered_set<std::reference_wrapper<duckdb::UsingColumnSet>, duckdb::ReferenceHashFunction<duckdb::UsingColumnSet>, duckdb::ReferenceEquality<duckdb::UsingColumnSet>>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::unordered_set<std::reference_wrapper<duckdb::UsingColumnSet>, duckdb::ReferenceHashFunction<duckdb::UsingColumnSet>, duckdb::ReferenceEquality<duckdb::UsingColumnSet>>>>, std::__detail::_Select1st, duckdb::CaseInsensitiveStringEquality, duckdb::CaseInsensitiveStringHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1230 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1230 ; 2 uses
  %.not109 = icmp eq ptr %i.c, %i.e
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !1005
  %.pre149 = load ptr, ptr %i.h, align 8, !tbaa !1193
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.052.0117 = load ptr, ptr %i.i, align 8, !tbaa !143 ; 2 uses
  %.not65118 = icmp eq ptr %.sroa.052.0117, null
  br i1 %.not65118, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit
  %i.r = phi ptr [ %.pre149, %.lr.ph ], [ %i.ba, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.s = phi ptr [ %.pre, %.lr.ph ], [ %i.bb, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.sroa.059.0110 = phi ptr [ %i.c, %.lr.ph ], [ %i.bc, %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.t = load i64, ptr %.sroa.059.0110, align 8, !tbaa !1006 ; 4 uses
  store ptr null, ptr %.sroa.059.0110, align 8, !tbaa !1006
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.t, ptr %i.s, align 8, !tbaa !1006
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.g, align 8, !tbaa !1005
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !1004 ; 10 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %.loopexit.split-lp75

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #35
          to label %.noexc12 unwind label %.loopexit74 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.t, ptr %i.ah, align 8, !tbaa !1006
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc12
  %3 = add i64 %i.w, -8
  %4 = sub i64 %3, %i.x                           ; 2 uses
  %i.ai = lshr i64 %4, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader259, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ag, i64 8
  %i.ak = add i64 %i.w, -8
  %i.al = sub i64 %i.ak, %i.x
  %i.am = and i64 %i.al, -8                       ; 2 uses
  %scevgep231 = getelementptr i8, ptr %scevgep, i64 %i.am
  %scevgep232 = getelementptr i8, ptr %i.v, i64 8
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.am
  %bound0 = icmp ult ptr %i.ag, %scevgep233
  %bound1 = icmp ult ptr %i.v, %scevgep231
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader259, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ag, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.aq ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.v, i64 %i.aq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %i.ar = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep234, align 8, !tbaa !1006, !alias.scope !1579, !noalias !1574
  %wide.load235 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !1006, !alias.scope !1579, !noalias !1574
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1006, !alias.scope !1582, !noalias !1579
  store <2 x i64> %wide.load235, ptr %i.as, align 8, !tbaa !1006, !alias.scope !1582, !noalias !1579
  %i.at = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep234, align 8, !tbaa !1006, !alias.scope !1579, !noalias !1574
  store <2 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !1006, !alias.scope !1579, !noalias !1574
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader259

.lr.ph.i.i.i.i.i.i.i.i.preheader259:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader259, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader259 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader259 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %i.av = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1577, !noalias !1574
  store i64 %i.av, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1574, !noalias !1577
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1006, !alias.scope !1577, !noalias !1574
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1585

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc12 ], [ %i.ao, %middle.block ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !1004
  store ptr %i.ay, ptr %i.g, align 8, !tbaa !1005
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.az, ptr %i.h, align 8, !tbaa !1193
  br label %_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7BindingESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  %i.ba = phi ptr [ %i.r, %bb.c ], [ %i.az, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i ]
  %i.bb = phi ptr [ %i.u, %bb.c ], [ %i.ay, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.059.0110, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit74:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_7BindingESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp75:                             ; preds = %bb.e
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp75, %.loopexit74
  %lpad.phi78 = phi { ptr, i32 } [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ] ; 2 uses
  %.not.i13 = icmp eq i64 %i.t, 0
  br i1 %.not.i13, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i14

_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i14: ; preds = %bb.g
  %i.bd = inttoptr i64 %i.t to ptr                ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.bd) #32, !inline_history !1207
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i14, %bb.g, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb14UsingColumnSetEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.body, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body27, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb14UsingColumnSetEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.body ], [ %lpad.phi78, %_ZNKSt14default_deleteIN6duckdb7BindingEEclEPS1_.exit.i14 ], [ %eh.lpad-body, %.body ], [ %lpad.phi78, %bb.g ], [ %i.cp, %bb.p ]
  resume { ptr, i32 } %common.resume.op

.loopexit:                                        ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb14UsingColumnSetEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_.exit, %bb.h
  %.sroa.052.0 = load ptr, ptr %.sroa.052.0119, align 8, !tbaa !143 ; 2 uses
  %.not65 = icmp eq ptr %.sroa.052.0, null
  br i1 %.not65, label %._crit_edge122, label %bb.h

._crit_edge122:                                   ; preds = %.loopexit, %._crit_edge
  ret void

bb.h:                                             ; preds = %.lr.ph121, %.loopexit
  %.sroa.052.0119 = phi ptr [ %.sroa.052.0117, %.lr.ph121 ], [ %.sroa.052.0, %.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.052.0119, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.052.0119, i64 56
  %.sroa.048.0112 = load ptr, ptr %i.bi, align 8, !tbaa !143 ; 2 uses
  %.not66113 = icmp eq ptr %.sroa.048.0112, null
  br i1 %.not66113, label %.loopexit, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.052.0119, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph116, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb14UsingColumnSetEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_.exit
  %.sroa.048.0114 = phi ptr [ %.sroa.048.0112, %.lr.ph116 ], [ %.sroa.048.0, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb14UsingColumnSetEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_.exit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.048.0114, i64 8 ; 2 uses
  %i.bl = call noundef i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bh) ; 4 uses
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !1218
  %i.bn = urem i64 %i.bl, %i.bm                   ; 3 uses
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !1217
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i16, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSA_21ReferenceHashFunctionISB_EENSA_17ReferenceEqualityISB_EESaISC_EEESaISJ_ENSt8__detail10_Select1stENSA_29CaseInsensitiveStringEqualityENSA_33CaseInsensitiveStringHashFunctionENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !143 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !151
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bs = phi i64 [ %.pre.i.i.i, %bb.j ], [ %i.bz, %bb.l ]
  %.015.i.i.i = phi ptr [ %i.bq, %bb.j ], [ %.0.i.i.i, %bb.l ]
  %.0.i.i.i = phi ptr [ %i.br, %bb.j ], [ %i.bw, %bb.l ] ; 3 uses
  %i.bt = icmp eq i64 %i.bl, %i.bs
  br i1 %i.bt, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i.i: ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.bv = call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(96) %i.bu)
  br i1 %i.bv, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSA_21ReferenceHashFunctionISB_EENSA_17ReferenceEqualityISB_EESaISC_EEESaISJ_ENSt8__detail10_Select1stENSA_29CaseInsensitiveStringEqualityENSA_33CaseInsensitiveStringHashFunctionENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i.i, %bb.k
  %i.bw = load ptr, ptr %.0.i.i.i, align 8, !tbaa !143 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSA_21ReferenceHashFunctionISB_EENSA_17ReferenceEqualityISB_EESaISC_EEESaISJ_ENSt8__detail10_Select1stENSA_29CaseInsensitiveStringEqualityENSA_33CaseInsensitiveStringHashFunctionENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i.i
  %i.bx = load i64, ptr %i.k, align 8, !tbaa !1218
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !151 ; 2 uses
  %i.ca = urem i64 %i.bz, %i.bx
  %.not19.i.i.i = icmp eq i64 %i.ca, %i.bn
  br i1 %.not19.i.i.i, label %bb.k, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSA_21ReferenceHashFunctionISB_EENSA_17ReferenceEqualityISB_EESaISC_EEESaISJ_ENSt8__detail10_Select1stENSA_29CaseInsensitiveStringEqualityENSA_33CaseInsensitiveStringHashFunctionENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread.i, !llvm.loop !1233

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSA_21ReferenceHashFunctionISB_EENSA_17ReferenceEqualityISB_EESaISC_EEESaISJ_ENSt8__detail10_Select1stENSA_29CaseInsensitiveStringEqualityENSA_33CaseInsensitiveStringHashFunctionENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i.i
  %i.cb = load ptr, ptr %.015.i.i.i, align 8, !tbaa !143 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cb, null
  br i1 %.not.i17, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSA_21ReferenceHashFunctionISB_EENSA_17ReferenceEqualityISB_EESaISC_EEESaISJ_ENSt8__detail10_Select1stENSA_29CaseInsensitiveStringEqualityENSA_33CaseInsensitiveStringHashFunctionENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread.i, label %_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEESaISK_ENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_.exit

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSA_21ReferenceHashFunctionISB_EENSA_17ReferenceEqualityISB_EESaISC_EEESaISJ_ENSt8__detail10_Select1stENSA_29CaseInsensitiveStringEqualityENSA_33CaseInsensitiveStringHashFunctionENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread.i: ; preds = %bb.l, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSB_21ReferenceHashFunctionISC_EENSB_17ReferenceEqualityISC_EESaISD_EEENS_10_Select1stENSB_29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i.i, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_setISt17reference_wrapperIN6duckdb14UsingColumnSetEENSA_21ReferenceHashFunctionISB_EENSA_17ReferenceEqualityISB_EESaISC_EEESaISJ_ENSt8__detail10_Select1stENSA_29CaseInsensitiveStringEqualityENSA_33CaseInsensitiveStringHashFunctionENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.j, ptr %2, align 8, !tbaa !1586
  %i.cc = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #35 ; 19 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !143
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !7
  %i.cf = load ptr, ptr %i.bh, align 8, !tbaa !15 ; 2 uses
  %i.cg = load i64, ptr %i.bj, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !18
  %i.ch = icmp ugt i64 %i.cg, 15
  br i1 %i.ch, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i
end_hunk_17
begin_hunk_18_@_ZN6duckdb16BinarySerializer9SerializeINS_15LogicalOperatorEEEvRKT_RNS_11WriteStreamENS_20SerializationOptionsE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ak) #33
  br label %_ZN6duckdb20SerializationOptionsD2Ev.exit7

bb.j:                                             ; preds = %bb.e, %bb.d, %_ZN6duckdb20SerializationOptionsD2Ev.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16BinarySerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(1328) %3) #32
  br label %_ZN6duckdb20SerializationOptionsD2Ev.exit7

_ZN6duckdb20SerializationOptionsD2Ev.exit7:       ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5 ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb13PragmaHandlerC2ERNS_13ClientContextE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !553
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13PragmaHandler30HandlePragmaStatementsInternalERNS_6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.1703", align 16 ; 14 uses
  %3 = alloca %"class.duckdb::PragmaHandler", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::Parser", align 8    ; 10 uses
  %6 = alloca %"struct.duckdb::ParserOptions", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1858 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1861   ; 2 uses
  %.not159 = icmp eq ptr %i.b, %i.c
  br i1 %.not159, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  br label %bb.c

._crit_edge156.loopexit:                          ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79
  %i.i = load <2 x ptr>, ptr %2, align 16, !tbaa !1862
  %.pre175 = load ptr, ptr %i.h, align 16, !tbaa !1863
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %._crit_edge156.loopexit, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %.pre175, %._crit_edge156.loopexit ]
  %.lcssa123 = phi ptr [ %i.b, %bb.a ], [ %i.ga, %._crit_edge156.loopexit ] ; 2 uses
  %.lcssa111 = phi ptr [ %i.c, %bb.a ], [ %i.gb, %._crit_edge156.loopexit ] ; 4 uses
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.i, %._crit_edge156.loopexit ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x ptr> %i.k, ptr %1, align 8, !tbaa !1862
  store ptr %i.j, ptr %i.l, align 8, !tbaa !1863
  %.not4.i.i.i.i.i.i = icmp eq ptr %.lcssa111, %.lcssa123
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge156, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %.lcssa111, %._crit_edge156 ] ; 2 uses
  %i.m = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !1842 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.m) #32, !inline_history !1864
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %.lcssa123
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1865

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %._crit_edge156
  %.not.i.i1.i.i.i.i = icmp eq ptr %.lcssa111, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.lcssa111) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.c:                                             ; preds = %.lr.ph155, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79
  %.025153 = phi i64 [ 0, %.lr.ph155 ], [ %i.fz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79 ] ; 6 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.025153)
          to label %bb.d unwind label %.loopexit88

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.e unwind label %.loopexit88

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !1010
  %i.v = icmp eq i8 %i.u, 27
  br i1 %i.v, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.025153)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12SQLStatement4CastINS_14MultiStatementEEERT_v(ptr noundef nonnull align 8 dereferenceable(120) %i.x)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1862 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1862 ; 2 uses
  %.not149 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not149, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %bb.i
  %.pre170 = load ptr, ptr %i.g, align 8, !tbaa !1858
  %.pre171 = load ptr, ptr %i.h, align 16, !tbaa !1863
  br label %.lr.ph152

.loopexit88:                                      ; preds = %bb.c, %bb.d, %bb.o, %bb.p, %bb.am, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i65
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp89:                             ; preds = %bb.aq
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ae = phi ptr [ %i.bo, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %.pre171, %.lr.ph152.preheader ] ; 5 uses
  %i.af = phi ptr [ %i.bp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %.pre170, %.lr.ph152.preheader ] ; 3 uses
  %.sroa.081.0150 = phi ptr [ %i.bq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.aa, %.lr.ph152.preheader ] ; 5 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph152
  %i.ag = load i64, ptr %.sroa.081.0150, align 8, !tbaa !1842
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !1842
  store ptr null, ptr %.sroa.081.0150, align 8, !tbaa !1842
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !1858
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.l:                                             ; preds = %.lr.ph152
  %i.ai = load ptr, ptr %2, align 16, !tbaa !1861 ; 10 uses
  %i.aj = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775800
  br i1 %i.am, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.an = ashr exact i64 %i.al, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 1152921504606846975)
  %i.ar = select i1 %i.ap, i64 1152921504606846975, i64 %i.aq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #35
          to label %.noexc41 unwind label %.loopexit ; 10 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  %i.av = load i64, ptr %.sroa.081.0150, align 8, !tbaa !1842
  store i64 %i.av, ptr %i.au, align 8, !tbaa !1842
  store ptr null, ptr %.sroa.081.0150, align 8, !tbaa !1842
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ae
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc41
  %7 = add i64 %i.aj, -8
  %8 = sub i64 %7, %i.ak                          ; 2 uses
  %i.aw = lshr i64 %8, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader282, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.at, i64 8
  %i.ay = add i64 %i.aj, -8
  %i.az = sub i64 %i.ay, %i.ak
  %i.ba = and i64 %i.az, -8                       ; 2 uses
  %scevgep228 = getelementptr i8, ptr %scevgep, i64 %i.ba
  %scevgep229 = getelementptr i8, ptr %i.ai, i64 8
  %scevgep230 = getelementptr i8, ptr %scevgep229, i64 %i.ba
  %bound0 = icmp ult ptr %i.at, %scevgep230
  %bound1 = icmp ult ptr %i.ai, %scevgep228
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader282, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.at, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ai, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.be ; 2 uses
  %next.gep231 = getelementptr i8, ptr %i.ai, i64 %i.be ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %i.bf = getelementptr i8, ptr %next.gep231, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep231, align 8, !tbaa !1842, !alias.scope !1871, !noalias !1866
  %wide.load232 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !1842, !alias.scope !1871, !noalias !1866
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1842, !alias.scope !1874, !noalias !1871
  store <2 x i64> %wide.load232, ptr %i.bg, align 8, !tbaa !1842, !alias.scope !1874, !noalias !1871
  %i.bh = getelementptr i8, ptr %next.gep231, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep231, align 8, !tbaa !1842, !alias.scope !1871, !noalias !1866
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !1842, !alias.scope !1871, !noalias !1866
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !1876

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader282

.lr.ph.i.i.i.i.i.i.i.preheader282:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader282, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader282 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader282 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %i.bj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1842, !alias.scope !1869, !noalias !1866
  store i64 %i.bj, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1842, !alias.scope !1866, !noalias !1869
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1842, !alias.scope !1869, !noalias !1866
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.ae
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1877

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.at, %.noexc41 ], [ %i.bc, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.at, ptr %2, align 16, !tbaa !1861
  store ptr %i.bm, ptr %i.g, align 8, !tbaa !1858
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.bn, ptr %i.h, align 16, !tbaa !1863
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.k
  %i.bo = phi ptr [ %i.bn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ae, %bb.k ]
  %i.bp = phi ptr [ %i.bm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ah, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.081.0150, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.ac
  br i1 %.not, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79, label %.lr.ph152

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.o:                                             ; preds = %bb.e
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.025153)
          to label %bb.p unwind label %.loopexit88

bb.p:                                             ; preds = %bb.o
  %i.bs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.q unwind label %.loopexit88

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !1010
  %i.bv = icmp eq i8 %i.bu, 17
  br i1 %i.bv, label %bb.r, label %bb.am

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1878, !nonnull !72, !align !73
  invoke void @_ZN6duckdb13PragmaHandlerC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(512) %i.bw)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.d, ptr %4, align 8, !tbaa !7
  store i64 0, ptr %i.e, align 8, !tbaa !11
  store i8 0, ptr %i.d, align 8, !tbaa !14
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.025153)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.by = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bz = invoke noundef zeroext i1 @_ZN6duckdb13PragmaHandler12HandlePragmaERNS_12SQLStatementERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.ab      ; 2 uses

bb.v:                                             ; preds = %bb.u
  br i1 %i.bz, label %bb.w, label %bb.aj

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ca = load ptr, ptr %0, align 8, !tbaa !1878, !nonnull !72, !align !73
  invoke void @_ZNK6duckdb13ClientContext16GetParserOptionsEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ParserOptions") align 8 %6, ptr noundef nonnull align 8 dereferenceable(512) %i.ca)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6duckdb6ParserC1ENS_13ParserOptionsE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull byval(%"struct.duckdb::ParserOptions") align 8 %6)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6duckdb6Parser10ParseQueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.preheader unwind label %bb.ad

.preheader:                                       ; preds = %bb.y
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !1858 ; 4 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !1861  ; 4 uses
  %.not160 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not160, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !1858
  %.pre167 = load ptr, ptr %i.h, align 16, !tbaa !1863
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60, %.preheader
  %.lcssa96 = phi ptr [ %i.cb, %.preheader ], [ %i.eb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ] ; 2 uses
  %.lcssa93 = phi ptr [ %i.cc, %.preheader ], [ %i.ea, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ] ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %.lcssa93, %.lcssa96
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ch, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %.lcssa93, %._crit_edge ] ; 2 uses
  %i.cd = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !1842 ; 3 uses
  %.not.i.i.i.i.i.i42 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i42, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cd) #32, !inline_history !1880
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.ch, %.lcssa96
  br i1 %.not.i.i.i.i43, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1865

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !1861
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge
  %i.ci = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.lcssa93, %._crit_edge ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb6ParserD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #33
  br label %_ZN6duckdb6ParserD2Ev.exit

_ZN6duckdb6ParserD2Ev.exit:                       ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.aj

bb.aa:                                            ; preds = %bb.r
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ab:                                            ; preds = %bb.u, %bb.t, %bb.s
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ac:                                            ; preds = %bb.x, %bb.w
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ad:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60
  %.pre169179 = phi ptr [ %.pre169180, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ], [ %i.cc, %.lr.ph.preheader ] ; 2 uses
  %.pre168176 = phi ptr [ %.pre168177, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %i.cn = phi ptr [ %i.ea, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ], [ %i.cc, %.lr.ph.preheader ] ; 2 uses
  %i.co = phi ptr [ %i.eb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ], [ %i.cb, %.lr.ph.preheader ]
  %i.cp = phi ptr [ %i.ec, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ], [ %.pre167, %.lr.ph.preheader ] ; 5 uses
  %i.cq = phi ptr [ %i.ed, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.0147 = phi i64 [ %i.ee, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.0147 ; 4 uses
  %.not.i.i45 = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.i.i45, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1842
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !1842
  store ptr null, ptr %i.cr, align 8, !tbaa !1842
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr %i.ct, ptr %i.g, align 8, !tbaa !1858
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60

bb.af:                                            ; preds = %.lr.ph
  %i.cu = load ptr, ptr %2, align 16, !tbaa !1861 ; 10 uses
  %i.cv = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64               ; 3 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.ag, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc58 unwind label %.body.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.af
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #35
          to label %.noexc59 unwind label %.body.loopexit ; 10 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx
  %i.dh = load i64, ptr %i.cr, align 8, !tbaa !1842
  store i64 %i.dh, ptr %i.dg, align 8, !tbaa !1842
  store ptr null, ptr %i.cr, align 8, !tbaa !1842
  %.not10.i.i.i.i.i.i.i49 = icmp eq ptr %i.cu, %i.cp
  br i1 %.not10.i.i.i.i.i.i.i49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i.i.i50.preheader:                 ; preds = %.noexc59
  %9 = add i64 %i.cv, -8
  %10 = sub i64 %9, %i.cw                         ; 2 uses
  %i.di = lshr i64 %10, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check267 = icmp ult i64 %10, 56
  br i1 %min.iters.check267, label %.lr.ph.i.i.i.i.i.i.i50.preheader283, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader
  %scevgep259 = getelementptr i8, ptr %i.df, i64 8
  %i.dk = add i64 %i.cv, -8
  %i.dl = sub i64 %i.dk, %i.cw
  %i.dm = and i64 %i.dl, -8                       ; 2 uses
  %scevgep260 = getelementptr i8, ptr %scevgep259, i64 %i.dm
  %scevgep261 = getelementptr i8, ptr %i.cu, i64 8
  %scevgep262 = getelementptr i8, ptr %scevgep261, i64 %i.dm
  %bound0263 = icmp ult ptr %i.df, %scevgep262
  %bound1264 = icmp ult ptr %i.cu, %scevgep260
  %found.conflict265 = and i1 %bound0263, %bound1264
  br i1 %found.conflict265, label %.lr.ph.i.i.i.i.i.i.i50.preheader283, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck258
  %n.vec270 = and i64 %i.dj, 4611686018427387900  ; 3 uses
  %i.dn = shl i64 %n.vec270, 3                    ; 2 uses
  %i.do = getelementptr i8, ptr %i.df, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cu, i64 %i.dn
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph268
  %index272 = phi i64 [ 0, %vector.ph268 ], [ %index.next277, %vector.body271 ] ; 2 uses
  %i.dq = shl i64 %index272, 3                    ; 2 uses
  %next.gep273 = getelementptr i8, ptr %i.df, i64 %i.dq ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.cu, i64 %i.dq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %i.dr = getelementptr i8, ptr %next.gep274, i64 16
  %wide.load275 = load <2 x i64>, ptr %next.gep274, align 8, !tbaa !1842, !alias.scope !1886, !noalias !1881
  %wide.load276 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !1842, !alias.scope !1886, !noalias !1881
  %i.ds = getelementptr i8, ptr %next.gep273, i64 16
  store <2 x i64> %wide.load275, ptr %next.gep273, align 8, !tbaa !1842, !alias.scope !1889, !noalias !1886
  store <2 x i64> %wide.load276, ptr %i.ds, align 8, !tbaa !1842, !alias.scope !1889, !noalias !1886
  %i.dt = getelementptr i8, ptr %next.gep274, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep274, align 8, !tbaa !1842, !alias.scope !1886, !noalias !1881
  store <2 x ptr> splat (ptr null), ptr %i.dt, align 8, !tbaa !1842, !alias.scope !1886, !noalias !1881
  %index.next277 = add nuw i64 %index272, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next277, %n.vec270
  br i1 %i.du, label %middle.block278, label %vector.body271, !llvm.loop !1891

middle.block278:                                  ; preds = %vector.body271
  %cmp.n279 = icmp eq i64 %i.dj, %n.vec270
  br i1 %cmp.n279, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader283

.lr.ph.i.i.i.i.i.i.i50.preheader283:              ; preds = %vector.memcheck258, %.lr.ph.i.i.i.i.i.i.i50.preheader, %middle.block278
  %.012.i.i.i.i.i.i.i51.ph = phi ptr [ %i.df, %vector.memcheck258 ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.do, %middle.block278 ]
  %.0911.i.i.i.i.i.i.i52.ph = phi ptr [ %i.cu, %vector.memcheck258 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.dp, %middle.block278 ]
  br label %.lr.ph.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i50:                           ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader283, %.lr.ph.i.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i.i51 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.012.i.i.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader283 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i52 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.0911.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader283 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %i.dv = load i64, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !1842, !alias.scope !1884, !noalias !1881
  store i64 %i.dv, ptr %.012.i.i.i.i.i.i.i51, align 8, !tbaa !1842, !alias.scope !1881, !noalias !1884
  store ptr null, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !1842, !alias.scope !1884, !noalias !1881
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.dw, %i.cp
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50, !llvm.loop !1892

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i.i50, %middle.block278, %.noexc59
  %.0.lcssa.i.i.i.i.i.i.i55 = phi ptr [ %i.df, %.noexc59 ], [ %i.do, %middle.block278 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i50 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i55, i64 8 ; 2 uses
  %.not.i23.i.i.i56 = icmp eq ptr %i.cu, null
  br i1 %.not.i23.i.i.i56, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  call void @_ZdlPv(ptr noundef nonnull %i.cu) #33
  %.pre168.pre = load ptr, ptr %i.f, align 8, !tbaa !1858
  %.pre169.pre = load ptr, ptr %5, align 8, !tbaa !1861
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  %.pre169 = phi ptr [ %.pre169.pre, %bb.ah ], [ %.pre169179, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54 ] ; 2 uses
  %.pre168 = phi ptr [ %.pre168.pre, %bb.ah ], [ %.pre168176, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54 ] ; 2 uses
  store ptr %i.df, ptr %2, align 16, !tbaa !1861
  store ptr %i.dy, ptr %i.g, align 8, !tbaa !1858
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd ; 2 uses
  store ptr %i.dz, ptr %i.h, align 16, !tbaa !1863
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit60: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57, %bb.ae
  %.pre169180 = phi ptr [ %.pre169, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57 ], [ %.pre169179, %bb.ae ]
  %.pre168177 = phi ptr [ %.pre168, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57 ], [ %.pre168176, %bb.ae ]
  %i.ea = phi ptr [ %.pre169, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57 ], [ %i.cn, %bb.ae ] ; 3 uses
  %i.eb = phi ptr [ %.pre168, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57 ], [ %i.co, %bb.ae ] ; 3 uses
  %i.ec = phi ptr [ %i.dz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57 ], [ %i.cp, %bb.ae ]
  %i.ed = phi ptr [ %i.dy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57 ], [ %i.ct, %bb.ae ]
  %i.ee = add nuw i64 %.0147, 1                   ; 2 uses
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = ptrtoint ptr %i.ea to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %i.ej = icmp ult i64 %i.ee, %i.ei
  br i1 %i.ej, label %.lr.ph, label %._crit_edge, !llvm.loop !1893

.body.loopexit:                                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.loopexit.split-lp:                          ; preds = %bb.ag
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.loopexit, %.body.loopexit.split-lp, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.ad ], [ %lpad.loopexit85, %.body.loopexit ], [ %lpad.loopexit.split-lp86, %.body.loopexit.split-lp ]
  call void @_ZN6duckdb6ParserD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #32
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cl, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.v, %_ZN6duckdb6ParserD2Ev.exit
  %i.ek = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.d
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.ek) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %i.bz, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79, label %bb.am

bb.ak:                                            ; preds = %bb.ai, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.ck, %bb.ab ]
  %i.em = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.d
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.em) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.cj, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.as

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.025153)
          to label %bb.an unwind label %.loopexit88 ; 4 uses

bb.an:                                            ; preds = %bb.am
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !1858 ; 6 uses
  %i.eq = load ptr, ptr %i.h, align 16, !tbaa !1863
  %.not.i.i64 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i64, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.er = load i64, ptr %i.eo, align 8, !tbaa !1842
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !1842
  store ptr null, ptr %i.eo, align 8, !tbaa !1842
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.es, ptr %i.g, align 8, !tbaa !1858
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79

bb.ap:                                            ; preds = %bb.an
  %i.et = load ptr, ptr %2, align 16, !tbaa !1861 ; 10 uses
  %i.eu = ptrtoint ptr %i.ep to i64               ; 3 uses
  %i.ev = ptrtoint ptr %i.et to i64               ; 3 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 3 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775800
  br i1 %i.ex, label %bb.aq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i65

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc77 unwind label %.loopexit.split-lp89

.noexc77:                                         ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i65: ; preds = %bb.ap
  %i.ey = ashr exact i64 %i.ew, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i.i66, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = call i64 @llvm.umin.i64(i64 %i.ez, i64 1152921504606846975)
  %i.fc = select i1 %i.fa, i64 1152921504606846975, i64 %i.fb ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.fc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #35
          to label %.noexc78 unwind label %.loopexit88 ; 10 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i65
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ew
  %i.fg = load i64, ptr %i.eo, align 8, !tbaa !1842
  store i64 %i.fg, ptr %i.ff, align 8, !tbaa !1842
  store ptr null, ptr %i.eo, align 8, !tbaa !1842
  %.not10.i.i.i.i.i.i.i68 = icmp eq ptr %i.et, %i.ep
  br i1 %.not10.i.i.i.i.i.i.i68, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i.i.i69.preheader:                 ; preds = %.noexc78
  %11 = add i64 %i.eu, -8
  %12 = sub i64 %11, %i.ev                        ; 2 uses
  %i.fh = lshr i64 %12, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check243 = icmp ult i64 %12, 56
  br i1 %min.iters.check243, label %.lr.ph.i.i.i.i.i.i.i69.preheader284, label %vector.memcheck234

vector.memcheck234:                               ; preds = %.lr.ph.i.i.i.i.i.i.i69.preheader
  %scevgep235 = getelementptr i8, ptr %i.fe, i64 8
  %i.fj = add i64 %i.eu, -8
  %i.fk = sub i64 %i.fj, %i.ev
  %i.fl = and i64 %i.fk, -8                       ; 2 uses
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.fl
  %scevgep237 = getelementptr i8, ptr %i.et, i64 8
  %scevgep238 = getelementptr i8, ptr %scevgep237, i64 %i.fl
  %bound0239 = icmp ult ptr %i.fe, %scevgep238
  %bound1240 = icmp ult ptr %i.et, %scevgep236
  %found.conflict241 = and i1 %bound0239, %bound1240
  br i1 %found.conflict241, label %.lr.ph.i.i.i.i.i.i.i69.preheader284, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck234
  %n.vec246 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fm = shl i64 %n.vec246, 3                    ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fe, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %i.et, i64 %i.fm
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph244
  %index248 = phi i64 [ 0, %vector.ph244 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %i.fp = shl i64 %index248, 3                    ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.fe, i64 %i.fp ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.et, i64 %i.fp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %i.fq = getelementptr i8, ptr %next.gep250, i64 16
  %wide.load251 = load <2 x i64>, ptr %next.gep250, align 8, !tbaa !1842, !alias.scope !1899, !noalias !1894
  %wide.load252 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !1842, !alias.scope !1899, !noalias !1894
  %i.fr = getelementptr i8, ptr %next.gep249, i64 16
  store <2 x i64> %wide.load251, ptr %next.gep249, align 8, !tbaa !1842, !alias.scope !1902, !noalias !1899
  store <2 x i64> %wide.load252, ptr %i.fr, align 8, !tbaa !1842, !alias.scope !1902, !noalias !1899
  %i.fs = getelementptr i8, ptr %next.gep250, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep250, align 8, !tbaa !1842, !alias.scope !1899, !noalias !1894
  store <2 x ptr> splat (ptr null), ptr %i.fs, align 8, !tbaa !1842, !alias.scope !1899, !noalias !1894
  %index.next253 = add nuw i64 %index248, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.ft, label %middle.block254, label %vector.body247, !llvm.loop !1904

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %i.fi, %n.vec246
  br i1 %cmp.n255, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i.i69.preheader284

.lr.ph.i.i.i.i.i.i.i69.preheader284:              ; preds = %vector.memcheck234, %.lr.ph.i.i.i.i.i.i.i69.preheader, %middle.block254
  %.012.i.i.i.i.i.i.i70.ph = phi ptr [ %i.fe, %vector.memcheck234 ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i69.preheader ], [ %i.fn, %middle.block254 ]
  %.0911.i.i.i.i.i.i.i71.ph = phi ptr [ %i.et, %vector.memcheck234 ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i69.preheader ], [ %i.fo, %middle.block254 ]
  br label %.lr.ph.i.i.i.i.i.i.i69

.lr.ph.i.i.i.i.i.i.i69:                           ; preds = %.lr.ph.i.i.i.i.i.i.i69.preheader284, %.lr.ph.i.i.i.i.i.i.i69
  %.012.i.i.i.i.i.i.i70 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i69 ], [ %.012.i.i.i.i.i.i.i70.ph, %.lr.ph.i.i.i.i.i.i.i69.preheader284 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i71 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i69 ], [ %.0911.i.i.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i.i.i69.preheader284 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %i.fu = load i64, ptr %.0911.i.i.i.i.i.i.i71, align 8, !tbaa !1842, !alias.scope !1897, !noalias !1894
  store i64 %i.fu, ptr %.012.i.i.i.i.i.i.i70, align 8, !tbaa !1842, !alias.scope !1894, !noalias !1897
  store ptr null, ptr %.0911.i.i.i.i.i.i.i71, align 8, !tbaa !1842, !alias.scope !1897, !noalias !1894
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i72 = icmp eq ptr %i.fv, %i.ep
  br i1 %.not.i.i.i.i.i.i.i72, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i.i69, !llvm.loop !1905

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i73: ; preds = %.lr.ph.i.i.i.i.i.i.i69, %middle.block254, %.noexc78
  %.0.lcssa.i.i.i.i.i.i.i74 = phi ptr [ %i.fe, %.noexc78 ], [ %i.fn, %middle.block254 ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i69 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i74, i64 8
  %.not.i23.i.i.i75 = icmp eq ptr %i.et, null
  br i1 %.not.i23.i.i.i75, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i76, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i73
  call void @_ZdlPv(ptr noundef nonnull %i.et) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i76

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i76: ; preds = %bb.ar, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i73
  store ptr %i.fe, ptr %2, align 16, !tbaa !1861
  store ptr %i.fx, ptr %i.g, align 8, !tbaa !1858
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fc
  store ptr %i.fy, ptr %i.h, align 16, !tbaa !1863
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit79: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i76, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fz = add nuw i64 %.025153, 1                 ; 2 uses
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !1858 ; 2 uses
  %i.gb = load ptr, ptr %1, align 8, !tbaa !1861  ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 3
  %i.gg = icmp ult i64 %i.fz, %i.gf
  br i1 %i.gg, label %bb.c, label %._crit_edge156.loopexit, !llvm.loop !1906

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit88, %.loopexit.split-lp89, %bb.j, %bb.al
  %.pn38.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %.pn.pn.pn.pn, %bb.al ], [ %lpad.loopexit.split-lp91, %.loopexit.split-lp89 ], [ %lpad.loopexit90, %.loopexit88 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn38.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1858
  %i.e = load ptr, ptr %0, align 8, !tbaa !1861   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  store i64 %i.i, ptr %i.b, align 8, !tbaa !18
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.109, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12SQLStatement4CastINS_14MultiStatementEEERT_v(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1010
  %.not = icmp eq i8 %i.b, 27
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.132, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
end_hunk_18
begin_hunk_19_@_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundFunctionExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundFunctionExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundOperatorExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_24BoundParameterExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_24BoundReferenceExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundSubqueryExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_21BoundWindowExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_21BoundUnnestExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.31") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14TableFilterSet10PushFilterERKNS_11ColumnIndexENS_10unique_ptrINS_11TableFilterESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.2452", align 8   ; 4 uses
  %4 = alloca %"class.std::tuple.2450", align 1   ; 3 uses
  %5 = alloca %"class.std::tuple.2452", align 8   ; 4 uses
  %6 = alloca %"class.std::tuple.2450", align 1   ; 3 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.duckdb::unique_ptr.1851", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = tail call noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %1) ; 5 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = icmp ult i64 %i.g, %i.b                  ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2001

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %.lr.ph.i.i.i.i.preheader, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = icmp ult i64 %i.b, %i.k
  br i1 %i.l, label %.lr.ph.i.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %i.o = icmp ult i64 %i.n, %i.b                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2001

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.p, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp ult i64 %i.b, %i.r
  br i1 %i.s, label %.critedge.i, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit

.critedge.i:                                      ; preds = %bb.a, %bb.b, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.a, ptr %5, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.t, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !2002 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !2002
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.w) #32, !inline_history !2004
  br label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.c:                                             ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 6 uses
  %i.ab = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !2005
  %i.ae = icmp eq i8 %i.ad, 4
  br i1 %i.ae, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.af = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ag = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2008 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2011
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load i64, ptr %2, align 8, !tbaa !2002
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !2008
  br label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !2012 ; 10 uses
  %i.ap = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i6 = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i6)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #35 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %i.bb = load i64, ptr %2, align 8, !tbaa !2002
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.aj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %8 = add i64 %i.ap, -8
  %9 = sub i64 %8, %i.aq                          ; 2 uses
  %i.bc = lshr i64 %9, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check133 = icmp ult i64 %9, 152
  br i1 %min.iters.check133, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.be = add i64 %i.ap, -8
  %i.bf = sub i64 %i.be, %i.aq
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep127 = getelementptr i8, ptr %i.az, i64 %i.bh
  %scevgep128 = getelementptr i8, ptr %i.ao, i64 %i.bh
  %bound0129 = icmp ult ptr %i.az, %scevgep128
  %bound1130 = icmp ult ptr %i.ao, %scevgep127
  %found.conflict131 = and i1 %bound0129, %bound1130
  br i1 %found.conflict131, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.ph134

vector.ph134:                                     ; preds = %vector.memcheck126
  %n.vec136 = and i64 %i.bd, 4611686018427387900  ; 3 uses
  %i.bi = shl i64 %n.vec136, 3                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.az, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ao, i64 %i.bi
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph134
  %index138 = phi i64 [ 0, %vector.ph134 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %i.bl = shl i64 %index138, 3                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.az, i64 %i.bl ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.ao, i64 %i.bl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  %i.bm = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load141 = load <2 x i64>, ptr %next.gep140, align 8, !tbaa !2002, !alias.scope !2018, !noalias !2013
  %wide.load142 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !2002, !alias.scope !2018, !noalias !2013
  %i.bn = getelementptr i8, ptr %next.gep139, i64 16
  store <2 x i64> %wide.load141, ptr %next.gep139, align 8, !tbaa !2002, !alias.scope !2021, !noalias !2018
  store <2 x i64> %wide.load142, ptr %i.bn, align 8, !tbaa !2002, !alias.scope !2021, !noalias !2018
  %i.bo = getelementptr i8, ptr %next.gep140, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep140, align 8, !tbaa !2002, !alias.scope !2018, !noalias !2013
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !2002, !alias.scope !2018, !noalias !2013
  %index.next143 = add nuw i64 %index138, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.bp, label %middle.block144, label %vector.body137, !llvm.loop !2023

middle.block144:                                  ; preds = %vector.body137
  %cmp.n145 = icmp eq i64 %i.bd, %n.vec136
  br i1 %cmp.n145, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.preheader148:                ; preds = %vector.memcheck126, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block144
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck126 ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block144 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck126 ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block144 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2016, !noalias !2013
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2013, !noalias !2016
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2016, !noalias !2013
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2024

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block144, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bj, %middle.block144 ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !2012
  store ptr %i.bt, ptr %i.ai, align 8, !tbaa !2008
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bu, ptr %i.ak, align 8, !tbaa !2011
  br label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.bv = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35, !noalias !2025 ; 3 uses
  invoke void @_ZN6duckdb20ConjunctionAndFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bv)
          to label %_ZN6duckdb9make_uniqINS_20ConjunctionAndFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.j, !noalias !2025

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.j ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62 ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bv) #33, !noalias !2025
  br label %common.resume

_ZN6duckdb9make_uniqINS_20ConjunctionAndFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.i
  store ptr %i.bv, ptr %7, align 8, !tbaa !2028, !alias.scope !2025
  %i.bx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20ConjunctionAndFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.v       ; 3 uses

bb.k:                                             ; preds = %_ZN6duckdb9make_uniqINS_20ConjunctionAndFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2008 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2011
  %.not.i.i7 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = load i64, ptr %i.aa, align 8, !tbaa !2002
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !2002
  store ptr null, ptr %i.aa, align 8, !tbaa !2002
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !2008
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21

bb.m:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !2012 ; 10 uses
  %i.cg = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.ch = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8: ; preds = %bb.m
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i9 = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i.i9, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %.not.i.i.i.i10 = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #35
          to label %.noexc20 unwind label %bb.v   ; 10 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  %i.cs = load i64, ptr %i.aa, align 8, !tbaa !2002
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !2002
  store ptr null, ptr %i.aa, align 8, !tbaa !2002
  %.not10.i.i.i.i.i.i.i11 = icmp eq ptr %i.cf, %i.ca
  br i1 %.not10.i.i.i.i.i.i.i11, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i12.preheader

.lr.ph.i.i.i.i.i.i.i12.preheader:                 ; preds = %.noexc20
  %10 = add i64 %i.cg, -8
  %11 = sub i64 %10, %i.ch                        ; 2 uses
  %i.ct = lshr i64 %11, 3
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i12.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i12.preheader
  %i.cv = add i64 %i.cg, -8
  %i.cw = sub i64 %i.cv, %i.ch
  %i.cx = and i64 %i.cw, -8
  %i.cy = add i64 %i.cx, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cq, i64 %i.cy
  %scevgep100 = getelementptr i8, ptr %i.cf, i64 %i.cy
  %bound0 = icmp ult ptr %i.cq, %scevgep100
  %bound1 = icmp ult ptr %i.cf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i12.preheader151, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cu, 4611686018427387900     ; 3 uses
  %i.cz = shl i64 %n.vec, 3                       ; 2 uses
  %i.da = getelementptr i8, ptr %i.cq, i64 %i.cz  ; 2 uses
  %i.db = getelementptr i8, ptr %i.cf, i64 %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.dc ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.cf, i64 %i.dc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.dd = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep101, align 8, !tbaa !2002, !alias.scope !2035, !noalias !2030
  %wide.load102 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !2002, !alias.scope !2035, !noalias !2030
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2002, !alias.scope !2038, !noalias !2035
  store <2 x i64> %wide.load102, ptr %i.de, align 8, !tbaa !2002, !alias.scope !2038, !noalias !2035
  %i.df = getelementptr i8, ptr %next.gep101, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep101, align 8, !tbaa !2002, !alias.scope !2035, !noalias !2030
  store <2 x ptr> splat (ptr null), ptr %i.df, align 8, !tbaa !2002, !alias.scope !2035, !noalias !2030
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !2040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i12.preheader151

.lr.ph.i.i.i.i.i.i.i12.preheader151:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i12.preheader, %middle.block
  %.012.i.i.i.i.i.i.i13.ph = phi ptr [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i12.preheader ], [ %i.da, %middle.block ]
  %.0911.i.i.i.i.i.i.i14.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i12.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i12

.lr.ph.i.i.i.i.i.i.i12:                           ; preds = %.lr.ph.i.i.i.i.i.i.i12.preheader151, %.lr.ph.i.i.i.i.i.i.i12
  %.012.i.i.i.i.i.i.i13 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i12 ], [ %.012.i.i.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i.i.i12.preheader151 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i14 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i12 ], [ %.0911.i.i.i.i.i.i.i14.ph, %.lr.ph.i.i.i.i.i.i.i12.preheader151 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.dh = load i64, ptr %.0911.i.i.i.i.i.i.i14, align 8, !tbaa !2002, !alias.scope !2033, !noalias !2030
  store i64 %i.dh, ptr %.012.i.i.i.i.i.i.i13, align 8, !tbaa !2002, !alias.scope !2030, !noalias !2033
  store ptr null, ptr %.0911.i.i.i.i.i.i.i14, align 8, !tbaa !2002, !alias.scope !2033, !noalias !2030
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i14, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i13, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.di, %i.ca
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i12, !llvm.loop !2041

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16: ; preds = %.lr.ph.i.i.i.i.i.i.i12, %middle.block, %.noexc20
  %.0.lcssa.i.i.i.i.i.i.i17 = phi ptr [ %i.cq, %.noexc20 ], [ %i.da, %middle.block ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i12 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i17, i64 8
  %.not.i23.i.i.i18 = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i.i18, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i19, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i19

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i19: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i16
  store ptr %i.cq, ptr %i.by, align 8, !tbaa !2012
  store ptr %i.dk, ptr %i.bz, align 8, !tbaa !2008
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.dl, ptr %i.cb, align 8, !tbaa !2011
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i19, %bb.l
  %i.dm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20ConjunctionAndFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.v       ; 3 uses

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 24 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2008 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2011
  %.not.i.i22 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i.i22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = load i64, ptr %2, align 8, !tbaa !2002
  store i64 %i.ds, ptr %i.dp, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !2008
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.du = load ptr, ptr %i.dn, align 8, !tbaa !2012 ; 10 uses
  %i.dv = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i23

.invoke:                                          ; preds = %bb.q, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i23: ; preds = %bb.q
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i24 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i24, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i.i25 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i.i25)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #35
          to label %.noexc36 unwind label %bb.v   ; 10 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i23
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  %i.eh = load i64, ptr %2, align 8, !tbaa !2002
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !2002
  store ptr null, ptr %2, align 8, !tbaa !2002
  %.not10.i.i.i.i.i.i.i26 = icmp eq ptr %i.du, %i.dp
  br i1 %.not10.i.i.i.i.i.i.i26, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i27.preheader

.lr.ph.i.i.i.i.i.i.i27.preheader:                 ; preds = %.noexc36
  %12 = add i64 %i.dv, -8
  %13 = sub i64 %12, %i.dw                        ; 2 uses
  %i.ei = lshr i64 %13, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check111 = icmp ult i64 %13, 152
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i.i.i.i27.preheader149, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph.i.i.i.i.i.i.i27.preheader
  %i.ek = add i64 %i.dv, -8
  %i.el = sub i64 %i.ek, %i.dw
  %i.em = and i64 %i.el, -8
  %i.en = add i64 %i.em, 8                        ; 2 uses
  %scevgep105 = getelementptr i8, ptr %i.ef, i64 %i.en
  %scevgep106 = getelementptr i8, ptr %i.du, i64 %i.en
  %bound0107 = icmp ult ptr %i.ef, %scevgep106
  %bound1108 = icmp ult ptr %i.du, %scevgep105
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.lr.ph.i.i.i.i.i.i.i27.preheader149, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck104
  %n.vec114 = and i64 %i.ej, 4611686018427387900  ; 3 uses
  %i.eo = shl i64 %n.vec114, 3                    ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ef, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.du, i64 %i.eo
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.er = shl i64 %index116, 3                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.ef, i64 %i.er ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.du, i64 %i.er ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.es = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <2 x i64>, ptr %next.gep118, align 8, !tbaa !2002, !alias.scope !2047, !noalias !2042
  %wide.load120 = load <2 x i64>, ptr %i.es, align 8, !tbaa !2002, !alias.scope !2047, !noalias !2042
  %i.et = getelementptr i8, ptr %next.gep117, i64 16
  store <2 x i64> %wide.load119, ptr %next.gep117, align 8, !tbaa !2002, !alias.scope !2050, !noalias !2047
  store <2 x i64> %wide.load120, ptr %i.et, align 8, !tbaa !2002, !alias.scope !2050, !noalias !2047
  %i.eu = getelementptr i8, ptr %next.gep118, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep118, align 8, !tbaa !2002, !alias.scope !2047, !noalias !2042
  store <2 x ptr> splat (ptr null), ptr %i.eu, align 8, !tbaa !2002, !alias.scope !2047, !noalias !2042
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ev, label %middle.block122, label %vector.body115, !llvm.loop !2052

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.ej, %n.vec114
  br i1 %cmp.n123, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i27.preheader149

.lr.ph.i.i.i.i.i.i.i27.preheader149:              ; preds = %vector.memcheck104, %.lr.ph.i.i.i.i.i.i.i27.preheader, %middle.block122
  %.012.i.i.i.i.i.i.i28.ph = phi ptr [ %i.ef, %vector.memcheck104 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i27.preheader ], [ %i.ep, %middle.block122 ]
  %.0911.i.i.i.i.i.i.i29.ph = phi ptr [ %i.du, %vector.memcheck104 ], [ %i.du, %.lr.ph.i.i.i.i.i.i.i27.preheader ], [ %i.eq, %middle.block122 ]
  br label %.lr.ph.i.i.i.i.i.i.i27

.lr.ph.i.i.i.i.i.i.i27:                           ; preds = %.lr.ph.i.i.i.i.i.i.i27.preheader149, %.lr.ph.i.i.i.i.i.i.i27
  %.012.i.i.i.i.i.i.i28 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i.i27 ], [ %.012.i.i.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i.i.i27.preheader149 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i29 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i27 ], [ %.0911.i.i.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i.i.i27.preheader149 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.ew = load i64, ptr %.0911.i.i.i.i.i.i.i29, align 8, !tbaa !2002, !alias.scope !2045, !noalias !2042
  store i64 %i.ew, ptr %.012.i.i.i.i.i.i.i28, align 8, !tbaa !2002, !alias.scope !2042, !noalias !2045
  store ptr null, ptr %.0911.i.i.i.i.i.i.i29, align 8, !tbaa !2002, !alias.scope !2045, !noalias !2042
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i29, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %i.ex, %i.dp
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i27, !llvm.loop !2053

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i27, %middle.block122, %.noexc36
  %.0.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %i.ef, %.noexc36 ], [ %i.ep, %middle.block122 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i27 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i32, i64 8
  %.not.i23.i.i.i33 = icmp eq ptr %i.du, null
  br i1 %.not.i23.i.i.i33, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i34, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31
  call void @_ZdlPv(ptr noundef nonnull %i.du) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i34

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i34: ; preds = %bb.r, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i31
  store ptr %i.ef, ptr %i.dn, align 8, !tbaa !2012
  store ptr %i.ez, ptr %i.do, align 8, !tbaa !2008
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.fa, ptr %i.dq, align 8, !tbaa !2011
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i34, %bb.p
  %i.fb = load ptr, ptr %7, align 8, !tbaa !2028  ; 4 uses
  store ptr null, ptr %7, align 8, !tbaa !2028
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !163 ; 2 uses
  %.not10.i.i.i.i38 = icmp eq ptr %i.fc, null
  br i1 %.not10.i.i.i.i38, label %.critedge.i49, label %.lr.ph.i.i.i.i39

.lr.ph.i.i.i.i39:                                 ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i39
  %.012.i.i.i.i40 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i39 ], [ %.1.i.i.i.i45, %bb.s ] ; 3 uses
  %.0811.i.i.i.i41 = phi ptr [ %i.e, %.lr.ph.i.i.i.i39 ], [ %.19.i.i.i.i42, %bb.s ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i40, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !18
  %i.fg = icmp ult i64 %i.ff, %i.fd               ; 2 uses
  %.19.i.i.i.i42 = select i1 %i.fg, ptr %.0811.i.i.i.i41, ptr %.012.i.i.i.i40 ; 6 uses
  %.1.in.v.i.i.i.i43 = select i1 %i.fg, i64 24, i64 16
  %.1.in.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i40, i64 %.1.in.v.i.i.i.i43
  %.1.i.i.i.i45 = load ptr, ptr %.1.in.i.i.i.i44, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %.1.i.i.i.i45, null
  br i1 %.not.i.i.i.i46, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47, label %bb.s, !llvm.loop !2001

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47: ; preds = %bb.s
  %i.fh = icmp eq ptr %.19.i.i.i.i42, %i.e
  br i1 %i.fh, label %.critedge.i49, label %bb.t

bb.t:                                             ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47
  %i.fi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i42, i64 32
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !18
  %i.fk = icmp ult i64 %i.fd, %i.fj
  br i1 %i.fk, label %.critedge.i49, label %bb.u

.critedge.i49:                                    ; preds = %bb.t, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37
  %.08.lcssa.i.i.i11.i50 = phi ptr [ %.19.i.i.i.i42, %bb.t ], [ %.19.i.i.i.i42, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i47 ], [ %i.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit37 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.a, ptr %3, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.fl = invoke ptr @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i50, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc51 unwind label %bb.w

.noexc51:                                         ; preds = %.critedge.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.u

bb.u:                                             ; preds = %.noexc51, %bb.t
  %.sroa.06.0.i48 = phi ptr [ %i.fl, %.noexc51 ], [ %.19.i.i.i.i42, %bb.t ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i48, i64 40 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !2002 ; 3 uses
  store ptr %i.fb, ptr %i.fm, align 8, !tbaa !2002
  %.not.i.i.i.i.i53 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i53, label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i54

_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i54: ; preds = %bb.u
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.fn) #32, !inline_history !2004
  br label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i54, %bb.u
  %i.fr = load ptr, ptr %7, align 8, !tbaa !2028  ; 3 uses
  %.not.i56 = icmp eq ptr %i.fr, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(40) %i.fr) #32, !inline_history !2054
  br label %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.v:                                             ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i23, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i8, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21, %_ZN6duckdb9make_uniqINS_20ConjunctionAndFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59

bb.w:                                             ; preds = %.critedge.i49
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fb, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59, label %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i58

_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i58: ; preds = %bb.w
  %i.fx = load ptr, ptr %i.fb, align 8, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.fb) #32, !inline_history !2055
  br label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59

_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59: ; preds = %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i58, %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.fv, %bb.v ], [ %i.fw, %bb.w ], [ %i.fw, %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i58 ]
  %i.ga = load ptr, ptr %7, align 8, !tbaa !2028  ; 3 uses
  %.not.i60 = icmp eq ptr %i.ga, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62, label %_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i61

_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i61: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(40) %i.ga) #32, !inline_history !2054
  br label %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62

_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit62: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit59, %_ZNKSt14default_deleteIN6duckdb20ConjunctionAndFilterEEclEPS1_.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %common.resume

_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.e, %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i.i.i.i.i, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEEixERS9_.exit, %_ZNSt10unique_ptrIN6duckdb20ConjunctionAndFilterESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
end_hunk_19
begin_hunk_20_@_ZN6duckdb18ExpressionExecutorD2Ev:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2100

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !2091
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !2101   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #33
  br label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16TableFilterState10InitializeERNS_13ClientContextERKNS_11TableFilterE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1929") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr.1947", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::unique_ptr.1929", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::unique_ptr.1963", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::unique_ptr.1929", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr96 = phi ptr [ %2, %bb.a ], [ %i.n, %bb.f ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr96, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2005
  switch i8 %i.b, label %bb.af [
    i8 10, label %bb.b
    i8 6, label %bb.e
    i8 5, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.r
    i8 9, label %bb.ac
    i8 0, label %bb.ae
    i8 1, label %bb.ae
    i8 2, label %bb.ae
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.c = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb11TableFilter4CastINS_13BFTableFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %.tr96)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.e = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #35
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6duckdb18BFTableFilterStateC2ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(352) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt10unique_ptrIN6duckdb18BFTableFilterStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.c, !noalias !2104

bb.c:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.e) #33, !noalias !2104
  br label %.body

_ZNSt10unique_ptrIN6duckdb18BFTableFilterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  store ptr %i.e, ptr %0, align 8, !tbaa !2107
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume

bb.e:                                             ; preds = %tailrecurse
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb11TableFilter4CastINS_14OptionalFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %.tr96) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.1929") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(512) %1)
  br label %bb.ak

bb.f:                                             ; preds = %tailrecurse
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb11TableFilter4CastINS_12StructFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %.tr96)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = tail call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %tailrecurse

bb.g:                                             ; preds = %tailrecurse
  %i.o = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb11TableFilter4CastINS_19ConjunctionOrFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %.tr96) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.p = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35, !noalias !2110 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb24ConjunctionOrFilterStateE, i64 16), ptr %i.p, align 8, !tbaa !16, !noalias !2110
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !noalias !2110
  store ptr %i.p, ptr %4, align 8, !tbaa !2113, !alias.scope !2110
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2115 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2115 ; 2 uses
  %.not94111 = icmp eq ptr %i.s, %i.u
  br i1 %.not94111, label %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph113

_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit.loopexit: ; preds = %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit
  %.pre121 = load ptr, ptr %4, align 8, !tbaa !2113
  br label %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit.loopexit, %bb.g
  %i.v = phi ptr [ %.pre121, %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit.loopexit ], [ %i.p, %bb.g ]
  store ptr %i.v, ptr %0, align 8, !tbaa !2107
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.ak

.lr.ph113:                                        ; preds = %bb.g, %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit
  %.sroa.085.0112 = phi ptr [ %i.bo, %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit ], [ %i.s, %bb.g ] ; 2 uses
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24ConjunctionOrFilterStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.n       ; 3 uses

bb.h:                                             ; preds = %.lr.ph113
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.y = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.085.0112)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb16TableFilterState10InitializeERNS_13ClientContextERKNS_11TableFilterE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1929") align 8 %5, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(9) %i.y)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2116 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2119
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.k, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j
  %i.ad = load i64, ptr %5, align 8, !tbaa !2120
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !2120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !2116
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !2121 ; 10 uses
  %i.ag = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #35
          to label %.noexc44 unwind label %.loopexit ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  %i.as = load i64, ptr %5, align 8, !tbaa !2120
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !2120
  store ptr null, ptr %5, align 8, !tbaa !2120
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc44
  %10 = add i64 %i.ag, -8
  %11 = sub i64 %10, %i.ah                        ; 2 uses
  %i.at = lshr i64 %11, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check170 = icmp ult i64 %11, 56
  br i1 %min.iters.check170, label %.lr.ph.i.i.i.i.i.i.i.preheader185, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep162 = getelementptr i8, ptr %i.aq, i64 8
  %i.av = add i64 %i.ag, -8
  %i.aw = sub i64 %i.av, %i.ah
  %i.ax = and i64 %i.aw, -8                       ; 2 uses
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.ax
  %scevgep164 = getelementptr i8, ptr %i.af, i64 8
  %scevgep165 = getelementptr i8, ptr %scevgep164, i64 %i.ax
  %bound0166 = icmp ult ptr %i.aq, %scevgep165
  %bound1167 = icmp ult ptr %i.af, %scevgep163
  %found.conflict168 = and i1 %bound0166, %bound1167
  br i1 %found.conflict168, label %.lr.ph.i.i.i.i.i.i.i.preheader185, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck161
  %n.vec173 = and i64 %i.au, 4611686018427387900  ; 3 uses
  %i.ay = shl i64 %n.vec173, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.af, i64 %i.ay
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.bb = shl i64 %index175, 3                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.aq, i64 %i.bb ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.af, i64 %i.bb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  %i.bc = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load178 = load <2 x i64>, ptr %next.gep177, align 8, !tbaa !2120, !alias.scope !2127, !noalias !2122
  %wide.load179 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !2120, !alias.scope !2127, !noalias !2122
  %i.bd = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x i64> %wide.load178, ptr %next.gep176, align 8, !tbaa !2120, !alias.scope !2130, !noalias !2127
  store <2 x i64> %wide.load179, ptr %i.bd, align 8, !tbaa !2120, !alias.scope !2130, !noalias !2127
  %i.be = getelementptr i8, ptr %next.gep177, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep177, align 8, !tbaa !2120, !alias.scope !2127, !noalias !2122
  store <2 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !2120, !alias.scope !2127, !noalias !2122
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.bf, label %middle.block181, label %vector.body174, !llvm.loop !2132

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.au, %n.vec173
  br i1 %cmp.n182, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader185

.lr.ph.i.i.i.i.i.i.i.preheader185:                ; preds = %vector.memcheck161, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block181
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck161 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block181 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck161 ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block181 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader185, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader185 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader185 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  %i.bg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2120, !alias.scope !2125, !noalias !2122
  store i64 %i.bg, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !2120, !alias.scope !2122, !noalias !2125
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2120, !alias.scope !2125, !noalias !2122
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2133

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block181, %.noexc44
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.noexc44 ], [ %i.az, %middle.block181 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.af) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.m
  store ptr %i.aq, ptr %i.x, align 8, !tbaa !2121
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !2116
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ab, align 8, !tbaa !2119
  %.pr = load ptr, ptr %5, align 8, !tbaa !2120   ; 3 uses
  %.not.i45 = icmp eq ptr %.pr, null
  br i1 %.not.i45, label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bl = load ptr, ptr %.pr, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #32, !inline_history !2134
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.085.0112, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.bo, %i.u
  br i1 %.not94, label %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit.loopexit, label %.lr.ph113

bb.n:                                             ; preds = %.lr.ph113
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.i, %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit48

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !2120  ; 3 uses
  %.not.i46 = icmp eq ptr %i.br, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit48, label %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i47

_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i47: ; preds = %bb.p
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #32, !inline_history !2134
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit48

_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit48: ; preds = %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i47, %bb.p, %bb.o
  %.pn36 = phi { ptr, i32 } [ %i.bq, %bb.o ], [ %lpad.phi, %bb.p ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit48, %bb.n
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit48 ], [ %i.bp, %bb.n ]
  %i.bv = load ptr, ptr %4, align 8, !tbaa !2113  ; 3 uses
  %.not.i49 = icmp eq ptr %i.bv, null
  br i1 %.not.i49, label %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit51, label %_ZNKSt14default_deleteIN6duckdb24ConjunctionOrFilterStateEEclEPS1_.exit.i50

_ZNKSt14default_deleteIN6duckdb24ConjunctionOrFilterStateEEclEPS1_.exit.i50: ; preds = %bb.q
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(32) %i.bv) #32, !inline_history !2135
  br label %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit51: ; preds = %bb.q, %_ZNKSt14default_deleteIN6duckdb24ConjunctionOrFilterStateEEclEPS1_.exit.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

bb.r:                                             ; preds = %tailrecurse
  %i.bz = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %.tr96) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  %i.ca = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35, !noalias !2136 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25ConjunctionAndFilterStateE, i64 16), ptr %i.ca, align 8, !tbaa !16, !noalias !2136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false), !noalias !2136
  store ptr %i.ca, ptr %6, align 8, !tbaa !2139, !alias.scope !2136
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2115 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2115 ; 2 uses
  %.not109 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not109, label %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit.loopexit: ; preds = %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit71
  %.pre = load ptr, ptr %6, align 8, !tbaa !2139
  br label %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit.loopexit, %bb.r
  %i.cg = phi ptr [ %.pre, %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit.loopexit ], [ %i.ca, %bb.r ]
  store ptr %i.cg, ptr %0, align 8, !tbaa !2107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ak

.lr.ph:                                           ; preds = %bb.r, %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit71
  %.sroa.081.0110 = phi ptr [ %i.dz, %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit71 ], [ %i.cd, %bb.r ] ; 2 uses
  %i.ch = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25ConjunctionAndFilterStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %bb.y       ; 3 uses

bb.s:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cj = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.081.0110)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb16TableFilterState10InitializeERNS_13ClientContextERKNS_11TableFilterE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1929") align 8 %7, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(9) %i.cj)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2116 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2119
  %.not.i.i53 = icmp eq ptr %i.cl, %i.cn
  br i1 %.not.i.i53, label %bb.v, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit68.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit68.thread: ; preds = %bb.u
  %i.co = load i64, ptr %7, align 8, !tbaa !2120
  store i64 %i.co, ptr %i.cl, align 8, !tbaa !2120
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cp, ptr %i.ck, align 8, !tbaa !2116
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit71

bb.v:                                             ; preds = %bb.u
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !2121 ; 10 uses
  %i.cr = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i54

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
          to label %.noexc66 unwind label %.loopexit.split-lp98

.noexc66:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i54: ; preds = %bb.v
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i55 = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i55, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #35
          to label %.noexc67 unwind label %.loopexit97 ; 10 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i54
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  %i.dd = load i64, ptr %7, align 8, !tbaa !2120
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !2120
  store ptr null, ptr %7, align 8, !tbaa !2120
  %.not10.i.i.i.i.i.i.i57 = icmp eq ptr %i.cq, %i.cl
  br i1 %.not10.i.i.i.i.i.i.i57, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i62, label %.lr.ph.i.i.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i.i.i58.preheader:                 ; preds = %.noexc67
  %12 = add i64 %i.cr, -8
  %13 = sub i64 %12, %i.cs                        ; 2 uses
  %i.de = lshr i64 %13, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i58.preheader186, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i58.preheader
  %scevgep = getelementptr i8, ptr %i.db, i64 8
  %i.dg = add i64 %i.cr, -8
  %i.dh = sub i64 %i.dg, %i.cs
  %i.di = and i64 %i.dh, -8                       ; 2 uses
  %scevgep155 = getelementptr i8, ptr %scevgep, i64 %i.di
  %scevgep156 = getelementptr i8, ptr %i.cq, i64 8
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.di
  %bound0 = icmp ult ptr %i.db, %scevgep157
  %bound1 = icmp ult ptr %i.cq, %scevgep155
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i58.preheader186, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, 4611686018427387900     ; 3 uses
  %i.dj = shl i64 %n.vec, 3                       ; 2 uses
  %i.dk = getelementptr i8, ptr %i.db, i64 %i.dj  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cq, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.db, i64 %i.dm ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.cq, i64 %i.dm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  %i.dn = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep158, align 8, !tbaa !2120, !alias.scope !2146, !noalias !2141
  %wide.load159 = load <2 x i64>, ptr %i.dn, align 8, !tbaa !2120, !alias.scope !2146, !noalias !2141
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2120, !alias.scope !2149, !noalias !2146
  store <2 x i64> %wide.load159, ptr %i.do, align 8, !tbaa !2120, !alias.scope !2149, !noalias !2146
  %i.dp = getelementptr i8, ptr %next.gep158, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep158, align 8, !tbaa !2120, !alias.scope !2146, !noalias !2141
  store <2 x ptr> splat (ptr null), ptr %i.dp, align 8, !tbaa !2120, !alias.scope !2146, !noalias !2141
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i62, label %.lr.ph.i.i.i.i.i.i.i58.preheader186

.lr.ph.i.i.i.i.i.i.i58.preheader186:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i58.preheader, %middle.block
  %.012.i.i.i.i.i.i.i59.ph = phi ptr [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i58.preheader ], [ %i.dk, %middle.block ]
  %.0911.i.i.i.i.i.i.i60.ph = phi ptr [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i58.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i.i58:                           ; preds = %.lr.ph.i.i.i.i.i.i.i58.preheader186, %.lr.ph.i.i.i.i.i.i.i58
  %.012.i.i.i.i.i.i.i59 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i58 ], [ %.012.i.i.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i.i.i58.preheader186 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i60 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i58 ], [ %.0911.i.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i.i58.preheader186 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  %i.dr = load i64, ptr %.0911.i.i.i.i.i.i.i60, align 8, !tbaa !2120, !alias.scope !2144, !noalias !2141
  store i64 %i.dr, ptr %.012.i.i.i.i.i.i.i59, align 8, !tbaa !2120, !alias.scope !2141, !noalias !2144
  store ptr null, ptr %.0911.i.i.i.i.i.i.i60, align 8, !tbaa !2120, !alias.scope !2144, !noalias !2141
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i60, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i59, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i61 = icmp eq ptr %i.ds, %i.cl
  br i1 %.not.i.i.i.i.i.i.i61, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i62, label %.lr.ph.i.i.i.i.i.i.i58, !llvm.loop !2152

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i62: ; preds = %.lr.ph.i.i.i.i.i.i.i58, %middle.block, %.noexc67
  %.0.lcssa.i.i.i.i.i.i.i63 = phi ptr [ %i.db, %.noexc67 ], [ %i.dk, %middle.block ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i58 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i63, i64 8
  %.not.i23.i.i.i64 = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i.i.i64, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit68, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i62
  call void @_ZdlPv(ptr noundef nonnull %i.cq) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit68

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit68: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i62, %bb.x
  store ptr %i.db, ptr %i.ci, align 8, !tbaa !2121
  store ptr %i.du, ptr %i.ck, align 8, !tbaa !2116
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dv, ptr %i.cm, align 8, !tbaa !2119
  %.pr89 = load ptr, ptr %7, align 8, !tbaa !2120 ; 3 uses
  %.not.i69 = icmp eq ptr %.pr89, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit71, label %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i70

_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i70: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit68
  %i.dw = load ptr, ptr %.pr89, align 8, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr89) #32, !inline_history !2134
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit71

_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit71: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit68.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit68, %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.081.0110, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dz, %i.cf
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit.loopexit, label %.lr.ph

bb.y:                                             ; preds = %.lr.ph
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.t, %bb.s
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit74

.loopexit97:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i54
  %lpad.loopexit99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp98:                             ; preds = %bb.w
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp98, %.loopexit97
  %lpad.phi101 = phi { ptr, i32 } [ %lpad.loopexit99, %.loopexit97 ], [ %lpad.loopexit.split-lp100, %.loopexit.split-lp98 ] ; 2 uses
  %i.ec = load ptr, ptr %7, align 8, !tbaa !2120  ; 3 uses
  %.not.i72 = icmp eq ptr %i.ec, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit74, label %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i73

_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i73: ; preds = %bb.aa
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ec) #32, !inline_history !2134
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit74

_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit74: ; preds = %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i73, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.z ], [ %lpad.phi101, %bb.aa ], [ %lpad.phi101, %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit74, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit74 ], [ %i.ea, %bb.y ]
  %i.eg = load ptr, ptr %6, align 8, !tbaa !2139  ; 3 uses
  %.not.i75 = icmp eq ptr %i.eg, null
  br i1 %.not.i75, label %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit77, label %_ZNKSt14default_deleteIN6duckdb25ConjunctionAndFilterStateEEclEPS1_.exit.i76

_ZNKSt14default_deleteIN6duckdb25ConjunctionAndFilterStateEEclEPS1_.exit.i76: ; preds = %bb.ab
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %i.eg) #32, !inline_history !2153
  br label %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit77

_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit77: ; preds = %bb.ab, %_ZNKSt14default_deleteIN6duckdb25ConjunctionAndFilterStateEEclEPS1_.exit.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %common.resume

bb.ac:                                            ; preds = %tailrecurse
  %i.ek = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb11TableFilter4CastINS_16ExpressionFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %.tr96)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
  %i.en = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35, !noalias !2154 ; 3 uses
  invoke void @_ZN6duckdb21ExpressionFilterStateC1ERNS_13ClientContextERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(80) %i.en, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.em)
          to label %_ZNSt10unique_ptrIN6duckdb21ExpressionFilterStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.ad, !noalias !2154

common.resume:                                    ; preds = %.body, %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit51, %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit77, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.eo, %bb.ad ], [ %.pn3993, %bb.aj ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %eh.lpad-body, %.body ], [ %.pn36.pn, %_ZNSt10unique_ptrIN6duckdb24ConjunctionOrFilterStateESt14default_deleteIS1_EED2Ev.exit51 ], [ %.pn.pn, %_ZNSt10unique_ptrIN6duckdb25ConjunctionAndFilterStateESt14default_deleteIS1_EED2Ev.exit77 ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.ad:                                            ; preds = %bb.ac
  %i.eo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.en) #33, !noalias !2154
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb21ExpressionFilterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ac
  store ptr %i.en, ptr %0, align 8, !tbaa !2107
  br label %bb.ak

bb.ae:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  %i.ep = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35, !noalias !2157 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb16TableFilterStateE, i64 16), ptr %i.ep, align 8, !tbaa !16, !noalias !2157
  store ptr %i.ep, ptr %0, align 8, !tbaa !2120, !alias.scope !2157
  br label %bb.ak

bb.af:                                            ; preds = %tailrecurse
  %i.eq = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.eq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.al unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.af
  %i.er = landingpad { ptr, i32 }
end_hunk_20
begin_hunk_21_@_ZN6duckdb9Exception25ConstructMessageRecursiveIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !15 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #33
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #33
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIPKcEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_19CollateCatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !238
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.122, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !236    ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !266  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !268
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8
  store i64 %i.j, ptr %i.f, align 8
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !266
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.e, align 8, !tbaa !266
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %i.f, align 8
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !266  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.e, align 8, !tbaa !266
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.b                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f, !prof !126

bb.e:                                             ; preds = %bb.d
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.m, i64 %i.t, i1 false)
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.t, 8
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.m, align 8
  store i64 %i.z, ptr %i.r, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = load i64, ptr %2, align 8
  store i64 %i.aa, ptr %i.m, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.ac = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ad = sub i64 %i.ac, %i.c                     ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.i, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #34
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #35 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.d
  %i.an = load i64, ptr %2, align 8
  store i64 %i.an, ptr %i.am, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.ao = ptrtoaddr ptr %i.al to i64
  %3 = add i64 %i.b, -8
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.ap = lshr i64 %4, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 56
  %i.ar = sub i64 %i.ao, %i.c
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.a, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.a, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %i.aw = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !alias.scope !2521, !noalias !2518
  %wide.load22 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2521, !noalias !2518
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2518, !noalias !2521
  store <2 x i64> %wide.load22, ptr %i.ax, align 8, !alias.scope !2518, !noalias !2521
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader44

.lr.ph.i.i.i.i.i.preheader44:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader44 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %i.az = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !2521, !noalias !2518
  store i64 %i.az, ptr %.012.i.i.i.i.i, align 8, !alias.scope !2518, !noalias !2521
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2524

_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i25 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i.i16.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader

.lr.ph.i.i.i.i17.i.preheader:                     ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %5 = add i64 %i.ac, -8
  %6 = sub i64 %5, %i.b                           ; 2 uses
  %i.bd = lshr i64 %6, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check28 = icmp ult i64 %6, 72
  br i1 %min.iters.check28, label %.lr.ph.i.i.i.i17.i.preheader43, label %vector.memcheck24

vector.memcheck24:                                ; preds = %.lr.ph.i.i.i.i17.i.preheader
  %i.bf = add i64 %.0.lcssa.i.i.i.i.i25, 8
  %i.bg = sub i64 %i.bf, %i.b
  %diff.check26 = icmp ult i64 %i.bg, 32
  br i1 %diff.check26, label %.lr.ph.i.i.i.i17.i.preheader43, label %vector.ph29

vector.ph29:                                      ; preds = %vector.memcheck24
  %n.vec31 = and i64 %i.be, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec31, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ab, i64 %i.bh
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph29
  %index33 = phi i64 [ 0, %vector.ph29 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.bk = shl i64 %index33, 3                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.bc, i64 %i.bk ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.ab, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %i.bl = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <2 x i64>, ptr %next.gep35, align 8, !alias.scope !2528, !noalias !2525
  %wide.load37 = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !2528, !noalias !2525
  %i.bm = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x i64> %wide.load36, ptr %next.gep34, align 8, !alias.scope !2525, !noalias !2528
  store <2 x i64> %wide.load37, ptr %i.bm, align 8, !alias.scope !2525, !noalias !2528
  %index.next38 = add nuw i64 %index33, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.bn, label %middle.block39, label %vector.body32, !llvm.loop !2530

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %i.be, %n.vec31
  br i1 %cmp.n40, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader43

.lr.ph.i.i.i.i17.i.preheader43:                   ; preds = %vector.memcheck24, %.lr.ph.i.i.i.i17.i.preheader, %middle.block39
  %.012.i.i.i.i18.i.ph = phi ptr [ %i.bc, %vector.memcheck24 ], [ %i.bc, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.bi, %middle.block39 ]
  %.0911.i.i.i.i19.i.ph = phi ptr [ %i.ab, %vector.memcheck24 ], [ %i.ab, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.bj, %middle.block39 ]
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i.preheader43, %.lr.ph.i.i.i.i17.i
  %.012.i.i.i.i18.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i17.i ], [ %.012.i.i.i.i18.i.ph, %.lr.ph.i.i.i.i17.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i19.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i17.i ], [ %.0911.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i17.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %i.bo = load i64, ptr %.0911.i.i.i.i19.i, align 8, !alias.scope !2528, !noalias !2525
  store i64 %i.bo, ptr %.012.i.i.i.i18.i, align 8, !alias.scope !2525, !noalias !2528
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %i.bp, %i.f
  br i1 %.not.i.i.i.i20.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i17.i, !llvm.loop !2531

_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i17.i, %middle.block39, %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.0.lcssa.i.i.i.i21.i = phi ptr [ %i.bc, %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ], [ %i.bi, %middle.block39 ], [ %i.bq, %.lr.ph.i.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #33
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, %bb.j
  store ptr %i.al, ptr %0, align 8, !tbaa !269
  store ptr %.0.lcssa.i.i.i.i21.i, ptr %i.e, align 8, !tbaa !266
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.br, ptr %i.g, align 8, !tbaa !268
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_.exit, %_ZNSt6vectorISt17reference_wrapperIN6duckdb19CollateCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit
  %i.bs = load ptr, ptr %0, align 8, !tbaa !269
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.d
  ret ptr %i.bt
}

declare void @_ZN6duckdb15BinderExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2226
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !7
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !15
  %i.o = load i64, ptr %i.i, align 8, !tbaa !14
  store i64 %i.o, ptr %i.g, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !11
  store ptr %i.i, ptr %i.f, align 8, !tbaa !15
  store i64 0, ptr %i.q, align 8, !tbaa !11
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !303
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !303
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !15 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = icmp eq ptr %.pre10, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #33
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #33
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, std::__detail::_Identity, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2240
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !15
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.023.038 = load ptr, ptr %i.c, align 8, !tbaa !143 ; 3 uses
  %.not3139 = icmp eq ptr %.sroa.023.038, null
  %.pre52 = load ptr, ptr %1, align 8             ; 4 uses
  br i1 %.not3139, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %.fr42 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr42, 0
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27.us
  %.sroa.023.040.us = phi ptr [ %.sroa.023.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27.us ], [ %.sroa.023.038, %.lr.ph ] ; 3 uses
end_hunk_21
