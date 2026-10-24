Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE:bb.a

bb.ej:                                            ; preds = %bb.ee
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #49
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn92 = phi { ptr, i32 } [ %i.lz, %bb.ej ], [ %i.ly, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #49
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %46) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #49
  br label %common.resume

bb.el:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #49
  %i.ma = load ptr, ptr %2, align 8, !tbaa !261   ; 5 uses
  store ptr %i.ma, ptr %49, align 8, !tbaa !263
  %i.mb = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mb, ptr noundef nonnull align 8 dereferenceable(24) %i.ma, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #49
  %i.mc = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !242
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %50, ptr noundef nonnull align 8 dereferenceable(40) %i.md, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.em unwind label %bb.ep

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #49
  %i.me = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !243
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %51, ptr noundef nonnull align 8 dereferenceable(40) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.en unwind label %bb.eq

bb.en:                                            ; preds = %bb.em
  %.val99 = load ptr, ptr %50, align 8, !tbaa !268
  %.val98 = load ptr, ptr %51, align 8, !tbaa !268
  %i.mg = tail call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val99, ptr noundef nonnull readonly dereferenceable(1) %.val98) #50
  %i.mh = icmp ne ptr %i.mg, null
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #49
  %i.mi = load ptr, ptr %i.ma, align 8, !tbaa !223 ; 2 uses
  %i.mj = load ptr, ptr %i.mb, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i158 = icmp eq ptr %i.mi, %i.mj
  br i1 %.not9.i.i158, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit164, label %.lr.ph.i.i159

.lr.ph.i.i159:                                    ; preds = %bb.en, %.noexc.i161
  %.010.i.i160 = phi ptr [ %i.mk, %.noexc.i161 ], [ %i.mi, %bb.en ] ; 2 uses
  %i.mk = load ptr, ptr %.010.i.i160, align 8, !tbaa !240 ; 2 uses
  %i.ml = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.ml(ptr noundef nonnull %.010.i.i160)
          to label %.noexc.i161 unwind label %bb.eo, !inline_history !39

.noexc.i161:                                      ; preds = %.lr.ph.i.i159
  %.not.i.i162 = icmp eq ptr %i.mk, %i.mj
  br i1 %.not.i.i162, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit164, label %.lr.ph.i.i159, !llvm.loop !40

bb.eo:                                            ; preds = %.lr.ph.i.i159
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  tail call void @__clang_call_terminate(ptr %i.mn) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit164: ; preds = %.noexc.i161, %bb.en
  store ptr %i.mj, ptr %i.ma, align 8, !tbaa !223
  %i.mo = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !224
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

bb.ep:                                            ; preds = %bb.el
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eq:                                            ; preds = %bb.em
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #49
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn90 = phi { ptr, i32 } [ %i.ms, %bb.eq ], [ %i.mr, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #49
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %49) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #49
  br label %common.resume

bb.es:                                            ; preds = %tailrecurse
  %i.mt = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !242
  %i.mv = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.mu, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.mw = xor i1 %accumulator.tr.ph, %i.mv
  %accumulator.ret.tr364 = xor i1 %i.mw, true
  br label %common.ret

bb.et:                                            ; preds = %tailrecurse
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.mx, align 8, !tbaa !119
  %.not.i165 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i165, label %bb.eu, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #49
  %i.my = load ptr, ptr %2, align 8, !tbaa !261   ; 5 uses
  store ptr %i.my, ptr %52, align 8, !tbaa !263
  %i.mz = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mz, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #49
  %i.na = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !242
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %53, ptr noundef nonnull align 8 dereferenceable(40) %i.nb, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.nc = load ptr, ptr %i.mx, align 8, !tbaa !79
  %.not.i.i166 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i166, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ew
  %.pre.i = load ptr, ptr %9, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

bb.ex:                                            ; preds = %bb.ev
  %i.nd = load i64, ptr %1, align 8, !tbaa !115
  %i.ne = inttoptr i64 %i.nd to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %.noexc, %bb.ex
  %i.nf = phi ptr [ %i.ne, %bb.ex ], [ %.pre.i, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.not.i167.not439 = icmp eq ptr %i.nf, null
  br i1 %.not.i167.not439, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit, %_ZNK4pugi8xml_node6parentEv.exit
  %storemerge440 = phi ptr [ %i.oj, %_ZNK4pugi8xml_node6parentEv.exit ], [ %i.nf, %_ZNK4pugi10xpath_node4nodeEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ng = getelementptr inbounds nuw i8, ptr %storemerge440, i64 56
  %.0916.i = load ptr, ptr %i.ng, align 8, !tbaa !119 ; 2 uses
  %.not1217.i = icmp eq ptr %.0916.i, null
  br i1 %.not1217.i, label %._crit_edge.i, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i
  %.0918.i = phi ptr [ %.09.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i ], [ %.0916.i, %.lr.ph ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0918.i, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !87 ; 3 uses
  %.not13.i = icmp eq ptr %i.ni, null
  br i1 %.not13.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i169
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !86
  %i.nk = icmp eq i8 %i.nj, 120
  br i1 %i.nk, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i: ; preds = %bb.ey
  %i.nl = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(9) @.str.101, ptr noundef nonnull readonly dereferenceable(1) %i.ni) #50
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.ez, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, %bb.ey, %.lr.ph.i169
  %i.nn = getelementptr inbounds nuw i8, ptr %.0918.i, i64 32
  %.09.i = load ptr, ptr %i.nn, align 8, !tbaa !119 ; 2 uses
  %.not12.i = icmp eq ptr %.09.i, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i169, !llvm.loop !5

bb.ez:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i
  invoke void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %.0918.i)
          to label %bb.fa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, %.lr.ph
  invoke void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.fa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fa:                                            ; preds = %bb.ez, %._crit_edge.i
  %i.no = load ptr, ptr %8, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i173 = icmp eq ptr %i.no, null
  br i1 %.not.i173, label %.thread357, label %_ZNK4pugi13xml_attribute5valueEv.exit

_ZNK4pugi13xml_attribute5valueEv.exit:            ; preds = %bb.fa
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !85 ; 2 uses
  %.not5.i = icmp eq ptr %i.nq, null
  %i.nr = select i1 %.not5.i, ptr @.str, ptr %i.nq ; 2 uses
  %.val100 = load ptr, ptr %53, align 8, !tbaa !268 ; 2 uses
  %i.ns = load i8, ptr %.val100, align 1, !tbaa !86 ; 2 uses
  %.not86441 = icmp eq i8 %i.ns, 0
  br i1 %.not86441, label %._crit_edge, label %.lr.ph444

.lr.ph444:                                        ; preds = %_ZNK4pugi13xml_attribute5valueEv.exit, %bb.fb
  %i.nt = phi i8 [ %i.od, %bb.fb ], [ %i.ns, %_ZNK4pugi13xml_attribute5valueEv.exit ] ; 3 uses
  %.0443 = phi ptr [ %i.oc, %bb.fb ], [ %.val100, %_ZNK4pugi13xml_attribute5valueEv.exit ]
  %.065442 = phi ptr [ %i.ob, %bb.fb ], [ %i.nr, %_ZNK4pugi13xml_attribute5valueEv.exit ] ; 2 uses
  %58 = add i8 %i.nt, -65
  %i.nu = icmp ult i8 %58, 26
  %i.nv = or i8 %i.nt, 32
  %i.nw = select i1 %i.nu, i8 %i.nv, i8 %i.nt
  %i.nx = load i8, ptr %.065442, align 1, !tbaa !86 ; 3 uses
  %59 = add i8 %i.nx, -65
  %i.ny = icmp ult i8 %59, 26
  %i.nz = or i8 %i.nx, 32
  %i.oa = select i1 %i.ny, i8 %i.nz, i8 %i.nx
  %.not87 = icmp eq i8 %i.nw, %i.oa
  br i1 %.not87, label %bb.fb, label %.loopexit

bb.fb:                                            ; preds = %.lr.ph444
  %i.ob = getelementptr inbounds nuw i8, ptr %.065442, i64 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0443, i64 1 ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !86  ; 2 uses
  %.not86 = icmp eq i8 %i.od, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph444, !llvm.loop !514

._crit_edge:                                      ; preds = %bb.fb, %_ZNK4pugi13xml_attribute5valueEv.exit
  %.065.lcssa = phi ptr [ %i.nr, %_ZNK4pugi13xml_attribute5valueEv.exit ], [ %i.ob, %bb.fb ]
  %i.oe = load i8, ptr %.065.lcssa, align 1, !tbaa !86 ; 2 uses
  %i.of = icmp eq i8 %i.oe, 0
  %i.og = icmp eq i8 %i.oe, 45
  %spec.select = or i1 %i.of, %i.og
  br label %.loopexit

.thread357:                                       ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.oh = getelementptr inbounds nuw i8, ptr %storemerge440, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !122
  invoke void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.oi)
          to label %_ZNK4pugi8xml_node6parentEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pugi8xml_node6parentEv.exit:                 ; preds = %.thread357
  %i.oj = load ptr, ptr %7, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not.i167.not = icmp eq ptr %i.oj, null
  br i1 %.not.i167.not, label %.loopexit, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ez, %._crit_edge.i, %.thread357, %bb.eu, %bb.ew
  %lpad.loopexit.split-lp1028 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #49
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %52) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #49
  br label %common.resume

.loopexit:                                        ; preds = %_ZNK4pugi8xml_node6parentEv.exit, %.lr.ph444, %_ZNK4pugi10xpath_node4nodeEv.exit, %._crit_edge
  %spec.select96 = phi i1 [ false, %_ZNK4pugi10xpath_node4nodeEv.exit ], [ %spec.select, %._crit_edge ], [ false, %.lr.ph444 ], [ false, %_ZNK4pugi8xml_node6parentEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #49
  %i.ok = load ptr, ptr %i.my, align 8, !tbaa !223 ; 2 uses
  %i.ol = load ptr, ptr %i.mz, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i682 = icmp eq ptr %i.ok, %i.ol
  br i1 %.not9.i.i682, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit687, label %.lr.ph.i.i683

.lr.ph.i.i683:                                    ; preds = %.loopexit, %.noexc.i685
  %.010.i.i684 = phi ptr [ %i.om, %.noexc.i685 ], [ %i.ok, %.loopexit ] ; 2 uses
  %i.om = load ptr, ptr %.010.i.i684, align 8, !tbaa !240 ; 2 uses
  %i.on = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.on(ptr noundef nonnull %.010.i.i684)
          to label %.noexc.i685 unwind label %bb.fc, !inline_history !39

.noexc.i685:                                      ; preds = %.lr.ph.i.i683
  %.not.i.i686 = icmp eq ptr %i.om, %i.ol
  br i1 %.not.i.i686, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit687, label %.lr.ph.i.i683, !llvm.loop !40

bb.fc:                                            ; preds = %.lr.ph.i.i683
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit687: ; preds = %.noexc.i685, %.loopexit
  store ptr %i.ol, ptr %i.my, align 8, !tbaa !223
  %i.oq = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !224
  %i.os = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i64 %i.or, ptr %i.os, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

bb.fd:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !79
  %.not.i.i179 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i179, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i180 = load ptr, ptr %6, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit181

bb.ff:                                            ; preds = %bb.fd
  %i.ov = load i64, ptr %1, align 8, !tbaa !115
  %i.ow = inttoptr i64 %i.ov to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit181

_ZNK4pugi10xpath_node4nodeEv.exit181:             ; preds = %bb.fe, %bb.ff
  %i.ox = phi ptr [ %i.ow, %bb.ff ], [ %.pre.i180, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.oy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i182 = icmp eq ptr %i.ox, null
  br i1 %.not.i182, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit181
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZNK4pugi8xml_node9attributeEPKc.exit193

bb.fh:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit181
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 56
  %.0916.i183 = load ptr, ptr %i.pa, align 8, !tbaa !119 ; 2 uses
  %.not1217.i184 = icmp eq ptr %.0916.i183, null
  br i1 %.not1217.i184, label %._crit_edge.i191, label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %bb.fh, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i188
  %.0918.i186 = phi ptr [ %.09.i189, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i188 ], [ %.0916.i183, %bb.fh ] ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.0918.i186, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !87 ; 3 uses
  %.not13.i187 = icmp eq ptr %i.pc, null
  br i1 %.not13.i187, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i188, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i185
  %i.pd = load i8, ptr %i.oz, align 1, !tbaa !86
  %i.pe = load i8, ptr %i.pc, align 1, !tbaa !86
  %i.pf = icmp eq i8 %i.pd, %i.pe
  br i1 %i.pf, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i192, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i188

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i192: ; preds = %bb.fi
  %i.pg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.oz, ptr noundef nonnull readonly dereferenceable(1) %i.pc) #50
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.fj, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i188

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i188: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i192, %bb.fi, %.lr.ph.i185
  %i.pi = getelementptr inbounds nuw i8, ptr %.0918.i186, i64 32
  %.09.i189 = load ptr, ptr %i.pi, align 8, !tbaa !119 ; 2 uses
  %.not12.i190 = icmp eq ptr %.09.i189, null
  br i1 %.not12.i190, label %._crit_edge.i191, label %.lr.ph.i185, !llvm.loop !5

bb.fj:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i192
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.0918.i186)
  br label %_ZNK4pugi8xml_node9attributeEPKc.exit193

._crit_edge.i191:                                 ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i188, %bb.fh
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZNK4pugi8xml_node9attributeEPKc.exit193

_ZNK4pugi8xml_node9attributeEPKc.exit193:         ; preds = %bb.fg, %bb.fj, %._crit_edge.i191
  %i.pj = load ptr, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i194 = icmp ne ptr %i.pj, null
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

bb.fk:                                            ; preds = %tailrecurse
  %i.pk = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !243 ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 8, !tbaa !245
  %i.pn = icmp eq i8 %i.pm, 18
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !86 ; 3 uses
  br i1 %i.pn, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !200
  %i.pr = icmp eq i32 %i.pq, 3
  br i1 %i.pr, label %bb.fm, label %_ZNK4pugi14xpath_variable10get_stringEv.exit

bb.fm:                                            ; preds = %bb.fl
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !210
  br label %_ZNK4pugi14xpath_variable10get_stringEv.exit

_ZNK4pugi14xpath_variable10get_stringEv.exit:     ; preds = %bb.fl, %bb.fm
  %i.pu = phi ptr [ %i.pt, %bb.fm ], [ null, %bb.fl ] ; 2 uses
  %.not.i195 = icmp eq ptr %i.pu, null
  %i.pv = select i1 %.not.i195, ptr @.str, ptr %i.pu
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fk, %_ZNK4pugi14xpath_variable10get_stringEv.exit
  %i.pw = phi ptr [ %i.pv, %_ZNK4pugi14xpath_variable10get_stringEv.exit ], [ %i.pp, %bb.fk ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !79
  %.not.i.i196 = icmp eq ptr %i.py, null
  br i1 %.not.i.i196, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i197 = load ptr, ptr %4, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit198

bb.fp:                                            ; preds = %bb.fn
  %i.pz = load i64, ptr %1, align 8, !tbaa !115
  %i.qa = inttoptr i64 %i.pz to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit198

_ZNK4pugi10xpath_node4nodeEv.exit198:             ; preds = %bb.fo, %bb.fp
  %i.qb = phi ptr [ %i.qa, %bb.fp ], [ %.pre.i197, %bb.fo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.qc = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !242
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !86 ; 2 uses
end_hunk_0
