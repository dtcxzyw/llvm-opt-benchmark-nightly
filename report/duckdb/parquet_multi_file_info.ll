Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parquet_multi_file_info?download=true
inline.NumInlined: 5674
inline.NumDeleted: 3027
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb20ParquetMultiFileInfo10BindReaderERNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISD_EEERNS_17MultiFileBindDataE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !235 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !236 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 192               ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 288230376151711743
  br i1 %i.ak, label %.invoke.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.not79.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not79.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i.thread, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i.thread: ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %._crit_edge.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ao = shl nuw nsw i64 %i.aj, 5
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #23
          to label %.noexc70.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc70.i:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.aq = load ptr, ptr %11, align 8, !tbaa !239  ; 4 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !240 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc70.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.ap, %.noexc70.i ] ; 5 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.aq, %.noexc70.i ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !241, !alias.scope !785
  %i.at = load ptr, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !233, !alias.scope !786 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !242, !alias.scope !786 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !787
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.at, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !233, !alias.scope !785
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !243, !alias.scope !786
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !243, !alias.scope !785
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !786
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.k
  %i.bb = phi i64 [ %i.ax, %bb.k ], [ %.pre.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !242, !alias.scope !785
  store ptr %i.au, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !233, !alias.scope !786
  store i64 0, ptr %i.bc, align 8, !tbaa !242, !alias.scope !786
  store i8 0, ptr %i.au, align 8, !tbaa !243, !alias.scope !786
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i, %.noexc70.i
  %.not.i8.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aq) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i: ; preds = %bb.l, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i
  store ptr %i.ap, ptr %11, align 8, !tbaa !239
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !240
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aj
  store ptr %i.bg, ptr %i.al, align 8, !tbaa !245
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !235 ; 2 uses
  %.pre15.i = load ptr, ptr %i.ac, align 8, !tbaa !236 ; 2 uses
  %.pre20.i = ptrtoint ptr %.pre.i to i64
  %.pre21.i = ptrtoint ptr %.pre15.i to i64
  %.pre23.i = sub i64 %.pre20.i, %.pre21.i
  %.pre25.i = sdiv exact i64 %.pre23.i, 192       ; 4 uses
  %i.bh = icmp ugt i64 %.pre25.i, 384307168202282325
  br i1 %i.bh, label %.invoke.i, label %bb.m

.invoke.i:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #25
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !248
  %i.bk = load ptr, ptr %12, align 8, !tbaa !249
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 24
  %i.bp = icmp ult i64 %i.bo, %.pre25.i
  br i1 %i.bp, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !250
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.bm
  %i.bu = mul nuw nsw i64 %.pre25.i, 24
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #23
          to label %.noexc79.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc79.i:                                       ; preds = %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE11_M_allocateEm.exit.i.i
  %i.bw = load ptr, ptr %12, align 8, !tbaa !249  ; 4 uses
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !250 ; 2 uses
  %.not10.i.i.i.i.i71.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not10.i.i.i.i.i71.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i72.i

.lr.ph.i.i.i.i.i72.i:                             ; preds = %.noexc79.i, %.lr.ph.i.i.i.i.i72.i
  %.012.i.i.i.i.i73.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i72.i ], [ %i.bv, %.noexc79.i ] ; 2 uses
  %.0911.i.i.i.i.i74.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i72.i ], [ %i.bw, %.noexc79.i ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i73.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i74.i) #24
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i.i74.i) #24
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i74.i, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i73.i, i64 24
  %.not.i.i.i.i.i75.i = icmp eq ptr %i.by, %i.bx
  br i1 %.not.i.i.i.i.i75.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i72.i, !llvm.loop !2

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i72.i, %.noexc79.i
  %.not.i8.i77.i = icmp eq ptr %i.bw, null
  br i1 %.not.i8.i77.i, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bw) #26
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.bv, ptr %12, align 8, !tbaa !249
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store ptr %i.ca, ptr %i.bq, align 8, !tbaa !250
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.pre25.i
  store ptr %i.cb, ptr %i.bi, align 8, !tbaa !248
  %.pre16.i = load ptr, ptr %i.ac, align 8, !tbaa !213
  %.pre17.i = load ptr, ptr %i.ad, align 8, !tbaa !213
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, %bb.m
  %i.cc = phi ptr [ %.pre17.i, %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit.i.i ], [ %.pre.i, %bb.m ]
  %i.cd = phi ptr [ %.pre16.i, %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit.i.i ], [ %.pre15.i, %bb.m ]
  %i.ce = icmp eq ptr %i.cd, %i.cc
  br i1 %i.ce, label %._crit_edge.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i
  %i.cf = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZN6duckdb6vectorINS_23ParquetColumnDefinitionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef 0)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !260
  %i.ci = icmp eq i8 %i.ch, 13                    ; 2 uses
  %.pre18.i = load ptr, ptr %i.ad, align 8, !tbaa !235
  %.pre19.i = load ptr, ptr %i.ac, align 8, !tbaa !236
  %i.cj = icmp eq ptr %.pre18.i, %.pre19.i
  br i1 %i.cj, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.ac

._crit_edge.i:                                    ; preds = %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i.thread, %bb.p, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i
  %i.cv = phi ptr [ %i.bi, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i ], [ %i.bi, %bb.p ], [ %i.am, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i.thread ], [ %i.bi, %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit.i ]
  %.186.i = phi i1 [ false, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i ], [ %i.ci, %bb.p ], [ false, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE7reserveEm.exit.i.thread ], [ %i.ci, %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit.i ]
  %i.cw = getelementptr i8, ptr %i.n, i64 9       ; 2 uses
  %.val.i = load i8, ptr %i.cw, align 1, !tbaa !270, !range !231, !noundef !232
  %i.cx = trunc nuw i8 %.val.i to i1
  br i1 %i.cx, label %._crit_edge.i.i.i.i, label %bb.bs

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cy, ptr %6, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.cy, ptr noundef nonnull align 1 dereferenceable(15) @.str.3, i64 15, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 15, ptr %i.cz, align 8, !tbaa !242
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 31
  store i8 0, ptr %i.da, align 1, !tbaa !243
  %i.db = invoke noundef i64 @_ZN6duckdb10StringUtil6CIFindERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %.not.i.i = icmp eq i64 %i.db, -1
  %i.dc = load ptr, ptr %6, align 8, !tbaa !233   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cy
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.dc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.de = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.ab unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %6, align 8, !tbaa !233   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cy
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.dg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread.i.i: ; preds = %bb.r
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %.0.i.i = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !233   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.dk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.0.i.i, label %bb.w, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.0.i.i, label %bb.w, label %.body.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread.i.i
  %.pn123.i.i = phi { ptr, i32 } [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread.i.i ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i ]
  call void @__cxa_free_exception(ptr %i.de) #24
  br label %.body.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !250 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !248
  %.not.i.i.i = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 noundef zeroext 14)
          to label %.noexc80.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80.i:                                       ; preds = %bb.y
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !250
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !250
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit.i.i

bb.z:                                             ; preds = %bb.x
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.do, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType6BIGINTE)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit.i.i: ; preds = %bb.z, %.noexc80.i
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !240 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !245
  %.not.i21.i.i = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i21.i.i, label %bb.aa, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.dx, ptr noundef nonnull align 1 dereferenceable(16) @.str.3, i64 15, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 15, ptr %i.dy, align 8, !tbaa !242
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 31
  store i8 0, ptr %i.dz, align 1, !tbaa !243
  %i.ea = load ptr, ptr %i.dt, align 8, !tbaa !240
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store ptr %i.eb, ptr %i.dt, align 8, !tbaa !240
  br label %_ZN6duckdbL24ParseFileRowNumberOptionERNS_23MultiFileReaderBindDataERNS_14ParquetOptionsERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEE.exit.i

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit.i.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA16_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.du, ptr noundef nonnull align 1 dereferenceable(16) @.str.3)
          to label %_ZN6duckdbL24ParseFileRowNumberOptionERNS_23MultiFileReaderBindDataERNS_14ParquetOptionsERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.t
  unreachable

bb.ac:                                            ; preds = %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit.i, %.lr.ph.i
  %.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fz, %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit.i ] ; 2 uses
  %i.ec = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZN6duckdb6vectorINS_23ParquetColumnDefinitionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %.010.i)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.ee = load ptr, ptr %i.ck, align 8, !tbaa !240 ; 8 uses
  %i.ef = load ptr, ptr %i.al, align 8, !tbaa !245
  %.not.i83.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i83.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 3 uses
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !241
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !233 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !242 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.ej, ptr %i.b, align 8, !tbaa !271
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %.noexc.i.i.i, label %._crit_edge.i.i.i84.i

.noexc.i.i.i:                                     ; preds = %bb.ae
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc85.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc85.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.el, ptr %i.ee, align 8, !tbaa !233
  %i.em = load i64, ptr %i.b, align 8, !tbaa !271
  store i64 %i.em, ptr %i.eg, align 8, !tbaa !243
  br label %._crit_edge.i.i.i84.i

._crit_edge.i.i.i84.i:                            ; preds = %.noexc85.i, %bb.ae
  %i.en = phi ptr [ %i.el, %.noexc85.i ], [ %i.eg, %bb.ae ] ; 2 uses
  switch i64 %i.ej, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i84.i
  %i.eo = load i8, ptr %i.eh, align 1, !tbaa !243
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !243
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i84.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.eh, i64 %i.ej, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i84.i
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !271 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !242
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !233
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  store i8 0, ptr %i.es, align 1, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.et = load ptr, ptr %i.ck, align 8, !tbaa !240
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr %i.eu, ptr %i.ck, align 8, !tbaa !240
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i

bb.ah:                                            ; preds = %bb.ad
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 3 uses
  %i.ew = load ptr, ptr %i.cl, align 8, !tbaa !250 ; 3 uses
  %i.ex = load ptr, ptr %i.bi, align 8, !tbaa !248
  %.not.i87.i = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i87.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %.noexc88.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88.i:                                       ; preds = %bb.ai
  %i.ey = load ptr, ptr %i.cl, align 8, !tbaa !250
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.ez, ptr %i.cl, align 8, !tbaa !250
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.i

bb.aj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.i: ; preds = %bb.aj, %.noexc88.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZN6duckdb25MultiFileColumnDefinitionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(152) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 128
  %i.fb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %i.fa)
          to label %bb.al unwind label %bb.aw     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.fc = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc90.i unwind label %bb.aw ; 3 uses

.noexc90.i:                                       ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.fd)
          to label %bb.am unwind label %bb.an, !noalias !788

bb.am:                                            ; preds = %.noexc90.i
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.fc, ptr noundef nonnull %5)
          to label %bb.aq unwind label %bb.ao, !noalias !788

bb.an:                                            ; preds = %.noexc90.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #24, !noalias !788
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn.i.i = phi { ptr, i32 } [ %i.ff, %bb.ao ], [ %i.fe, %bb.an ]
  call void @_ZdlPv(ptr noundef nonnull %i.fc) #26, !noalias !788
  br label %.body91.i

bb.aq:                                            ; preds = %bb.am
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #24, !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fg = load ptr, ptr %i.cn, align 8, !tbaa !273 ; 3 uses
  store ptr %i.fc, ptr %i.cn, align 8, !tbaa !273
  %.not.i.i.i.i.i93.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i93.i, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.aq
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !207
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(56) %i.fg) #24, !inline_history !778
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i, %bb.aq
  %i.fk = load ptr, ptr %i.co, align 8, !tbaa !276 ; 3 uses
  %i.fl = load ptr, ptr %i.cp, align 8, !tbaa !277
  %.not.i96.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i96.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i
  invoke void @_ZN6duckdb25MultiFileColumnDefinitionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.fk, ptr noundef nonnull align 8 dereferenceable(152) %13)
          to label %.noexc97.i unwind label %bb.aw

.noexc97.i:                                       ; preds = %bb.ar
  %i.fm = load ptr, ptr %i.co, align 8, !tbaa !276
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 152
  store ptr %i.fn, ptr %i.co, align 8, !tbaa !276
  br label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit.i

bb.as:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit.i
  invoke void @_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr %i.fk, ptr noundef nonnull align 8 dereferenceable(152) %13)
          to label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit.i unwind label %bb.aw

_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit.i: ; preds = %bb.as, %.noexc97.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cm) #24, !inline_history !278
  %i.fo = load ptr, ptr %i.cn, align 8, !tbaa !273 ; 3 uses
  %.not.i.i99.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i99.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit.i
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !207
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(56) %i.fo) #24, !inline_history !779
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i, %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit.i
  %i.fs = load ptr, ptr %i.cr, align 8, !tbaa !279
  %i.ft = load ptr, ptr %i.cs, align 8, !tbaa !276
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb25MultiFileColumnDefinitionEEEvT_S5_(ptr noundef %i.fs, ptr noundef %i.ft)
          to label %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionEEvT_S3_.exit.i.i.i unwind label %bb.au, !inline_history !3

_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionEEvT_S3_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.fu = load ptr, ptr %i.cr, align 8, !tbaa !279 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionEEvT_S3_.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fu) #26, !inline_history !280
  br label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i.i

bb.au:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #27, !inline_history !280
  unreachable

_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i.i: ; preds = %bb.at, %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionEEvT_S3_.exit.i.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ct) #24, !inline_history !278
  %i.fx = load ptr, ptr %13, align 8, !tbaa !233  ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.cu
  br i1 %i.fy, label %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i: ; preds = %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef %i.fx) #26, !inline_history !278
  br label %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit.i

_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.fz = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.ga = load ptr, ptr %i.ad, align 8, !tbaa !235
  %i.gb = load ptr, ptr %i.ac, align 8, !tbaa !236
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = sdiv exact i64 %i.ge, 192
  %i.gg = icmp ult i64 %i.fz, %i.gf
  br i1 %i.gg, label %bb.ac, label %._crit_edge.i, !llvm.loop !780

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ai, %bb.ah, %.noexc.i.i.i, %bb.ac, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.i, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.aa, %bb.z, %bb.y, %bb.o, %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE11_M_allocateEm.exit.i.i, %.invoke.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.av:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as, %bb.ar, %bb.al, %bb.ak
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

.body91.i:                                        ; preds = %bb.aw, %bb.ap
  %.pn61.i = phi { ptr, i32 } [ %.pn.i.i, %bb.ap ], [ %i.gi, %bb.aw ]
  call void @_ZN6duckdb25MultiFileColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %13) #24
  br label %bb.ax

bb.ax:                                            ; preds = %.body91.i, %bb.av
  %.pn61.pn.i = phi { ptr, i32 } [ %.pn61.i, %.body91.i ], [ %i.gh, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body.i

_ZN6duckdbL24ParseFileRowNumberOptionERNS_23MultiFileReaderBindDataERNS_14ParquetOptionsERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEE.exit.i: ; preds = %bb.aa, %._crit_edge.i.i.i.i.i
  %i.gj = load i8, ptr %i.cw, align 1, !tbaa !270
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %._crit_edge.i.i.i, label %bb.bs

._crit_edge.i.i.i:                                ; preds = %_ZN6duckdbL24ParseFileRowNumberOptionERNS_23MultiFileReaderBindDataERNS_14ParquetOptionsERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.gl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.gl, ptr %15, align 8, !tbaa !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.gl, ptr noundef nonnull align 1 dereferenceable(15) @.str.3, i64 15, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 15, ptr %i.gm, align 8, !tbaa !242
  %i.gn = getelementptr inbounds nuw i8, ptr %15, i64 31
  store i8 0, ptr %i.gn, align 1, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 noundef zeroext 14)
          to label %bb.ay unwind label %bb.bl

bb.ay:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_ZN6duckdb25MultiFileColumnDefinitionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(152) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.az unwind label %bb.bm

bb.az:                                            ; preds = %bb.ay
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.go = load ptr, ptr %15, align 8, !tbaa !233  ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gl
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.go) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZN6duckdb5Value7INTEGEREi(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %17, i32 noundef 2147483645)
          to label %bb.ba unwind label %bb.bo

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.gr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gq, ptr noundef nonnull align 8 dereferenceable(64) %17) #24 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !240 ; 8 uses
  %i.gu = load ptr, ptr %i.al, align 8, !tbaa !245
  %.not.i107.i = icmp eq ptr %i.gt, %i.gu
  br i1 %.not.i107.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 3 uses
  store ptr %i.gv, ptr %i.gt, align 8, !tbaa !241
  %i.gw = load ptr, ptr %14, align 8, !tbaa !233  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !242 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.gy, ptr %i.a, align 8, !tbaa !271
  %i.gz = icmp ugt i64 %i.gy, 15
  br i1 %i.gz, label %.noexc.i.i110.i, label %._crit_edge.i.i.i108.i

.noexc.i.i110.i:                                  ; preds = %bb.bb
  %i.ha = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc111.i unwind label %bb.bp ; 2 uses

.noexc111.i:                                      ; preds = %.noexc.i.i110.i
  store ptr %i.ha, ptr %i.gt, align 8, !tbaa !233
  %i.hb = load i64, ptr %i.a, align 8, !tbaa !271
  store i64 %i.hb, ptr %i.gv, align 8, !tbaa !243
  br label %._crit_edge.i.i.i108.i

._crit_edge.i.i.i108.i:                           ; preds = %.noexc111.i, %bb.bb
  %i.hc = phi ptr [ %i.ha, %.noexc111.i ], [ %i.gv, %bb.bb ] ; 2 uses
  switch i64 %i.gy, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i109.i
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i108.i
  %i.hd = load i8, ptr %i.gw, align 1, !tbaa !243
  store i8 %i.hd, ptr %i.hc, align 1, !tbaa !243
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i109.i

bb.bd:                                            ; preds = %._crit_edge.i.i.i108.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hc, ptr align 1 %i.gw, i64 %i.gy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i109.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i109.i: ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i.i108.i
  %i.he = load i64, ptr %i.a, align 8, !tbaa !271 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !242
  %i.hg = load ptr, ptr %i.gt, align 8, !tbaa !233
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.he
  store i8 0, ptr %i.hh, align 1, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.hi = load ptr, ptr %i.gs, align 8, !tbaa !240
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  store ptr %i.hj, ptr %i.gs, align 8, !tbaa !240
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit113.i

bb.be:                                            ; preds = %bb.ba
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit113.i unwind label %bb.bp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit113.i: ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i109.i
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !250 ; 3 uses
  %i.hn = load ptr, ptr %i.cv, align 8, !tbaa !248
  %.not.i114.i = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i114.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit113.i
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %i.hk)
          to label %.noexc115.i unwind label %bb.bp

.noexc115.i:                                      ; preds = %bb.bf
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !250
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store ptr %i.hp, ptr %i.hl, align 8, !tbaa !250
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit117.i

bb.bg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit113.i
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %i.hk)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit117.i unwind label %bb.bp

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit117.i: ; preds = %bb.bg, %.noexc115.i
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !276 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !277
  %.not.i118.i = icmp eq ptr %i.hr, %i.ht
  br i1 %.not.i118.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit117.i
  invoke void @_ZN6duckdb25MultiFileColumnDefinitionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.hr, ptr noundef nonnull align 8 dereferenceable(152) %14)
          to label %.noexc119.i unwind label %bb.bp

.noexc119.i:                                      ; preds = %bb.bh
  %i.hu = load ptr, ptr %i.hq, align 8, !tbaa !276
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 152
  store ptr %i.hv, ptr %i.hq, align 8, !tbaa !276
  br label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit121.i

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit117.i
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 128
  invoke void @_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr %i.hr, ptr noundef nonnull align 8 dereferenceable(152) %14)
          to label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit121.i unwind label %bb.bp

_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit121.i: ; preds = %bb.bi, %.noexc119.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gq) #24, !inline_history !278
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !273 ; 3 uses
  %.not.i.i122.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i122.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i124.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i123.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i123.i: ; preds = %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit121.i
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !207
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(56) %i.hy) #24, !inline_history !779
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i124.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i124.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i123.i, %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit121.i
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !279
  %i.ie = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !276
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb25MultiFileColumnDefinitionEEEvT_S5_(ptr noundef %i.id, ptr noundef %i.if)
          to label %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionEEvT_S3_.exit.i.i125.i unwind label %bb.bk, !inline_history !3

_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionEEvT_S3_.exit.i.i125.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i124.i
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !279 ; 2 uses
  %.not.i.i.i.i126.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i126.i, label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i127.i, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionEEvT_S3_.exit.i.i125.i
  call void @_ZdlPv(ptr noundef nonnull %i.ig) #26, !inline_history !280
  br label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i127.i

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i124.i
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #27, !inline_history !280
  unreachable

_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i127.i: ; preds = %bb.bj, %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionEEvT_S3_.exit.i.i125.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hk) #24, !inline_history !278
  %i.ij = load ptr, ptr %14, align 8, !tbaa !233  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i: ; preds = %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i127.i
  call void @_ZdlPv(ptr noundef %i.ij) #26, !inline_history !278
  br label %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit131.i

_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit131.i: ; preds = %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i127.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.bs

bb.bl:                                            ; preds = %._crit_edge.i.i.i
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ay
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn.i = phi { ptr, i32 } [ %i.in, %bb.bm ], [ %i.im, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.io = load ptr, ptr %15, align 8, !tbaa !233  ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.gl
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.io) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.br

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %.noexc.i.i110.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn58.i = phi { ptr, i32 } [ %i.ir, %bb.bp ], [ %i.iq, %bb.bo ]
  call void @_ZN6duckdb25MultiFileColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %14) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i
  %.pn58.pn.i = phi { ptr, i32 } [ %.pn58.i, %bb.bq ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.body.i

bb.bs:                                            ; preds = %_ZN6duckdb25MultiFileColumnDefinitionD2Ev.exit131.i, %_ZN6duckdbL24ParseFileRowNumberOptionERNS_23MultiFileReaderBindDataERNS_14ParquetOptionsERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEE.exit.i, %._crit_edge.i
  %spec.select.i = zext i1 %.186.i to i8
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i8 %spec.select.i, ptr %i.is, align 8, !tbaa !789
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.iu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MultiFileReaderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.it)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_13MultiFileListELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !207
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  %i.iz = load ptr, ptr %i.iy, align 8
  invoke void %i.iz(ptr noundef nonnull align 8 dereferenceable(40) %i.iu, ptr noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.iw, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(57) %i.ab)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  %i.ja = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.i: ; preds = %bb.bv
  %i.jb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit.i: ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.i
  %i.jc = load ptr, ptr %12, align 8, !tbaa !249  ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !250 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.jc, %i.je
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.jf, %.lr.ph.i.i.i.i ], [ %i.jc, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit.i ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i) #24
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jf, %i.je
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i137.i = load ptr, ptr %12, align 8, !tbaa !249
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit.i
  %i.jg = phi ptr [ %.pr.i137.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.jc, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jg) #26
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.bw, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.jh = load ptr, ptr %11, align 8, !tbaa !239  ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !240 ; 2 uses
  %.not4.i.i.i138.i = icmp eq ptr %i.jh, %i.jj
  br i1 %.not4.i.i.i138.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i139.i

.lr.ph.i.i.i139.i:                                ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i140.i = phi ptr [ %i.jn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.jh, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.jk = load ptr, ptr %.05.i.i.i140.i, align 8, !tbaa !233 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i.i.i140.i, i64 16
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i139.i
  call void @_ZdlPv(ptr noundef %i.jk) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i139.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.05.i.i.i140.i, i64 32 ; 2 uses
  %.not.i.i.i141.i = icmp eq ptr %i.jn, %i.jj
  br i1 %.not.i.i.i141.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i139.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i142.i = load ptr, ptr %11, align 8, !tbaa !239
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i
  %i.jo = phi ptr [ %.pr.i142.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.jh, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i143.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i1.i143.i, label %_ZN6duckdbL10BindSchemaERNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEERNS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISC_EEERNS_17MultiFileBindDataE.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jo) #26
  br label %_ZN6duckdbL10BindSchemaERNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEERNS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISC_EEERNS_17MultiFileBindDataE.exit

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br, %bb.ax, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  %.pn61.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn61.pn.i, %bb.ax ], [ %.pn58.pn.i, %bb.br ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i ], [ %.pn123.i.i, %bb.w ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.by

bb.by:                                            ; preds = %.body.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn67.pn.i = phi { ptr, i32 } [ %.pn677.i, %bb.h ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn61.pn.pn.pn.pn.i, %.body.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn67.pn.i

bb.bz:                                            ; preds = %bb.f
  unreachable

_ZN6duckdbL10BindSchemaERNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEERNS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISC_EEERNS_17MultiFileBindDataE.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ch

bb.ca:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.jq = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15MultiFileReaderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jp)
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.js = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_13MultiFileListELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr)
  %i.jt = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_24ParquetFileReaderOptionsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 160
  call void @_ZN6duckdb15MultiFileReader10BindReaderERNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISD_EEERNS_13MultiFileListERNS_17MultiFileBindDataERNS_21BaseFileReaderOptionsERNS_16MultiFileOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::MultiFileReaderBindData") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %i.jq, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef nonnull align 8 dereferenceable(480) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull align 8 dereferenceable(152) %i.ju)
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.jw = load i64, ptr %18, align 8, !tbaa !271
  store i64 %i.jw, ptr %i.jv, align 8, !tbaa !271
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !790 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !791 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.kd = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ke = load <2 x ptr>, ptr %i.jy, align 8, !tbaa !792
  store <2 x ptr> %i.ke, ptr %i.jx, align 8, !tbaa !792
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !793
  store ptr %i.kg, ptr %i.kc, align 8, !tbaa !793
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.jz, %i.kb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ca, %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.kk, %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.jz, %bb.ca ] ; 3 uses
  %i.kh = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !233 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.kh) #26
  br label %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kk, %i.kb
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !781

_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i, %bb.ca
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jz) #26
  br label %_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i

_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.cb, %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 4 uses
  %i.kn = load ptr, ptr %i.kl, align 8, !tbaa !279 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !276
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.kr = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ks = load <2 x ptr>, ptr %i.km, align 8, !tbaa !293
  store <2 x ptr> %i.ks, ptr %i.kl, align 8, !tbaa !293
  %i.kt = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !277
  store ptr %i.ku, ptr %i.kq, align 8, !tbaa !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb25MultiFileColumnDefinitionEEEvT_S5_(ptr noundef %i.kn, ptr noundef %i.kp)
          to label %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i unwind label %bb.cd, !inline_history !6

_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZN6duckdb23MultiFileReaderBindDataaSEOS0_.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kn) #26, !inline_history !294
  br label %_ZN6duckdb23MultiFileReaderBindDataaSEOS0_.exit

bb.cd:                                            ; preds = %_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #27, !inline_history !294
  unreachable

_ZN6duckdb23MultiFileReaderBindDataaSEOS0_.exit:  ; preds = %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, %bb.cc
  %i.kx = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.ky = load i8, ptr %i.kx, align 8, !tbaa !789
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i8 %i.ky, ptr %i.kz, align 8, !tbaa !789
  %i.la = load ptr, ptr %i.km, align 8, !tbaa !279
end_hunk_0
begin_hunk_1_@_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE18MultiFileInitLocalERNS_16ExecutionContextERNS_22TableFunctionInitInputEPNS_24GlobalTableFunctionStateE:bb.a
  tail call void @_ZN6duckdb23LocalTableFunctionStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %i.c) #24, !noalias !1423
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26, !noalias !1423
  br label %common.resume

_ZN6duckdb9make_uniqINS_19MultiFileLocalStateEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.c, ptr %4, align 8, !tbaa !710, !alias.scope !1423
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19MultiFileLocalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZN6duckdb9make_uniqINS_19MultiFileLocalStateEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 1, ptr %i.p, align 8, !tbaa !1424
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19MultiFileLocalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !711
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24MultiFileReaderInterfaceESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.h unwind label %bb.o       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !207
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.513") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19MultiFileLocalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !708
  store ptr null, ptr %5, align 8, !tbaa !708
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !708 ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !708
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !207
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #24, !inline_history !1415
  %.pr = load ptr, ptr %5, align 8, !tbaa !708    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb23LocalTableFunctionStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb23LocalTableFunctionStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ag = load ptr, ptr %.pr, align 8, !tbaa !207
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #24, !inline_history !53
  br label %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZN6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb23LocalTableFunctionStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1422, !nonnull !232, !align !584
  %i.ak = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK6duckdb10unique_ptrINS_19MultiFileLocalStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit
  %i.al = invoke noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE22TryInitializeNextBatchERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateE(ptr noundef nonnull align 8 dereferenceable(512) %i.aj, ptr noundef nonnull align 8 dereferenceable(480) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(256) %3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.al, label %.thread, label %bb.q

bb.n:                                             ; preds = %bb.l, %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, %bb.f, %_ZN6duckdb9make_uniqINS_19MultiFileLocalStateEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit17

bb.p:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !708   ; 3 uses
  %.not.i15 = icmp eq ptr %i.ap, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit17, label %_ZNKSt14default_deleteIN6duckdb23LocalTableFunctionStateEEclEPS1_.exit.i16

_ZNKSt14default_deleteIN6duckdb23LocalTableFunctionStateEEclEPS1_.exit.i16: ; preds = %bb.p
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !207
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #24, !inline_history !53
  br label %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit17: ; preds = %_ZNKSt14default_deleteIN6duckdb23LocalTableFunctionStateEEclEPS1_.exit.i16, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.ao, %bb.p ], [ %i.ao, %_ZNKSt14default_deleteIN6duckdb23LocalTableFunctionStateEEclEPS1_.exit.i16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.r

.thread:                                          ; preds = %bb.m
  %i.at = load ptr, ptr %4, align 8, !tbaa !710
  store ptr %i.at, ptr %0, align 8, !tbaa !523
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileLocalStateESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.m
  store ptr null, ptr %0, align 8, !tbaa !523
  %.pr23 = load ptr, ptr %4, align 8, !tbaa !710  ; 3 uses
  %.not.i18 = icmp eq ptr %.pr23, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN6duckdb19MultiFileLocalStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19MultiFileLocalStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19MultiFileLocalStateEEclEPS1_.exit.i: ; preds = %bb.q
  %i.au = load ptr, ptr %.pr23, align 8, !tbaa !207
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(208) %.pr23) #24, !inline_history !1416
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileLocalStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19MultiFileLocalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread, %bb.q, %_ZNKSt14default_deleteIN6duckdb19MultiFileLocalStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit17, %bb.n
  %.pn13 = phi { ptr, i32 } [ %i.am, %bb.n ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb23LocalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit17 ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !710   ; 3 uses
  %.not.i19 = icmp eq ptr %i.ax, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN6duckdb19MultiFileLocalStateESt14default_deleteIS1_EED2Ev.exit21, label %_ZNKSt14default_deleteIN6duckdb19MultiFileLocalStateEEclEPS1_.exit.i20

_ZNKSt14default_deleteIN6duckdb19MultiFileLocalStateEEclEPS1_.exit.i20: ; preds = %bb.r
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !207
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(208) %i.ax) #24, !inline_history !1416
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileLocalStateESt14default_deleteIS1_EED2Ev.exit21

_ZNSt10unique_ptrIN6duckdb19MultiFileLocalStateESt14default_deleteIS1_EED2Ev.exit21: ; preds = %bb.r, %_ZNKSt14default_deleteIN6duckdb19MultiFileLocalStateEEclEPS1_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

declare void @_ZN6duckdb13TableFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaIS8_EEEPFvRNS_13ClientContextERNS_18TableFunctionInputERNS_9DataChunkEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISM_ELb1EEESE_RNS_22TableFunctionBindInputERSA_RNS7_IS6_Lb1ESaIS6_EEEEPFNSL_INS_24GlobalTableFunctionStateESN_ISY_ELb1EEESE_RNS_22TableFunctionInitInputEEPFNSL_INS_23LocalTableFunctionStateESN_IS15_ELb1EEERNS_16ExecutionContextES12_PSY_E(ptr noundef nonnull align 8 dereferenceable(544), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE20MultiFileCardinalityERNS_13ClientContextEPKNS_12FunctionDataE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.403") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1427 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.403", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::optional_idx", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_13MultiFileListELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.403") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.f = load ptr, ptr %3, align 8                ; 2 uses
  %.not52 = icmp eq ptr %i.f, null
  br i1 %.not52, label %bb.b, label %.thread50

.thread50:                                        ; preds = %bb.a
  %i.g = ptrtoint ptr %i.f to i64
  store i64 %i.g, ptr %0, align 8, !tbaa !499
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 163
  %i.i = load i8, ptr %i.h, align 1, !tbaa !407, !range !231, !noundef !232
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %.critedge.a

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !636  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !636  ; 2 uses
  %.not5357 = icmp eq ptr %i.l, %i.n
  br i1 %.not5357, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.sroa.038.059 = phi ptr [ %i.w, %bb.h ], [ %i.l, %bb.c ] ; 2 uses
  %.058 = phi i64 [ %i.v, %bb.h ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.o = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13BaseUnionDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.038.059)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke i64 %i.r(ptr noundef nonnull align 8 dereferenceable(120) %i.o)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  store i64 %i.s, ptr %4, align 8
  %.not54.a = icmp eq i64 %i.s, -1
  br i1 %.not54.a, label %.critedge, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d, %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.u = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %i.u, %.058                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.038.059, i64 16 ; 2 uses
  %.not53 = icmp eq ptr %i.w, %i.n
  br i1 %.not53, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.v, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.x = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %bb.i unwind label %bb.m       ; 4 uses

bb.i:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.x, align 8, !tbaa !495, !noalias !1428
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.0.lcssa, ptr %i.y, align 8, !tbaa !496, !noalias !1428
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i8 0, ptr %i.z, align 8, !tbaa !497, !noalias !1428
  store ptr %i.x, ptr %0, align 8, !tbaa !499, !alias.scope !1428
  br label %bb.n

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.critedge.a

.critedge.a:                                      ; preds = %.critedge, %bb.b
  %i.aa = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13MultiFileListELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %.critedge.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !207
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke { i64, i32 } %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 500)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ag = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24MultiFileReaderInterfaceESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.fca.1.extract = extractvalue { i64, i32 } %i.ae, 1
  %.not = icmp ne i32 %.fca.1.extract, 0
  %.fca.0.extract = extractvalue { i64, i32 } %i.ae, 0
  %i.ah = zext i1 %.not to i64
  %spec.select = shl i64 %.fca.0.extract, %i.ah
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !207
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.403") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(480) %2, i64 noundef %spec.select)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.critedge.a, %bb.j, %bb.l, %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i, %bb.l
  %.pr = load ptr, ptr %3, align 8, !tbaa !499    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef nonnull %.pr) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread50, %bb.n, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.o:                                             ; preds = %bb.f, %bb.m
  %.pn32.pn = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.t, %bb.f ]
  %i.am = load ptr, ptr %3, align 8, !tbaa !499   ; 2 uses
  %.not.i35 = icmp eq ptr %i.am, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit37, label %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i36

_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i36: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.am) #26
  br label %_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit37

_ZNSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EED2Ev.exit37: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb14NodeStatisticsEEclEPS1_.exit.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef double @_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE17MultiFileProgressERNS_13ClientContextEPKNS_12FunctionDataEPKNS_24GlobalTableFunctionStateE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1431 {
bb.a:
  %3 = alloca %"class.duckdb::shared_ptr.91", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !632, !nonnull !232, !align !584 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { i64, i32 } %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 100) ; 2 uses
  %.sroa.8.083 = extractvalue { i64, i32 } %i.f, 1
  %.sroa.027.084 = extractvalue { i64, i32 } %i.f, 0 ; 2 uses
  %.not85 = icmp eq i32 %.sroa.8.083, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.027.086 = phi i64 [ %.sroa.027.084, %.lr.ph ], [ %.sroa.027.0, %bb.c ] ; 2 uses
  %i.h = udiv i64 %.sroa.027.086, 100
  %i.i = load i64, ptr %i.g, align 8, !tbaa !1432
  %.not67 = icmp ult i64 %i.i, %i.h
  br i1 %.not67, label %.critedge69, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !632, !nonnull !232, !align !584 ; 2 uses
  %i.k = add i64 %.sroa.027.086, 1
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !207
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call { i64, i32 } %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.k) ; 2 uses
  %.sroa.8.0 = extractvalue { i64, i32 } %i.o, 1
  %.sroa.027.0 = extractvalue { i64, i32 } %i.o, 0 ; 2 uses
  %.not = icmp eq i32 %.sroa.8.0, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1429

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.027.0.lcssa = phi i64 [ %.sroa.027.084, %bb.a ], [ %.sroa.027.0, %bb.c ] ; 2 uses
  %i.p = icmp eq i64 %.sroa.027.0.lcssa, 0
  br i1 %i.p, label %.critedge69, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.r = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #24 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.r) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1432 ; 3 uses
  %i.u = uitofp i64 %i.t to double
  %i.v = fmul nnan double %i.u, 1.000000e+02      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %.not6187 = icmp ugt i64 %i.t, %i.x
  br i1 %.not6187, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph90

.lr.ph90:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph90, %bb.ad
  %.05189 = phi i64 [ %i.t, %.lr.ph90 ], [ %i.ce, %bb.ad ] ; 6 uses
  %.05288 = phi double [ %i.v, %.lr.ph90 ], [ %.153, %bb.ad ] ; 3 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !634
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !633
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = icmp ult i64 %.05189, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.ad, %bb.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %.052.lcssa = phi double [ %i.v, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %.05288, %bb.f ], [ %.153, %bb.ad ]
  %i.ai = uitofp i64 %.sroa.027.0.lcssa to double
  %i.aj = fdiv double %.052.lcssa, %i.ai
  %i.ak = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #24 ; 0 uses
  br label %.critedge69

bb.g:                                             ; preds = %bb.f
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %.05189)
          to label %bb.h unwind label %bb.m       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !635
  %.not77 = icmp eq ptr %i.am, null
  br i1 %.not77, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK6duckdb10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.j unwind label %bb.m       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !672
  switch i8 %i.ap, label %bb.ab [
    i8 2, label %bb.k
    i8 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.aq = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !207
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef double %i.at(ptr noundef nonnull align 8 dereferenceable(280) %i.aq, ptr noundef nonnull align 8 dereferenceable(512) %0)
          to label %bb.ab unwind label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.g, %bb.l, %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit72

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  invoke void @_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE4lockEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.91") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %3, align 8, !tbaa !368
  %.not78 = icmp eq ptr %i.ax, null
  br i1 %.not78, label %bb.t, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa
end_hunk_1
begin_hunk_2_@_ZNK6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv:bb.a
  unreachable

_ZN6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef zeroext i8 @_ZNK6duckdb11AsyncResult13GetResultTypeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11AsyncResultaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN6duckdb11AsyncResult25ExecuteTasksSynchronouslyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(280) ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1467 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.46", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !368    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EE13AssertNotNullEb.exit, !prof !297

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !233    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_15AsyncResultTypeEEEPKcT_(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb17InternalExceptionC2IJPKcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1470 {
bb.a:
  %3 = alloca %"class.std::vector.597", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !1471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1471
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !473, !noalias !1471 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !474, !noalias !1471 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !233  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #26
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !473, !noalias !1471
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #26
  br label %_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !1471
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !1471
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !233    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !233    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE22TryInitializeNextBatchERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(256) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1474 {
bb.a:
  %4 = alloca %"class.std::unique_lock", align 8  ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.46", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !718
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !719
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !720, !range !231, !noundef !232
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.bm, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit
  %i.l = load atomic i64, ptr %i.g seq_cst, align 8
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !634
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !633
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.l, %i.r
  br i1 %i.s, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE14TryGetNextFileERNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24MultiFileReaderInterfaceESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !207
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.e, %bb.c
  %i.ab = load atomic i64, ptr %i.g seq_cst, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ab)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ad = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK6duckdb10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !672
  switch i8 %i.af, label %bb.bi [
    i8 2, label %bb.m
    i8 3, label %bb.bh
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !207
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  br i1 %i.am, label %bb.r, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ao = icmp eq ptr %i.an, %i.ad
  br i1 %i.ao, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exitthread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !368 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !305 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2ERKS2_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !243
  %.not.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load i32, ptr %i.as, align 4, !tbaa !70
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !70
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2ERKS2_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2ERKS2_.exit.i: ; preds = %bb.v, %bb.u, %bb.s
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !1475
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !305 ; 8 uses
  store ptr %i.ar, ptr %i.ax, align 8, !tbaa !305
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2ERKS2_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.az, align 8, !tbaa !346
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !347
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !207
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #24, !inline_history !1472
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !207
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #24, !inline_history !1472
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exitthread-pre-split

bb.y:                                             ; preds = %bb.w
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !243
  %.not.i.i.i.i5.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i5.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.bc, %bb.z ], [ %i.bm, %bb.aa ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.ab, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exitthread-pre-split, !prof !297

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #24
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exitthread-pre-split

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exitthread-pre-split: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.x, %bb.r
  %.pr = load ptr, ptr %i.an, align 8, !tbaa !368
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exit

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exitthread-pre-split, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2ERKS2_.exit.i
  %i.bo = phi ptr [ %.pr, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exitthread-pre-split ], [ %i.ap, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2ERKS2_.exit.i ]
  %.not85 = icmp eq ptr %i.bo, null
  br i1 %.not85, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEaSERKS2_.exit
  %i.bp = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.bq unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ac
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.br = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE22TryInitializeNextBatchERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateE:bb.a
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ce = load ptr, ptr %4, align 8, !tbaa !718   ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #24 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !719
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit

_ZNSt11unique_lockISt5mutexE6unlockEv.exit:       ; preds = %bb.ak, %bb.aj
  %i.cg = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_23LocalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !207
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(280) %i.cg, ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.cm = load i64, ptr %i.bz, align 8, !tbaa !707
  %.not = icmp eq i64 %i.ca, %i.cm
  br i1 %.not, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 152
  invoke void @_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE23InitializeFileScanStateERNS_13ClientContextERNS_19MultiFileReaderDataERNS_19MultiFileLocalStateERNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.ad, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %bb.aq, %bb.ar, %bb.as, %bb.bi, %bb.bl, %bb.ai, %bb.f, %bb.g, %bb.h, %bb.i, %bb.ap, %bb.an, %bb.am, %bb.al, %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aq:                                            ; preds = %bb.q
  %i.co = atomicrmw add ptr %i.g, i64 1 seq_cst, align 8 ; 0 uses
  store i8 4, ptr %i.ae, align 8, !tbaa !672
  %i.cp = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !207
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(280) %i.cp, ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cv = load ptr, ptr %i.ad, align 8, !tbaa !368
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !514
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !305 ; 3 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i68, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12 ; 3 uses
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !243
  %.not.i.i.i.i.i69 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i69, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !70
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !70
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.dd = atomicrmw volatile add ptr %i.cz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.at
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !515 ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not6.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 3 uses
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !243
  %.not.i7.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i7.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !70 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70

bb.az:                                            ; preds = %bb.ax
  %i.dj = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i71 = phi i32 [ %i.dh, %bb.ay ], [ %i.dj, %bb.az ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i.i71, 1
  br i1 %i.dk, label %bb.ba, label %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !207
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #24, !inline_history !56
  br label %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit

_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70, %bb.ba
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !515
  store ptr null, ptr %i.ad, align 8, !tbaa !1475
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !305 ; 8 uses
  store ptr null, ptr %i.cw, align 8, !tbaa !305
  %.not.i.i.i.i72 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i72, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, label %bb.bb, !llvm.loop !1473

bb.bb:                                            ; preds = %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.dp, align 8, !tbaa !346
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !347
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !207
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #24, !inline_history !28
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !207
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #24, !inline_history !28
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !llvm.loop !1473

bb.bd:                                            ; preds = %bb.bb
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !243
  %.not.i.i.i.i.i73 = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i.i73, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74

bb.bf:                                            ; preds = %bb.bd
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i75 = phi i32 [ %i.ds, %bb.be ], [ %i.ec, %bb.bf ]
  %i.ed = icmp eq i32 %.0.i.i.i.i.i.i75, 1
  br i1 %i.ed, label %bb.bg, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !prof !297, !llvm.loop !1473

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #24
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !llvm.loop !1473

bb.bh:                                            ; preds = %bb.l
  %i.ee = atomicrmw add ptr %i.g, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !llvm.loop !1473

bb.bi:                                            ; preds = %bb.l
  %i.ef = invoke noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE15TryOpenNextFileERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ef, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, label %bb.bk, !llvm.loop !1473

bb.bk:                                            ; preds = %bb.bj
  %i.eg = load i8, ptr %i.ae, align 8, !tbaa !672
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %bb.bl, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ei = load atomic i64, ptr %i.g seq_cst, align 8
  invoke void @_ZN6duckdb17MultiFileFunctionINS_20ParquetMultiFileInfoEE11WaitForFileEmRNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(i64 noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit: ; preds = %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74, %bb.bg, %bb.bk, %bb.bl, %bb.bj, %bb.bh
  %i.ej = load i8, ptr %i.d, align 8, !tbaa !720, !range !231, !noundef !232
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, label %bb.c

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, %bb.ap, %bb.ao, %bb.i
  %.262.ph = phi i1 [ true, %bb.ap ], [ true, %bb.ao ], [ false, %bb.i ], [ false, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit ] ; 2 uses
  %i.el = load i8, ptr %i.b, align 8, !tbaa !719
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.bm, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.bm:                                            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread
  %.262108 = phi i1 [ %.262.ph, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread ], [ false, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 2 uses
  %i.en = load ptr, ptr %4, align 8, !tbaa !718   ; 2 uses
  %.not.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.en) #24 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, %bb.bm, %bb.bn
  %.262107 = phi i1 [ %.262.ph, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread ], [ %.262108, %bb.bm ], [ %.262108, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.262107

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn65.pn = phi { ptr, i32 } [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn83, %bb.ag ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ep = load i8, ptr %i.b, align 8, !tbaa !719, !range !231, !noundef !232
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.bo, label %_ZNSt11unique_lockISt5mutexED2Ev.exit79

bb.bo:                                            ; preds = %.loopexit.split-lp
  %i.er = load ptr, ptr %4, align 8, !tbaa !718   ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.er, null
  br i1 %.not.i.i78, label %_ZNSt11unique_lockISt5mutexED2Ev.exit79, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.es = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.er) #24 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit79

_ZNSt11unique_lockISt5mutexED2Ev.exit79:          ; preds = %.loopexit.split-lp, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn65.pn

bb.bq:                                            ; preds = %bb.ae
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb11AsyncResultD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1478 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !561  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !562  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !564 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9AsyncTaskEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9AsyncTaskEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #24, !inline_history !1477
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9AsyncTaskEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !561
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9AsyncTaskESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb12optional_ptrINS_23LocalTableFunctionStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1479 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.46", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !556
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !233    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
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
define linkonce_odr hidden void @_ZNK6duckdb12optional_ptrINS_24GlobalTableFunctionStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1480 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.46", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !558
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !233    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
end_hunk_3
