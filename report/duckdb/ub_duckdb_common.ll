Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29986
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZN6duckdb25BoxRendererImplementation12RenderValuesERNS_18BaseResultRendererERNS_6vectorINS_20RenderDataCollectionELb1ESaIS4_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #58
  br i1 %.0.i.i, label %bb.x, label %.body164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #58
  br i1 %.0.i.i, label %bb.x, label %.body164

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dz) #58
  br label %.body164

bb.y:                                             ; preds = %bb.v
  unreachable

_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv.exit: ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !231
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.thread578, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv.exit
  %not..084920 = xor i1 %.084920, true
  %spec.select = select i1 %not..084920, i1 true, i1 %.091918
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  store i64 0, ptr %21, align 8
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !321
  br label %bb.ae

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ae, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !255

.noexc.i.i.i:                                     ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #59
          to label %.noexc166 unwind label %.loopexit.split-lp608

.noexc166:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #64
          to label %.noexc167 unwind label %.loopexit607 ; 5 uses

.noexc167:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ei, ptr %21, align 8, !tbaa !313
  store ptr %i.ei, ptr %i.af, align 8, !tbaa !312
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ad ; 4 uses
  store ptr %i.ej, ptr %i.ag, align 8, !tbaa !321
  br i1 %i.ah, label %bb.ab, label %bb.ac, !prof !446

bb.ab:                                            ; preds = %.noexc167
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr align 8 %.sroa.0533.0.lcssa, i64 %i.ad, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc167
  br i1 %i.ai, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ek = load i64, ptr %.sroa.0533.0.lcssa, align 8, !tbaa !231
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !231
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %.thread
  %i.el = phi ptr [ %i.ej, %bb.ab ], [ %i.ej, %bb.ac ], [ %i.ej, %bb.ad ], [ %i.aj, %.thread ]
  store ptr %i.el, ptr %i.af, align 8, !tbaa !312
  invoke void @_ZNK6duckdb20ColumnDataCollection6ChunksENS_6vectorImLb1ESaImEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnDataChunkIterationHelper") align 8 %20, ptr noundef nonnull align 8 dereferenceable(112) %i.dy, ptr noundef nonnull %21)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.em = load ptr, ptr %21, align 8, !tbaa !313  ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef nonnull %i.em) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #58
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !2269
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC1ENS_12optional_ptrIKNS_20ColumnDataCollectionELb1EEENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(168) %23, ptr null, ptr noundef nonnull %17)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.en = load ptr, ptr %17, align 8, !tbaa !313, !noalias !2269 ; 2 uses
  %.not.i.i.i.i169 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i169, label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef nonnull %i.en) #60
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit

bb.ak:                                            ; preds = %bb.ah
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %17, align 8, !tbaa !313, !noalias !2269 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i1.i, label %.body170, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef nonnull %i.ep) #60
  br label %.body170

_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit, %bb.ez
  %.sroa.0517.1 = phi ptr [ %.sroa.0517.0915, %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit ], [ %.sroa.0517.4, %bb.ez ] ; 20 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0916, %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit ], [ %.sroa.11.4, %bb.ez ] ; 29 uses
  %.293 = phi i1 [ %spec.select, %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit ], [ %.798, %bb.ez ] ; 4 uses
  %.187 = phi i64 [ %.086919, %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit ], [ %.288, %bb.ez ] ; 5 uses
  %i.eq = invoke noundef zeroext i1 @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorneERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %22, ptr noundef nonnull align 8 dereferenceable(168) %23)
          to label %bb.an unwind label %bb.ar     ; 2 uses

bb.an:                                            ; preds = %bb.am
  br i1 %i.eq, label %bb.as, label %bb.fd

.loopexit607:                                     ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit609 = landingpad { ptr, i32 }
          cleanup
  br label %.body164

.loopexit.split-lp608:                            ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %.body164

bb.ao:                                            ; preds = %bb.ae
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %21, align 8, !tbaa !313  ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i172, label %.body164, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef nonnull %i.es) #60
  br label %.body164

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit484

bb.ar:                                            ; preds = %bb.ez, %bb.am
  %.sroa.0517.2 = phi ptr [ %.sroa.0517.4, %bb.ez ], [ %.sroa.0517.1, %bb.am ]
  %.sroa.11.2 = phi ptr [ %.sroa.11.4, %bb.ez ], [ %.sroa.11.1, %bb.am ]
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EED2Ev.exit295

bb.as:                                            ; preds = %bb.an
  %i.ev = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv(ptr noundef nonnull align 8 dereferenceable(168) %22)
          to label %bb.at unwind label %bb.aw     ; 3 uses

bb.at:                                            ; preds = %bb.as
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 4 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !423 ; 8 uses
  %.not591 = icmp eq i64 %i.ex, 0
  br i1 %.not591, label %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE6resizeEm.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ey = icmp ugt i64 %i.ex, 288230376151711743
  br i1 %i.ey, label %bb.av, label %_ZNKSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2092) #59
          to label %.noexc367 unwind label %_ZSt8_DestroyIPN6duckdb12BoxRenderRowES1_EvT_S3_RSaIT0_E.exit.i292.thread.loopexit.split-lp

.noexc367:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.au
  %i.ez = shl nuw nsw i64 %i.ex, 5
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #64
          to label %.lr.ph.i.i.i30.i.preheader unwind label %_ZSt8_DestroyIPN6duckdb12BoxRenderRowES1_EvT_S3_RSaIT0_E.exit.i292.thread.loopexit ; 4 uses

.lr.ph.i.i.i30.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE12_M_check_lenEmPKc.exit.i
  %xtraiter = and i64 %i.ex, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol

.lr.ph.i.i.i30.i.prol:                            ; preds = %.lr.ph.i.i.i30.i.preheader, %.lr.ph.i.i.i30.i.prol
  %.013.i.i.i31.i.prol = phi ptr [ %i.fd, %.lr.ph.i.i.i30.i.prol ], [ %i.fa, %.lr.ph.i.i.i30.i.preheader ] ; 3 uses
  %.01012.i.i.i32.i.prol = phi i64 [ %i.fc, %.lr.ph.i.i.i30.i.prol ], [ %i.ex, %.lr.ph.i.i.i30.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i30.i.prol ], [ 0, %.lr.ph.i.i.i30.i.preheader ]
  store i32 0, ptr %.013.i.i.i31.i.prol, align 8, !tbaa !436
  %i.fb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i.prol, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i8 0, i64 24, i1 false)
  %i.fc = add i64 %.01012.i.i.i32.i.prol, -1      ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol, !llvm.loop !2260

.lr.ph.i.i.i30.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i30.i.prol, %.lr.ph.i.i.i30.i.preheader
  %.013.i.i.i31.i.unr = phi ptr [ %i.fa, %.lr.ph.i.i.i30.i.preheader ], [ %i.fd, %.lr.ph.i.i.i30.i.prol ]
  %.01012.i.i.i32.i.unr = phi i64 [ %i.ex, %.lr.ph.i.i.i30.i.preheader ], [ %i.fc, %.lr.ph.i.i.i30.i.prol ]
  %i.fe = icmp ult i64 %i.ex, 8
  br i1 %i.fe, label %.noexc176, label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i.i.i30.i.prol.loopexit, %.lr.ph.i.i.i30.i
  %.013.i.i.i31.i = phi ptr [ %i.fv, %.lr.ph.i.i.i30.i ], [ %.013.i.i.i31.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32.i = phi i64 [ %i.fu, %.lr.ph.i.i.i30.i ], [ %.01012.i.i.i32.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i31.i, align 8, !tbaa !436
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 32
  store i32 0, ptr %i.fg, align 8, !tbaa !436
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 64
  store i32 0, ptr %i.fi, align 8, !tbaa !436
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 96
  store i32 0, ptr %i.fk, align 8, !tbaa !436
  %i.fl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i8 0, i64 24, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 128
  store i32 0, ptr %i.fm, align 8, !tbaa !436
  %i.fn = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i8 0, i64 24, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 160
  store i32 0, ptr %i.fo, align 8, !tbaa !436
  %i.fp = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i8 0, i64 24, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 192
  store i32 0, ptr %i.fq, align 8, !tbaa !436
  %i.fr = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 224
  store i32 0, ptr %i.fs, align 8, !tbaa !436
  %i.ft = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i8 0, i64 24, i1 false)
  %i.fu = add i64 %.01012.i.i.i32.i, -8           ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 256
  %.not.i.i.i33.i.7 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i33.i.7, label %.noexc176, label %.lr.ph.i.i.i30.i, !llvm.loop !2261

.noexc176:                                        ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i.i.i30.i.prol.loopexit
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.fa, i64 %i.ex
  br label %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE6resizeEm.exit: ; preds = %bb.at, %.noexc176
  %.sroa.0502.1 = phi ptr [ %i.fa, %.noexc176 ], [ null, %bb.at ] ; 12 uses
  %.sroa.13.1 = phi ptr [ %i.fw, %.noexc176 ], [ null, %bb.at ] ; 7 uses
  br i1 %.not929, label %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE6resizeEm.exit.._crit_edge902_crit_edge, label %.lr.ph901

_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE6resizeEm.exit.._crit_edge902_crit_edge: ; preds = %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE6resizeEm.exit
  %.pre = load i64, ptr %i.ew, align 8, !tbaa !423
  br label %._crit_edge902

.lr.ph901:                                        ; preds = %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE6resizeEm.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fy = ptrtoint ptr %.sroa.13.1 to i64
  %i.fz = ptrtoint ptr %.sroa.0502.1 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 5                 ; 2 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EED2Ev.exit295

_ZSt8_DestroyIPN6duckdb12BoxRenderRowES1_EvT_S3_RSaIT0_E.exit.i292.thread.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb12BoxRenderRowESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit604 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EED2Ev.exit295

_ZSt8_DestroyIPN6duckdb12BoxRenderRowES1_EvT_S3_RSaIT0_E.exit.i292.thread.loopexit.split-lp: ; preds = %bb.av
  %lpad.loopexit.split-lp605 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12BoxRenderRowESaIS1_EED2Ev.exit295

bb.ax:                                            ; preds = %.lr.ph901, %._crit_edge897
  %.082900 = phi i64 [ 0, %.lr.ph901 ], [ %i.mp, %._crit_edge897 ] ; 4 uses
  %i.gd = shl i64 %.082900, 1                     ; 4 uses
  %i.ge = load ptr, ptr %i.fx, align 8, !tbaa !462
  %i.gf = load ptr, ptr %i.ev, align 8, !tbaa !461 ; 3 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = sdiv exact i64 %i.gi, 104               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %i.gd, ptr %i.k, align 8, !tbaa !231
  store i64 %i.gj, ptr %i.l, align 8, !tbaa !231
  %.not.i.i.i369 = icmp ult i64 %i.gd, %i.gj
  br i1 %.not.i.i.i369, label %bb.bc, label %.noexc.i486, !prof !291

.noexc.i486:                                      ; preds = %bb.ax
  %i.gk = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.gl, ptr %8, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i64 55, ptr %i.b, align 8, !tbaa !231
  %i.gm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc487 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i370 ; 3 uses

.noexc487:                                        ; preds = %.noexc.i486
  store ptr %i.gm, ptr %8, align 8, !tbaa !217
  %i.gn = load i64, ptr %i.b, align 8, !tbaa !231 ; 3 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.gm, ptr noundef nonnull align 1 dereferenceable(55) @.str.2038, i64 55, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !300
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  store i8 0, ptr %i.gp, align 1, !tbaa !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.noexc487
  invoke void @__cxa_throw(ptr nonnull %i.gk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.bb unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i370: ; preds = %.noexc.i486
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay, %.noexc487
  %.0.i.i.i373 = phi i1 [ false, %bb.ay ], [ true, %.noexc487 ] ; 2 uses
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gs = load ptr, ptr %8, align 8, !tbaa !217   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gl
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.gs) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br i1 %.0.i.i.i373, label %bb.ba, label %.body376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i375: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br i1 %.0.i.i.i373, label %bb.ba, label %.body376

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i370
  %.pn8.i.i.i371 = phi { ptr, i32 } [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i370 ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i375 ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374 ]
  call void @__cxa_free_exception(ptr %i.gk) #58
  br label %.body376

bb.bb:                                            ; preds = %bb.ay
  unreachable

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.gu = getelementptr inbounds nuw [104 x i8], ptr %i.gf, i64 %i.gd ; 4 uses
  %i.gv = or disjoint i64 %i.gd, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.gv, ptr %i.i, align 8, !tbaa !231
  store i64 %i.gj, ptr %i.j, align 8, !tbaa !231
  %.not.i.i.i378 = icmp ult i64 %i.gv, %i.gj
  br i1 %.not.i.i.i378, label %bb.bh, label %.noexc.i490, !prof !291

.noexc.i490:                                      ; preds = %bb.bc
  %i.gw = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.gx, ptr %7, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 55, ptr %i.a, align 8, !tbaa !231
  %i.gy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc491 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i379 ; 3 uses

.noexc491:                                        ; preds = %.noexc.i490
  store ptr %i.gy, ptr %7, align 8, !tbaa !217
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !231 ; 3 uses
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.gy, ptr noundef nonnull align 1 dereferenceable(55) @.str.2038, i64 55, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !300
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz
  store i8 0, ptr %i.hb, align 1, !tbaa !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %.noexc491
  invoke void @__cxa_throw(ptr nonnull %i.gw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.bg unwind label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i379: ; preds = %.noexc.i490
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd, %.noexc491
  %.0.i.i.i382 = phi i1 [ false, %bb.bd ], [ true, %.noexc491 ] ; 2 uses
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.he = load ptr, ptr %7, align 8, !tbaa !217   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gx
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i383: ; preds = %bb.be
  call void @_ZdlPv(ptr noundef %i.he) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br i1 %.0.i.i.i382, label %bb.bf, label %.body376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i384: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br i1 %.0.i.i.i382, label %bb.bf, label %.body376

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i383, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i379
  %.pn8.i.i.i380 = phi { ptr, i32 } [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i379 ], [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i384 ], [ %i.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i383 ]
  call void @__cxa_free_exception(ptr %i.gw) #58
  br label %.body376

bb.bg:                                            ; preds = %bb.bd
  unreachable

bb.bh:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.hg = getelementptr inbounds nuw [104 x i8], ptr %i.gf, i64 %i.gv ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gu, i64 9
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !447
  %i.hj = icmp eq i8 %i.hi, -56
  br i1 %i.hj, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hk = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2096, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.bj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i388

end_hunk_0
