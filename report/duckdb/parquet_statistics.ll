inline.NumInlined: 975
inline.NumDeleted: 448
begin_hunk_0_@_ZN6duckdb22ParquetStatisticsUtils25TransformColumnStatisticsERKNS_19ParquetColumnSchemaERKNS_6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS6_EEEb:bb.a
          cleanup
  br label %bb.gm

bb.at:                                            ; preds = %bb.ao
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.au:                                            ; preds = %bb.ap
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke fastcc void @"_ZN6duckdb11TypeVisitor12VisitReplaceIZNS_22ParquetStatisticsUtils25TransformColumnStatisticsERKNS_19ParquetColumnSchemaERKNS_6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS8_EEEbE3$_0EENS_11LogicalTypeERKSE_OT_"(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.aw unwind label %bb.bf

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN6duckdb12VariantStats14CreateShreddedERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.bf = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb12VariantStats16GetShreddedStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %17)
          to label %bb.ay unwind label %bb.bh     ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.bg = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %i.bf, i64 noundef 1)
          to label %bb.az unwind label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.bh = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %i.bf, i64 noundef 0)
          to label %bb.ba unwind label %bb.bj

bb.ba:                                            ; preds = %bb.az
  %i.bi = invoke noundef nonnull align 8 dereferenceable(157) ptr @_ZNK6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef 1)
          to label %bb.bb unwind label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN6duckdb22ParquetStatisticsUtils25TransformColumnStatisticsERKNS_19ParquetColumnSchemaERKNS_6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS6_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %18, ptr noundef nonnull align 8 dereferenceable(157) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3)
          to label %bb.bc unwind label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  %i.bj = load ptr, ptr %18, align 8, !tbaa !68
  %i.bk = invoke fastcc noundef zeroext i1 @_ZN6duckdbL22ConvertUnshreddedStatsERNS_14BaseStatisticsENS_12optional_ptrIS0_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(128) %i.bg, ptr %i.bj)
          to label %bb.bd unwind label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.bk, label %bb.bn, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr null, ptr %0, align 8, !tbaa !65
  br label %bb.by

bb.bf:                                            ; preds = %bb.av
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bg:                                            ; preds = %bb.aw
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bh:                                            ; preds = %bb.ax
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bi:                                            ; preds = %bb.ay
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bj:                                            ; preds = %bb.az
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bk:                                            ; preds = %bb.ba
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bl:                                            ; preds = %bb.bb
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bm:                                            ; preds = %bb.bc
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bn:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN6duckdb22ParquetStatisticsUtils25TransformColumnStatisticsERKNS_19ParquetColumnSchemaERKNS_6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS6_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(157) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.bt = load ptr, ptr %19, align 8, !tbaa !68
  %i.bu = invoke fastcc noundef zeroext i1 @_ZN6duckdbL20ConvertShreddedStatsERNS_14BaseStatisticsENS_12optional_ptrIS0_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(128) %i.bh, ptr %i.bt)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.bu, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store ptr null, ptr %0, align 8, !tbaa !65
  br label %bb.bw

bb.br:                                            ; preds = %bb.bn
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bo
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #22
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bp
  invoke void @_ZN6duckdb14BaseStatistics12SetHasNoNullEv(ptr noundef nonnull align 8 dereferenceable(128) %17)
          to label %bb.bu unwind label %bb.bs

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN6duckdb14BaseStatistics10SetHasNullEv(ptr noundef nonnull align 8 dereferenceable(128) %17)
          to label %bb.bv unwind label %bb.bs

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %17)
          to label %bb.bw unwind label %bb.bs

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.by

bb.bx:                                            ; preds = %bb.bs, %bb.br
  %.pn173 = phi { ptr, i32 } [ %i.bw, %bb.bs ], [ %i.bv, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.be
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bx, %bb.bm
  %.pn173.pn = phi { ptr, i32 } [ %.pn173, %bb.bx ], [ %i.bs, %bb.bm ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #22
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bl
  %.pn173.pn.pn = phi { ptr, i32 } [ %.pn173.pn, %bb.bz ], [ %i.br, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bi, %bb.bk, %bb.ca, %bb.bj, %bb.bh
  %.pn173.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.bh ], [ %i.bo, %bb.bi ], [ %i.bp, %bb.bj ], [ %.pn173.pn.pn, %bb.ca ], [ %i.bq, %bb.bk ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %17) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bg
  %.pn173.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn.pn.pn, %bb.cb ], [ %i.bm, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bf
  %.pn173.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn.pn.pn.pn, %bb.cc ], [ %i.bl, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.cf

bb.ce:                                            ; preds = %bb.by, %bb.ar
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.gl

bb.cf:                                            ; preds = %bb.cd, %bb.au
  %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cd ], [ %i.be, %bb.au ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.at
  %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cf ], [ %i.bd, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.gm

bb.ch:                                            ; preds = %bb.ak
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.bz = invoke noundef nonnull align 8 dereferenceable(753) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.by)
          to label %bb.ci unwind label %bb.cl     ; 29 uses

bb.ci:                                            ; preds = %bb.ch
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 752
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = and i8 %i.cb, 2
  %.not = icmp eq i8 %i.cc, 0
  br i1 %.not, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 584
  %i.ce = load i16, ptr %i.cd, align 8
  %i.cf = and i16 %i.ce, 8
  %.not151 = icmp eq i16 %i.cf, 0
  br i1 %.not151, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  store ptr null, ptr %0, align 8, !tbaa !65
  br label %bb.gl

bb.cl:                                            ; preds = %bb.ch
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.cm:                                            ; preds = %bb.cj
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 192 ; 3 uses
  %i.ci = load i8, ptr %i.a, align 8, !tbaa !16
  switch i8 %i.ci, label %bb.ft [
    i8 28, label %bb.co
    i8 29, label %bb.co
    i8 30, label %bb.co
    i8 31, label %bb.co
    i8 11, label %bb.co
    i8 12, label %bb.co
    i8 13, label %bb.co
    i8 14, label %bb.co
    i8 15, label %bb.co
    i8 16, label %bb.co
    i8 34, label %bb.co
    i8 19, label %bb.co
    i8 32, label %bb.co
    i8 17, label %bb.co
    i8 18, label %bb.co
    i8 20, label %bb.co
    i8 21, label %bb.co
    i8 22, label %bb.cr
    i8 23, label %bb.cr
    i8 26, label %bb.cy
    i8 25, label %bb.cy
    i8 60, label %bb.es
  ]

bb.cn:                                            ; preds = %bb.gk, %bb.gj, %bb.gh, %bb.gg, %bb.gd, %bb.gc
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.co:                                            ; preds = %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN6duckdb22ParquetStatisticsUtils18CreateNumericStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaERKN14duckdb_parquet10StatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(157) %1, ptr noundef nonnull align 8 dereferenceable(155) %i.ch)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ck = load ptr, ptr %20, align 8, !tbaa !68
  store ptr null, ptr %20, align 8, !tbaa !68
  %i.cl = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  store ptr %i.ck, ptr %4, align 8, !tbaa !68
  %.not.i.i.i.i.i217 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i217, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit219, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i218

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i218: ; preds = %bb.cp
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.cl) #22
  call void @_ZdlPv(ptr noundef nonnull %i.cl) #23
  br label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit219

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit219: ; preds = %bb.cp, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i218
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gb

bb.cq:                                            ; preds = %bb.co
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gm

bb.cr:                                            ; preds = %bb.cm, %bb.cm
  br i1 %3, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke fastcc void @_ZN6duckdbL24CreateFloatingPointStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaERKN14duckdb_parquet10StatisticsE(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(157) %1, ptr noundef nonnull align 8 dereferenceable(155) %i.ch)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.cn = load ptr, ptr %21, align 8, !tbaa !68
  store ptr null, ptr %21, align 8, !tbaa !68
  %i.co = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  store ptr %i.cn, ptr %4, align 8, !tbaa !68
  %.not.i.i.i.i.i220 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i220, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit222, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i221

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i221: ; preds = %bb.ct
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.co) #22
  call void @_ZdlPv(ptr noundef nonnull %i.co) #23
  br label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit222

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit222: ; preds = %bb.ct, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i221
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.gb

bb.cu:                                            ; preds = %bb.cs
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.gm

bb.cv:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZN6duckdb22ParquetStatisticsUtils18CreateNumericStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaERKN14duckdb_parquet10StatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(157) %1, ptr noundef nonnull align 8 dereferenceable(155) %i.ch)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.cq = load ptr, ptr %22, align 8, !tbaa !68
  store ptr null, ptr %22, align 8, !tbaa !68
  %i.cr = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  store ptr %i.cq, ptr %4, align 8, !tbaa !68
  %.not.i.i.i.i.i223 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i223, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit225, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i224

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i224: ; preds = %bb.cw
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.cr) #22
  call void @_ZdlPv(ptr noundef nonnull %i.cr) #23
  br label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit225

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit225: ; preds = %bb.cw, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i224
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.gb

bb.cx:                                            ; preds = %bb.cv
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.gm

bb.cy:                                            ; preds = %bb.cm, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.cz unwind label %bb.di

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN6duckdb11StringStats13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %23, ptr noundef nonnull %24)
          to label %bb.da unwind label %bb.dj

bb.da:                                            ; preds = %bb.cz
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #22
  %i.ct = load i8, ptr %i.a, align 8, !tbaa !16
  %i.cu = icmp eq i8 %i.ct, 25                    ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 346 ; 4 uses
  %i.cw = load i8, ptr %i.cv, align 2             ; 2 uses
  %i.cx = and i8 %i.cw, 32
  %.not159.a = icmp eq i8 %i.cx, 0
  br i1 %.not159.a, label %bb.dm, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 312 ; 2 uses
  %i.cz = invoke noundef zeroext i1 @_ZN6duckdb18StringColumnReader7IsValidERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i1 noundef zeroext %i.cu)
          to label %bb.dc unwind label %bb.dk

bb.dc:                                            ; preds = %bb.db
  br i1 %i.cz, label %bb.dd, label %._crit_edge260

._crit_edge260:                                   ; preds = %bb.dc
  %.pre261 = load i8, ptr %i.cv, align 2
  br label %bb.dm

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !15 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 320
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !11 ; 2 uses
  %i.dd = trunc i64 %i.dc to i32                  ; 3 uses
  store i32 %i.dd, ptr %25, align 8, !tbaa !14
  %i.de = icmp ult i32 %i.dd, 13
  %i.df = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 3 uses
  br i1 %i.de, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, i8 0, i64 12, i1 false)
  %i.dg = icmp eq i32 %i.dd, 0
  br i1 %i.dg, label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.dh = and i64 %i.dc, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 1 %i.da, i64 %i.dh, i1 false)
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.dg:                                            ; preds = %bb.dd
  %i.di = load i32, ptr %i.da, align 1
  store i32 %i.di, ptr %i.df, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.da, ptr %i.dj, align 8, !tbaa !14
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.dg, %bb.df, %bb.de
  invoke void @_ZN6duckdb11StringStats6SetMinERNS_14BaseStatisticsERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(128) %23, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.dh unwind label %bb.dl

end_hunk_0
begin_hunk_1_@_ZN6duckdb22ParquetStatisticsUtils25TransformColumnStatisticsERKNS_19ParquetColumnSchemaERKNS_6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS6_EEEb:bb.a
  br i1 %i.dw, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dx, i8 0, i64 12, i1 false)
  %i.dy = icmp eq i32 %i.dv, 0
  br i1 %i.dy, label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226.a, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.dz = and i64 %i.du, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr align 1 %i.ds, i64 %i.dz, i1 false)
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226.a

bb.ds:                                            ; preds = %bb.dp
  %i.ea = load i32, ptr %i.ds, align 1
  store i32 %i.ea, ptr %i.dx, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.ds, ptr %i.eb, align 8, !tbaa !14
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226.a

_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226.a: ; preds = %bb.ds, %bb.dr, %bb.dq
  invoke void @_ZN6duckdb11StringStats6SetMinERNS_14BaseStatisticsERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(128) %23, ptr noundef nonnull align 8 dereferenceable(16) %26)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226.a
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.dv

bb.du:                                            ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226.a
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.eq

bb.dv:                                            ; preds = %bb.dm, %bb.do, %bb.dt, %bb.dh
  %i.ed = load i8, ptr %i.cv, align 2             ; 2 uses
  %i.ee = and i8 %i.ed, 16
  %.not161 = icmp eq i8 %i.ee, 0
  br i1 %.not161, label %bb.ee, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bz, i64 280 ; 2 uses
  %i.eg = invoke noundef zeroext i1 @_ZN6duckdb18StringColumnReader7IsValidERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i1 noundef zeroext %i.cu)
          to label %bb.dx unwind label %bb.dk

bb.dx:                                            ; preds = %bb.dw
  br i1 %i.eg, label %bb.dy, label %._crit_edge262

._crit_edge262:                                   ; preds = %bb.dx
  %.pre263 = load i8, ptr %i.cv, align 2
  br label %bb.ee

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !15 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bz, i64 288
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !11 ; 2 uses
  %i.ek = trunc i64 %i.ej to i32                  ; 3 uses
  store i32 %i.ek, ptr %27, align 8, !tbaa !14
  %i.el = icmp ult i32 %i.ek, 13
  %i.em = getelementptr inbounds nuw i8, ptr %27, i64 4 ; 3 uses
  br i1 %i.el, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.em, i8 0, i64 12, i1 false)
  %i.en = icmp eq i32 %i.ek, 0
  br i1 %i.en, label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227.a, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.eo = and i64 %i.ej, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.em, ptr align 1 %i.eh, i64 %i.eo, i1 false)
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227.a

bb.eb:                                            ; preds = %bb.dy
  %i.ep = load i32, ptr %i.eh, align 1
  store i32 %i.ep, ptr %i.em, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.eh, ptr %i.eq, align 8, !tbaa !14
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227.a

_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227.a: ; preds = %bb.eb, %bb.ea, %bb.dz
  invoke void @_ZN6duckdb11StringStats6SetMaxERNS_14BaseStatisticsERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(128) %23, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227.a
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.en

bb.ed:                                            ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227.a
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.eq

bb.ee:                                            ; preds = %._crit_edge262, %bb.dv
  %i.es = phi i8 [ %.pre263, %._crit_edge262 ], [ %i.ed, %bb.dv ]
  %i.et = trunc i8 %i.es to i1
  br i1 %i.et, label %bb.ef, label %bb.en

bb.ef:                                            ; preds = %bb.ee
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bz, i64 200 ; 2 uses
  %i.ev = invoke noundef zeroext i1 @_ZN6duckdb18StringColumnReader7IsValidERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i1 noundef zeroext %i.cu)
          to label %bb.eg unwind label %bb.dk

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.ev, label %bb.eh, label %bb.en

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !15 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bz, i64 208
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !11 ; 2 uses
  %i.ez = trunc i64 %i.ey to i32                  ; 3 uses
  store i32 %i.ez, ptr %28, align 8, !tbaa !14
  %i.fa = icmp ult i32 %i.ez, 13
  %i.fb = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 3 uses
  br i1 %i.fa, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fb, i8 0, i64 12, i1 false)
  %i.fc = icmp eq i32 %i.ez, 0
  br i1 %i.fc, label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit228, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.fd = and i64 %i.ey, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fb, ptr align 1 %i.ew, i64 %i.fd, i1 false)
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit228

bb.ek:                                            ; preds = %bb.eh
  %i.fe = load i32, ptr %i.ew, align 1
  store i32 %i.fe, ptr %i.fb, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.ew, ptr %i.ff, align 8, !tbaa !14
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit228

_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit228: ; preds = %bb.ek, %bb.ej, %bb.ei
  invoke void @_ZN6duckdb11StringStats6SetMaxERNS_14BaseStatisticsERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(128) %23, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit228
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.en

bb.em:                                            ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit228
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.eq

bb.en:                                            ; preds = %bb.ee, %bb.eg, %bb.el, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %29, ptr noundef nonnull align 8 dereferenceable(128) %23)
          to label %bb.eo unwind label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.fh = load ptr, ptr %29, align 8, !tbaa !68
  store ptr null, ptr %29, align 8, !tbaa !68
  %i.fi = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  store ptr %i.fh, ptr %4, align 8, !tbaa !68
  %.not.i.i.i.i.i229 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i229, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit231, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i230

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i230: ; preds = %bb.eo
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.fi) #22
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #23
  br label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit231

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit231: ; preds = %bb.eo, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i230
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.gb

bb.ep:                                            ; preds = %bb.en
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.em, %bb.ed, %bb.du, %bb.dl, %bb.dk
  %.pn162 = phi { ptr, i32 } [ %i.fj, %bb.ep ], [ %i.er, %bb.ed ], [ %i.fg, %bb.em ], [ %i.dm, %bb.dk ], [ %i.dn, %bb.dl ], [ %i.ec, %bb.du ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %23) #22
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.dj, %bb.di
  %.pn162.pn = phi { ptr, i32 } [ %.pn162, %bb.eq ], [ %i.dl, %bb.dj ], [ %i.dk, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.gm

bb.es:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.et unwind label %bb.ez

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN6duckdb13GeometryStats13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %30, ptr noundef nonnull %31)
          to label %bb.eu unwind label %bb.fa

bb.eu:                                            ; preds = %bb.et
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #22
  %.shift = getelementptr inbounds nuw i8, ptr %i.bz, i64 585
  %36 = load i8, ptr %.shift, align 1
  %37 = trunc i8 %36 to i1
  br i1 %37, label %bb.ev, label %.loopexit

bb.ev:                                            ; preds = %bb.eu
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bz, i64 576 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 8
  %i.fm = trunc i8 %i.fl to i1
  br i1 %i.fm, label %bb.ew, label %bb.fk

bb.ew:                                            ; preds = %bb.ev
  %i.fn = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb13GeometryStats9GetExtentERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %30)
          to label %bb.ex unwind label %bb.fb     ; 8 uses

bb.ex:                                            ; preds = %bb.ew
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bz, i64 480
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !74 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bz, i64 488
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !78 ; 2 uses
  %i.fs = fcmp ugt double %i.fp, %i.fr
  br i1 %i.fs, label %bb.fc, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  store double %i.fp, ptr %i.fn, align 8, !tbaa !79
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store double %i.fr, ptr %i.ft, align 8, !tbaa !81
  br label %bb.fc

bb.ez:                                            ; preds = %bb.es
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fa:                                            ; preds = %bb.et
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #22
  br label %bb.fs

bb.fb:                                            ; preds = %bb.ew
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fc:                                            ; preds = %bb.ey, %bb.ex
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bz, i64 496
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !82 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bz, i64 504
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !83 ; 2 uses
  %i.gb = fcmp ugt double %i.fy, %i.ga
  br i1 %i.gb, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store double %i.fy, ptr %i.gc, align 8, !tbaa !84
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  store double %i.ga, ptr %i.gd, align 8, !tbaa !85
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bz, i64 544 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 8             ; 3 uses
  %i.gg = and i8 %i.gf, 3
  %or.cond.not = icmp eq i8 %i.gg, 3
  br i1 %or.cond.not, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !86 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bz, i64 520
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !87 ; 2 uses
  %i.gl = fcmp ugt double %i.gi, %i.gk
  br i1 %i.gl, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store double %i.gi, ptr %i.gm, align 8, !tbaa !88
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store double %i.gk, ptr %i.gn, align 8, !tbaa !89
  %.pre = load i8, ptr %i.ge, align 8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe
  %i.go = phi i8 [ %.pre, %bb.fg ], [ %i.gf, %bb.ff ], [ %i.gf, %bb.fe ]
  %i.gp = and i8 %i.go, 12
  %or.cond198.not = icmp eq i8 %i.gp, 12
  br i1 %or.cond198.not, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bz, i64 528
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !90 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bz, i64 536
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !91 ; 2 uses
  %i.gu = fcmp ugt double %i.gr, %i.gt
  br i1 %i.gu, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store double %i.gr, ptr %i.gv, align 8, !tbaa !92
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  store double %i.gt, ptr %i.gw, align 8, !tbaa !93
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fh, %bb.fi, %bb.fj, %bb.ev
  %i.gx = load i8, ptr %i.fk, align 8
  %i.gy = and i8 %i.gx, 2
  %.not156 = icmp eq i8 %i.gy, 0
  br i1 %.not156, label %.loopexit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bz, i64 552 ; 2 uses
  %i.ha = invoke noundef nonnull align 1 dereferenceable(4) ptr @_ZN6duckdb13GeometryStats8GetTypesERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %30)
          to label %bb.fm unwind label %bb.fo     ; 2 uses

bb.fm:                                            ; preds = %bb.fl
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !94
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bz, i64 560 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !94
  %i.he = icmp eq ptr %i.hb, %i.hd
  br i1 %i.he, label %.loopexit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  store i32 0, ptr %i.ha, align 1
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !94 ; 2 uses
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !94 ; 2 uses
  %.not252255 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not252255, label %.loopexit, label %.lr.ph258

bb.fo:                                            ; preds = %bb.fl
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.lr.ph258:                                        ; preds = %bb.fn, %.lr.ph258
  %.sroa.0241.0256 = phi ptr [ %i.hu, %.lr.ph258 ], [ %i.hf, %bb.fn ] ; 2 uses
  %i.hi = load i32, ptr %.sroa.0241.0256, align 4, !tbaa !3 ; 2 uses
  %i.hj = sdiv i32 %i.hi, 1000
  %i.hk = srem i32 %i.hj, 10
  %i.hl = srem i32 %i.hi, 1000
  %i.hm = and i32 %i.hl, 255
  %i.hn = shl nuw i32 1, %i.hm
  %i.ho = and i32 %i.hk, 255
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hp ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !14
  %i.hs = trunc i32 %i.hn to i8
  %i.ht = or i8 %i.hr, %i.hs
  store i8 %i.ht, ptr %i.hq, align 1, !tbaa !14
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0241.0256, i64 4 ; 2 uses
  %.not252.a = icmp eq ptr %i.hu, %i.hg
  br i1 %.not252.a, label %.loopexit, label %.lr.ph258

.loopexit:                                        ; preds = %.lr.ph258, %bb.fn, %bb.fm, %bb.fk, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %32, ptr noundef nonnull align 8 dereferenceable(128) %30)
          to label %bb.fp unwind label %bb.fq

bb.fp:                                            ; preds = %.loopexit
  %i.hv = load ptr, ptr %32, align 8, !tbaa !68
  store ptr null, ptr %32, align 8, !tbaa !68
  %i.hw = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  store ptr %i.hv, ptr %4, align 8, !tbaa !68
  %.not.i.i.i.i.i232 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i232, label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit234, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i233

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i233: ; preds = %bb.fp
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.hw) #22
  call void @_ZdlPv(ptr noundef nonnull %i.hw) #23
  br label %_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit234

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEaSEOS4_.exit234: ; preds = %bb.fp, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i233
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.gb

bb.fq:                                            ; preds = %.loopexit
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fo, %bb.fb
  %.pn = phi { ptr, i32 } [ %i.hx, %bb.fq ], [ %i.hh, %bb.fo ], [ %i.fw, %bb.fb ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %30) #22
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fa, %bb.ez
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.fr ], [ %i.fv, %bb.fa ], [ %i.fu, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.gm

bb.ft:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.fu unwind label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZN6duckdb14BaseStatistics13CreateUnknownENS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %33, ptr noundef nonnull %34)
          to label %bb.fv unwind label %bb.fy

bb.fv:                                            ; preds = %bb.fu
end_hunk_1
