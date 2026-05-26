inline.NumInlined: 2174
inline.NumDeleted: 1364
begin_hunk_0_@_ZN6duckdb25SingleFileTableDataWriter13FinalizeTableERKNS_15TableStatisticsERNS_13DataTableInfoERNS_18RowGroupCollectionERNS_10SerializerE:bb.a
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !250
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %i.ex, ptr %i.fa, align 8, !tbaa !251
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 4 uses
  store i64 0, ptr %i.fb, align 8, !tbaa !252
  %i.fc = load ptr, ptr %i.dv, align 8, !tbaa !100 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !100 ; 2 uses
  %.not291325 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not291325, label %._crit_edge, label %.lr.ph

bb.ar:                                            ; preds = %bb.ah
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.as:                                            ; preds = %bb.ai
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit142

bb.at:                                            ; preds = %bb.aj
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %14, align 8, !tbaa !220  ; 3 uses
  %.not.i140 = icmp eq ptr %i.fi, null
  br i1 %.not.i140, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit142, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i141

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i141: ; preds = %bb.at
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !7
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(320) %i.fi) #31, !inline_history !222
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit142

bb.au:                                            ; preds = %bb.am, %bb.al, %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.av:                                            ; preds = %bb.ao, %bb.an
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.aw:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN6duckdb12DeserializerE, i64 16), ptr %16, align 8, !tbaa !7
  store i8 0, ptr %i.ei, align 8, !tbaa !253
  invoke void @_ZN6duckdb17SerializationDataC2Ev(ptr noundef nonnull align 8 dereferenceable(616) %i.ej)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN6duckdb18BinaryDeserializerE, i64 16), ptr %16, align 8, !tbaa !7
  store ptr %12, ptr %i.ek, align 8, !tbaa !313
  store i64 0, ptr %i.el, align 8, !tbaa !315
  store i8 0, ptr %i.em, align 8, !tbaa !318
  store i16 0, ptr %i.en, align 2, !tbaa !319
  store i8 0, ptr %i.ei, align 8, !tbaa !253
  invoke void @_ZN6duckdb18BinaryDeserializer13OnObjectBeginEv(ptr noundef nonnull align 8 dereferenceable(652) %16)
          to label %_ZN6duckdb18BinaryDeserializer5BeginEv.exit unwind label %bb.bd

_ZN6duckdb18BinaryDeserializer5BeginEv.exit:      ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  invoke void @_ZN6duckdb8RowGroup11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::RowGroupPointer") align 8 %17, ptr noundef nonnull align 8 dereferenceable(632) %16)
          to label %bb.ay unwind label %bb.be

bb.ay:                                            ; preds = %_ZN6duckdb18BinaryDeserializer5BeginEv.exit
  invoke void @_ZN6duckdb18BinaryDeserializer11OnObjectEndEv(ptr noundef nonnull align 8 dereferenceable(652) %16)
          to label %_ZN6duckdb18BinaryDeserializer3EndEv.exit unwind label %bb.bf

_ZN6duckdb18BinaryDeserializer3EndEv.exit:        ; preds = %bb.ay
  %i.fo = load ptr, ptr %i.eo, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i146 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i146, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb18BinaryDeserializer3EndEv.exit
  call void @_ZdlPv(ptr noundef nonnull %i.fo) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.az, %_ZN6duckdb18BinaryDeserializer3EndEv.exit
  %i.fp = load ptr, ptr %i.ep, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fp) #29
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i: ; preds = %bb.ba, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.fq = load ptr, ptr %i.eq, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i2.i, label %_ZN6duckdb15RowGroupPointerD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #29
  br label %_ZN6duckdb15RowGroupPointerD2Ev.exit

_ZN6duckdb15RowGroupPointerD2Ev.exit:             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN6duckdb12DeserializerE, i64 16), ptr %16, align 8, !tbaa !7
  call void @_ZN6duckdb17SerializationDataD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %i.ej) #31, !inline_history !320
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.fr = add nuw i64 %.080, 1
  br label %bb.an, !llvm.loop !321

bb.bc:                                            ; preds = %bb.aw
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bd:                                            ; preds = %bb.ax
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.be:                                            ; preds = %_ZN6duckdb18BinaryDeserializer5BeginEv.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ay
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15RowGroupPointerD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %17) #31
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn103 = phi { ptr, i32 } [ %i.fv, %bb.bf ], [ %i.fu, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %bb.bg ], [ %i.ft, %bb.bd ]
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN6duckdb12DeserializerE, i64 16), ptr %16, align 8, !tbaa !7
  call void @_ZN6duckdb17SerializationDataD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %i.ej) #31, !inline_history !320
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bc
  %.pn103.pn.pn = phi { ptr, i32 } [ %.pn103.pn, %bb.bh ], [ %i.fs, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.cn

._crit_edge:                                      ; preds = %bb.bm, %bb.aq
  %i.fw = phi i64 [ 0, %bb.aq ], [ %i.gx, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  store i32 0, ptr %i.fx, align 8, !tbaa !244
  %i.fy = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr null, ptr %i.fy, align 8, !tbaa !249
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 3 uses
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !250
  %i.ga = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %i.fx, ptr %i.ga, align 8, !tbaa !251
  %i.gb = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 3 uses
  store i64 0, ptr %i.gb, align 8, !tbaa !252
  %i.gc = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !100 ; 2 uses
  %.not292327 = icmp eq ptr %i.gc, %i.ge
  br i1 %.not292327, label %._crit_edge331, label %.lr.ph330

.lr.ph:                                           ; preds = %bb.aq, %bb.bm
  %i.gf = phi i64 [ %i.gx, %bb.bm ], [ 0, %bb.aq ]
  %.sroa.0265.0326 = phi ptr [ %i.gy, %bb.bm ], [ %i.fc, %bb.aq ] ; 2 uses
  %.02022.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !322 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  %.pre.i.pre.pre.i.i = load i64, ptr %.sroa.0265.0326, align 8, !tbaa !150 ; 4 uses
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %.lr.ph ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !150 ; 2 uses
  %i.gi = icmp ult i64 %.pre.i.pre.pre.i.i, %i.gh ; 2 uses
  %.in.v.i.i.i = select i1 %i.gi, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i147, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !323

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.gi, label %._crit_edge.thread.i.i.i, label %bb.bk

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.ex, %.lr.ph ] ; 4 uses
  %i.gj = load ptr, ptr %i.ez, align 8, !tbaa !250
  %i.gk = icmp eq ptr %.019.lcssa29.i.i.i, %i.gj
  br i1 %i.gk, label %select.unfold.i.i, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.gl = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #33
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !150
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %._crit_edge.i.i.i
  %i.gm = phi i64 [ %.pre.i.i, %bb.bj ], [ %i.gh, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.bj ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.gn = icmp ult i64 %i.gm, %.pre.i.pre.pre.i.i
  br i1 %i.gn, label %select.unfold.i.i, label %bb.bm

select.unfold.i.i:                                ; preds = %bb.bk, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.bk ] ; 3 uses
  %i.go = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.ex
  br i1 %i.go, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %select.unfold.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !150
  %i.gr = icmp ult i64 %.pre.i.pre.pre.i.i, %i.gq
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.bl, %select.unfold.i.i
  %i.gs = phi i1 [ %i.gr, %bb.bl ], [ true, %select.unfold.i.i ]
  %i.gt = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc148 unwind label %bb.bn ; 2 uses

.noexc148:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store i64 %.pre.i.pre.pre.i.i, ptr %i.gu, align 8, !tbaa !150
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gs, ptr noundef nonnull %i.gt, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ex) #31
  %i.gv = load i64, ptr %i.fb, align 8, !tbaa !252
  %i.gw = add i64 %i.gv, 1                        ; 2 uses
  store i64 %i.gw, ptr %i.fb, align 8, !tbaa !252
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc148, %bb.bk
  %i.gx = phi i64 [ %i.gw, %.noexc148 ], [ %i.gf, %bb.bk ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0265.0326, i64 16 ; 2 uses
  %.not291 = icmp eq ptr %i.gy, %i.fe
  br i1 %.not291, label %._crit_edge, label %.lr.ph

bb.bn:                                            ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

._crit_edge331.loopexit:                          ; preds = %bb.bt
  %.pre = load i64, ptr %i.fb, align 8, !tbaa !252
  br label %._crit_edge331

._crit_edge331:                                   ; preds = %._crit_edge331.loopexit, %._crit_edge
  %i.ha = phi i64 [ %i.id, %._crit_edge331.loopexit ], [ 0, %._crit_edge ]
  %i.hb = phi i64 [ %.pre, %._crit_edge331.loopexit ], [ %i.fw, %._crit_edge ]
  %i.hc = icmp eq i64 %i.hb, %i.ha
  br i1 %i.hc, label %bb.bo, label %.loopexit299.a

bb.bo:                                            ; preds = %._crit_edge331
  %i.hd = load ptr, ptr %i.ez, align 8, !tbaa !250 ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.hd, %i.ex
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZStneImSt4lessImESaImEEbRKSt3setIT_T0_T1_ES9_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.bo
  %i.he = load ptr, ptr %i.fz, align 8, !tbaa !250
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bp, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.hk, %bb.bp ], [ %i.he, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.hj, %bb.bp ], [ %i.hd, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 32
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !150
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 32
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !150
  %.not.i149 = icmp eq i64 %i.hg, %i.hi
  br i1 %.not.i149, label %bb.bp, label %.loopexit299.a

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.hj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i) #33 ; 2 uses
  %i.hk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i) #33
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.ex
  br i1 %.not.i.i.i.i.i.i.i, label %_ZStneImSt4lessImESaImEEbRKSt3setIT_T0_T1_ES9_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !324

.lr.ph330:                                        ; preds = %._crit_edge, %bb.bt
  %i.hl = phi i64 [ %i.id, %bb.bt ], [ 0, %._crit_edge ]
  %.sroa.0261.0328 = phi ptr [ %i.ie, %bb.bt ], [ %i.gc, %._crit_edge ] ; 2 uses
  %.02022.i.i.i150 = load ptr, ptr %i.fy, align 8, !tbaa !322 ; 2 uses
  %.not23.i.i.i151 = icmp eq ptr %.02022.i.i.i150, null
  %.pre.i.pre.pre.i.i152 = load i64, ptr %.sroa.0261.0328, align 8, !tbaa !150 ; 4 uses
  br i1 %.not23.i.i.i151, label %._crit_edge.thread.i.i.i169, label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %.lr.ph330, %.lr.ph.i.i.i153
  %.02024.i.i.i154 = phi ptr [ %.020.i.i.i157, %.lr.ph.i.i.i153 ], [ %.02022.i.i.i150, %.lr.ph330 ] ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i154, i64 32
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !150 ; 2 uses
  %i.ho = icmp ult i64 %.pre.i.pre.pre.i.i152, %i.hn ; 2 uses
  %.in.v.i.i.i155 = select i1 %i.ho, i64 16, i64 24
  %.in.i.i.i156 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i154, i64 %.in.v.i.i.i155
  %.020.i.i.i157 = load ptr, ptr %.in.i.i.i156, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %.020.i.i.i157, null
  br i1 %.not.i.i.i158, label %._crit_edge.i.i.i159, label %.lr.ph.i.i.i153, !llvm.loop !323

._crit_edge.i.i.i159:                             ; preds = %.lr.ph.i.i.i153
  br i1 %i.ho, label %._crit_edge.thread.i.i.i169, label %bb.br

._crit_edge.thread.i.i.i169:                      ; preds = %._crit_edge.i.i.i159, %.lr.ph330
  %.019.lcssa29.i.i.i170 = phi ptr [ %.02024.i.i.i154, %._crit_edge.i.i.i159 ], [ %i.fx, %.lr.ph330 ] ; 4 uses
  %i.hp = load ptr, ptr %i.fz, align 8, !tbaa !250
  %i.hq = icmp eq ptr %.019.lcssa29.i.i.i170, %i.hp
  br i1 %i.hq, label %select.unfold.i.i166, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.thread.i.i.i169
  %i.hr = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i170) #33
  %.phi.trans.insert.i.i171 = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %.pre.i.i172 = load i64, ptr %.phi.trans.insert.i.i171, align 8, !tbaa !150
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge.i.i.i159
  %i.hs = phi i64 [ %.pre.i.i172, %bb.bq ], [ %i.hn, %._crit_edge.i.i.i159 ]
  %.019.lcssa28.i.i.i160 = phi ptr [ %.019.lcssa29.i.i.i170, %bb.bq ], [ %.02024.i.i.i154, %._crit_edge.i.i.i159 ]
  %i.ht = icmp ult i64 %i.hs, %.pre.i.pre.pre.i.i152
  br i1 %i.ht, label %select.unfold.i.i166, label %bb.bt

select.unfold.i.i166:                             ; preds = %bb.br, %._crit_edge.thread.i.i.i169
  %.sroa.4.0.i.ph.i.i167 = phi ptr [ %.019.lcssa29.i.i.i170, %._crit_edge.thread.i.i.i169 ], [ %.019.lcssa28.i.i.i160, %bb.br ] ; 3 uses
  %i.hu = icmp eq ptr %.sroa.4.0.i.ph.i.i167, %i.fx
  br i1 %i.hu, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i168, label %bb.bs

bb.bs:                                            ; preds = %select.unfold.i.i166
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i167, i64 32
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !150
  %i.hx = icmp ult i64 %.pre.i.pre.pre.i.i152, %i.hw
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i168

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i168: ; preds = %bb.bs, %select.unfold.i.i166
  %i.hy = phi i1 [ %i.hx, %bb.bs ], [ true, %select.unfold.i.i166 ]
  %i.hz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc173 unwind label %bb.bu ; 2 uses

.noexc173:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i168
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store i64 %.pre.i.pre.pre.i.i152, ptr %i.ia, align 8, !tbaa !150
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hy, ptr noundef nonnull %i.hz, ptr noundef nonnull %.sroa.4.0.i.ph.i.i167, ptr noundef nonnull align 8 dereferenceable(32) %i.fx) #31
  %i.ib = load i64, ptr %i.gb, align 8, !tbaa !252
  %i.ic = add i64 %i.ib, 1                        ; 2 uses
  store i64 %i.ic, ptr %i.gb, align 8, !tbaa !252
  br label %bb.bt

bb.bt:                                            ; preds = %.noexc173, %bb.br
  %i.id = phi i64 [ %i.ic, %.noexc173 ], [ %i.hl, %bb.br ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0261.0328, i64 16 ; 2 uses
  %.not292 = icmp eq ptr %i.ie, %i.ge
  br i1 %.not292, label %._crit_edge331.loopexit, label %.lr.ph330

bb.bu:                                            ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i168
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit299.a:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i, %._crit_edge331
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %20)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.loopexit299.a
  %i.ig = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bv
  %i.ii = load ptr, ptr %i.dv, align 8, !tbaa !100 ; 2 uses
  %i.ij = load ptr, ptr %i.fd, align 8, !tbaa !100 ; 2 uses
  %.not293332 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not293332, label %._crit_edge335, label %.lr.ph334

._crit_edge335:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177 unwind label %bb.bx ; 0 uses

bb.bw:                                            ; preds = %.loopexit299.a
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bx:                                            ; preds = %._crit_edge339, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177, %._crit_edge335, %bb.bv
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.lr.ph334:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188
  %.sroa.0257.0333 = phi ptr [ %i.jb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188 ], [ %i.ii, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 4 uses
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str.17, i64 noundef 11)
          to label %.noexc178 unwind label %bb.by ; 0 uses

.noexc178:                                        ; preds = %.lr.ph334
  %i.io = invoke noundef i64 @_ZNK6duckdb16MetaBlockPointer10GetBlockIdEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0257.0333)
          to label %.noexc179 unwind label %bb.by

.noexc179:                                        ; preds = %.noexc178
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, i64 noundef %i.io)
          to label %.noexc180 unwind label %bb.by ; 2 uses

.noexc180:                                        ; preds = %.noexc179
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.18, i64 noundef 8)
          to label %.noexc181 unwind label %bb.by ; 0 uses

.noexc181:                                        ; preds = %.noexc180
  %i.ir = invoke noundef i32 @_ZNK6duckdb16MetaBlockPointer13GetBlockIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0257.0333)
          to label %.noexc182 unwind label %bb.by

.noexc182:                                        ; preds = %.noexc181
  %i.is = zext i32 %i.ir to i64
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, i64 noundef %i.is)
          to label %.noexc183 unwind label %bb.by ; 2 uses

.noexc183:                                        ; preds = %.noexc182
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.it, ptr noundef nonnull @.str.19, i64 noundef 9)
          to label %.noexc184 unwind label %bb.by ; 0 uses

.noexc184:                                        ; preds = %.noexc183
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0257.0333, i64 8
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !130
  %i.ix = zext i32 %i.iw to i64
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.it, i64 noundef %i.ix)
          to label %.noexc185 unwind label %bb.by ; 2 uses

.noexc185:                                        ; preds = %.noexc184
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZN6duckdblsERSoRKNS_16MetaBlockPointerE.exit unwind label %bb.by ; 0 uses

_ZN6duckdblsERSoRKNS_16MetaBlockPointerE.exit:    ; preds = %.noexc185
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188: ; preds = %_ZN6duckdblsERSoRKNS_16MetaBlockPointerE.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0257.0333, i64 16 ; 2 uses
  %.not293 = icmp eq ptr %i.jb, %i.ij
  br i1 %.not293, label %._crit_edge335, label %.lr.ph334

bb.by:                                            ; preds = %_ZN6duckdblsERSoRKNS_16MetaBlockPointerE.exit, %.noexc185, %.noexc184, %.noexc183, %.noexc182, %.noexc181, %.noexc180, %.noexc179, %.noexc178, %.lr.ph334
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177: ; preds = %._crit_edge335
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str.3, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190 unwind label %bb.bx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177
  %i.je = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %i.jf = load ptr, ptr %i.gd, align 8, !tbaa !100 ; 2 uses
  %.not294336 = icmp eq ptr %i.je, %i.jf
  br i1 %.not294336, label %._crit_edge339, label %.lr.ph338

._crit_edge339:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192 unwind label %bb.bx ; 0 uses

.lr.ph338:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194
  %.sroa.0253.0337 = phi ptr [ %i.jj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194 ], [ %i.je, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190 ] ; 2 uses
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdblsERSoRKNS_16MetaBlockPointerE(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0253.0337)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %.lr.ph338
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194: ; preds = %bb.bz
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0253.0337, i64 16 ; 2 uses
  %.not294 = icmp eq ptr %i.jj, %i.jf
  br i1 %.not294, label %._crit_edge339, label %.lr.ph338

bb.ca:                                            ; preds = %bb.bz, %.lr.ph338
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192: ; preds = %._crit_edge339
  %i.jl = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(128) %20)
          to label %bb.cb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.thread

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.cc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  invoke void @__cxa_throw(ptr nonnull %i.jl, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.dl unwind label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.081 = phi i1 [ false, %bb.cd ], [ true, %bb.cc ] ; 2 uses
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jo = load ptr, ptr %21, align 8, !tbaa !153  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ce
  call void @_ZdlPv(ptr noundef %i.jo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.jr = load ptr, ptr %22, align 8, !tbaa !153  ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.cb
  %i.ju = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN6duckdb26WriteOverflowStringsToDiskD2Ev:bb.a
}

; Function Attrs: nounwind
declare void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb26WriteOverflowStringsToDiskD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6duckdb26WriteOverflowStringsToDiskD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #31
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb30UncompressedStringSegmentState9GetHandleERNS_12BlockManagerEl(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.987", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load i64, ptr %i.d, align 8, !tbaa !397
  %.not.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !43 ; 4 uses
  %.not.i.i11 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i11, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !150
  %i.i = icmp eq i64 %3, %i.h
  br i1 %i.i, label %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit, label %bb.d, !llvm.loop !399

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load i64, ptr %i.j, align 8, !tbaa !400  ; 2 uses
  %i.l = urem i64 %3, %i.k                        ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !401
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !358  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !150
  %i.s = icmp eq i64 %3, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.t = icmp eq i64 %3, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !402

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.h ], [ %i.p, %bb.g ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !43 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !150  ; 2 uses
  %i.x = urem i64 %i.w, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.x, %i.l
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !402

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !402

_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.p, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !403 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !404
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !404
  %.not.i.i.i.i12 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i12, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !405
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit
  invoke void @_ZNK6duckdb12optional_ptrINS_12BlockManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_ZN6duckdb12optional_ptrINS_12BlockManagerELb1EEdeEv.exit unwind label %bb.y

_ZN6duckdb12optional_ptrINS_12BlockManagerELb1EEdeEv.exit: ; preds = %bb.m
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !405
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb12optional_ptrINS_12BlockManagerELb1EEdeEv.exit, %.loopexit
  %i.ak = phi ptr [ %i.aj, %_ZN6duckdb12optional_ptrINS_12BlockManagerELb1EEdeEv.exit ], [ %2, %.loopexit ]
  invoke void @_ZN6duckdb12BlockManager13RegisterBlockEl(ptr dead_on_unwind writable sret(%"class.duckdb::shared_ptr.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.ak, i64 noundef %3)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  store i64 %3, ptr %4, align 8, !tbaa !411, !alias.scope !408
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !403, !noalias !408 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %0, align 8, !tbaa !404, !noalias !408
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !404, !alias.scope !408
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt9make_pairIRlRN6duckdb10shared_ptrINS1_11BlockHandleELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162, !noalias !408
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !408
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !3, !noalias !408
  br label %_ZSt9make_pairIRlRN6duckdb10shared_ptrINS1_11BlockHandleELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit

bb.r:                                             ; preds = %bb.p
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4, !noalias !408 ; 0 uses
  br label %_ZSt9make_pairIRlRN6duckdb10shared_ptrINS1_11BlockHandleELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit

_ZSt9make_pairIRlRN6duckdb10shared_ptrINS1_11BlockHandleELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit: ; preds = %bb.r, %bb.q, %bb.o
  %i.av = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IlS5_EEEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE6insertIS8_IlS3_EEENSt9enable_ifIXsr16is_constructibleISA_OT_EE5valueES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEE4typeESH_.exit unwind label %bb.z ; 0 uses

_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE6insertIS8_IlS3_EEENSt9enable_ifIXsr16is_constructibleISA_OT_EE5valueES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEE4typeESH_.exit: ; preds = %_ZSt9make_pairIRlRN6duckdb10shared_ptrINS1_11BlockHandleELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !403 ; 8 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i13, label %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE6insertIS8_IlS3_EEENSt9enable_ifIXsr16is_constructibleISA_OT_EE5valueES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEE4typeESH_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ax, align 8, !tbaa !413
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !415
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #31, !inline_history !416
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #31, !inline_history !416
  br label %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162
  %.not.i.i.i.i.i14 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i14, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.v ], [ %i.bk, %bb.w ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.x, label %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit, !prof !379

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #31
  br label %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit

_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit: ; preds = %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE6insertIS8_IlS3_EEENSt9enable_ifIXsr16is_constructibleISA_OT_EE5valueES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEE4typeESH_.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit

bb.y:                                             ; preds = %bb.m, %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZSt9make_pairIRlRN6duckdb10shared_ptrINS1_11BlockHandleELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  br label %bb.aa

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit: ; preds = %bb.l, %bb.k, %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit, %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit
  %i.bo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  ret void

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.y ], [ %i.bn, %bb.z ]
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN6duckdb12BlockManager13RegisterBlockEl(ptr dead_on_unwind writable sret(%"class.duckdb::shared_ptr.165") align 8, ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !413
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !415
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !417
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !417
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, !prof !379

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !413
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !415
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !418
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !418
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !379

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb30UncompressedStringSegmentState13RegisterBlockERNS_12BlockManagerEl(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %5 = alloca %"class.duckdb::shared_ptr.165", align 16 ; 8 uses
  %6 = alloca %"struct.std::pair.987", align 8    ; 8 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load i64, ptr %i.e, align 8, !tbaa !397
  %.not.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !43 ; 3 uses
  %.not.i.i21 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i21, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !150
  %i.j = icmp eq i64 %2, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit, label %bb.d, !llvm.loop !399

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load i64, ptr %i.k, align 8, !tbaa !400  ; 2 uses
  %i.m = urem i64 %2, %i.l                        ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !401
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !358  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !150
  %i.t = icmp eq i64 %2, %i.s
  br i1 %i.t, label %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = icmp eq i64 %2, %i.x
  br i1 %i.u, label %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !402

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %i.q, %bb.g ]
  %i.v = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !43 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !150  ; 2 uses
  %i.y = urem i64 %i.x, %i.l
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.m
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !402

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !402

_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ao unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.011 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.ac) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.011, label %bb.m, label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.011, label %bb.m, label %bb.an

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1832 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.z) #31
  br label %bb.an

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !405
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  invoke void @_ZNK6duckdb12optional_ptrINS_12BlockManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN6duckdb12optional_ptrINS_12BlockManagerELb1EEdeEv.exit unwind label %bb.ah

_ZN6duckdb12optional_ptrINS_12BlockManagerELb1EEdeEv.exit: ; preds = %bb.n
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !405
  br label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb12optional_ptrINS_12BlockManagerELb1EEdeEv.exit, %.loopexit
  %i.ai = phi ptr [ %i.ah, %_ZN6duckdb12optional_ptrINS_12BlockManagerELb1EEdeEv.exit ], [ %1, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN6duckdb12BlockManager13RegisterBlockEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.165") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, i64 noundef %2)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  store i64 %2, ptr %6, align 8, !tbaa !411, !alias.scope !419
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = load <2 x ptr>, ptr %5, align 16, !tbaa !404, !noalias !419
  store ptr null, ptr %i.ak, align 8, !tbaa !403, !noalias !419
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !404, !alias.scope !419
  store ptr null, ptr %5, align 16, !tbaa !422, !noalias !419
  %i.am = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IlS5_EEEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE6insertIS8_IlS3_EEENSt9enable_ifIXsr16is_constructibleISA_OT_EE5valueES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEE4typeESH_.exit unwind label %bb.aj ; 0 uses

_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE6insertIS8_IlS3_EEENSt9enable_ifIXsr16is_constructibleISA_OT_EE5valueES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEE4typeESH_.exit: ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !403 ; 8 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i22, label %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE6insertIS8_IlS3_EEENSt9enable_ifIXsr16is_constructibleISA_OT_EE5valueES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEE4typeESH_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ap, align 8, !tbaa !413
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !415
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #31, !inline_history !416
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #31, !inline_history !416
  br label %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162
  %.not.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.as, %bb.t ], [ %i.bc, %bb.u ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.v, label %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit, !prof !379

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #31
  br label %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit

_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit: ; preds = %_ZNSt13unordered_mapIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE6insertIS8_IlS3_EEENSt9enable_ifIXsr16is_constructibleISA_OT_EE5valueES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEE4typeESH_.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !423 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !425
  %.not.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !150
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !150
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !423
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.x:                                             ; preds = %_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev.exit
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !426 ; 4 uses
  %i.bm = ptrtoint ptr %i.bg to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.y, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #30
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.y
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #28
          to label %.noexc23 unwind label %bb.ak  ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  %i.by = load i64, ptr %i.a, align 8, !tbaa !150
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !150
  %i.bz = icmp sgt i64 %i.bo, 0
  br i1 %i.bz, label %bb.z, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.z:                                             ; preds = %.noexc23
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.z, %.noexc23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #29
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.bw, ptr %i.be, align 8, !tbaa !426
  store ptr %i.ca, ptr %i.bf, align 8, !tbaa !423
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cb, ptr %i.bh, align 8, !tbaa !425
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.w
  %i.cc = load ptr, ptr %i.ak, align 8, !tbaa !403 ; 8 uses
  %.not.i.i.i24 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i24, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cd, align 8, !tbaa !413
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !415
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #31, !inline_history !417
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #31, !inline_history !417
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162
  %.not.i.i.i.i25 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i25, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i = phi i32 [ %i.cg, %bb.ae ], [ %i.cq, %bb.af ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.ag, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, !prof !379

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #31
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.cs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #31 ; 0 uses
  ret void

bb.ah:                                            ; preds = %bb.n
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ai:                                            ; preds = %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIlN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.al

bb.ak:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i, %bb.y
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn14 = phi { ptr, i32 } [ %i.cw, %bb.ak ], [ %i.cv, %bb.aj ]
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.al ], [ %i.cu, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ah, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  %.pn18.pn = phi { ptr, i32 } [ %.pn1832, %bb.m ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn14.pn, %bb.am ], [ %i.ct, %bb.ah ]
  %i.cx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #31 ; 0 uses
  resume { ptr, i32 } %.pn18.pn

bb.ao:                                            ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1272", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !427
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !430, !noalias !427 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !433, !noalias !427 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !434

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !430, !noalias !427
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !427
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !427
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !153    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !153    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb30UncompressedStringSegmentState14GetSegmentInfoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge.i.i, label %._crit_edge.i.i10

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !161
  store i8 0, ptr %i.f, align 8, !tbaa !162
  br label %bb.ai

._crit_edge.i.i10:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !160
  store i16 8236, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 2, ptr %i.m, align 8, !tbaa !161
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i8 0, ptr %i.n, align 2, !tbaa !162
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !160, !alias.scope !435
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE

declare void @_ZN6duckdb19PersistentTableDataC1Em(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_12BlockManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !405
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
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
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IlS5_EEEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<long, std::pair<const long, duckdb::shared_ptr<duckdb::BlockHandle>>, std::allocator<std::pair<const long, duckdb::shared_ptr<duckdb::BlockHandle>>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %0, ptr %2, align 8, !tbaa !693
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %1, align 8, !tbaa !150    ; 7 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !697
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !403  ; 8 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !404
  store ptr null, ptr %i.g, align 8, !tbaa !403
  store <2 x ptr> %i.i, ptr %i.e, align 8, !tbaa !404
  store ptr null, ptr %i.f, align 8, !tbaa !422
  store ptr %i.b, ptr %i.a, align 8, !tbaa !699
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !397
  %.not.not = icmp eq i64 %i.k, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !400  ; 2 uses
  %i.n = urem i64 %i.d, %i.m                      ; 5 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !401
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !358  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.critedge27, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.032.0.in = phi ptr [ %i.r, %bb.b ], [ %.sroa.032.0, %bb.d ]
  %.sroa.032.0 = load ptr, ptr %.sroa.032.0.in, align 8, !tbaa !43 ; 4 uses
  %.not = icmp eq ptr %.sroa.032.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !150
  %i.u = icmp eq i64 %i.d, %i.t
  br i1 %i.u, label %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !700

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !400
  %i.x = urem i64 %i.d, %i.w
  br label %.critedge27

bb.f:                                             ; preds = %.thread
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !43   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !150
  %i.ab = icmp eq i64 %i.d, %i.aa
  br i1 %i.ab, label %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.ac = icmp eq i64 %i.d, %i.af
  br i1 %i.ac, label %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !402

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.y, %bb.f ]
  %i.ad = load ptr, ptr %.020.i.i, align 8, !tbaa !43 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !150 ; 2 uses
  %i.ag = urem i64 %i.af, %i.m
  %.not19.i.i = icmp eq i64 %i.ag, %i.n
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !402

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge27, !llvm.loop !402

.critedge27:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.ah = phi i64 [ %i.x, %bb.e ], [ %i.n, %.thread ], [ %i.n, %..loopexit_crit_edge21.i.i ], [ %i.n, %.lr.ph.i.i ]
  %i.ai = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ah, i64 noundef %i.d, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.critedge27
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.036.0.ph = phi ptr [ %.sroa.032.0, %bb.d ], [ %i.y, %bb.f ], [ %i.ad, %bb.g ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 8, !tbaa !413
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !415
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !701
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !701
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.o, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i, !prof !379

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.k, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i
  %.sroa.4.044 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i ], [ 1, %.critedge27 ]
  %.sroa.036.043 = phi ptr [ %.sroa.036.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i ], [ %i.ai, %.critedge27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.036.043, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !669
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !400
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !397
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #31 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !669
  invoke void @__cxa_rethrow() #30
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !400
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !401    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !358  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  store ptr %i.w, ptr %3, align 8, !tbaa !43
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !358
  store ptr %3, ptr %i.x, align 8, !tbaa !43
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !702
  store ptr %i.z, ptr %3, align 8, !tbaa !43
  store ptr %3, ptr %i.y, align 8, !tbaa !702
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !400
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !150
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !358
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !358
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !397
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !397
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !699  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !403  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !413
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !415
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !703
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !703
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !162
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit, !prof !379

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !379

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !704
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !379

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb10shared_ptrINS4_11BlockHandleELb1EEEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !702  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !702
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !43  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !150
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !358  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !702
  store ptr %i.o, ptr %.031, align 8, !tbaa !43
  store ptr %.031, ptr %i.g, align 8, !tbaa !702
  store ptr %i.g, ptr %i.m, align 8, !tbaa !358
  %i.p = load ptr, ptr %.031, align 8, !tbaa !43
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !358
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !43
  store ptr %i.r, ptr %.031, align 8, !tbaa !43
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !358
  store ptr %.031, ptr %i.s, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !705

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !401    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #29
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIlSt4pairIKlN6duckdb10shared_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !400
  store ptr %.0.i, ptr %0, align 8, !tbaa !401
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = load i64, ptr %3, align 8, !tbaa !150, !noalias !706
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !433  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !679
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !160
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !153  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !161  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !153
  %i.p = load i64, ptr %i.j, align 8, !tbaa !162
  store i64 %i.p, ptr %i.h, align 8, !tbaa !162
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !161
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !161
  store ptr %i.j, ptr %i.g, align 8, !tbaa !153
  store i64 0, ptr %i.r, align 8, !tbaa !161
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !433
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !433
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !153 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = icmp eq ptr %.pre9, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #29
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !153  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
end_hunk_2
