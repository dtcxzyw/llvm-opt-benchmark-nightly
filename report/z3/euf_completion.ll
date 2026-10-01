Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_completion?download=true
inline.NumInlined: 2934
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE:bb.a
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit261 unwind label %bb.dy

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit261:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit259
  %i.mm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit261
  %i.mn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263 unwind label %bb.dz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263: ; preds = %bb.dx
  %i.mo = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mo) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  invoke void @_Z14verbose_unlockv()
          to label %bb.eh unwind label %.loopexit.split-lp

bb.dy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit259
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit261
  %i.mq = landingpad { ptr, i32 }
          cleanup
  %i.mr = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mr) #24
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn107 = phi { ptr, i32 } [ %i.mq, %bb.dz ], [ %i.mp, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.fr

bb.eb:                                            ; preds = %bb.dt
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ec unwind label %.loopexit.split-lp ; 2 uses

bb.ec:                                            ; preds = %bb.eb
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull @.str.12, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265: ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.mu = load ptr, ptr %i.e, align 8, !tbaa !351, !nonnull !238, !align !239
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %.0104, ptr noundef nonnull align 8 dereferenceable(952) %i.mu, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit267 unwind label %bb.ee

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit267:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.mv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull align 8 dereferenceable(48) %22)
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit267
  %i.mw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269 unwind label %bb.ef ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269: ; preds = %bb.ed
  %i.mx = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mx) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.eh

bb.ee:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit267
  %i.mz = landingpad { ptr, i32 }
          cleanup
  %i.na = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.na) #24
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pn = phi { ptr, i32 } [ %i.mz, %bb.ef ], [ %i.my, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.fr

bb.eh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit269, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263, %bb.dr
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !301
  %i.nd = invoke noundef i32 @_ZN3euf10completion11push_pr_depEP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %2, ptr noundef %3)
          to label %bb.ei unwind label %.loopexit.split-lp

bb.ei:                                            ; preds = %bb.eh
  %i.ne = zext i32 %i.nd to i64
  %i.nf = inttoptr i64 %i.ne to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 2, ptr %5, align 8, !tbaa !428, !alias.scope !658
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.ng, align 8, !tbaa !310, !alias.scope !658
  %i.nh = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.nf, ptr %i.nh, align 8, !tbaa !310, !alias.scope !658
  invoke void @_ZN3euf6egraph5mergeEPNS_5enodeES2_NS_13justificationE(ptr noundef nonnull align 8 dereferenceable(536) %i.a, ptr noundef nonnull %i.lz, ptr noundef %i.nc, ptr noundef nonnull byval(%"class.euf::justification") align 8 %5)
          to label %bb.ej unwind label %.loopexit.split-lp

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ni = invoke noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %i.a)
          to label %bb.ek unwind label %.loopexit.split-lp ; 0 uses

bb.ek:                                            ; preds = %bb.ej
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lz, i64 176 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lz, i64 152
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !400 ; 2 uses
  %i.nm = zext i32 %i.nl to i64
  %.idx.i272 = shl nuw nsw i64 %i.nm, 3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.idx.i272
  %.not2.i273 = icmp eq i32 %i.nl, 0
  br i1 %.not2.i273, label %"_ZZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEENK3$_0clEPNS_5enodeE.exit283", label %.lr.ph.i274

.lr.ph.i274:                                      ; preds = %bb.ek
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %.pre.i275 = load ptr, ptr %i.no, align 8, !tbaa !347
  br label %bb.el

bb.el:                                            ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit.i277, %.lr.ph.i274
  %i.np = phi ptr [ %.pre.i275, %.lr.ph.i274 ], [ %i.nx, %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit.i277 ] ; 4 uses
  %.03.i276 = phi ptr [ %i.nj, %.lr.ph.i274 ], [ %i.od, %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit.i277 ] ; 2 uses
  %i.nq = load ptr, ptr %.03.i276, align 8, !tbaa !395
  %i.nr = icmp eq ptr %i.np, null
  br i1 %i.nr, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 -4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !314 ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %i.np, i64 -8
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !314
  %i.nw = icmp eq i32 %i.nt, %i.nv
  br i1 %i.nw, label %bb.en, label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit.i277

bb.en:                                            ; preds = %bb.em, %bb.el
  invoke void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.no)
          to label %.noexc282 unwind label %.loopexit

.noexc282:                                        ; preds = %bb.en
  %.pre.i.i279 = load ptr, ptr %i.no, align 8, !tbaa !347 ; 2 uses
  %.phi.trans.insert.i.i280 = getelementptr inbounds i8, ptr %.pre.i.i279, i64 -4
  %.pre2.i.i281 = load i32, ptr %.phi.trans.insert.i.i280, align 4, !tbaa !314
  br label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit.i277

_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit.i277: ; preds = %.noexc282, %bb.em
  %i.nx = phi ptr [ %.pre.i.i279, %.noexc282 ], [ %i.np, %bb.em ] ; 3 uses
  %i.ny = phi i32 [ %.pre2.i.i281, %.noexc282 ], [ %i.nt, %bb.em ] ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %i.nx, i64 -4
  %i.oa = zext i32 %i.ny to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.oa
  store ptr %i.nq, ptr %i.ob, align 8, !tbaa !395
  %i.oc = add i32 %i.ny, 1
  store i32 %i.oc, ptr %i.nz, align 4, !tbaa !314
  %i.od = getelementptr inbounds nuw i8, ptr %.03.i276, i64 8 ; 2 uses
  %.not.i278 = icmp eq ptr %i.od, %i.nn
  br i1 %.not.i278, label %"_ZZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEENK3$_0clEPNS_5enodeE.exit283", label %bb.el

"_ZZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEENK3$_0clEPNS_5enodeE.exit283": ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit.i277, %bb.ek
  %i.oe = getelementptr inbounds nuw i8, ptr %.0104, i64 4 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4
  %i.og = and i32 %i.of, 65535
  %i.oh = icmp eq i32 %i.og, 2
  br i1 %i.oh, label %_Z9is_forallPK3ast.exit, label %_Z9is_forallPK3ast.exit.thread

_Z9is_forallPK3ast.exit:                          ; preds = %"_ZZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEENK3$_0clEPNS_5enodeE.exit283"
  %i.oi = getelementptr inbounds nuw i8, ptr %.0104, i64 16
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !659
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %.preheader, label %_Z9is_forallPK3ast.exit.thread

.preheader:                                       ; preds = %_Z9is_forallPK3ast.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %.0104, i64 72 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !660
  %.not369 = icmp eq i32 %i.om, 0
  br i1 %.not369, label %._crit_edge368, label %.lr.ph367

.lr.ph367:                                        ; preds = %.preheader
  %i.on = getelementptr inbounds nuw i8, ptr %.0104, i64 80
  %i.oo = getelementptr inbounds nuw i8, ptr %.0104, i64 20
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  br label %bb.ep

._crit_edge368:                                   ; preds = %_ZN6vectorIP3appLb0EjED2Ev.exit, %.preheader
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %.0104, ptr %4, align 8, !tbaa !431
  %i.os = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.os, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_ZN14core_hashtableIN7obj_mapI10quantifierSt4pairIP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEEE13obj_map_entryE8obj_hashINSC_8key_dataEE10default_eqISF_EE6insertEOSF_(ptr noundef nonnull align 8 dereferenceable(24) %i.or, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.fe unwind label %bb.fh

bb.eo:                                            ; preds = %bb.fe
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.ep:                                            ; preds = %.lr.ph367, %_ZN6vectorIP3appLb0EjED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph367 ], [ %indvars.iv.next, %_ZN6vectorIP3appLb0EjED2Ev.exit ] ; 2 uses
  %i.ou = load i32, ptr %i.oo, align 4, !tbaa !432
  %i.ov = zext i32 %i.ou to i64
  %.idx.i.i = shl nuw nsw i64 %i.ov, 4
  %25 = getelementptr inbounds nuw i8, ptr %i.on, i64 %.idx.i.i
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %indvars.iv
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !333 ; 4 uses
  %i.oy = invoke { ptr, ptr } @_ZN3euf10ho_matcher18compile_ho_patternEP10quantifierP3app(ptr noundef nonnull align 8 dereferenceable(384) %i.op, ptr noundef nonnull %.0104, ptr noundef %i.ox)
          to label %bb.eq unwind label %bb.et     ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  %i.oz = extractvalue { ptr, ptr } %i.oy, 0
  %i.pa = extractvalue { ptr, ptr } %i.oy, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  store ptr null, ptr %23, align 8, !tbaa !219
  invoke void @_ZN3euf3mam15ground_subtermsEP4exprR10ptr_vectorI3appE(ptr noundef %i.ox, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.er unwind label %bb.eu

bb.er:                                            ; preds = %bb.eq
  %.not109 = icmp eq ptr %i.pa, %i.ox             ; 2 uses
  br i1 %.not109, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN3euf3mam15ground_subtermsEP4exprR10ptr_vectorI3appE(ptr noundef %i.pa, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ev unwind label %bb.eu

bb.et:                                            ; preds = %bb.ep
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.eu:                                            ; preds = %bb.ez, %._crit_edge, %bb.es, %bb.eq
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.ev:                                            ; preds = %bb.es, %bb.er
  %i.pd = load ptr, ptr %23, align 8, !tbaa !219  ; 4 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %._crit_edge, label %_ZN6vectorIP3appLb0EjE3endEv.exit

_ZN6vectorIP3appLb0EjE3endEv.exit:                ; preds = %bb.ev
  %i.pf = getelementptr inbounds i8, ptr %i.pd, i64 -4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !314 ; 2 uses
  %i.ph = zext i32 %i.pg to i64
  %i.pi = shl nuw nsw i64 %i.ph, 3
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pi
  %.not110364 = icmp eq i32 %i.pg, 0
  br i1 %.not110364, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ew, %bb.ev, %_ZN6vectorIP3appLb0EjE3endEv.exit
  %i.pk = load ptr, ptr %i.oq, align 8, !tbaa !217 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !36
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8
  invoke void %i.pn(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, ptr noundef nonnull %.0104, ptr noundef %i.ox)
          to label %bb.ey unwind label %bb.eu

.lr.ph:                                           ; preds = %_ZN6vectorIP3appLb0EjE3endEv.exit, %bb.ew
  %.0365 = phi ptr [ %i.pq, %bb.ew ], [ %i.pd, %_ZN6vectorIP3appLb0EjE3endEv.exit ] ; 2 uses
  %i.po = load ptr, ptr %.0365, align 8, !tbaa !345
  %i.pp = invoke noundef ptr @_ZN3euf10completion8mk_enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef %i.po)
          to label %bb.ew unwind label %bb.ex     ; 0 uses

bb.ew:                                            ; preds = %.lr.ph
  %i.pq = getelementptr inbounds nuw i8, ptr %.0365, i64 8 ; 2 uses
  %.not110 = icmp eq ptr %i.pq, %i.pj
  br i1 %.not110, label %._crit_edge, label %.lr.ph

bb.ex:                                            ; preds = %.lr.ph
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.ey:                                            ; preds = %._crit_edge
  br i1 %.not109, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ps = load ptr, ptr %i.oq, align 8, !tbaa !217 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !36
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8
  invoke void %i.pv(ptr noundef nonnull align 8 dereferenceable(8) %i.ps, ptr noundef %i.oz, ptr noundef %i.pa)
          to label %bb.fa unwind label %bb.eu

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.pw = load ptr, ptr %23, align 8, !tbaa !219  ; 2 uses
  %.not.i.i285 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i285, label %_ZN6vectorIP3appLb0EjED2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.px)
          to label %_ZN6vectorIP3appLb0EjED2Ev.exit unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.py = landingpad { ptr, i32 }
          catch ptr null
  %i.pz = extractvalue { ptr, i32 } %i.py, 0
  call void @__clang_call_terminate(ptr %i.pz) #25
  unreachable

_ZN6vectorIP3appLb0EjED2Ev.exit:                  ; preds = %bb.fa, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qa = load i32, ptr %i.ol, align 8, !tbaa !660
  %i.qb = zext i32 %i.qa to i64
  %i.qc = icmp samesign ult i64 %indvars.iv.next, %i.qb
  br i1 %i.qc, label %bb.ep, label %._crit_edge368, !llvm.loop !653

bb.fd:                                            ; preds = %bb.ex, %bb.eu
  %.pn112 = phi { ptr, i32 } [ %i.pr, %bb.ex ], [ %i.pc, %bb.eu ]
  call void @_ZN6vectorIP3appLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.fr

bb.fe:                                            ; preds = %._crit_edge368
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.qd = load ptr, ptr %0, align 8, !tbaa !36
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 88
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = invoke noundef nonnull align 8 dereferenceable(56) ptr %i.qf(ptr noundef nonnull align 8 dereferenceable(2144) %0)
          to label %bb.ff unwind label %bb.eo

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV14insert_obj_mapI10quantifierSt4pairIP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEEE, i64 16), ptr %24, align 8, !tbaa !36
  %i.qh = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.or, ptr %i.qh, align 8, !tbaa !661
  %i.qi = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %.0104, ptr %i.qi, align 8, !tbaa !436
  invoke void @_ZN11trail_stack4pushI14insert_obj_mapI10quantifierSt4pairIP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %i.qg, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.fg unwind label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %_Z9is_forallPK3ast.exit.thread

bb.fh:                                            ; preds = %._crit_edge368
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fi:                                            ; preds = %bb.ff
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.fr

_Z9is_forallPK3ast.exit.thread:                   ; preds = %"_ZZN3euf10completion14add_constraintEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEENK3$_0clEPNS_5enodeE.exit283", %bb.fg, %_Z9is_forallPK3ast.exit
  invoke void @_ZN3euf10completion8add_ruleEP4exprP3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull %.0104, ptr noundef %2, ptr noundef %3)
          to label %bb.fj unwind label %.loopexit.split-lp

bb.fj:                                            ; preds = %_Z9is_forallPK3ast.exit.thread
  %i.ql = load i32, ptr %i.oe, align 4
  %trunc349 = trunc i32 %i.ql to i16
  switch i16 %trunc349, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread [
    i16 2, label %_Z9is_forallPK3ast.exit286
    i16 0, label %bb.fk
  ]

_Z9is_forallPK3ast.exit286:                       ; preds = %bb.fj
  %i.qm = getelementptr inbounds nuw i8, ptr %.0104, i64 16
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !659
  %i.qo = icmp eq i32 %i.qn, 0
  br i1 %i.qo, label %bb.fn, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.fk:                                            ; preds = %bb.fj
  %i.qp = getelementptr inbounds nuw i8, ptr %.0104, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !392
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !423 ; 5 uses
  %.not.i.i.i.i287 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i.i287, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread, label %_ZNK11ast_manager10is_impliesEPK4expr.exit288

_ZNK11ast_manager10is_impliesEPK4expr.exit288:    ; preds = %bb.fk
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !427
  %i.qu = icmp eq i32 %i.qt, 0
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = icmp eq i32 %i.qw, 9
  %i.qy = select i1 %i.qu, i1 %i.qx, i1 false
  br i1 %i.qy, label %bb.fn, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %_ZNK11ast_manager10is_impliesEPK4expr.exit288
  %i.qz = load i32, ptr %i.qs, align 8, !tbaa !427
  %i.ra = icmp eq i32 %i.qz, 0
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.rc = load i32, ptr %i.rb, align 4
  %i.rd = icmp eq i32 %i.rc, 6
  %i.re = select i1 %i.ra, i1 %i.rd, i1 false
  br i1 %i.re, label %bb.fn, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

_ZNK11ast_manager5is_orEPK4expr.exit.thread:      ; preds = %bb.fk, %bb.fj, %_Z9is_forallPK3ast.exit286, %_ZNK11ast_manager5is_orEPK4expr.exit
  invoke void @_ZN3euf10completion15add_quantifiersEP4expr(ptr noundef nonnull align 8 dereferenceable(2144) %0, ptr noundef nonnull %.0104)
          to label %bb.fl unwind label %.loopexit.split-lp

bb.fl:                                            ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !331 ; 3 uses
  %.not350 = icmp eq ptr %i.rg, null
  br i1 %.not350, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !36
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
end_hunk_0
