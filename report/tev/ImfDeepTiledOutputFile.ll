Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfDeepTiledOutputFile?download=true
inline.NumInlined: 1667
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7Imf_3_419DeepTiledOutputFile10writeTilesEiiiiii:bb.a
  %.val.i.i.i = load ptr, ptr %i.eh, align 8, !tbaa !70 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not12.i.i.i.i, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.an, %.thread7.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.ez, %.thread7.i.i.i.i ], [ %i.eh, %bb.an ] ; 2 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.thread7.i.i.i.i ], [ %.val.i.i.i, %bb.an ] ; 13 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i, i64 44
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !278 ; 2 uses
  %i.el = icmp slt i32 %i.ek, %6
  br i1 %i.el, label %.thread.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i
  %i.em = icmp eq i32 %i.ek, %6
  br i1 %i.em, label %bb.ap, label %.thread7.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i, i64 40
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !279 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, %5
  br i1 %i.ep, label %.thread.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eq = icmp eq i32 %i.eo, %5
  br i1 %i.eq, label %bb.ar, label %.thread7.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.er = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i, i64 36
  %i.es = load i32, ptr %i.er, align 4, !tbaa !280 ; 2 uses
  %i.et = icmp slt i32 %i.es, %.067274
  br i1 %i.et, label %.thread.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = icmp eq i32 %i.es, %.067274
  br i1 %i.eu, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i.i, label %.thread7.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ar, %bb.ap, %.lr.ph.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i, i64 8
  br label %.thread7.i.i.i.i

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i.i: ; preds = %bb.as
  %i.ew = load i32, ptr %i.ei, align 4, !tbaa !281
  %.fr.i = freeze i32 %i.ew
  %i.ex = icmp slt i32 %.fr.i, %.069270           ; 2 uses
  %spec.select.idx.i.i.i.i = select i1 %i.ex, i64 8, i64 0
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i, i64 %spec.select.idx.i.i.i.i
  %spec.select11.i.i.i.i = select i1 %i.ex, ptr %.014.i.i.i.i, ptr %.0813.i.i.i.i
  br label %.thread7.i.i.i.i

.thread7.i.i.i.i:                                 ; preds = %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i.i, %.thread.i.i.i.i, %bb.as, %bb.aq, %bb.ao
  %i.ey = phi ptr [ %.0813.i.i.i.i, %bb.as ], [ %spec.select.i.i.i.i, %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i.i ], [ %.0813.i.i.i.i, %bb.ao ], [ %.0813.i.i.i.i, %bb.aq ], [ %i.ev, %.thread.i.i.i.i ]
  %i.ez = phi ptr [ %.0813.i.i.i.i, %bb.as ], [ %spec.select11.i.i.i.i, %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i.i ], [ %.0813.i.i.i.i, %bb.ao ], [ %.0813.i.i.i.i, %bb.aq ], [ %.014.i.i.i.i, %.thread.i.i.i.i ] ; 6 uses
  %.19.i.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.19.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !271

_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i.i: ; preds = %.thread7.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.ez, %i.eh
  br i1 %.not.i.i.i, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 44
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !278 ; 2 uses
  %i.fd = icmp slt i32 %6, %i.fc
  br i1 %i.fd, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fe = icmp eq i32 %6, %i.fc
  br i1 %i.fe, label %bb.av, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.i

bb.av:                                            ; preds = %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !279 ; 2 uses
  %i.fh = icmp slt i32 %5, %i.fg
  br i1 %i.fh, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fi = icmp eq i32 %5, %i.fg
  br i1 %i.fi, label %bb.ax, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 36
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !280 ; 2 uses
  %i.fl = icmp slt i32 %.067274, %i.fk
  br i1 %i.fl, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fm = icmp eq i32 %.067274, %i.fk
  br i1 %i.fm, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i.i, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.i

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i.i: ; preds = %bb.ay
  %i.fn = load i32, ptr %i.fa, align 4, !tbaa !281
  %.not158.i = icmp slt i32 %.069270, %i.fn
  br i1 %.not158.i, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.i

_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.i: ; preds = %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i.i, %bb.ay, %bb.aw, %bb.au
  invoke void @_Z13iex_debugTrapv()
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %.noexc145
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull @.str.47, i64 noundef 23)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit97.i unwind label %bb.be

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit97.i: ; preds = %.noexc146
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, i32 noundef %.069270)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit97.i
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit98.i unwind label %bb.be

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit98.i: ; preds = %bb.az
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i32 noundef %.067274)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit98.i
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit99.i unwind label %bb.be

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit99.i: ; preds = %bb.ba
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, i32 noundef %5)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit99.i
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit100.i unwind label %bb.be

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit100.i: ; preds = %bb.bb
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, i32 noundef %6)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit100.i
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.48, i64 noundef 17)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit101.i unwind label %bb.be ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit101.i: ; preds = %bb.bc
  %i.fy = call ptr @__cxa_allocate_exception(i64 56) #23 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt3__118basic_stringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit101.i
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #27
          to label %bb.cy unwind label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit100.i, %bb.bb, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit99.i, %bb.ba, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit98.i, %bb.az, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit97.i, %.noexc146
  %i.fz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE
  br label %bb.bg

bb.bf:                                            ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit101.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE
  call void @__cxa_free_exception(ptr nonnull %i.fy) #23
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn.i = phi { ptr, i32 } [ %i.fz, %bb.be ], [ %i.ga, %bb.bf ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body153

_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i: ; preds = %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i.i, %bb.ax, %bb.av, %bb.at, %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i.i, %bb.an
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 320 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dc, i64 328 ; 5 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !279
  %i.ge = icmp eq i32 %i.gd, %5
  br i1 %i.ge, label %bb.bh, label %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i

bb.bh:                                            ; preds = %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dc, i64 332
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !278
  %i.gh = icmp eq i32 %i.gg, %6
  br i1 %i.gh, label %bb.bi, label %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.gi = load i32, ptr %i.gb, align 8, !tbaa !281
  %i.gj = icmp eq i32 %i.gi, %.069270
  br i1 %i.gj, label %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.i, label %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i

_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.i: ; preds = %bb.bi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dc, i64 324
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !280
  %i.gm = icmp eq i32 %i.gl, %.067274
  br i1 %i.gm, label %bb.bj, label %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i

bb.bj:                                            ; preds = %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.i
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_113writeTileDataEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m(ptr noundef nonnull %i.dc, i32 noundef %.069270, i32 noundef %.067274, i32 noundef %5, i32 noundef %6, ptr noundef %i.de, i64 noundef %i.dg, i64 noundef %i.di, ptr noundef %i.dk, i64 noundef %i.dm)
          to label %.noexc147 unwind label %.loopexit.split-lp.loopexit

.noexc147:                                        ; preds = %bb.bj
  %.val91.i = load i64, ptr %i.gb, align 8, !tbaa !134
  %.val92.i = load i64, ptr %i.gc, align 8, !tbaa !134
  %i.gn = invoke fastcc { i64, i64 } @_ZN7Imf_3_419DeepTiledOutputFile4Data13nextTileCoordERKNS_12_GLOBAL__N_19TileCoordE(ptr noundef nonnull align 8 dereferenceable(385) %i.dc, i64 %.val91.i, i64 %.val92.i)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc148:                                        ; preds = %.noexc147
  %i.go = extractvalue { i64, i64 } %i.gn, 0      ; 3 uses
  %i.gp = extractvalue { i64, i64 } %i.gn, 1      ; 3 uses
  store i64 %i.go, ptr %i.gb, align 8, !tbaa !134
  store i64 %i.gp, ptr %i.gc, align 8, !tbaa !134
  %.val.i.i102.i = load ptr, ptr %i.eh, align 8, !tbaa !70 ; 2 uses
  %.not12.i.i.i103.i = icmp eq ptr %.val.i.i102.i, null
  %i.gq = lshr i64 %i.gp, 32
  %i.gr = trunc nuw i64 %i.gq to i32              ; 4 uses
  %i.gs = trunc i64 %i.gp to i32                  ; 4 uses
  %i.gt = lshr i64 %i.go, 32
  %i.gu = trunc nuw i64 %i.gt to i32              ; 4 uses
  %i.gv = trunc i64 %i.go to i32                  ; 2 uses
  br i1 %.not12.i.i.i103.i, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %.lr.ph.i.i.i104.i

.lr.ph.i.i.i104.i:                                ; preds = %.noexc148, %.thread7.i.i.i107.i
  %.014.i.i.i105.i = phi ptr [ %i.hn, %.thread7.i.i.i107.i ], [ %i.eh, %.noexc148 ] ; 2 uses
  %.0813.i.i.i106.i = phi ptr [ %.19.i.i.i108.i, %.thread7.i.i.i107.i ], [ %.val.i.i102.i, %.noexc148 ] ; 13 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0813.i.i.i106.i, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %.0813.i.i.i106.i, i64 44
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !278 ; 2 uses
  %i.gz = icmp slt i32 %i.gy, %i.gr
  br i1 %i.gz, label %.thread.i.i.i120.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i104.i
  %i.ha = icmp eq i32 %i.gy, %i.gr
  br i1 %i.ha, label %bb.bl, label %.thread7.i.i.i107.i

bb.bl:                                            ; preds = %bb.bk
  %i.hb = getelementptr inbounds nuw i8, ptr %.0813.i.i.i106.i, i64 40
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !279 ; 2 uses
  %i.hd = icmp slt i32 %i.hc, %i.gs
  br i1 %i.hd, label %.thread.i.i.i120.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.he = icmp eq i32 %i.hc, %i.gs
  br i1 %i.he, label %bb.bn, label %.thread7.i.i.i107.i

bb.bn:                                            ; preds = %bb.bm
  %i.hf = getelementptr inbounds nuw i8, ptr %.0813.i.i.i106.i, i64 36
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !280 ; 2 uses
  %i.hh = icmp slt i32 %i.hg, %i.gu
  br i1 %i.hh, label %.thread.i.i.i120.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hi = icmp eq i32 %i.hg, %i.gu
  br i1 %i.hi, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i115.i, label %.thread7.i.i.i107.i

.thread.i.i.i120.i:                               ; preds = %bb.bn, %bb.bl, %.lr.ph.i.i.i104.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.0813.i.i.i106.i, i64 8
  br label %.thread7.i.i.i107.i

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i115.i: ; preds = %bb.bo
  %i.hk = load i32, ptr %i.gw, align 4, !tbaa !281
  %i.hl = icmp slt i32 %i.hk, %i.gv
  %cond.fr1.i.i.i116.i = freeze i1 %i.hl          ; 2 uses
  %spec.select.idx.i.i.i117.i = select i1 %cond.fr1.i.i.i116.i, i64 8, i64 0
  %spec.select.i.i.i118.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i106.i, i64 %spec.select.idx.i.i.i117.i
  %spec.select11.i.i.i119.i = select i1 %cond.fr1.i.i.i116.i, ptr %.014.i.i.i105.i, ptr %.0813.i.i.i106.i
  br label %.thread7.i.i.i107.i

.thread7.i.i.i107.i:                              ; preds = %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i115.i, %.thread.i.i.i120.i, %bb.bo, %bb.bm, %bb.bk
  %i.hm = phi ptr [ %.0813.i.i.i106.i, %bb.bo ], [ %spec.select.i.i.i118.i, %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i115.i ], [ %.0813.i.i.i106.i, %bb.bk ], [ %.0813.i.i.i106.i, %bb.bm ], [ %i.hj, %.thread.i.i.i120.i ]
  %i.hn = phi ptr [ %.0813.i.i.i106.i, %bb.bo ], [ %spec.select11.i.i.i119.i, %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i115.i ], [ %.0813.i.i.i106.i, %bb.bk ], [ %.0813.i.i.i106.i, %bb.bm ], [ %.014.i.i.i105.i, %.thread.i.i.i120.i ] ; 7 uses
  %.19.i.i.i108.i = load ptr, ptr %i.hm, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i109.i = icmp eq ptr %.19.i.i.i108.i, null
  br i1 %.not.i.i.i109.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i110.i, label %.lr.ph.i.i.i104.i, !llvm.loop !271

_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i110.i: ; preds = %.thread7.i.i.i107.i
  %.not.i.i111.i = icmp eq ptr %i.hn, %i.eh
  br i1 %.not.i.i111.i, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i110.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 44
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !278 ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, %i.gr
  br i1 %i.hr, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hs = icmp eq i32 %i.hq, %i.gr
  br i1 %i.hs, label %bb.br, label %.lr.ph.i

bb.br:                                            ; preds = %bb.bq
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !279 ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, %i.gs
  br i1 %i.hv, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hw = icmp eq i32 %i.hu, %i.gs
  br i1 %i.hw, label %bb.bt, label %.lr.ph.i

bb.bt:                                            ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !280 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, %i.gu
  br i1 %i.hz, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ia = icmp eq i32 %i.hy, %i.gu
  br i1 %i.ia, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i113.i, label %.lr.ph.i

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i113.i: ; preds = %bb.bu
  %i.ib = load i32, ptr %i.ho, align 4, !tbaa !281
  %i.ic = icmp sgt i32 %i.ib, %i.gv
  br i1 %i.ic, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bq, %bb.bs, %bb.bu, %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i113.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.dc, i64 312 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %i.ie = phi i32 [ %i.hq, %.lr.ph.i ], [ %i.ks, %.backedge.backedge ]
  %storemerge172.i = phi ptr [ %i.hn, %.lr.ph.i ], [ %i.kp, %.backedge.backedge ] ; 9 uses
  %i.if = getelementptr inbounds nuw i8, ptr %storemerge172.i, i64 32
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !282
  %i.ih = getelementptr inbounds nuw i8, ptr %storemerge172.i, i64 36
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !283
  %i.ij = getelementptr inbounds nuw i8, ptr %storemerge172.i, i64 40
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !284
  %i.il = getelementptr inbounds nuw i8, ptr %storemerge172.i, i64 48 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !95 ; 5 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !97
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !285
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !286
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !98
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !287
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_113writeTileDataEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m(ptr noundef nonnull %i.dc, i32 noundef %i.ig, i32 noundef %i.ii, i32 noundef %i.ik, i32 noundef %i.ie, ptr noundef %i.in, i64 noundef %i.ip, i64 noundef %i.ir, ptr noundef %i.it, i64 noundef %i.iv)
          to label %.noexc149 unwind label %.loopexit

.noexc149:                                        ; preds = %.backedge
  %i.iw = load ptr, ptr %i.il, align 8, !tbaa !95 ; 4 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %.noexc149
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !97 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZdaPv(ptr noundef nonnull %i.iy) #25
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !98 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %_ZN7Imf_3_412_GLOBAL__N_112BufferedTileD2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZdaPv(ptr noundef nonnull %i.jb) #25
  br label %_ZN7Imf_3_412_GLOBAL__N_112BufferedTileD2Ev.exit.i

_ZN7Imf_3_412_GLOBAL__N_112BufferedTileD2Ev.exit.i: ; preds = %bb.by, %bb.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef 40) #25
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_112BufferedTileD2Ev.exit.i, %.noexc149
  %i.jd = getelementptr inbounds nuw i8, ptr %storemerge172.i, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.preheader8.i.i.i.i.i.i

.preheader8.i.i.i.i.i.i:                          ; preds = %bb.bz, %.preheader8.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.jf, %.preheader8.i.i.i.i.i.i ], [ %i.je, %bb.bz ] ; 2 uses
  %i.jf = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__115__tree_iteratorINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEEPNS_11__tree_nodeIS7_PvEElEppB8ne180100Ev.exit.i.i.i.i, label %.preheader8.i.i.i.i.i.i, !llvm.loop !0

.preheader.i.i.i.i.i.i:                           ; preds = %bb.bz, %.preheader.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.jh, %.preheader.i.i.i.i.i.i ], [ %storemerge172.i, %bb.bz ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !101 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !70
  %i.jj = icmp eq ptr %.0.i.i.i.i.i.i, %i.ji
  br i1 %i.jj, label %_ZNSt3__115__tree_iteratorINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEEPNS_11__tree_nodeIS7_PvEElEppB8ne180100Ev.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !1

_ZNSt3__115__tree_iteratorINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEEPNS_11__tree_nodeIS7_PvEElEppB8ne180100Ev.exit.i.i.i.i: ; preds = %.preheader8.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.jh, %.preheader.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.preheader8.i.i.i.i.i.i ]
  %i.jk = load ptr, ptr %i.eg, align 8, !tbaa !13
  %i.jl = icmp eq ptr %i.jk, %storemerge172.i
  br i1 %i.jl, label %bb.ca, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE5eraseB8ne180100ENS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIS3_S5_EEPNS_11__tree_nodeISH_PvEElEEEE.exit.i

bb.ca:                                            ; preds = %_ZNSt3__115__tree_iteratorINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEEPNS_11__tree_nodeIS7_PvEElEppB8ne180100Ev.exit.i.i.i.i
  store ptr %.06.i.i.i.i.i.i, ptr %i.eg, align 8, !tbaa !13
  br label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE5eraseB8ne180100ENS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIS3_S5_EEPNS_11__tree_nodeISH_PvEElEEEE.exit.i

_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE5eraseB8ne180100ENS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIS3_S5_EEPNS_11__tree_nodeISH_PvEElEEEE.exit.i: ; preds = %bb.ca, %_ZNSt3__115__tree_iteratorINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEEPNS_11__tree_nodeIS7_PvEElEppB8ne180100Ev.exit.i.i.i.i
  %i.jm = load i64, ptr %i.id, align 8, !tbaa !161
  %i.jn = add i64 %i.jm, -1
  store i64 %i.jn, ptr %i.id, align 8, !tbaa !161
  %i.jo = load ptr, ptr %i.eh, align 8, !tbaa !70
  call void @_ZNSt3__113__tree_removeB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %i.jo, ptr noundef nonnull %storemerge172.i) #23
  call void @_ZdlPvm(ptr noundef nonnull %storemerge172.i, i64 noundef 56) #25
  %.val89.i = load i64, ptr %i.gb, align 8, !tbaa !134
  %.val90.i = load i64, ptr %i.gc, align 8, !tbaa !134
  %i.jp = invoke fastcc { i64, i64 } @_ZN7Imf_3_419DeepTiledOutputFile4Data13nextTileCoordERKNS_12_GLOBAL__N_19TileCoordE(ptr noundef nonnull align 8 dereferenceable(385) %i.dc, i64 %.val89.i, i64 %.val90.i)
          to label %.noexc150 unwind label %.loopexit ; 2 uses

.noexc150:                                        ; preds = %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE5eraseB8ne180100ENS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIS3_S5_EEPNS_11__tree_nodeISH_PvEElEEEE.exit.i
  %i.jq = extractvalue { i64, i64 } %i.jp, 0      ; 3 uses
  %i.jr = extractvalue { i64, i64 } %i.jp, 1      ; 3 uses
  store i64 %i.jq, ptr %i.gb, align 8, !tbaa !134
  store i64 %i.jr, ptr %i.gc, align 8, !tbaa !134
  %.val.i.i122.i = load ptr, ptr %i.eh, align 8, !tbaa !70 ; 2 uses
  %.not12.i.i.i123.i = icmp eq ptr %.val.i.i122.i, null
  %i.js = lshr i64 %i.jr, 32
  %i.jt = trunc nuw i64 %i.js to i32              ; 4 uses
  %i.ju = trunc i64 %i.jr to i32                  ; 4 uses
  %i.jv = lshr i64 %i.jq, 32
  %i.jw = trunc nuw i64 %i.jv to i32              ; 4 uses
  %i.jx = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %.not12.i.i.i123.i, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %.lr.ph.i.i.i124.i

.lr.ph.i.i.i124.i:                                ; preds = %.noexc150, %.thread7.i.i.i127.i
  %.014.i.i.i125.i = phi ptr [ %i.kp, %.thread7.i.i.i127.i ], [ %i.eh, %.noexc150 ] ; 2 uses
  %.0813.i.i.i126.i = phi ptr [ %.19.i.i.i128.i, %.thread7.i.i.i127.i ], [ %.val.i.i122.i, %.noexc150 ] ; 13 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.0813.i.i.i126.i, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %.0813.i.i.i126.i, i64 44
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !278 ; 2 uses
  %i.kb = icmp slt i32 %i.ka, %i.jt
  br i1 %i.kb, label %.thread.i.i.i140.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i124.i
  %i.kc = icmp eq i32 %i.ka, %i.jt
  br i1 %i.kc, label %bb.cc, label %.thread7.i.i.i127.i

bb.cc:                                            ; preds = %bb.cb
  %i.kd = getelementptr inbounds nuw i8, ptr %.0813.i.i.i126.i, i64 40
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !279 ; 2 uses
  %i.kf = icmp slt i32 %i.ke, %i.ju
  br i1 %i.kf, label %.thread.i.i.i140.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kg = icmp eq i32 %i.ke, %i.ju
  br i1 %i.kg, label %bb.ce, label %.thread7.i.i.i127.i

bb.ce:                                            ; preds = %bb.cd
  %i.kh = getelementptr inbounds nuw i8, ptr %.0813.i.i.i126.i, i64 36
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !280 ; 2 uses
  %i.kj = icmp slt i32 %i.ki, %i.jw
  br i1 %i.kj, label %.thread.i.i.i140.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kk = icmp eq i32 %i.ki, %i.jw
  br i1 %i.kk, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i135.i, label %.thread7.i.i.i127.i

.thread.i.i.i140.i:                               ; preds = %bb.ce, %bb.cc, %.lr.ph.i.i.i124.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.0813.i.i.i126.i, i64 8
  br label %.thread7.i.i.i127.i

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i135.i: ; preds = %bb.cf
  %i.km = load i32, ptr %i.jy, align 4, !tbaa !281
  %i.kn = icmp slt i32 %i.km, %i.jx
  %cond.fr1.i.i.i136.i = freeze i1 %i.kn          ; 2 uses
  %spec.select.idx.i.i.i137.i = select i1 %cond.fr1.i.i.i136.i, i64 8, i64 0
  %spec.select.i.i.i138.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i126.i, i64 %spec.select.idx.i.i.i137.i
  %spec.select11.i.i.i139.i = select i1 %cond.fr1.i.i.i136.i, ptr %.014.i.i.i125.i, ptr %.0813.i.i.i126.i
  br label %.thread7.i.i.i127.i

.thread7.i.i.i127.i:                              ; preds = %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i135.i, %.thread.i.i.i140.i, %bb.cf, %bb.cd, %bb.cb
  %i.ko = phi ptr [ %.0813.i.i.i126.i, %bb.cf ], [ %spec.select.i.i.i138.i, %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i135.i ], [ %.0813.i.i.i126.i, %bb.cb ], [ %.0813.i.i.i126.i, %bb.cd ], [ %i.kl, %.thread.i.i.i140.i ]
  %i.kp = phi ptr [ %.0813.i.i.i126.i, %bb.cf ], [ %spec.select11.i.i.i139.i, %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.i.i.i135.i ], [ %.0813.i.i.i126.i, %bb.cb ], [ %.0813.i.i.i126.i, %bb.cd ], [ %.014.i.i.i125.i, %.thread.i.i.i140.i ] ; 7 uses
  %.19.i.i.i128.i = load ptr, ptr %i.ko, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i129.i = icmp eq ptr %.19.i.i.i128.i, null
  br i1 %.not.i.i.i129.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i130.i, label %.lr.ph.i.i.i124.i, !llvm.loop !271

_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i130.i: ; preds = %.thread7.i.i.i127.i
  %.not.i.i131.i = icmp eq ptr %i.kp, %i.eh
  br i1 %.not.i.i131.i, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE13__lower_boundIS4_EENS_15__tree_iteratorIS7_PNS_11__tree_nodeIS7_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE.exit.i.i130.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 44
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !278 ; 3 uses
  %i.kt = icmp sgt i32 %i.ks, %i.jt
  br i1 %i.kt, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ku = icmp eq i32 %i.ks, %i.jt
  br i1 %i.ku, label %bb.ci, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ch, %bb.cj, %bb.cl, %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i133.i
  br label %.backedge, !llvm.loop !272

bb.ci:                                            ; preds = %bb.ch
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !279 ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, %i.ju
  br i1 %i.kx, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ky = icmp eq i32 %i.kw, %i.ju
  br i1 %i.ky, label %bb.ck, label %.backedge.backedge

bb.ck:                                            ; preds = %bb.cj
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 36
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !280 ; 2 uses
  %i.lb = icmp sgt i32 %i.la, %i.jw
  br i1 %i.lb, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lc = icmp eq i32 %i.la, %i.jw
  br i1 %i.lc, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i133.i, label %.backedge.backedge

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i133.i: ; preds = %bb.cl
  %i.ld = load i32, ptr %i.kq, align 4, !tbaa !281
  %i.le = icmp sgt i32 %i.ld, %i.jx
  br i1 %i.le, label %_ZN7Imf_3_412_GLOBAL__N_117bufferedTileWriteEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m.exit, label %.backedge.backedge

_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i: ; preds = %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.i, %bb.bi, %bb.bh, %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEE4findB8ne180100ERSA_.exit.thread.i
  %i.lf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc151:                                        ; preds = %_ZNK7Imf_3_412_GLOBAL__N_19TileCoordeqERKS1_.exit.thread.i
  store ptr null, ptr %i.lf, align 8, !tbaa !97
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %sext.i = shl i64 %i.dg, 32
  %i.lh = ashr exact i64 %sext.i, 32              ; 3 uses
  store i64 %i.lh, ptr %i.lg, align 8, !tbaa !285
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %sext159.i = shl i64 %i.di, 32
  %i.lj = ashr exact i64 %sext159.i, 32
  store i64 %i.lj, ptr %i.li, align 8, !tbaa !286
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 24 ; 2 uses
  store ptr null, ptr %i.lk, align 8, !tbaa !98
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %sext160.i = shl i64 %i.dm, 32
  %i.lm = ashr exact i64 %sext160.i, 32           ; 3 uses
  store i64 %i.lm, ptr %i.ll, align 8, !tbaa !287
  %i.ln = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lh) #24
          to label %.noexc.i unwind label %bb.cx  ; 2 uses

.noexc.i:                                         ; preds = %.noexc151
  store ptr %i.ln, ptr %i.lf, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ln, ptr readonly align 1 %i.de, i64 %i.lh, i1 false)
  %i.lo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lm) #24
          to label %bb.cm unwind label %bb.cx     ; 2 uses

bb.cm:                                            ; preds = %.noexc.i
  store ptr %i.lo, ptr %i.lk, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lo, ptr readonly align 1 %i.dk, i64 %i.lm, i1 false)
  %.val.i.i.i.i = load ptr, ptr %i.eh, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i143.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i143.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE12__find_equalIS4_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISJ_EERKT_.exit.thread.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.cm, %.preheader.i.i.i.i.backedge
  %.pr.i.i.i = phi ptr [ %.pr.i.i.i.be, %.preheader.i.i.i.i.backedge ], [ %.val.i.i.i.i, %bb.cm ] ; 15 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 32 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 44
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !278 ; 3 uses
  %i.ls = icmp slt i32 %6, %i.lr
  br i1 %i.ls, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.preheader.i.i.i.i
  %i.lt = icmp eq i32 %6, %i.lr
  br i1 %i.lt, label %bb.co, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread33.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.lu = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 40
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !279 ; 2 uses
  %i.lw = icmp slt i32 %5, %i.lv
  br i1 %i.lw, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lx = icmp eq i32 %5, %i.lv
  br i1 %i.lx, label %bb.cq, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread33.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.ly = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 36
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !280 ; 2 uses
  %i.ma = icmp slt i32 %.067274, %i.lz
  br i1 %i.ma, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mb = icmp eq i32 %.067274, %i.lz
  br i1 %i.mb, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i.i.i, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread33.i.i.i.i

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i.i.i: ; preds = %bb.cr
  %i.mc = load i32, ptr %i.lp, align 4, !tbaa !281
  %i.md = icmp slt i32 %.069270, %i.mc
  br i1 %i.md, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread.i.i.i.i, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread33.i.i.i.i

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread.i.i.i.i: ; preds = %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i.i.i, %bb.cq, %bb.co, %.preheader.i.i.i.i
  %i.me = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !182 ; 2 uses
  %.not31.i.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not31.i.i.i.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS3_12BufferedTileEEENS_19__map_value_compareIS4_S7_NS_4lessIS4_EELb1EEENS_9allocatorIS7_EEE12__find_equalIS4_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISJ_EERKT_.exit.thread.i.i.i, label %.preheader.i.i.i.i.backedge

_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread33.i.i.i.i: ; preds = %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.i.i.i.i, %bb.cr, %bb.cp, %bb.cn
  %i.mf = icmp slt i32 %i.lr, %6
  br i1 %i.mf, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.thread.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS3_RKS7_.exit.thread33.i.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 40
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !279 ; 2 uses
  %i.mi = icmp slt i32 %i.mh, %5
  br i1 %i.mi, label %_ZNKSt3__119__map_value_compareIN7Imf_3_412_GLOBAL__N_19TileCoordENS_12__value_typeIS3_PNS2_12BufferedTileEEENS_4lessIS3_EELb1EEclB8ne180100ERKS7_RKS3_.exit.thread.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mj = icmp eq i32 %i.mh, %5
  br i1 %i.mj, label %bb.cu, label %_ZNSt3__13mapIN7Imf_3_412_GLOBAL__N_19TileCoordEPNS2_12BufferedTileENS_4lessIS3_EENS_9allocatorINS_4pairIKS3_S5_EEEEEixERSA_.exit.i

bb.cu:                                            ; preds = %bb.ct
  %i.mk = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 36
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_419DeepTiledOutputFile10copyPixelsERNS_18DeepTiledInputFileE:bb.a

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i119: ; preds = %bb.av
  %i.gx = shl nuw i64 %i.gt, 2                    ; 3 uses
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #24
          to label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i122 unwind label %bb.ax ; 5 uses

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i122: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i119
  store ptr %i.gy, ptr %9, align 8, !tbaa !187
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gt ; 2 uses
  store ptr %i.gz, ptr %i.gv, align 8, !tbaa !188
  %i.ha = getelementptr i8, ptr %i.gy, i64 %i.gx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gy, i8 0, i64 %i.gx, i1 false), !tbaa !134
  store ptr %i.ha, ptr %i.gu, align 8, !tbaa !189
  %.pre168 = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.hb = ptrtoint ptr %i.gz to i64
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit126

bb.ax:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i119, %bb.aw
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %9, align 8, !tbaa !187   ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i120, label %.body124, label %.body124.sink.split

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit126: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i122, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  %i.he = phi i64 [ %i.hb, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i122 ], [ 0, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ]
  %i.hf = phi ptr [ %i.gy, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i122 ], [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ] ; 6 uses
  %i.hg = phi ptr [ %.pre168, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i122 ], [ %i.gr, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 144
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !133
  %i.hj = icmp eq i32 %i.hi, 2
  %i.hk = select i1 %i.hj, i64 %i.fv, i64 1       ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %.not.i127 = icmp eq i64 %i.hk, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not.i127, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit135, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit126
  %i.hn = icmp ugt i64 %i.hk, 4611686018427387903
  br i1 %i.hn, label %bb.az, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i128

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #27
          to label %.noexc.i132 unwind label %bb.ba

.noexc.i132:                                      ; preds = %bb.az
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i128: ; preds = %bb.ay
  %i.ho = shl nuw i64 %i.hk, 2                    ; 3 uses
  %i.hp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #24
          to label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i131 unwind label %bb.ba ; 5 uses

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i131: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i128
  store ptr %i.hp, ptr %10, align 8, !tbaa !187
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hk ; 2 uses
  store ptr %i.hq, ptr %i.hm, align 8, !tbaa !188
  %i.hr = getelementptr i8, ptr %i.hp, i64 %i.ho
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hp, i8 0, i64 %i.ho, i1 false), !tbaa !134
  store ptr %i.hr, ptr %i.hl, align 8, !tbaa !189
  %.pre169 = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.hs = ptrtoint ptr %i.hq to i64
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit135

bb.ba:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i128, %bb.az
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %10, align 8, !tbaa !187  ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i129, label %.body133, label %.body133.sink.split

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit135: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i131, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit126
  %i.hv = phi i64 [ %i.hs, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i131 ], [ 0, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit126 ]
  %i.hw = phi ptr [ %i.hp, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i131 ], [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit126 ] ; 9 uses
  %i.hx = phi ptr [ %.pre169, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i131 ], [ %i.hg, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit126 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 144
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !133 ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 2
  %i.ib = select i1 %i.ia, i64 %i.fv, i64 1       ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.not.i136 = icmp eq i64 %i.ib, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %.not.i136, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit144, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit135
  %i.ie = icmp ugt i64 %i.ib, 4611686018427387903
  br i1 %i.ie, label %bb.bc, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i137

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
          to label %.noexc.i141 unwind label %bb.bd

.noexc.i141:                                      ; preds = %bb.bc
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i137: ; preds = %bb.bb
  %i.if = shl nuw i64 %i.ib, 2                    ; 3 uses
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.if) #24
          to label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i140 unwind label %bb.bd ; 5 uses

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i140: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i137
  store ptr %i.ig, ptr %11, align 8, !tbaa !187
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ib ; 2 uses
  store ptr %i.ih, ptr %i.id, align 8, !tbaa !188
  %i.ii = getelementptr i8, ptr %i.ig, i64 %i.if
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.if, i1 false), !tbaa !134
  store ptr %i.ii, ptr %i.ic, align 8, !tbaa !189
  %.pre170 = load ptr, ptr %i.f, align 8, !tbaa !123
  %.phi.trans.insert171 = getelementptr inbounds nuw i8, ptr %.pre170, i64 144
  %.pre172 = load i32, ptr %.phi.trans.insert171, align 8, !tbaa !133
  %i.ij = ptrtoint ptr %i.ih to i64
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit144

bb.bd:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i137, %bb.bc
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.il = load ptr, ptr %11, align 8, !tbaa !187  ; 4 uses
  %.not.i.i.i138 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i138, label %.body142, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.il, ptr %i.ic, align 8, !tbaa !189
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !188
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.il to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.ip) #25
  br label %.body142

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit144: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i140, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit135
  %i.iq = phi i64 [ %i.ij, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i140 ], [ 0, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit135 ] ; 2 uses
  %i.ir = phi ptr [ %i.ig, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i140 ], [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit135 ] ; 9 uses
  %i.is = phi i32 [ %.pre172, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i140 ], [ %i.hz, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit135 ]
  %i.it = icmp eq i32 %i.is, 2
  br i1 %i.it, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit144
  invoke void @_ZNK7Imf_3_418DeepTiledInputFile12getTileOrderEPiS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.gp, ptr noundef nonnull %i.hf, ptr noundef nonnull %i.hw, ptr noundef nonnull %i.ir)
          to label %bb.bg unwind label %.thread

bb.bg:                                            ; preds = %bb.bf
  %i.iu = load i32, ptr %i.gp, align 4, !tbaa !134
  %i.iv = load ptr, ptr %i.f, align 8, !tbaa !123 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 320
  store i32 %i.iu, ptr %i.iw, align 8, !tbaa !295
  %i.ix = load i32, ptr %i.hf, align 4, !tbaa !134
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 324
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !296
  %i.iz = load i32, ptr %i.hw, align 4, !tbaa !134
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 328
  store i32 %i.iz, ptr %i.ja, align 8, !tbaa !297
  %i.jb = load i32, ptr %i.ir, align 4, !tbaa !134
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 332
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !298
  br label %bb.bh

.thread:                                          ; preds = %bb.bf
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bh:                                            ; preds = %bb.bg, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.jg = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #24
          to label %_ZNSt3__16vectorIcNS_9allocatorIcEEEC2Em.exit unwind label %bb.bi ; 4 uses

bb.bi:                                            ; preds = %bb.bh
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %12, align 8, !tbaa !193  ; 4 uses
  %.not.i.i.i145 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i145, label %bb.cd, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr %i.ji, ptr %i.je, align 8, !tbaa !194
  %i.jj = load ptr, ptr %i.jf, align 8, !tbaa !164
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = sub i64 %i.jk, %i.jl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jm) #25
  br label %bb.cd

_ZNSt3__16vectorIcNS_9allocatorIcEEEC2Em.exit:    ; preds = %bb.bh
  store ptr %i.jg, ptr %12, align 8, !tbaa !193
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 4096 ; 2 uses
  store ptr %i.jn, ptr %i.jf, align 8, !tbaa !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.jg, i8 0, i64 4096, i1 false), !tbaa !10
  store ptr %i.jn, ptr %i.je, align 8, !tbaa !194
  %.not = icmp eq i64 %i.fv, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEEC2Em.exit
  %i.jo = add i64 %i.fv, -1
  %.pre173 = load ptr, ptr %i.f, align 8, !tbaa !123
  br label %bb.bo

._crit_edge:                                      ; preds = %bb.ca
  %.pre175.a = load ptr, ptr %12, align 8, !tbaa !193 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre175.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEEC2Em.exit, %._crit_edge
  %i.jp = phi ptr [ %.pre175.a, %._crit_edge ], [ %i.jg, %_ZNSt3__16vectorIcNS_9allocatorIcEEEC2Em.exit ] ; 3 uses
  store ptr %i.jp, ptr %i.je, align 8, !tbaa !194
  %i.jq = load ptr, ptr %i.jf, align 8, !tbaa !164
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.jt) #25
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.not.i.i148 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i148, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit
  %i.ju = ptrtoint ptr %i.ir to i64
  %i.jv = sub i64 %i.iq, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.jv) #25
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEED2B8ne180100Ev.exit, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.not.i.i149 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i149, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit150, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.jw = ptrtoint ptr %i.hw to i64
  %i.jx = sub i64 %i.hv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.jx) #25
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit150

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit150: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i151 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i151, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit152, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit150
  %i.jy = ptrtoint ptr %i.hf to i64
  %i.jz = sub i64 %i.he, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.jz) #25
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit152

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit152: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit150, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.not.i.i153 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i153, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit154, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit152
  %i.ka = ptrtoint ptr %i.gp to i64
  %i.kb = sub i64 %i.go, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.kb) #25
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit154

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit154: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit152, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fy) #23
  ret void

bb.bo:                                            ; preds = %.lr.ph, %bb.ca
  %13 = phi ptr [ %.pre173, %.lr.ph ], [ %14, %bb.ca ] ; 4 uses
  %.0166 = phi i64 [ 0, %.lr.ph ], [ %i.mo, %bb.ca ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.kc = getelementptr inbounds nuw i8, ptr %13, i64 320
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !295
  store i32 %i.kd, ptr %i.a, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ke = getelementptr inbounds nuw i8, ptr %13, i64 324
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !296
  store i32 %i.kf, ptr %i.b, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 328
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !297
  store i32 %i.kh, ptr %i.c, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 332
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !298
  store i32 %i.kj, ptr %i.d, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.kk = load ptr, ptr %i.je, align 8, !tbaa !194
  %i.kl = load ptr, ptr %12, align 8, !tbaa !193  ; 2 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  store i64 %i.ko, ptr %i.e, align 8, !tbaa !161
  invoke void @_ZNK7Imf_3_418DeepTiledInputFile11rawTileDataERiS1_S1_S1_PcRm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.kl, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.kp = load i64, ptr %i.e, align 8, !tbaa !161 ; 2 uses
  %i.kq = load ptr, ptr %i.je, align 8, !tbaa !194
  %i.kr = load ptr, ptr %12, align 8, !tbaa !193  ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt                    ; 2 uses
  %i.kv = icmp ugt i64 %i.kp, %i.ku
  br i1 %i.kv, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.kw = sub nuw i64 %i.kp, %i.ku
  invoke void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.kw)
          to label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit unwind label %bb.br

_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit: ; preds = %bb.bq
  %i.kx = load ptr, ptr %12, align 8, !tbaa !193
  invoke void @_ZNK7Imf_3_418DeepTiledInputFile11rawTileDataERiS1_S1_S1_PcRm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.kx, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit._crit_edge unwind label %bb.br

_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit._crit_edge: ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit
  %.pre173.a = load ptr, ptr %12, align 8, !tbaa !193
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit, %bb.bo
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bs:                                            ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit._crit_edge, %bb.bp
  %i.kz = phi ptr [ %.pre173.a, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit._crit_edge ], [ %i.kr, %bb.bp ] ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !161 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !161
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !161
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 40 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lb
  %i.li = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.lj = load i32, ptr %i.a, align 4, !tbaa !134
  %i.lk = load i32, ptr %i.b, align 4, !tbaa !134
  %i.ll = load i32, ptr %i.c, align 4, !tbaa !134
  %i.lm = load i32, ptr %i.d, align 4, !tbaa !134
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_113writeTileDataEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m(ptr noundef %i.li, i32 noundef %i.lj, i32 noundef %i.lk, i32 noundef %i.ll, i32 noundef %i.lm, ptr noundef nonnull %i.lh, i64 noundef %i.ld, i64 noundef %i.lf, ptr noundef nonnull %i.lg, i64 noundef %i.lb)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ln = load ptr, ptr %i.f, align 8, !tbaa !123 ; 10 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 144
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !133
  %i.lq = icmp eq i32 %i.lp, 2
  br i1 %i.lq, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.lr = icmp ult i64 %.0166, %i.jo
  br i1 %i.lr, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.ls = add nuw i64 %.0166, 1                   ; 4 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !134
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 320
  store i32 %i.lu, ptr %i.lv, align 8, !tbaa !295
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.ls
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !134
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ln, i64 324
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !296
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ls
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !134
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 328
  store i32 %i.ma, ptr %i.mb, align 8, !tbaa !297
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ls
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !134
  %i.me = getelementptr inbounds nuw i8, ptr %i.ln, i64 332
  store i32 %i.md, ptr %i.me, align 4, !tbaa !298
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bt
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ln, i64 320
  %.val = load i64, ptr %i.mg, align 8, !tbaa !134
  %i.mh = getelementptr i8, ptr %i.ln, i64 328
  %.val81 = load i64, ptr %i.mh, align 8, !tbaa !134
  %i.mi = invoke fastcc { i64, i64 } @_ZN7Imf_3_419DeepTiledOutputFile4Data13nextTileCoordERKNS_12_GLOBAL__N_19TileCoordE(ptr noundef nonnull align 8 dereferenceable(385) %i.ln, i64 %.val, i64 %.val81)
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.mj = extractvalue { i64, i64 } %i.mi, 0
  %i.mk = extractvalue { i64, i64 } %i.mi, 1
  %i.ml = load ptr, ptr %i.f, align 8, !tbaa !123 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 320
  store i64 %i.mj, ptr %i.mm, align 8, !tbaa !134
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ml, i64 328
  store i64 %i.mk, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !134
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bu, %bb.bv, %bb.by
  %14 = phi ptr [ %i.ln, %bb.bu ], [ %i.ln, %bb.bv ], [ %i.ml, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.mo = add nuw i64 %.0166, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.mo, %i.fv
  br i1 %exitcond.not, label %._crit_edge, label %bb.bo, !llvm.loop !290

bb.cb:                                            ; preds = %bb.bw, %bb.bz, %bb.br
  %.pn71.pn = phi { ptr, i32 } [ %i.ky, %bb.br ], [ %i.mn, %bb.bz ], [ %i.mf, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.mp = load ptr, ptr %12, align 8, !tbaa !193  ; 4 uses
  %.not.i.i155 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i155, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.mp, ptr %i.je, align 8, !tbaa !194
  %i.mq = load ptr, ptr %i.jf, align 8, !tbaa !164
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mp to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.mt) #25
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bi, %bb.bj, %bb.cb, %bb.cc
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.jh, %bb.bi ], [ %.pn71.pn, %bb.cc ], [ %i.jh, %bb.bj ], [ %.pn71.pn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.not.i.i157 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i157, label %.body142, label %bb.ce

bb.ce:                                            ; preds = %.thread, %bb.cd
  %.pn71.pn.pn.pn201 = phi { ptr, i32 } [ %i.jd, %.thread ], [ %.pn71.pn.pn, %bb.cd ]
  %i.mu = ptrtoint ptr %i.ir to i64
  %i.mv = sub i64 %i.iq, %i.mu
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.mv) #25
  %.pre174 = load ptr, ptr %10, align 8, !tbaa !187
  br label %.body142

.body142:                                         ; preds = %bb.ce, %bb.cd, %bb.be, %bb.bd
  %i.mw = phi ptr [ %i.hw, %bb.bd ], [ %.pre174, %bb.ce ], [ %i.hw, %bb.be ], [ %i.hw, %bb.cd ] ; 2 uses
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ik, %bb.bd ], [ %.pn71.pn.pn.pn201, %bb.ce ], [ %i.ik, %bb.be ], [ %.pn71.pn.pn, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.not.i.i159 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i159, label %.body133, label %.body133.sink.split

.body133.sink.split:                              ; preds = %.body142, %bb.ba
  %.sink207 = phi ptr [ %i.hu, %bb.ba ], [ %i.mw, %.body142 ] ; 3 uses
  %.pn71.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ht, %bb.ba ], [ %.pn71.pn.pn.pn.pn, %.body142 ]
  store ptr %.sink207, ptr %i.hl, align 8, !tbaa !189
  %i.mx = load ptr, ptr %i.hm, align 8, !tbaa !188
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %.sink207 to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %.sink207, i64 noundef %i.na) #25
  br label %.body133

.body133:                                         ; preds = %.body133.sink.split, %.body142, %bb.ba
  %.pn71.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.ba ], [ %.pn71.pn.pn.pn.pn, %.body142 ], [ %.pn71.pn.pn.pn.pn.pn.ph, %.body133.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.nb = load ptr, ptr %9, align 8, !tbaa !187   ; 2 uses
  %.not.i.i161 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i161, label %.body124, label %.body124.sink.split

.body124.sink.split:                              ; preds = %.body133, %bb.ax
  %.sink214 = phi ptr [ %i.hd, %bb.ax ], [ %i.nb, %.body133 ] ; 3 uses
  %.pn71.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.hc, %bb.ax ], [ %.pn71.pn.pn.pn.pn.pn, %.body133 ]
  store ptr %.sink214, ptr %i.gu, align 8, !tbaa !189
  %i.nc = load ptr, ptr %i.gv, align 8, !tbaa !188
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %.sink214 to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %.sink214, i64 noundef %i.nf) #25
  br label %.body124

.body124:                                         ; preds = %.body124.sink.split, %.body133, %bb.ax
  %.pn71.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ax ], [ %.pn71.pn.pn.pn.pn.pn, %.body133 ], [ %.pn71.pn.pn.pn.pn.pn.pn.ph, %.body124.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ng = load ptr, ptr %8, align 8, !tbaa !187   ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i163, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body124, %bb.au
  %.sink221 = phi ptr [ %i.gn, %bb.au ], [ %i.ng, %.body124 ] ; 3 uses
  %.pn71.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.gm, %bb.au ], [ %.pn71.pn.pn.pn.pn.pn.pn, %.body124 ]
  store ptr %.sink221, ptr %i.ge, align 8, !tbaa !189
  %i.nh = load ptr, ptr %i.gf, align 8, !tbaa !188
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %.sink221 to i64
  %i.nk = sub i64 %i.ni, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %.sink221, i64 noundef %i.nk) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body124, %bb.au
  %.pn71.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.au ], [ %.pn71.pn.pn.pn.pn.pn.pn, %.body124 ], [ %.pn71.pn.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fy) #23
  br label %bb.cf

bb.cf:                                            ; preds = %.body, %bb.aq, %bb.ai, %bb.ab, %bb.u, %bb.n, %bb.h
  %.pn71.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn69, %bb.aq ], [ %.pn67, %bb.ai ], [ %.pn65, %bb.ab ], [ %.pn63, %bb.u ], [ %.pn61, %bb.n ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %.pn71.pn.pn.pn.pn.pn.pn.pn.pn

bb.cg:                                            ; preds = %bb.an, %bb.af, %bb.y, %bb.r, %bb.k, %bb.e
  unreachable
}

declare noundef nonnull align 8 dereferenceable(25) ptr @_ZNK7Imf_3_418DeepTiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare noundef ptr @_ZNK7Imf_3_418DeepTiledInputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK7Imf_3_411ChannelListeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK7Imf_3_411TileOffsets7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN7Iex_3_48LogicExcC1ERNSt3__118basic_stringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Iex_3_48LogicExcD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #4

declare noundef i64 @_ZNK7Imf_3_418DeepTiledInputFile10totalTilesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK7Imf_3_418DeepTiledInputFile12getTileOrderEPiS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK7Imf_3_418DeepTiledInputFile11rawTileDataERiS1_S1_S1_PcRm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7Imf_3_412_GLOBAL__N_113writeTileDataEPNS_19DeepTiledOutputFile4DataEiiiiPKcmmS5_m(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 12 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !128
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.s, %bb.b ], [ %i.l, %bb.a ]  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7Imf_3_411TileOffsetsclEiiii(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  store i64 %.0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !131, !range !159, !noundef !160
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !127 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i32 %i.ac, ptr %i.h, align 4
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull %i.h, i32 noundef 4), !inline_history !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i32 %1, ptr %i.g, align 4
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !112
end_hunk_1
begin_hunk_2_@_ZNK7Imf_3_419DeepTiledOutputFile17dataWindowForTileEiiii:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !140
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !142
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !144
  invoke void @_ZN7Imf_3_417dataWindowForTileERKNS_15TileDescriptionEiiiiiiii(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Box") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i32 noundef %i.az, i32 noundef %i.bb, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  ret void

bb.m:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit24, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit23, %_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit, %bb.i, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit25
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn19 = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.bg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn21 = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %.pn19, %bb.o ]
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.g
  %.merged = phi { ptr, i32 } [ %.pn, %bb.g ], [ %.pn21, %bb.q ]
  resume { ptr, i32 } %.merged

bb.s:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #26
  unreachable

bb.t:                                             ; preds = %bb.j, %bb.d
  unreachable
}

declare void @_ZN7Imf_3_417dataWindowForTileERKNS_15TileDescriptionEiiiiiiii(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Box") align 4, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_419DeepTiledOutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__1::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__1::basic_stringstream", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !129
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  invoke void @_Z13iex_debugTrapv()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.35, i64 noundef 42)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.h

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !127
  %i.q = invoke noundef ptr @_ZNK7Imf_3_47OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit unwind label %bb.h ; 2 uses

_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #23
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit36 unwind label %bb.h

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit36: ; preds = %_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.36, i64 noundef 35)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit37 unwind label %bb.h ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit37: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit36
  %i.u = call ptr @__cxa_allocate_exception(i64 56) #23 ; 3 uses
  invoke void @_ZN7Iex_3_48LogicExcC1ERNSt3__118basic_stringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit37
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN7Iex_3_48LogicExcE, ptr nonnull @_ZN7Iex_3_48LogicExcD1Ev) #27
          to label %bb.af unwind label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit36, %_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit, %bb.d, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit37
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn31 = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.y, %bb.i ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.j ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.l:                                             ; preds = %bb.a
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7Imf_3_46HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(25) %i.f, ptr noundef nonnull @.str.37)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.l
  %i.aa = tail call ptr @__dynamic_cast(ptr nonnull %i.z, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeINS_12PreviewImageEEE, i64 0) #23 ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.m, label %_ZN7Imf_3_46Header14typedAttributeINS_14TypedAttributeINS_12PreviewImageEEEEERT_PKc.exit

bb.m:                                             ; preds = %.noexc
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 56) #23 ; 3 uses
  invoke void @_ZN7Iex_3_47TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull @.str.51)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN7Iex_3_47TypeExcE, ptr nonnull @_ZN7Iex_3_47TypeExcD1Ev) #27
          to label %.noexc38 unwind label %bb.p

.noexc38:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #23
  br label %.body

_ZN7Imf_3_46Header14typedAttributeINS_14TypedAttributeINS_12PreviewImageEEEEERT_PKc.exit: ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !309 ; 7 uses
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !310
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !311
  %i.ak = mul i32 %i.aj, %i.ah                    ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN7Imf_3_46Header14typedAttributeINS_14TypedAttributeINS_12PreviewImageEEEEERT_PKc.exit
  %i.am = ptrtoaddr ptr %i.ag to i64
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.ak, 8
  %i.an = sub i64 %i.a, %i.am
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <4 x i32>, ptr %i.ao, align 1, !tbaa !10
  %wide.load53 = load <4 x i32>, ptr %i.aq, align 1, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %wide.load, ptr %i.ap, align 1, !tbaa !10
  store <4 x i32> %wide.load53, ptr %i.ar, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader54, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader54 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader54 ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.prol
  %i.av = load i32, ptr %i.at, align 1, !tbaa !10
  store i32 %i.av, ptr %i.au, align 1, !tbaa !10
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !305

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader54
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader54 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aw = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN7Imf_3_46Header14typedAttributeINS_14TypedAttributeINS_12PreviewImageEEEEERT_PKc.exit
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 376
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !127 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !112
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef i64 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %bb.q unwind label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bi, align 1, !tbaa !10
  store i32 %i.bk, ptr %i.bj, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next
  %i.bn = load i32, ptr %i.bl, align 1, !tbaa !10
  store i32 %i.bn, ptr %i.bm, align 1, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.1
  %i.bq = load i32, ptr %i.bo, align 1, !tbaa !10
  store i32 %i.bq, ptr %i.bp, align 1, !tbaa !10
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.2
  %i.bt = load i32, ptr %i.br, align 1, !tbaa !10
  store i32 %i.bt, ptr %i.bs, align 1, !tbaa !10
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !306

bb.q:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !123 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 376
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !127 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !129
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !112
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 noundef %i.ca)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !123 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 376
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !127
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !312
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i32 noundef %i.ck)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 376
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !127 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !112
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef %i.bg)
          to label %bb.ad unwind label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7Iex_3_47BaseExcE       ; 3 uses
  %i.cy = extractvalue { ptr, i32 } %i.cx, 1
  %i.cz = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7Iex_3_47BaseExcE) #23
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  %i.db = extractvalue { ptr, i32 } %i.cx, 0
  %i.dc = tail call ptr @__cxa_begin_catch(ptr %i.db) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull @.str.38, i64 noundef 45)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit40 unwind label %bb.z

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit40: ; preds = %bb.w
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 376
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !127
  %i.dk = invoke noundef ptr @_ZNK7Imf_3_47OStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit42 unwind label %bb.z ; 2 uses

_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit42: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit40
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #23
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull %i.dk, i64 noundef %i.dl)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit44 unwind label %bb.z

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit44: ; preds = %_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit42
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit46 unwind label %bb.z

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit46: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit44
  %i.do = load ptr, ptr %i.dc, align 8, !tbaa !112
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call noundef ptr %i.dq(ptr noundef nonnull align 8 dereferenceable(56) %i.dc) #23 ; 2 uses
  %i.ds = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dr) #23
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.dr, i64 noundef %i.ds)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit48 unwind label %bb.z ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit48: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit46
  %i.du = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN7Iex_3_47BaseExc6assignERNSt3__118basic_stringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.x unwind label %bb.z       ; 0 uses

bb.x:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit48
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @__cxa_rethrow() #27
          to label %bb.af unwind label %bb.ab

bb.y:                                             ; preds = %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit46, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit44, %_ZNK7Imf_3_419DeepTiledOutputFile8fileNameEv.exit42, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit40, %bb.w, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit48
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.z ], [ %i.dv, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn29 = phi { ptr, i32 } [ %i.dx, %bb.ab ], [ %.pn, %bb.aa ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ae

bb.ad:                                            ; preds = %bb.s
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23
  ret void

.body:                                            ; preds = %bb.p, %bb.o, %bb.ac, %bb.u, %bb.t, %bb.k, %bb.f
  %.merged = phi { ptr, i32 } [ %.pn31.pn, %bb.k ], [ %i.v, %bb.f ], [ %.pn29, %bb.ac ], [ %i.cw, %bb.t ], [ %i.cx, %bb.u ], [ %i.bh, %bb.p ], [ %i.ad, %bb.o ]
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23
  resume { ptr, i32 } %.merged

bb.ae:                                            ; preds = %bb.ac
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #26
  unreachable

bb.af:                                            ; preds = %bb.x, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_419DeepTiledOutputFile9breakTileEiiiiiic(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef signext %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %8 = alloca %"class.std::__1::basic_stringstream", align 8 ; 6 uses
  store i8 %7, ptr %i.a, align 1, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7Imf_3_411TileOffsetsclEiiii(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  invoke void @_Z13iex_debugTrapv()
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.39, i64 noundef 23)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.m

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %1)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit25 unwind label %bb.m

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit25: ; preds = %bb.f
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %2)
          to label %bb.g unwind label %bb.m

end_hunk_2
