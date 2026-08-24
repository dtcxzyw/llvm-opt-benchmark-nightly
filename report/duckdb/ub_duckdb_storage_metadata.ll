Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_metadata?download=true
inline.NumInlined: 1642
inline.NumDeleted: 696
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6duckdb15MetadataManager20MarkBlocksAsModifiedEv:bb.a
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(144) %i.cl, i64 noundef %i.w)
  %i.cp = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #21 ; 2 uses
  %.not.i.i36 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i36, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %.noexc39

.noexc39:                                         ; preds = %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.cp) #23
  unreachable

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit
  store ptr %i.au, ptr %i.as, align 8, !tbaa !115
  br label %_ZN6duckdb6vectorIhLb1ESaIhEE5clearEv.exit.i.thread

_ZN6duckdb6vectorIhLb1ESaIhEE5clearEv.exit.i.thread: ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit.thread, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i
  %.0.lcssa.i145147149 = phi i64 [ %i.y, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit.thread ], [ %i.cb, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN6duckdb13MetadataBlock17BlocksFromIntegerEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %3, i64 noundef %.0.lcssa.i145147149)
          to label %.noexc41 unwind label %.body60.thread159

.noexc41:                                         ; preds = %_ZN6duckdb6vectorIhLb1ESaIhEE5clearEv.exit.i.thread
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !119 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 56
  %i.cs = load <2 x ptr>, ptr %3, align 16, !tbaa !39
  store <2 x ptr> %i.cs, ptr %i.ar, align 8, !tbaa !39
  %i.ct = load ptr, ptr %i.o, align 16, !tbaa !38
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !38
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc41
  tail call void @_ZdlPv(ptr noundef nonnull %i.cq) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.k, %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt11unique_lockISt5mutexE4lockEv.exit

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit
  %.sroa.084.0 = load ptr, ptr %.sroa.084.0112, align 8, !tbaa !88 ; 2 uses
  %.not = icmp eq ptr %.sroa.084.0, null
  br i1 %.not, label %._crit_edge, label %bb.c

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit, %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE5clearEv.exit
  %i.cu = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #21 ; 0 uses
  ret void

.lr.ph116:                                        ; preds = %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE5clearEv.exit, %.loopexit
  %.sroa.077.0115 = phi ptr [ %.sroa.077.0, %.loopexit ], [ %.sroa.077.0113, %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE5clearEv.exit ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.077.0115, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.077.0115, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !115 ; 2 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !119 ; 5 uses
  %.not.i43 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i43, label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %.lr.ph116
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = freeze i64 %i.db                        ; 10 uses
  %xtraiter189 = and i64 %i.dc, 1
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %.lr.ph.i44.epil.preheader, label %.lr.ph.i44.preheader.new

.lr.ph.i44.preheader.new:                         ; preds = %.lr.ph.i44.preheader
  %unroll_iter193 = and i64 %i.dc, -2
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.noexc48.1, %.lr.ph.i44.preheader.new
  %.08.i45 = phi i64 [ 0, %.lr.ph.i44.preheader.new ], [ %i.dy, %.noexc48.1 ]
  %.067.i46 = phi i64 [ 0, %.lr.ph.i44.preheader.new ], [ %i.dz, %.noexc48.1 ] ; 5 uses
  %niter194 = phi i64 [ 0, %.lr.ph.i44.preheader.new ], [ %niter194.next.1, %.noexc48.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.067.i46, ptr %i.c, align 8, !tbaa !37
  store i64 %i.dc, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i62 = icmp ult i64 %.067.i46, %i.dc
  br i1 %.not.i.i.i62, label %.noexc48, label %.noexc.i74, !prof !155

.noexc.i74:                                       ; preds = %.lr.ph.i44.epil.preheader, %.lr.ph.i44, %.noexc48
  %i.de = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.df, ptr %1, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 55, ptr %i.a, align 8, !tbaa !37
  %i.dg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc75 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i63 ; 3 uses

.noexc75:                                         ; preds = %.noexc.i74
  store ptr %i.dg, ptr %1, align 8, !tbaa !51
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !37  ; 3 uses
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dg, ptr noundef nonnull align 1 dereferenceable(55) @.str.24, i64 55, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc75
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.o unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i63: ; preds = %.noexc.i74
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %.noexc75
  %.0.i.i.i66 = phi i1 [ false, %bb.l ], [ true, %.noexc75 ] ; 2 uses
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.df
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.dm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0.i.i.i66, label %bb.n, label %.body60.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0.i.i.i66, label %bb.n, label %.body60.thread

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i63
  %.pn8.i.i.i64 = phi { ptr, i32 } [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i63 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67 ]
  call void @__cxa_free_exception(ptr %i.de) #21
  br label %.body60.thread

bb.o:                                             ; preds = %bb.l
  unreachable

.noexc48:                                         ; preds = %.lr.ph.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.067.i46
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !34
  %i.dq = or disjoint i64 %.067.i46, 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.dq, ptr %i.c, align 8, !tbaa !37
  store i64 %i.dc, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i62.1 = icmp ult i64 %i.dq, %i.dc
  br i1 %.not.i.i.i62.1, label %.noexc48.1, label %.noexc.i74, !prof !155

.noexc48.1:                                       ; preds = %.noexc48
  %i.dr = zext nneg i8 %i.dp to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = or i64 %i.ds, %.08.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dq
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !34
  %i.dw = zext nneg i8 %i.dv to i64
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = or i64 %i.dx, %i.dt                     ; 3 uses
  %i.dz = add nuw i64 %.067.i46, 2                ; 2 uses
  %niter194.next.1 = add nuw i64 %niter194, 2     ; 2 uses
  %niter194.ncmp.1.not = icmp eq i64 %niter194.next.1, %unroll_iter193
  br i1 %niter194.ncmp.1.not, label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa, label %.lr.ph.i44, !llvm.loop !156

_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa: ; preds = %.noexc48.1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit, label %.lr.ph.i44.epil.preheader

.lr.ph.i44.epil.preheader:                        ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa, %.lr.ph.i44.preheader
  %.08.i45.epil.init = phi i64 [ 0, %.lr.ph.i44.preheader ], [ %i.dy, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa ]
  %.067.i46.epil.init = phi i64 [ 0, %.lr.ph.i44.preheader ], [ %i.dz, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod192 = trunc i64 %i.dc to i1
  tail call void @llvm.assume(i1 %lcmp.mod192)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.067.i46.epil.init, ptr %i.c, align 8, !tbaa !37
  store i64 %i.dc, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i62.epil = icmp ult i64 %.067.i46.epil.init, %i.dc
  br i1 %.not.i.i.i62.epil, label %.noexc48.epil, label %.noexc.i74, !prof !155

.noexc48.epil:                                    ; preds = %.lr.ph.i44.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.067.i46.epil.init
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !34
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = or i64 %i.ed, %.08.i45.epil.init
  br label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit

_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit: ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa, %.noexc48.epil
  %.lcssa = phi i64 [ %i.dy, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa ], [ %i.ee, %.noexc48.epil ]
  %i.ef = xor i64 %.lcssa, -1
  br label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49

_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49: ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit, %.lr.ph116
  %.0.lcssa.i47 = phi i64 [ -1, %.lr.ph116 ], [ %i.ef, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.077.0115, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !37 ; 5 uses
  %i.ei = load i64, ptr %i.r, align 8, !tbaa !86  ; 2 uses
  %i.ej = urem i64 %i.eh, %i.ei                   ; 3 uses
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !134 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i50, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !88 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !37
  %i.eq = icmp eq i64 %i.eh, %i.ep
  br i1 %i.eq, label %.loopexit, label %.lr.ph.i.i.i.i51

bb.q:                                             ; preds = %bb.r
  %i.er = icmp eq i64 %i.eh, %i.eu
  br i1 %i.er, label %.loopexit, label %.lr.ph.i.i.i.i51, !llvm.loop !168

.lr.ph.i.i.i.i51:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i52 = phi ptr [ %i.es, %bb.q ], [ %i.en, %bb.p ]
  %i.es = load ptr, ptr %.020.i.i.i.i52, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i.i.i53 = icmp eq ptr %i.es, null
  br i1 %.not18.i.i.i.i53, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i51
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !37 ; 2 uses
  %i.ev = urem i64 %i.eu, %i.ei
  %.not19.i.i.i.i54 = icmp eq i64 %i.ev, %i.ej
  br i1 %.not19.i.i.i.i54, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i55, !llvm.loop !168

..loopexit_crit_edge21.i.i.i.i55:                 ; preds = %bb.r
  br label %.loopexit.i.i, !llvm.loop !168

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i51, %..loopexit_crit_edge21.i.i.i.i55, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49
  %i.ew = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %.noexc56 unwind label %bb.s   ; 5 uses

.noexc56:                                         ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ew, align 8, !tbaa !88
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.eh, ptr %i.ex, align 8, !tbaa !164
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 0, ptr %i.ey, align 8, !tbaa !166
  %i.ez = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %i.ej, i64 noundef %i.eh, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc56
  %i.fa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ew) #24
  br label %.body60.thread

.loopexit:                                        ; preds = %bb.q, %.noexc56, %bb.p
  %.pn.i.i = phi ptr [ %i.ez, %.noexc56 ], [ %i.en, %bb.p ], [ %i.es, %bb.q ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 %.0.lcssa.i47, ptr %.1.i.i, align 8, !tbaa !37
  %.sroa.077.0 = load ptr, ptr %.sroa.077.0115, align 8, !tbaa !88 ; 2 uses
  %.not100 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not100, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph116

bb.s:                                             ; preds = %.loopexit.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body60.thread

.body60.thread159:                                ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5eraseENS6_14_Node_iteratorIS4_Lb0ELb0EEE.exit.i, %_ZN6duckdb6vectorIhLb1ESaIhEE5clearEv.exit.i.thread
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body60.thread

.body60.thread:                                   ; preds = %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.s, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68, %.body60.thread159
  %.pn26.pn.pn154 = phi { ptr, i32 } [ %lpad.thr_comm, %.body60.thread159 ], [ %i.fa, %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.fb, %bb.s ], [ %.pn8.i.i.i, %bb.g ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67 ], [ %.pn8.i.i.i64, %bb.n ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68 ]
  %i.fc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #21 ; 0 uses
  resume { ptr, i32 } %.pn26.pn.pn154
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15MetadataManager19ClearModifiedBlocksERKNS_6vectorINS_16MetaBlockPointerELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #23
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !169    ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %.not39 = icmp eq ptr %i.h, %i.i
  br i1 %.not39, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.d

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit
  %.sroa.023.040 = phi ptr [ %i.h, %.lr.ph ], [ %i.au, %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = load i64, ptr %.sroa.023.040, align 8, !tbaa !148 ; 2 uses
  %i.p = and i64 %i.o, 72057594037927935          ; 5 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !37
  %i.q = lshr i64 %i.o, 56
  %i.r = load i64, ptr %i.j, align 8, !tbaa !171
  %.not.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.m, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !88 ; 4 uses
  %.not.i.i17 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i17, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37
  %i.u = icmp eq i64 %i.p, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit, label %.preheader, !llvm.loop !172

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %i.w = urem i64 %i.p, %i.v                      ; 2 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !134  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ad = icmp eq i64 %i.p, %i.ac
  br i1 %i.ad, label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.p, %i.ah
  br i1 %i.ae, label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !168

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.af, %bb.h ], [ %i.aa, %bb.g ]
  %i.af = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.v
  %.not19.i.i.i.i = icmp eq i64 %i.ai, %i.w
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !168

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %.loopexit
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.o unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.loopexit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.am) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit19

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aj) #21
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19

_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.aa, %bb.g ], [ %i.af, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.aq = shl nuw i64 1, %i.q
  %i.ar = xor i64 %i.aq, -1
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.at = and i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.023.040, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.i
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.d

_ZNSt11unique_lockISt5mutexED2Ev.exit19:          ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn.pn = phi { ptr, i32 } [ %.pn32, %bb.m ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 0 uses
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %bb.a, %_ZNSt11unique_lockISt5mutexED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev:bb.a

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !139    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !42
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !44   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !51
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !34
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit

_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit:     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !44
  store ptr %i.v, ptr %i.s, align 8, !tbaa !51
  store i64 0, ptr %i.ad, align 8, !tbaa !44
  store i8 0, ptr %i.v, align 8, !tbaa !34
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !264
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !42, !alias.scope !259, !noalias !262
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !51, !alias.scope !262, !noalias !259 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44, !alias.scope !262, !noalias !259 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !264
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !51, !alias.scope !259, !noalias !262
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !34, !alias.scope !262, !noalias !259
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !34, !alias.scope !259, !noalias !262
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !262, !noalias !259
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !44, !alias.scope !259, !noalias !262
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !51, !alias.scope !262, !noalias !259
  store i64 0, ptr %i.ar, align 8, !tbaa !44, !alias.scope !262, !noalias !259
  store i8 0, ptr %i.aj, align 8, !tbaa !34, !alias.scope !262, !noalias !259
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !265

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19, i64 32, i1 false), !alias.scope !271
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !42, !alias.scope !266, !noalias !269
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !51, !alias.scope !269, !noalias !266 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !44, !alias.scope !269, !noalias !266 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !271
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !51, !alias.scope !266, !noalias !269
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !34, !alias.scope !269, !noalias !266
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !34, !alias.scope !266, !noalias !269
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !44, !alias.scope !269, !noalias !266
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !44, !alias.scope !266, !noalias !269
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !51, !alias.scope !269, !noalias !266
  store i64 0, ptr %i.bi, align 8, !tbaa !44, !alias.scope !269, !noalias !266
  store i8 0, ptr %i.ba, align 8, !tbaa !34, !alias.scope !269, !noalias !266
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !265

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #24
  br label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !139
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !258
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt8__detail9_Map_baseIlSt4pairIKlN6duckdb13MetadataBlockEESaIS5_ENS_10_Select1stESt8equal_toIlESt4hashIlENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<long, std::pair<const long, duckdb::MetadataBlock>, std::allocator<std::pair<const long, duckdb::MetadataBlock>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !37     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp eq i64 %i.a, %i.j
  br i1 %i.k, label %.loopexit28, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.a, %i.o
  br i1 %i.l, label %.loopexit28, label %.lr.ph.i.i, !llvm.loop !135

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %i.m = load ptr, ptr %.020.i.i, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.p = urem i64 %i.o, %i.c
  %.not19.i.i = icmp eq i64 %i.p, %i.d
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !135

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %0, ptr %2, align 8, !tbaa !272
  %i.q = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 6 uses
  store ptr null, ptr %i.q, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.a, ptr %i.r, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  invoke void @_ZN6duckdb13MetadataBlockC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.s)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #21 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #24
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.f, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.w, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit: ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.z, align 8, !tbaa !276
  %i.aa = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %i.a, ptr noundef nonnull %i.q, i64 noundef 1)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.loopexit28

bb.i:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.loopexit28:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.aa, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !277
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !132
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #21 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !277
  invoke void @__cxa_rethrow() #23
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
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !82
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !134  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  store ptr %i.w, ptr %3, align 8, !tbaa !88
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !134
  store ptr %3, ptr %i.x, align 8, !tbaa !88
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !252
  store ptr %i.z, ptr %3, align 8, !tbaa !88
  store ptr %3, ptr %i.y, align 8, !tbaa !252
  %i.aa = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !82
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !134
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !134
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !132
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !132
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i:              ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 8 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !30
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !278
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !278
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
end_hunk_1
