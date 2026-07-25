inline.NumInlined: 29988
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 385
loop-unroll.NumUnrolled: 431
begin_hunk_0_@_ZN6duckdb25BoxRendererImplementation19ComputeRenderWidthsERNS_6vectorINS_20RenderDataCollectionELb1ESaIS2_EEEmm:bb.a
          cleanup
  br label %.body

._crit_edge983:                                   ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit, %._crit_edge960
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 16 uses
  store i64 1, ptr %i.ez, align 8, !tbaa !399
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 16 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 7 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !150
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !152
  %.not1078 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not1078, label %._crit_edge987, label %.lr.ph986

bb.ao:                                            ; preds = %.lr.ph982, %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit
  %.sroa.0728.0980 = phi ptr [ %i.de, %.lr.ph982 ], [ %i.jf, %_ZN6duckdb30ColumnDataChunkIterationHelperD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #58
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0728.0980, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !185 ; 2 uses
  %.not.i = icmp eq ptr %i.ff, null
  br i1 %.not.i, label %bb.ap, label %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !81

bb.ap:                                            ; preds = %bb.ao
  %i.fg = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.fg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.au unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.ap
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #58
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i.i = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %21, align 8, !tbaa !16   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.fj) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #58
  br i1 %.0.i.i, label %bb.at, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #58
  br i1 %.0.i.i, label %bb.at, label %.body

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.fg) #58
  br label %.body

bb.au:                                            ; preds = %bb.ar
  unreachable

_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.av

.thread:                                          ; preds = %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit
  store i64 0, ptr %31, align 8
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !168
  br label %bb.az

bb.av:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit
  br i1 %i.dk, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !81

.noexc.i.i.i:                                     ; preds = %bb.av
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #59
          to label %.noexc292 unwind label %.loopexit.split-lp826

.noexc292:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.av
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #64
          to label %.noexc293 unwind label %.loopexit825 ; 5 uses

.noexc293:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.fm, ptr %31, align 8, !tbaa !152
  store ptr %i.fm, ptr %i.dl, align 8, !tbaa !150
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.dj ; 4 uses
  store ptr %i.fn, ptr %i.dm, align 8, !tbaa !168
  br i1 %i.dn, label %bb.aw, label %bb.ax, !prof !371

bb.aw:                                            ; preds = %.noexc293
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr align 8 %.sroa.0733.0.lcssa, i64 %i.dj, i1 false)
  br label %bb.az

bb.ax:                                            ; preds = %.noexc293
  br i1 %i.do, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fo = load i64, ptr %.sroa.0733.0.lcssa, align 8, !tbaa !33
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !33
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %.thread
  %i.fp = phi ptr [ %i.fn, %bb.aw ], [ %i.fn, %bb.ax ], [ %i.fn, %bb.ay ], [ %i.dp, %.thread ]
  store ptr %i.fp, ptr %i.dl, align 8, !tbaa !150
  invoke void @_ZNK6duckdb20ColumnDataCollection6ChunksENS_6vectorImLb1ESaImEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnDataChunkIterationHelper") align 8 %30, ptr noundef nonnull align 8 dereferenceable(112) %i.ff, ptr noundef nonnull %31)
          to label %bb.ba unwind label %bb.cf

bb.ba:                                            ; preds = %bb.az
  %i.fq = load ptr, ptr %31, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #58
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnDataChunkIterationHelper::ColumnDataChunkIterator") align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.bc unwind label %bb.ch

bb.bc:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false), !noalias !400
  invoke void @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorC1ENS_12optional_ptrIKNS_20ColumnDataCollectionELb1EEENS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(168) %33, ptr null, ptr noundef nonnull %20)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.fr = load ptr, ptr %20, align 8, !tbaa !152, !noalias !400 ; 2 uses
  %.not.i.i.i.i294 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i294, label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef nonnull %i.fr) #60
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit

bb.bf:                                            ; preds = %bb.bc
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %20, align 8, !tbaa !152, !noalias !400 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i1.i, label %.body295, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef nonnull %i.ft) #60
  br label %.body295

_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br i1 %.fr, label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit.split.us, label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit.split

_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit.split.us: ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit, %._crit_edge968.us
  %i.fu = invoke noundef zeroext i1 @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorneERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %32, ptr noundef nonnull align 8 dereferenceable(168) %33)
          to label %bb.bh unwind label %.split.us

bb.bh:                                            ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit.split.us
  br i1 %i.fu, label %bb.bi, label %.split970.us

bb.bi:                                            ; preds = %bb.bh
  %i.fv = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratordeEv(ptr noundef nonnull align 8 dereferenceable(168) %32)
          to label %.preheader824.us unwind label %.split972.us ; 3 uses

bb.bj:                                            ; preds = %.preheader824.us, %._crit_edge964.us
  %.0170966.us = phi i64 [ 0, %.preheader824.us ], [ %43, %._crit_edge964.us ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.0170966.us, ptr %i.h, align 8, !tbaa !33
  store i64 %i.gs, ptr %i.i, align 8, !tbaa !33
  %.not.i.i.i304.us = icmp ult i64 %.0170966.us, %i.gs
  br i1 %.not.i.i.i304.us, label %bb.bk, label %.noexc.i, !prof !127

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fw = getelementptr inbounds nuw [104 x i8], ptr %i.gn, i64 %.0170966.us ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 9
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !403
  %i.fz = icmp eq i8 %i.fy, 8
  br i1 %i.fz, label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.us, label %.split975.us

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.us: ; preds = %bb.bk
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !404
  %i.gc = load i64, ptr %i.gp, align 8, !tbaa !352 ; 2 uses
  %.not1077 = icmp eq i64 %i.gc, 0
  br i1 %.not1077, label %._crit_edge964.us, label %.lr.ph963.us

._crit_edge964.us:                                ; preds = %bb.bm, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.us
  %43 = add nuw i64 %.0170966.us, 1               ; 2 uses
  %exitcond1160.not = icmp eq i64 %43, %umax1159
  br i1 %exitcond1160.not, label %._crit_edge968.us, label %bb.bj, !llvm.loop !417

.lr.ph963.split.us:                               ; preds = %.lr.ph963.split.us.preheader, %bb.bm
  %i.gd = phi i64 [ %i.gi, %bb.bm ], [ %i.gc, %.lr.ph963.split.us.preheader ]
  %i.ge = phi i64 [ %i.gj, %bb.bm ], [ %.pre1166, %.lr.ph963.split.us.preheader ] ; 2 uses
  %.0173962.us = phi i64 [ %i.gk, %bb.bm ], [ 0, %.lr.ph963.split.us.preheader ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.0173962.us
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !33 ; 3 uses
  %i.gh = icmp ugt i64 %i.gg, %i.ge
  br i1 %i.gh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph963.split.us
  store i64 %i.gg, ptr %i.gz, align 8, !tbaa !33
  %.pre1167 = load i64, ptr %i.gp, align 8, !tbaa !352
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph963.split.us
  %i.gi = phi i64 [ %.pre1167, %bb.bl ], [ %i.gd, %.lr.ph963.split.us ] ; 2 uses
  %i.gj = phi i64 [ %i.gg, %bb.bl ], [ %i.ge, %.lr.ph963.split.us ]
  %i.gk = add nuw i64 %.0173962.us, 1             ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gi
  br i1 %i.gl, label %.lr.ph963.split.us, label %._crit_edge964.us, !llvm.loop !418

.preheader824.us:                                 ; preds = %bb.bi
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gn = load ptr, ptr %i.fv, align 8, !tbaa !419 ; 2 uses
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 2 uses
  %.pre = load ptr, ptr %i.gm, align 8, !tbaa !420
  %i.gq = ptrtoint ptr %.pre to i64
  %i.gr = sub i64 %i.gq, %i.go
  %i.gs = sdiv exact i64 %i.gr, 104               ; 2 uses
  br label %bb.bj

.lr.ph963.us:                                     ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.us
  %i.gt = load ptr, ptr %i.ds, align 8, !tbaa !150
  %i.gu = load ptr, ptr %i.dr, align 8, !tbaa !152 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = ashr exact i64 %i.gx, 3                 ; 2 uses
  %.not.i.i.i308.us = icmp ult i64 %.0170966.us, %i.gy
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.0170966.us ; 2 uses
  br i1 %.not.i.i.i308.us, label %.lr.ph963.split.us.preheader, label %.noexc.i583, !prof !127

.lr.ph963.split.us.preheader:                     ; preds = %.lr.ph963.us
  %.pre1166 = load i64, ptr %i.gz, align 8, !tbaa !33
  br label %.lr.ph963.split.us

._crit_edge968.us:                                ; preds = %._crit_edge964.us
  %i.ha = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorppEv(ptr noundef nonnull align 8 dereferenceable(168) %32)
          to label %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit.split.us unwind label %.split.us ; 0 uses

.split.us:                                        ; preds = %._crit_edge968.us, %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit.split.us
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body305

.split972.us:                                     ; preds = %bb.bi
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body305

_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit.split: ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit, %.preheader824
  %i.hd = invoke noundef zeroext i1 @_ZNK6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorneERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %32, ptr noundef nonnull align 8 dereferenceable(168) %33)
          to label %bb.bn unwind label %.split

bb.bn:                                            ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper3endEv.exit.split
  br i1 %i.hd, label %bb.ci, label %.split970.us

.split970.us:                                     ; preds = %bb.bn, %bb.bh
  %i.he = load ptr, ptr %i.dt, align 8, !tbaa !376 ; 3 uses
  %.not.i.i297 = icmp eq ptr %i.he, null
  br i1 %.not.i.i297, label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i: ; preds = %.split970.us
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.he) #58
  call void @_ZdlPv(ptr noundef nonnull %i.he) #60
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit

_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit: ; preds = %.split970.us, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i
  %i.hf = load ptr, ptr %i.du, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i547 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i547, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.hf) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.bo, %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit
  %i.hg = load ptr, ptr %i.dw, align 8, !tbaa !350 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i548

.lr.ph.i.i.i.i.i.i548:                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %.lr.ph.i.i.i.i.i.i548
  %.06.i.i.i.i.i.i = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i.i548 ], [ %i.hg, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
  %i.hh = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !120 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hi) #58
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #60
  %.not.i.i.i.i.i.i549 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i.i549, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i548, !llvm.loop !351

_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i548, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.hj = load ptr, ptr %i.dv, align 8, !tbaa !342
  %i.hk = load i64, ptr %i.dx, align 8, !tbaa !344
  %i.hl = shl i64 %i.hk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hj, i8 0, i64 %i.hl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  %i.hm = load ptr, ptr %i.dv, align 8, !tbaa !342 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.dy
  br i1 %i.hn, label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.hm) #60
  br label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i

_ZN6duckdb20ChunkManagementStateD2Ev.exit.i:      ; preds = %bb.bp, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ho = load ptr, ptr %i.dz, align 8, !tbaa !78 ; 8 uses
  %.not.i.i.i1.i550 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i1.i550, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.hp, align 8, !tbaa !71
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !73
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !35
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #58, !inline_history !378
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !35
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #58, !inline_history !378
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit

bb.bs:                                            ; preds = %bb.bq
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i551 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i.i.i551, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i = phi i32 [ %i.hs, %bb.bt ], [ %i.ic, %bb.bu ]
  %i.id = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.id, label %bb.bv, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, !prof !81

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #58
  br label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit

_ZN6duckdb19ColumnDataScanStateD2Ev.exit:         ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i, %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #58
  %i.ie = load ptr, ptr %i.ea, align 8, !tbaa !376 ; 3 uses
  %.not.i.i298 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i298, label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit300, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i299

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i299: ; preds = %_ZN6duckdb19ColumnDataScanStateD2Ev.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ie) #58
  call void @_ZdlPv(ptr noundef nonnull %i.ie) #60
  br label %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit300

_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit300: ; preds = %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i299
  %i.if = load ptr, ptr %i.eb, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i552 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i552, label %_ZNSt6vectorImSaImEED2Ev.exit.i553, label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit300
  call void @_ZdlPv(ptr noundef nonnull %i.if) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i553

_ZNSt6vectorImSaImEED2Ev.exit.i553:               ; preds = %bb.bw, %_ZN6duckdb30ColumnDataChunkIterationHelper23ColumnDataChunkIteratorD2Ev.exit300
  %i.ig = load ptr, ptr %i.ed, align 8, !tbaa !350 ; 2 uses
  %.not5.i.i.i.i.i.i554 = icmp eq ptr %i.ig, null
  br i1 %.not5.i.i.i.i.i.i554, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i558, label %.lr.ph.i.i.i.i.i.i555

.lr.ph.i.i.i.i.i.i555:                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i553, %.lr.ph.i.i.i.i.i.i555
  %.06.i.i.i.i.i.i556 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i.i555 ], [ %i.ig, %_ZNSt6vectorImSaImEED2Ev.exit.i553 ] ; 3 uses
  %i.ih = load ptr, ptr %.06.i.i.i.i.i.i556, align 8, !tbaa !120 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i556, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ii) #58
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i556) #60
  %.not.i.i.i.i.i.i557 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i.i557, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i558, label %.lr.ph.i.i.i.i.i.i555, !llvm.loop !351

_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i558: ; preds = %.lr.ph.i.i.i.i.i.i555, %_ZNSt6vectorImSaImEED2Ev.exit.i553
  %i.ij = load ptr, ptr %i.ec, align 8, !tbaa !342
  %i.ik = load i64, ptr %i.ee, align 8, !tbaa !344
  %i.il = shl i64 %i.ik, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ij, i8 0, i64 %i.il, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  %i.im = load ptr, ptr %i.ec, align 8, !tbaa !342 ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.ef
  br i1 %i.in, label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i559, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i558
  call void @_ZdlPv(ptr noundef %i.im) #60
  br label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i559

_ZN6duckdb20ChunkManagementStateD2Ev.exit.i559:   ; preds = %bb.bx, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i558
  %i.io = load ptr, ptr %i.eg, align 8, !tbaa !78 ; 8 uses
  %.not.i.i.i1.i560 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i1.i560, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit564, label %bb.by

bb.by:                                            ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i559
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
end_hunk_0
