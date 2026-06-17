inline.NumInlined: 10301
inline.NumDeleted: 5043
begin_hunk_0_@_ZN6duckdb17IndexCatalogEntryC2ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_15CreateIndexInfoE:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 488 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !158 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !159 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i.i.i.i, label %.noexc47, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = icmp ugt i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !37

.noexc.i.i.i:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc46 unwind label %bb.x

.noexc46:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #33
          to label %.noexc47 unwind label %bb.x

.noexc47:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %bb.m
  %i.cr = phi ptr [ null, %bb.m ], [ %i.cq, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.cr, ptr %i.ch, align 8, !tbaa !159
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !158
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !160
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 3 uses
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !161
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 8
  br i1 %i.da, label %bb.o, label %bb.p, !prof !162

bb.o:                                             ; preds = %.noexc47
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cr, ptr align 8 %i.cv, i64 %i.cz, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc47
  %i.db = icmp eq i64 %i.cz, 8
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = load i64, ptr %i.cv, align 8, !tbaa !19
  store i64 %i.dc, ptr %i.cr, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.dd = getelementptr inbounds i8, ptr %i.cr, i64 %i.cz
  store ptr %i.dd, ptr %i.cs, align 8, !tbaa !158
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.de, i8 0, i64 48, i1 false)
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !163, !range !70, !noundef !71
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !164
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ag
  br i1 %i.dk, label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.dj)
          to label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit unwind label %bb.y

_ZN6duckdb21LogicalDependencyListaSERKS0_.exit:   ; preds = %bb.r, %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dn = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull align 8 dereferenceable(64) %i.dl)
          to label %bb.t unwind label %bb.y       ; 0 uses

bb.t:                                             ; preds = %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !165 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !165 ; 2 uses
  %.not102 = icmp eq ptr %i.do, %i.dq
  br i1 %.not102, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  br label %bb.z

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 528
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !165 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 536
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !165 ; 2 uses
  %.not95104 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not95104, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  br label %bb.ah

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  %i.dy = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.e
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.dy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.u:                                             ; preds = %.noexc.i39
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.v:                                             ; preds = %bb.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.w:                                             ; preds = %.noexc.i43
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.x:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.y:                                             ; preds = %bb.s, %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.089.0103 = phi ptr [ %i.do, %.lr.ph ], [ %i.fw, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ef = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.089.0103)
          to label %bb.aa unwind label %bb.af     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.805") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ef)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load ptr, ptr %i.dp, align 8, !tbaa !166 ; 6 uses
  %i.ek = load ptr, ptr %i.dr, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i, label %bb.ac, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ab
  %i.el = load i64, ptr %7, align 8, !tbaa !168
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !168
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.em, ptr %i.dp, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.en = load ptr, ptr %i.de, align 8, !tbaa !170 ; 10 uses
  %i.eo = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.ep = ptrtoint ptr %i.en to i64               ; 3 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775800
  br i1 %i.er, label %bb.ad, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc52 unwind label %.loopexit.split-lp97

.noexc52:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.es = ashr exact i64 %i.eq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i.i.i, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = call i64 @llvm.umin.i64(i64 %i.et, i64 1152921504606846975)
  %i.ew = select i1 %i.eu, i64 1152921504606846975, i64 %i.ev ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ew, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ex = shl nuw nsw i64 %i.ew, 3
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #33
          to label %.noexc53 unwind label %.loopexit96 ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  %i.fa = load i64, ptr %7, align 8, !tbaa !168
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !168
  store ptr null, ptr %7, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.en, %i.ej
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc53
  %9 = add i64 %i.eo, -8
  %10 = sub i64 %9, %i.ep                         ; 2 uses
  %i.fb = lshr i64 %10, 3
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader173, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ey, i64 8
  %i.fd = add i64 %i.eo, -8
  %i.fe = sub i64 %i.fd, %i.ep
  %i.ff = and i64 %i.fe, -8                       ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep, i64 %i.ff
  %scevgep143 = getelementptr i8, ptr %i.en, i64 8
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ff
  %bound0 = icmp ult ptr %i.ey, %scevgep144
  %bound1 = icmp ult ptr %i.en, %scevgep142
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader173, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fc, 4611686018427387900     ; 3 uses
  %i.fg = shl i64 %n.vec, 3                       ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ey, i64 %i.fg  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.en, i64 %i.fg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ey, i64 %i.fj ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.en, i64 %i.fj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.fk = getelementptr i8, ptr %next.gep145, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep145, align 8, !tbaa !168, !alias.scope !176, !noalias !171
  %wide.load146 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !168, !alias.scope !176, !noalias !171
  %i.fl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !179, !noalias !176
  store <2 x i64> %wide.load146, ptr %i.fl, align 8, !tbaa !168, !alias.scope !179, !noalias !176
  %i.fm = getelementptr i8, ptr %next.gep145, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep145, align 8, !tbaa !168, !alias.scope !176, !noalias !171
  store <2 x ptr> splat (ptr null), ptr %i.fm, align 8, !tbaa !168, !alias.scope !176, !noalias !171
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader173

.lr.ph.i.i.i.i.i.i.i.preheader173:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ey, %vector.memcheck ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader173, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader173 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader173 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.fo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !174, !noalias !171
  store i64 %i.fo, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !171, !noalias !174
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !174, !noalias !171
  %i.fp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fp, %i.ej
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !184

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc53
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ey, %.noexc53 ], [ %i.fh, %middle.block ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.en) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.ae
  store ptr %i.ey, ptr %i.de, align 8, !tbaa !170
  store ptr %i.fr, ptr %i.dp, align 8, !tbaa !166
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fs, ptr %i.dr, align 8, !tbaa !167
  %.pr = load ptr, ptr %7, align 8, !tbaa !168    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ft = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.089.0103, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fw, %i.dq
  br i1 %.not, label %._crit_edge, label %bb.z

bb.af:                                            ; preds = %bb.aa, %bb.z
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit56

.loopexit96:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp97:                             ; preds = %bb.ad
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp97, %.loopexit96
  %lpad.phi100 = phi { ptr, i32 } [ %lpad.loopexit98, %.loopexit96 ], [ %lpad.loopexit.split-lp99, %.loopexit.split-lp97 ] ; 2 uses
  %i.fy = load ptr, ptr %7, align 8, !tbaa !168   ; 3 uses
  %.not.i54 = icmp eq ptr %i.fy, null
  br i1 %.not.i54, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit56, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i55

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i55: ; preds = %bb.ag
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !7
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(56) %i.fy) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit56

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit56: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i55, %bb.ag, %bb.af
  %.pn29 = phi { ptr, i32 } [ %i.fx, %bb.af ], [ %lpad.phi100, %bb.ag ], [ %lpad.phi100, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ap

._crit_edge108:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit75, %._crit_edge
  ret void

bb.ah:                                            ; preds = %.lr.ph107, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit75
  %.sroa.085.0105 = phi ptr [ %i.dt, %.lr.ph107 ], [ %i.ht, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit75 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.gc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.085.0105)
          to label %bb.ai unwind label %bb.an     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !7
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 96
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.805") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.gc)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.gg = load ptr, ptr %i.dw, align 8, !tbaa !166 ; 6 uses
  %i.gh = load ptr, ptr %i.dx, align 8, !tbaa !167
  %.not.i.i57 = icmp eq ptr %i.gg, %i.gh
  br i1 %.not.i.i57, label %bb.ak, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit72.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit72.thread: ; preds = %bb.aj
  %i.gi = load i64, ptr %8, align 8, !tbaa !168
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !168
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.gj, ptr %i.dw, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit75

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %i.df, align 8, !tbaa !170 ; 10 uses
  %i.gl = ptrtoint ptr %i.gg to i64               ; 3 uses
  %i.gm = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 3 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.al, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i58

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i58: ; preds = %bb.ak
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i59 = call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i59, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i.i.i60 = icmp ne i64 %i.gt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i60)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #33
          to label %.noexc71 unwind label %.loopexit ; 10 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i58
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  %i.gx = load i64, ptr %8, align 8, !tbaa !168
  store i64 %i.gx, ptr %i.gw, align 8, !tbaa !168
  store ptr null, ptr %8, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i61 = icmp eq ptr %i.gk, %i.gg
  br i1 %.not10.i.i.i.i.i.i.i61, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i66, label %.lr.ph.i.i.i.i.i.i.i62.preheader

.lr.ph.i.i.i.i.i.i.i62.preheader:                 ; preds = %.noexc71
  %11 = add i64 %i.gl, -8
  %12 = sub i64 %11, %i.gm                        ; 2 uses
  %i.gy = lshr i64 %12, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check157 = icmp ult i64 %12, 56
  br i1 %min.iters.check157, label %.lr.ph.i.i.i.i.i.i.i62.preheader172, label %vector.memcheck148

vector.memcheck148:                               ; preds = %.lr.ph.i.i.i.i.i.i.i62.preheader
  %scevgep149 = getelementptr i8, ptr %i.gv, i64 8
  %i.ha = add i64 %i.gl, -8
  %i.hb = sub i64 %i.ha, %i.gm
  %i.hc = and i64 %i.hb, -8                       ; 2 uses
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.hc
  %scevgep151 = getelementptr i8, ptr %i.gk, i64 8
  %scevgep152 = getelementptr i8, ptr %scevgep151, i64 %i.hc
  %bound0153 = icmp ult ptr %i.gv, %scevgep152
  %bound1154 = icmp ult ptr %i.gk, %scevgep150
  %found.conflict155 = and i1 %bound0153, %bound1154
  br i1 %found.conflict155, label %.lr.ph.i.i.i.i.i.i.i62.preheader172, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck148
  %n.vec160 = and i64 %i.gz, 4611686018427387900  ; 3 uses
  %i.hd = shl i64 %n.vec160, 3                    ; 2 uses
  %i.he = getelementptr i8, ptr %i.gv, i64 %i.hd  ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gk, i64 %i.hd
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph158
  %index162 = phi i64 [ 0, %vector.ph158 ], [ %index.next167, %vector.body161 ] ; 2 uses
  %i.hg = shl i64 %index162, 3                    ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.gv, i64 %i.hg ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.gk, i64 %i.hg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.hh = getelementptr i8, ptr %next.gep164, i64 16
  %wide.load165 = load <2 x i64>, ptr %next.gep164, align 8, !tbaa !168, !alias.scope !191, !noalias !186
  %wide.load166 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !168, !alias.scope !191, !noalias !186
  %i.hi = getelementptr i8, ptr %next.gep163, i64 16
  store <2 x i64> %wide.load165, ptr %next.gep163, align 8, !tbaa !168, !alias.scope !194, !noalias !191
  store <2 x i64> %wide.load166, ptr %i.hi, align 8, !tbaa !168, !alias.scope !194, !noalias !191
  %i.hj = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep164, align 8, !tbaa !168, !alias.scope !191, !noalias !186
  store <2 x ptr> splat (ptr null), ptr %i.hj, align 8, !tbaa !168, !alias.scope !191, !noalias !186
  %index.next167 = add nuw i64 %index162, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.hk, label %middle.block168, label %vector.body161, !llvm.loop !196

middle.block168:                                  ; preds = %vector.body161
  %cmp.n169 = icmp eq i64 %i.gz, %n.vec160
  br i1 %cmp.n169, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i66, label %.lr.ph.i.i.i.i.i.i.i62.preheader172

.lr.ph.i.i.i.i.i.i.i62.preheader172:              ; preds = %vector.memcheck148, %.lr.ph.i.i.i.i.i.i.i62.preheader, %middle.block168
  %.012.i.i.i.i.i.i.i63.ph = phi ptr [ %i.gv, %vector.memcheck148 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i62.preheader ], [ %i.he, %middle.block168 ]
  %.0911.i.i.i.i.i.i.i64.ph = phi ptr [ %i.gk, %vector.memcheck148 ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i62.preheader ], [ %i.hf, %middle.block168 ]
  br label %.lr.ph.i.i.i.i.i.i.i62

.lr.ph.i.i.i.i.i.i.i62:                           ; preds = %.lr.ph.i.i.i.i.i.i.i62.preheader172, %.lr.ph.i.i.i.i.i.i.i62
  %.012.i.i.i.i.i.i.i63 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i.i62 ], [ %.012.i.i.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i.i.i62.preheader172 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i64 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i.i62 ], [ %.0911.i.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i.i62.preheader172 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.hl = load i64, ptr %.0911.i.i.i.i.i.i.i64, align 8, !tbaa !168, !alias.scope !189, !noalias !186
  store i64 %i.hl, ptr %.012.i.i.i.i.i.i.i63, align 8, !tbaa !168, !alias.scope !186, !noalias !189
  store ptr null, ptr %.0911.i.i.i.i.i.i.i64, align 8, !tbaa !168, !alias.scope !189, !noalias !186
  %i.hm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i64, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i65 = icmp eq ptr %i.hm, %i.gg
  br i1 %.not.i.i.i.i.i.i.i65, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i66, label %.lr.ph.i.i.i.i.i.i.i62, !llvm.loop !197

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i66: ; preds = %.lr.ph.i.i.i.i.i.i.i62, %middle.block168, %.noexc71
  %.0.lcssa.i.i.i.i.i.i.i67 = phi ptr [ %i.gv, %.noexc71 ], [ %i.he, %middle.block168 ], [ %i.hn, %.lr.ph.i.i.i.i.i.i.i62 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i67, i64 8
  %.not.i23.i.i.i68 = icmp eq ptr %i.gk, null
  br i1 %.not.i23.i.i.i68, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit72, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i66
  call void @_ZdlPv(ptr noundef nonnull %i.gk) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit72

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit72: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i66, %bb.am
  store ptr %i.gv, ptr %i.df, align 8, !tbaa !170
  store ptr %i.ho, ptr %i.dw, align 8, !tbaa !166
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  store ptr %i.hp, ptr %i.dx, align 8, !tbaa !167
  %.pr93 = load ptr, ptr %8, align 8, !tbaa !168  ; 3 uses
  %.not.i73 = icmp eq ptr %.pr93, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit75, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i74

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i74: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit72
  %i.hq = load ptr, ptr %.pr93, align 8, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(56) %.pr93) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit75

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit75: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit72.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit72, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.085.0105, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.ht, %i.dv
  br i1 %.not95, label %._crit_edge108, label %bb.ah

bb.an:                                            ; preds = %bb.ai, %bb.ah
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit78

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i58
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hv = load ptr, ptr %8, align 8, !tbaa !168   ; 3 uses
  %.not.i76 = icmp eq ptr %i.hv, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit78, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i77

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i77: ; preds = %bb.ao
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !7
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(56) %i.hv) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit78

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit78: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i77, %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.hu, %bb.an ], [ %lpad.phi, %bb.ao ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit78, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit56, %bb.y
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit56 ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit78 ], [ %i.ee, %bb.y ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.df) #30
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.de) #30
  %i.hz = load ptr, ptr %i.ch, align 8, !tbaa !159 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef nonnull %i.hz) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.aq, %bb.ap, %bb.x
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.x ], [ %.pn29.pn, %bb.ap ], [ %.pn29.pn, %bb.aq ] ; 2 uses
  %i.ia = load ptr, ptr %i.bp, align 8, !tbaa !15 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.br
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ia) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.w
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.w ], [ %.pn29.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn29.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bd) #30
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.v
  %.pn29.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.eb, %bb.v ] ; 2 uses
  %i.ic = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.aq
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.ic) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.u
  %.pn29.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.u ], [ %.pn29.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn29.pn.pn.pn.pn, %bb.ar ]
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb13StandardEntryE, i64 16), ptr %0, align 8, !tbaa !7
  call void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.ag) #30, !inline_history !87
  call void @_ZN6duckdb14InCatalogEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) #30, !inline_history !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %.pn29.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.ac, %.body ]
  resume { ptr, i32 } %.pn29.pn.pn.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9DataTable16GetDataTableInfoEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_18IndexDataTableInfoELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb18IndexDataTableInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !99
end_hunk_0
begin_hunk_1_@_ZN6duckdbL25FindForeignKeyInformationERNS_17TableCatalogEntryENS_19AlterForeignKeyTypeERNS_6vectorINS_10unique_ptrINS_19AlterForeignKeyInfoESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE:bb.a
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i41
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !20
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i41
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  store i64 %i.bi, ptr %i.q, align 8, !tbaa !18
  %i.bj = load ptr, ptr %5, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  store ptr %i.r, ptr %6, align 8, !tbaa !12
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !19
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i45, label %._crit_edge.i.i44

.noexc.i45:                                       ; preds = %bb.i
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc46 unwind label %bb.u   ; 2 uses

.noexc46:                                         ; preds = %.noexc.i45
  store ptr %i.bq, ptr %6, align 8, !tbaa !15
  %i.br = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.br, ptr %i.r, align 8, !tbaa !20
  br label %._crit_edge.i.i44

._crit_edge.i.i44:                                ; preds = %.noexc46, %bb.i
  %i.bs = phi ptr [ %i.bq, %.noexc46 ], [ %i.r, %bb.i ] ; 2 uses
  switch i64 %i.bo, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i44
  %i.bt = load i8, ptr %i.bm, align 1, !tbaa !20
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !20
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i44
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  store i64 %i.bu, ptr %i.s, align 8, !tbaa !18
  %i.bv = load ptr, ptr %6, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr %i.t, ptr %3, align 8, !tbaa !12
  %i.bx = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.n
  br i1 %i.by, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.bz = load i64, ptr %i.o, align 8, !tbaa !18  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  store ptr %i.bx, ptr %3, align 8, !tbaa !15
  %i.cc = load i64, ptr %i.n, align 8, !tbaa !20
  store i64 %i.cc, ptr %i.t, align 8, !tbaa !20
  %.pre = load i64, ptr %i.o, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %i.cd = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bz, %bb.m ]
  store i64 %i.cd, ptr %i.u, align 8, !tbaa !18
  store ptr %i.n, ptr %4, align 8, !tbaa !15
  store i64 0, ptr %i.o, align 8, !tbaa !18
  store i8 0, ptr %i.n, align 8, !tbaa !20
  store ptr %i.w, ptr %i.v, align 8, !tbaa !12
  %i.ce = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.p
  br i1 %i.cf, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cg = load i64, ptr %i.q, align 8, !tbaa !18  ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.cg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ci, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ce, ptr %i.v, align 8, !tbaa !15
  %i.cj = load i64, ptr %i.p, align 8, !tbaa !20
  store i64 %i.cj, ptr %i.w, align 8, !tbaa !20
  %.pre106 = load i64, ptr %i.q, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit2.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i, %bb.n
  %i.ck = phi i64 [ %.pre106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i ], [ %i.cg, %bb.n ]
  store i64 %i.ck, ptr %i.x, align 8, !tbaa !18
  store ptr %i.p, ptr %5, align 8, !tbaa !15
  store i64 0, ptr %i.q, align 8, !tbaa !18
  store i8 0, ptr %i.p, align 8, !tbaa !20
  store ptr %i.z, ptr %i.y, align 8, !tbaa !12
  %i.cl = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.r
  br i1 %i.cm, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit2.i
  %i.cn = load i64, ptr %i.s, align 8, !tbaa !18  ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.cp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit2.i
  store ptr %i.cl, ptr %i.y, align 8, !tbaa !15
  %i.cq = load i64, ptr %i.r, align 8, !tbaa !20
  store i64 %i.cq, ptr %i.z, align 8, !tbaa !20
  %.pre107 = load i64, ptr %i.s, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.cr = phi i64 [ %i.cn, %bb.o ], [ %.pre107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  store i64 %i.cr, ptr %i.aa, align 8, !tbaa !18
  store ptr %i.r, ptr %6, align 8, !tbaa !15
  store i64 0, ptr %i.s, align 8, !tbaa !18
  store i8 0, ptr %i.r, align 8, !tbaa !20
  store i8 0, ptr %i.ab, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  invoke void @_ZN6duckdb9make_uniqINS_19AlterForeignKeyInfoEJNS_14AlterEntryDataERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6vectorIS8_Lb1ESaIS8_EEESD_RNSA_INS_13PhysicalIndexELb1ESaISE_EEESH_RNS_19AlterForeignKeyTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.503") align 8 %7, ptr noundef nonnull align 8 dereferenceable(97) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.cw = load ptr, ptr %i.ac, align 8, !tbaa !278 ; 6 uses
  %i.cx = load ptr, ptr %i.ad, align 8, !tbaa !320
  %.not.i.i = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.cy = load i64, ptr %7, align 8, !tbaa !293
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !293
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cz, ptr %i.ac, align 8, !tbaa !278
  br label %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %2, align 8, !tbaa !281   ; 10 uses
  %i.db = ptrtoint ptr %i.cw to i64               ; 3 uses
  %i.dc = ptrtoint ptr %i.da to i64               ; 3 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #33
          to label %.noexc56 unwind label %.loopexit ; 10 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  %i.dn = load i64, ptr %7, align 8, !tbaa !293
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !293
  store ptr null, ptr %7, align 8, !tbaa !293
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.da, %i.cw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc56
  %10 = add i64 %i.db, -8
  %11 = sub i64 %10, %i.dc                        ; 2 uses
  %i.do = lshr i64 %11, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dl, i64 8
  %i.dq = add i64 %i.db, -8
  %i.dr = sub i64 %i.dq, %i.dc
  %i.ds = and i64 %i.dr, -8                       ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep, i64 %i.ds
  %scevgep142 = getelementptr i8, ptr %i.da, i64 8
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.ds
  %bound0 = icmp ult ptr %i.dl, %scevgep143
  %bound1 = icmp ult ptr %i.da, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 4611686018427387900     ; 3 uses
  %i.dt = shl i64 %n.vec, 3                       ; 2 uses
  %i.du = getelementptr i8, ptr %i.dl, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.da, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dl, i64 %i.dw ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.da, i64 %i.dw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.dx = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep144, align 8, !tbaa !293, !alias.scope !326, !noalias !321
  %wide.load145 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !293, !alias.scope !326, !noalias !321
  %i.dy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !293, !alias.scope !329, !noalias !326
  store <2 x i64> %wide.load145, ptr %i.dy, align 8, !tbaa !293, !alias.scope !329, !noalias !326
  %i.dz = getelementptr i8, ptr %next.gep144, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep144, align 8, !tbaa !293, !alias.scope !326, !noalias !321
  store <2 x ptr> splat (ptr null), ptr %i.dz, align 8, !tbaa !293, !alias.scope !326, !noalias !321
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader147

.lr.ph.i.i.i.i.i.i.i.preheader147:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dl, %vector.memcheck ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.du, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader147, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader147 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader147 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.eb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !293, !alias.scope !324, !noalias !321
  store i64 %i.eb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !293, !alias.scope !321, !noalias !324
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !293, !alias.scope !324, !noalias !321
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ec, %i.cw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !332

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc56
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dl, %.noexc56 ], [ %i.du, %middle.block ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.da) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.dl, ptr %2, align 8, !tbaa !281
  store ptr %i.ee, ptr %i.ac, align 8, !tbaa !278
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ef, ptr %i.ad, align 8, !tbaa !320
  %.pr = load ptr, ptr %7, align 8, !tbaa !293    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19AlterForeignKeyInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19AlterForeignKeyInfoEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.eg = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(249) %.pr) #30, !inline_history !333
  br label %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb19AlterForeignKeyInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !15  ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.z
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ej) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.el = load ptr, ptr %i.v, align 8, !tbaa !15  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.w
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.el) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.en = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.t
  br i1 %i.eo, label %_ZN6duckdb14AlterEntryDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.en) #31
  br label %_ZN6duckdb14AlterEntryDataD2Ev.exit

_ZN6duckdb14AlterEntryDataD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ad

bb.t:                                             ; preds = %.noexc.i42
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.u:                                             ; preds = %.noexc.i45
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.p
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.er) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.t
  %.pn35 = phi { ptr, i32 } [ %i.ep, %bb.t ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.eq, %bb.u ] ; 2 uses
  %i.et = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.n
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  call void @_ZdlPv(ptr noundef %i.et) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit65

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AlterForeignKeyInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ew = load ptr, ptr %7, align 8, !tbaa !293   ; 3 uses
  %.not.i63 = icmp eq ptr %i.ew, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit65, label %_ZNKSt14default_deleteIN6duckdb19AlterForeignKeyInfoEEclEPS1_.exit.i64

_ZNKSt14default_deleteIN6duckdb19AlterForeignKeyInfoEEclEPS1_.exit.i64: ; preds = %bb.w
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !7
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(249) %i.ew) #30, !inline_history !333
  br label %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit65

_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit65: ; preds = %_ZNKSt14default_deleteIN6duckdb19AlterForeignKeyInfoEEclEPS1_.exit.i64, %bb.w, %bb.v
  %.pn37 = phi { ptr, i32 } [ %i.ev, %bb.v ], [ %lpad.phi, %bb.w ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb19AlterForeignKeyInfoEEclEPS1_.exit.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZN6duckdb14AlterEntryDataD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %3) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit65
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %_ZNSt10unique_ptrIN6duckdb19AlterForeignKeyInfoESt14default_deleteIS1_EED2Ev.exit65 ], [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ae

bb.x:                                             ; preds = %bb.c
  %i.fa = icmp eq i8 %i.al, 0
  %i.fb = load i8, ptr %i.d, align 1
  %i.fc = icmp eq i8 %i.fb, 1
  %or.cond = select i1 %i.fa, i1 %i.fc, i1 false
  br i1 %or.cond, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.fd = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
end_hunk_1
begin_hunk_2_@_ZN6duckdb14DuckTableEntryC2ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoENS_10shared_ptrINS_9DataTableELb1EEE:bb.a

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i155
  store ptr %i.gs, ptr %i.gn, align 8, !tbaa !115
  %i.mp = load ptr, ptr %i.ge, align 8, !tbaa !122
  store ptr %i.mp, ptr %i.gs, align 8, !tbaa !122
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i155
  %i.mq = phi ptr [ %i.gs, %bb.ci ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i155 ]
  %.not.i.i.i.i.i156 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i156, label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit157, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 104
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !506
  %i.mt = urem i64 %i.ms, %i.ml
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mt
  store ptr %i.gp, ptr %i.mu, align 8, !tbaa !508
  br label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit157

_ZN6duckdb16IndexStorageInfoC2EOS0_.exit157:      ; preds = %bb.cj, %bb.ck
  store i64 0, ptr %i.gt, align 8, !tbaa !509
  store i64 1, ptr %i.ga, align 8, !tbaa !117
  store ptr null, ptr %i.ge, align 8, !tbaa !122
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false)
  %i.mv = load <2 x ptr>, ptr %i.gf, align 8, !tbaa !510
  store <2 x ptr> %i.mv, ptr %i.gu, align 8, !tbaa !510
  %i.mw = load ptr, ptr %i.gg, align 8, !tbaa !511
  store ptr %i.mw, ptr %i.gv, align 8, !tbaa !511
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i8 0, i64 24, i1 false)
  %i.mx = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !512
  store <2 x ptr> %i.mx, ptr %i.gw, align 8, !tbaa !512
  %i.my = load ptr, ptr %i.gi, align 8, !tbaa !513
  store ptr %i.my, ptr %i.gx, align 8, !tbaa !513
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i64 16, i1 false), !tbaa.struct !514
  invoke void @_ZN6duckdb9DataTable8AddIndexERKNS_10ColumnListERKNS_6vectorINS_12LogicalIndexELb1ESaIS5_EEENS_19IndexConstraintTypeENS_16IndexStorageInfoE(ptr noundef nonnull align 8 dereferenceable(124) %i.mb, ptr noundef nonnull align 8 dereferenceable(105) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef zeroext %spec.store.select, ptr noundef nonnull %15)
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit157
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %15) #30
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.cq

bb.cm:                                            ; preds = %bb.cf
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit157
  %i.na = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %15) #30
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.ce
  %.pn120 = phi { ptr, i32 } [ %i.na, %bb.cn ], [ %i.mz, %bb.cm ], [ %.pn118, %bb.ce ]
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %13) #30
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cb
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %bb.co ], [ %i.ly, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cl, %bb.bm
  %.191 = phi i64 [ %.090270, %bb.bm ], [ %i.kg, %bb.cl ]
  %i.nb = load ptr, ptr %10, align 8, !tbaa !515  ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef nonnull %i.nb) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit: ; preds = %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ew

bb.cs:                                            ; preds = %bb.cp, %bb.bs
  %.pn123.pn.pn = phi { ptr, i32 } [ %.pn123.pn, %bb.bs ], [ %.pn120.pn, %bb.cp ] ; 2 uses
  %i.nc = load ptr, ptr %10, align 8, !tbaa !515  ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit160, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef nonnull %i.nc) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit160

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit160: ; preds = %bb.ct, %bb.cs, %bb.bn
  %.pn123.pn.pn.pn = phi { ptr, i32 } [ %i.kc, %bb.bn ], [ %.pn123.pn.pn, %bb.cs ], [ %.pn123.pn.pn, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.fj

bb.cu:                                            ; preds = %bb.ay
  %i.nd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iq)
          to label %bb.cv unwind label %bb.bc

bb.cv:                                            ; preds = %bb.cu
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load i8, ptr %i.ne, align 8, !tbaa !304
  %i.ng = icmp eq i8 %i.nf, 4
  br i1 %i.ng, label %bb.cw, label %bb.ew

bb.cw:                                            ; preds = %bb.cv
  %i.nh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iq)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.ni = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN6duckdb10Constraint4CastINS_20ForeignKeyConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.nh)
          to label %bb.cy unwind label %bb.da     ; 3 uses

bb.cy:                                            ; preds = %bb.cx
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 64
  %i.nk = load i8, ptr %i.nj, align 8, !tbaa !307
  %.off = add i8 %i.nk, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.cz, label %bb.ew

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 160
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !518 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 168
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !518 ; 2 uses
  %.not226264 = icmp eq ptr %i.nm, %i.no
  br i1 %.not226264, label %._crit_edge, label %.lr.ph266

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit, %bb.cz
  %i.np = load ptr, ptr %i.do, align 8, !tbaa !474
  %i.nq = load ptr, ptr %i.dp, align 8, !tbaa !474
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %bb.di, label %bb.dv

bb.da:                                            ; preds = %bb.cx, %bb.cw
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.lr.ph266:                                        ; preds = %bb.cz, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit
  %.sroa.0210.0265 = phi ptr [ %i.pb, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ], [ %i.nm, %bb.cz ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0210.0265, align 8, !tbaa !19
  %i.nt = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.aa, i64 %.sroa.0.0.copyload)
          to label %bb.db unwind label %bb.dh

bb.db:                                            ; preds = %.lr.ph266
  %i.nu = invoke i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %i.nt)
          to label %bb.dc unwind label %.loopexit227 ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.nv = load ptr, ptr %i.dm, align 8, !tbaa !519 ; 6 uses
  %i.nw = load ptr, ptr %i.dn, align 8, !tbaa !520
  %.not.i.i = icmp eq ptr %i.nv, %i.nw
  br i1 %.not.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i64 %i.nu, ptr %i.nv, align 8, !tbaa !19
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store ptr %i.nx, ptr %i.dm, align 8, !tbaa !519
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

bb.de:                                            ; preds = %bb.dc
  %i.ny = load ptr, ptr %16, align 8, !tbaa !515  ; 7 uses
  %i.nz = ptrtoint ptr %i.nv to i64               ; 2 uses
  %i.oa = ptrtoint ptr %i.ny to i64               ; 3 uses
  %i.ob = sub i64 %i.nz, %i.oa                    ; 3 uses
  %i.oc = icmp eq i64 %i.ob, 9223372036854775800
  br i1 %i.oc, label %bb.df, label %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc162 unwind label %.loopexit.split-lp228

.noexc162:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.de
  %i.od = ashr exact i64 %i.ob, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.od, i64 1)
  %i.oe = add nsw i64 %.sroa.speculated.i.i.i.i, %i.od ; 2 uses
  %i.of = icmp ult i64 %i.oe, %i.od
  %i.og = call i64 @llvm.umin.i64(i64 %i.oe, i64 1152921504606846975)
  %i.oh = select i1 %i.of, i64 1152921504606846975, i64 %i.og ; 3 uses
  %.not.i.i.i.i161 = icmp ne i64 %i.oh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i161)
  %i.oi = shl nuw nsw i64 %i.oh, 3
  %i.oj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oi) #33
          to label %.noexc163 unwind label %.loopexit227 ; 8 uses

.noexc163:                                        ; preds = %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ob
  store i64 %i.nu, ptr %i.ok, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ny, %i.nv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc163
  %i.ol = ptrtoaddr ptr %i.oj to i64
  %24 = add i64 %i.nz, -8
  %25 = sub i64 %24, %i.oa                        ; 2 uses
  %i.om = lshr i64 %25, 3
  %i.on = add nuw nsw i64 %i.om, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %25, 24
  %i.oo = sub i64 %i.ol, %i.oa
  %diff.check = icmp ult i64 %i.oo, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.on, 4611686018427387900     ; 3 uses
  %i.op = shl i64 %n.vec, 3                       ; 2 uses
  %i.oq = getelementptr i8, ptr %i.oj, i64 %i.op  ; 2 uses
  %i.or = getelementptr i8, ptr %i.ny, i64 %i.op
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.os = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.oj, i64 %i.os ; 2 uses
  %next.gep352 = getelementptr i8, ptr %i.ny, i64 %i.os ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ot = getelementptr i8, ptr %next.gep352, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep352, align 8, !tbaa !19, !alias.scope !524, !noalias !521
  %wide.load353 = load <2 x i64>, ptr %i.ot, align 8, !tbaa !19, !alias.scope !524, !noalias !521
  %i.ou = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !521, !noalias !524
  store <2 x i64> %wide.load353, ptr %i.ou, align 8, !tbaa !19, !alias.scope !521, !noalias !524
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ov = icmp eq i64 %index.next, %n.vec
  br i1 %i.ov, label %middle.block, label %vector.body, !llvm.loop !526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.on, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader355

.lr.ph.i.i.i.i.i.i.i.preheader355:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.oq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.or, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader355, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.oy, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader355 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ox, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader355 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ow = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !524, !noalias !521
  store i64 %i.ow, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !521, !noalias !524
  %i.ox = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ox, %i.nv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !527

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc163
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.oj, %.noexc163 ], [ %i.oq, %middle.block ], [ %i.oy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.oz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ny, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ny) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.dg, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.oj, ptr %16, align 8, !tbaa !515
  store ptr %i.oz, ptr %i.dm, align 8, !tbaa !519
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.oh
  store ptr %i.pa, ptr %i.dn, align 8, !tbaa !520
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.dd
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0210.0265, i64 8 ; 2 uses
  %.not226 = icmp eq ptr %i.pb, %i.no
  br i1 %.not226, label %._crit_edge, label %.lr.ph266

bb.dh:                                            ; preds = %.lr.ph266
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit227:                                     ; preds = %bb.db, %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit.split-lp228:                            ; preds = %bb.df
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.di:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZN6duckdb12GetIndexInfoENS_19IndexConstraintTypeEbRNS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::IndexStorageInfo") align 8 %17, i8 noundef zeroext 3, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.098267)
          to label %bb.dj unwind label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.pd = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_9DataTableELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.dk unwind label %bb.dr

bb.dk:                                            ; preds = %bb.dj
  store ptr %i.et, ptr %18, align 8, !tbaa !12
  %i.pe = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.eu
  br i1 %i.pf, label %bb.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

bb.dl:                                            ; preds = %bb.dk
  %i.pg = load i64, ptr %i.ev, align 8, !tbaa !18 ; 3 uses
  %i.ph = icmp ult i64 %i.pg, 16
  call void @llvm.assume(i1 %i.ph)
  %i.pi = add nuw nsw i64 %i.pg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.et, ptr noundef nonnull align 8 dereferenceable(1) %i.eu, i64 %i.pi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.dk
  store ptr %i.pe, ptr %18, align 8, !tbaa !15
  %i.pj = load i64, ptr %i.eu, align 8, !tbaa !20
  store i64 %i.pj, ptr %i.et, align 8, !tbaa !20
  %.pre278 = load i64, ptr %i.ev, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i165: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.dl
  %i.pk = phi i64 [ %.pre278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.pg, %bb.dl ]
  store i64 %i.pk, ptr %i.ew, align 8, !tbaa !18
  store ptr %i.eu, ptr %17, align 8, !tbaa !15
  store i64 0, ptr %i.ev, align 8, !tbaa !18
  store i8 0, ptr %i.eu, align 8, !tbaa !20
  %i.pl = load i64, ptr %i.ey, align 8, !tbaa !494
  store i64 %i.pl, ptr %i.ex, align 8, !tbaa !494
  %i.pm = load ptr, ptr %i.fa, align 8, !tbaa !115 ; 3 uses
  store ptr %i.pm, ptr %i.ez, align 8, !tbaa !115
  %i.pn = load i64, ptr %i.fc, align 8, !tbaa !117 ; 2 uses
  store i64 %i.pn, ptr %i.fb, align 8, !tbaa !117
  %i.po = load ptr, ptr %i.fe, align 8, !tbaa !469 ; 3 uses
  store ptr %i.po, ptr %i.fd, align 8, !tbaa !118
  %i.pp = load i64, ptr %i.fg, align 8, !tbaa !119
  store i64 %i.pp, ptr %i.ff, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i64 16, i1 false), !tbaa.struct !120
  store ptr null, ptr %i.fj, align 8, !tbaa !122
  %i.pq = icmp eq ptr %i.pm, %i.fk
  br i1 %i.pq, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i165
  store ptr %i.fj, ptr %i.ez, align 8, !tbaa !115
  %i.pr = load ptr, ptr %i.fk, align 8, !tbaa !122
  store ptr %i.pr, ptr %i.fj, align 8, !tbaa !122
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i165
  %i.ps = phi ptr [ %i.fj, %bb.dm ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i165 ]
  %.not.i.i.i.i.i166 = icmp eq ptr %i.po, null
  br i1 %.not.i.i.i.i.i166, label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit167, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 104
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !506
  %i.pv = urem i64 %i.pu, %i.pn
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.pv
  store ptr %i.fd, ptr %i.pw, align 8, !tbaa !508
  br label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit167

_ZN6duckdb16IndexStorageInfoC2EOS0_.exit167:      ; preds = %bb.dn, %bb.do
  store i64 0, ptr %i.fl, align 8, !tbaa !509
  store i64 1, ptr %i.fc, align 8, !tbaa !117
  store ptr null, ptr %i.fk, align 8, !tbaa !122
  store ptr %i.fk, ptr %i.fa, align 8, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  %i.px = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !510
  store <2 x ptr> %i.px, ptr %i.fm, align 8, !tbaa !510
  %i.py = load ptr, ptr %i.fp, align 8, !tbaa !511
  store ptr %i.py, ptr %i.fo, align 8, !tbaa !511
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i8 0, i64 24, i1 false)
  %i.pz = load <2 x ptr>, ptr %i.fr, align 8, !tbaa !512
  store <2 x ptr> %i.pz, ptr %i.fq, align 8, !tbaa !512
  %i.qa = load ptr, ptr %i.ft, align 8, !tbaa !513
  store ptr %i.qa, ptr %i.fs, align 8, !tbaa !513
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !514
  invoke void @_ZN6duckdb9DataTable8AddIndexERKNS_10ColumnListERKNS_6vectorINS_12LogicalIndexELb1ESaIS5_EEENS_19IndexConstraintTypeENS_16IndexStorageInfoE(ptr noundef nonnull align 8 dereferenceable(124) %i.pd, ptr noundef nonnull align 8 dereferenceable(105) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %16, i8 noundef zeroext 3, ptr noundef nonnull %18)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit167
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %18) #30
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.eo

bb.dq:                                            ; preds = %bb.di
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dr:                                            ; preds = %bb.dj
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit167
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %18) #30
end_hunk_2
begin_hunk_3_@_ZN6duckdb14DuckTableEntry23AddForeignKeyConstraintERNS_19AlterForeignKeyInfoE:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  store i8 %i.at, ptr %i.au, align 8, !tbaa !537
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb10ColumnListaSEOS0_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZN6duckdb10ColumnListaSEOS0_.exit.thread, %bb.k, %_ZN6duckdb10ColumnListaSEOS0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !534 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ax, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.aw, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 4 uses
  %i.ax = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !118 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.az) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #31
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !603

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !532
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.be = load i64, ptr %i.bd, align 16, !tbaa !533
  %i.bf = shl i64 %i.be, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.bf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %i.af, align 8, !tbaa !532 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.bg) #31
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %bb.l, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.bj = load ptr, ptr %5, align 16, !tbaa !487  ; 3 uses
  %i.bk = load ptr, ptr %i.z, align 8, !tbaa !484 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bj, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i) #30
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !529

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 16, !tbaa !487
  br label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.bm = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bj, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb10ColumnListD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #31
  br label %_ZN6duckdb10ColumnListD2Ev.exit

_ZN6duckdb10ColumnListD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !300
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !303
  %.not = icmp eq ptr %i.bp, %i.bq
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb10ColumnListD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.bt, align 8, !tbaa !18
  store i8 0, ptr %i.bs, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 0, ptr %i.bw, align 8, !tbaa !18
  store i8 0, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i8 0, i64 48, i1 false)
  store i8 0, ptr %7, align 8, !tbaa !604
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.au

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.o:                                             ; preds = %_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10ColumnListD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %5) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.p ], [ %i.ca, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ba

.lr.ph:                                           ; preds = %_ZN6duckdb10ColumnListD2Ev.exit, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit
  %.098 = phi i64 [ %i.dy, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit ], [ 0, %_ZN6duckdb10ColumnListD2Ev.exit ] ; 2 uses
  %i.cc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.y       ; 3 uses

bb.r:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ConstraintESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %.098)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %bb.t unwind label %bb.z       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %6, ptr noundef nonnull align 8 dereferenceable(9) %i.cf)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 472 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !300 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 480 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i.i, label %bb.v, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.u
  %i.cn = load i64, ptr %6, align 8, !tbaa !567
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !567
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !303 ; 10 uses
  %i.cq = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i.i31 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i31)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #33
          to label %.noexc35 unwind label %.loopexit ; 10 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  %i.dc = load i64, ptr %6, align 8, !tbaa !567
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !567
  store ptr null, ptr %6, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.ck
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc35
  %12 = add i64 %i.cq, -8
  %13 = sub i64 %12, %i.cr                        ; 2 uses
  %i.dd = lshr i64 %13, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i32.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %scevgep = getelementptr i8, ptr %i.da, i64 8
  %i.df = add i64 %i.cq, -8
  %i.dg = sub i64 %i.df, %i.cr
  %i.dh = and i64 %i.dg, -8                       ; 2 uses
  %scevgep145 = getelementptr i8, ptr %scevgep, i64 %i.dh
  %scevgep146 = getelementptr i8, ptr %i.cp, i64 8
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.dh
  %bound0 = icmp ult ptr %i.da, %scevgep147
  %bound1 = icmp ult ptr %i.cp, %scevgep145
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i32.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.de, 4611686018427387900     ; 3 uses
  %i.di = shl i64 %n.vec, 3                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.da, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cp, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.da, i64 %i.dl ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.cp, i64 %i.dl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.dm = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep148, align 8, !tbaa !567, !alias.scope !610, !noalias !605
  %wide.load149 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !567, !alias.scope !610, !noalias !605
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !613, !noalias !610
  store <2 x i64> %wide.load149, ptr %i.dn, align 8, !tbaa !567, !alias.scope !613, !noalias !610
  %i.do = getelementptr i8, ptr %next.gep148, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep148, align 8, !tbaa !567, !alias.scope !610, !noalias !605
  store <2 x ptr> splat (ptr null), ptr %i.do, align 8, !tbaa !567, !alias.scope !610, !noalias !605
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !615

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i32.preheader174

.lr.ph.i.i.i.i.i.i.i32.preheader174:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.dj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader174, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader174 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader174 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.dq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !608, !noalias !605
  store i64 %i.dq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !605, !noalias !608
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !608, !noalias !605
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.dr, %i.ck
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !616

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block, %.noexc35
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.da, %.noexc35 ], [ %i.dj, %middle.block ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.x
  store ptr %i.da, ptr %i.cd, align 8, !tbaa !303
  store ptr %i.dt, ptr %i.cj, align 8, !tbaa !300
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.du, ptr %i.cl, align 8, !tbaa !544
  %.pr93 = load ptr, ptr %6, align 8, !tbaa !567  ; 3 uses
  %.not.i = icmp eq ptr %.pr93, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dv = load ptr, ptr %.pr93, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr93) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.dy = add nuw i64 %.098, 1                    ; 2 uses
  %i.dz = load ptr, ptr %i.bo, align 8, !tbaa !300
  %i.ea = load ptr, ptr %i.bn, align 8, !tbaa !303
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3
  %i.ef = icmp ult i64 %i.dy, %i.ee
  br i1 %i.ef, label %.lr.ph, label %._crit_edge, !llvm.loop !618

bb.y:                                             ; preds = %.lr.ph
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.z:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit38

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ei = load ptr, ptr %6, align 8, !tbaa !567   ; 3 uses
  %.not.i36 = icmp eq ptr %i.ei, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i37: ; preds = %bb.aa
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ei) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit38: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i37, %bb.aa, %bb.z
  %.pn25 = phi { ptr, i32 } [ %i.eh, %bb.z ], [ %lpad.phi, %bb.aa ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %._crit_edge
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 120
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40 unwind label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.eo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.au ; 0 uses

_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.er = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.ep)
          to label %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit43 unwind label %bb.au ; 0 uses

_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit43: ; preds = %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit
  %i.es = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ab unwind label %bb.au     ; 3 uses

bb.ab:                                            ; preds = %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEaSERKS3_.exit43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 176
  invoke void @_ZN6duckdb9make_uniqINS_20ForeignKeyConstraintEJRNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESB_NS_14ForeignKeyInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1106") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(120) %7)
          to label %bb.ac unwind label %bb.av

bb.ac:                                            ; preds = %bb.ab
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 464 ; 3 uses
  %i.ew = load ptr, ptr %8, align 8, !tbaa !619   ; 5 uses
  store ptr null, ptr %8, align 8, !tbaa !619
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 472 ; 4 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !300 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 480 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !544
  %.not.i.i44 = icmp eq ptr %i.ey, %i.fa
  br i1 %.not.i.i44, label %bb.ad, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread: ; preds = %bb.ac
  %i.fb = ptrtoint ptr %i.ew to i64
  store i64 %i.fb, ptr %i.ey, align 8, !tbaa !567
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fd = load ptr, ptr %i.ev, align 8, !tbaa !303 ; 10 uses
  %i.fe = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.ff = ptrtoint ptr %i.fd to i64               ; 3 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775800
  br i1 %i.fh, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc57 unwind label %bb.aw

.noexc57:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45: ; preds = %bb.ad
  %i.fi = ashr exact i64 %i.fg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i46, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 1152921504606846975)
  %i.fm = select i1 %i.fk, i64 1152921504606846975, i64 %i.fl ; 4 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #33
          to label %.noexc58 unwind label %bb.aw  ; 12 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i45
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg
  %i.fq = ptrtoint ptr %i.ew to i64
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i48 = icmp eq ptr %i.fd, %i.ey
  br i1 %.not10.i.i.i.i.i.i.i48, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i.i.i49.preheader:                 ; preds = %.noexc58
  %14 = add i64 %i.fe, -8
  %15 = sub i64 %14, %i.ff                        ; 2 uses
  %i.fr = lshr i64 %15, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check158 = icmp ult i64 %15, 152
  br i1 %min.iters.check158, label %.lr.ph.i.i.i.i.i.i.i49.preheader173, label %vector.memcheck151

vector.memcheck151:                               ; preds = %.lr.ph.i.i.i.i.i.i.i49.preheader
  %i.ft = add i64 %i.fe, -8
  %i.fu = sub i64 %i.ft, %i.ff
  %i.fv = and i64 %i.fu, -8
  %i.fw = add i64 %i.fv, 8                        ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.fo, i64 %i.fw
  %scevgep153 = getelementptr i8, ptr %i.fd, i64 %i.fw
  %bound0154 = icmp ult ptr %i.fo, %scevgep153
  %bound1155 = icmp ult ptr %i.fd, %scevgep152
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph.i.i.i.i.i.i.i49.preheader173, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck151
  %n.vec161 = and i64 %i.fs, 4611686018427387900  ; 3 uses
  %i.fx = shl i64 %n.vec161, 3                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fo, i64 %i.fx  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fd, i64 %i.fx
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %i.ga = shl i64 %index163, 3                    ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.fo, i64 %i.ga ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.fd, i64 %i.ga ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.gb = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <2 x i64>, ptr %next.gep165, align 8, !tbaa !567, !alias.scope !626, !noalias !621
  %wide.load167 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !567, !alias.scope !626, !noalias !621
  %i.gc = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x i64> %wide.load166, ptr %next.gep164, align 8, !tbaa !567, !alias.scope !629, !noalias !626
  store <2 x i64> %wide.load167, ptr %i.gc, align 8, !tbaa !567, !alias.scope !629, !noalias !626
  %i.gd = getelementptr i8, ptr %next.gep165, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep165, align 8, !tbaa !567, !alias.scope !626, !noalias !621
  store <2 x ptr> splat (ptr null), ptr %i.gd, align 8, !tbaa !567, !alias.scope !626, !noalias !621
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.ge, label %middle.block169, label %vector.body162, !llvm.loop !631

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %i.fs, %n.vec161
  br i1 %cmp.n170, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i49.preheader173

.lr.ph.i.i.i.i.i.i.i49.preheader173:              ; preds = %vector.memcheck151, %.lr.ph.i.i.i.i.i.i.i49.preheader, %middle.block169
  %.012.i.i.i.i.i.i.i50.ph = phi ptr [ %i.fo, %vector.memcheck151 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i49.preheader ], [ %i.fy, %middle.block169 ]
  %.0911.i.i.i.i.i.i.i51.ph = phi ptr [ %i.fd, %vector.memcheck151 ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i49.preheader ], [ %i.fz, %middle.block169 ]
  br label %.lr.ph.i.i.i.i.i.i.i49

.lr.ph.i.i.i.i.i.i.i49:                           ; preds = %.lr.ph.i.i.i.i.i.i.i49.preheader173, %.lr.ph.i.i.i.i.i.i.i49
  %.012.i.i.i.i.i.i.i50 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i49 ], [ %.012.i.i.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i.i.i49.preheader173 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i51 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i.i49 ], [ %.0911.i.i.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i.i.i49.preheader173 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.gf = load i64, ptr %.0911.i.i.i.i.i.i.i51, align 8, !tbaa !567, !alias.scope !624, !noalias !621
  store i64 %i.gf, ptr %.012.i.i.i.i.i.i.i50, align 8, !tbaa !567, !alias.scope !621, !noalias !624
  store ptr null, ptr %.0911.i.i.i.i.i.i.i51, align 8, !tbaa !567, !alias.scope !624, !noalias !621
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i50, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i52 = icmp eq ptr %i.gg, %i.ey
  br i1 %.not.i.i.i.i.i.i.i52, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i49, !llvm.loop !632

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53: ; preds = %.lr.ph.i.i.i.i.i.i.i49, %middle.block169, %.noexc58
  %.0.lcssa.i.i.i.i.i.i.i54 = phi ptr [ %i.fo, %.noexc58 ], [ %i.fy, %middle.block169 ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.i49 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i54, i64 8 ; 2 uses
  %.not.i23.i.i.i55 = icmp eq ptr %i.fd, null
  br i1 %.not.i23.i.i.i55, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread140, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread140: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53
  store ptr %i.fo, ptr %i.ev, align 8, !tbaa !303
  store ptr %i.gi, ptr %i.ex, align 8, !tbaa !300
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.gj, ptr %i.ez, align 8, !tbaa !544
  br label %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i53
  call void @_ZdlPv(ptr noundef nonnull %i.fd) #31
  %.pre.pre = load ptr, ptr %8, align 8, !tbaa !619 ; 3 uses
  store ptr %i.fo, ptr %i.ev, align 8, !tbaa !303
  store ptr %i.gi, ptr %i.ex, align 8, !tbaa !300
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.gk, ptr %i.ez, align 8, !tbaa !544
  %.not.i63 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ForeignKeyConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20ForeignKeyConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62
  %i.gl = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(184) %.pre.pre) #30, !inline_history !633
  br label %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread140, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62.thread, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit62, %_ZNKSt14default_deleteIN6duckdb20ForeignKeyConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr null, ptr %9, align 8, !tbaa !634
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.go = load ptr, ptr %4, align 8, !tbaa !637
  store ptr null, ptr %4, align 8, !tbaa !637
  store ptr %i.go, ptr %11, align 8, !tbaa !639
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder25BindCreateTableCheckpointENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %10, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(248) %i.gp)
          to label %bb.af unwind label %bb.ax

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20ForeignKeyConstraintESt14default_deleteIS1_EED2Ev.exit
  %i.gq = load ptr, ptr %10, align 8, !tbaa !641
  store ptr null, ptr %10, align 8, !tbaa !641
  %i.gr = load ptr, ptr %9, align 8, !tbaa !641   ; 3 uses
  store ptr %i.gq, ptr %9, align 8, !tbaa !641
  %.not.i.i.i.i.i64 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i64, label %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.af
  call void @_ZN6duckdb20BoundCreateTableInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.gr) #30
  call void @_ZdlPv(ptr noundef nonnull %i.gr) #31
  %.pr95 = load ptr, ptr %10, align 8, !tbaa !641 ; 3 uses
  %.not.i65 = icmp eq ptr %.pr95, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb20BoundCreateTableInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %.pr95) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr95) #31
  br label %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.af, %_ZN6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i
  %i.gs = load ptr, ptr %11, align 8, !tbaa !214  ; 3 uses
  %.not.i66 = icmp eq ptr %i.gs, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !7
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(320) %i.gs) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.gz = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %bb.ay

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ha = invoke noalias noundef nonnull dereferenceable(688) ptr @_Znwm(i64 noundef 688) #33
          to label %.noexc69 unwind label %bb.ay, !inline_history !642 ; 3 uses

.noexc69:                                         ; preds = %bb.ag
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !94, !noalias !643 ; 2 uses
  %i.hf = load <2 x ptr>, ptr %i.hb, align 8, !tbaa !95, !noalias !643
  store <2 x ptr> %i.hf, ptr %3, align 16, !tbaa !95, !noalias !643
  %.not.i.i.i.i.i67 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i.i67, label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc69
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 3 uses
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !643
  %.not.i.i.i.i.i.i = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !3, !noalias !643
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !3, !noalias !643
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.hk = atomicrmw volatile add ptr %i.hg, i32 1 acq_rel, align 4, !noalias !643 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i: ; preds = %bb.aj, %bb.ai, %.noexc69
  invoke void @_ZN6duckdb14DuckTableEntryC1ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoENS_10shared_ptrINS_9DataTableELb1EEE(ptr noundef nonnull align 8 dereferenceable(688) %i.ha, ptr noundef nonnull align 8 dereferenceable(80) %i.gx, ptr noundef nonnull align 8 dereferenceable(248) %i.gy, ptr noundef nonnull align 8 dereferenceable(360) %i.gz, ptr noundef nonnull %3)
          to label %bb.ak unwind label %bb.ar, !noalias !643, !inline_history !642

bb.ak:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !94, !noalias !643 ; 8 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i68, label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8, !noalias !643 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.hm, align 8, !tbaa !99, !noalias !643
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !101, !noalias !643
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !7, !noalias !643
end_hunk_3
begin_hunk_4_@_ZN6duckdb14DuckTableEntry12RenameColumnERNS_13ClientContextERNS_16RenameColumnInfoE:bb.a
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !660
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
  %i.hn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.hb, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hn) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.loopexit

bb.bx:                                            ; preds = %.lr.ph214, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread190
  %.045213 = phi i64 [ 0, %.lr.ph214 ], [ %i.ia, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread190 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %.045213 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !18
  %i.hr = icmp eq i64 %i.hq, %i.hg
  br i1 %i.hr, label %bb.by, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread190

bb.by:                                            ; preds = %bb.bx
  br i1 %i.hi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126: ; preds = %bb.by
  %i.hs = load ptr, ptr %i.ho, align 8, !tbaa !15
  %bcmp.i125 = call i32 @bcmp(ptr %i.hs, ptr %i.hh, i64 %i.hg)
  %i.ht = icmp eq i32 %bcmp.i125, 0
  br i1 %i.ht, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread190

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread: ; preds = %bb.by, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126
  %i.hu = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.thread

bb.bz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_throw(ptr nonnull %i.hu, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.dp unwind label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.043 = phi i1 [ false, %bb.ca ], [ true, %bb.bz ] ; 2 uses
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hx = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.cb
  call void @_ZdlPv(ptr noundef %i.hx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.043, label %bb.cc, label %.body122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.043, label %bb.cc, label %.body122

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %.pn76193 = phi { ptr, i32 } [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.thread ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ]
  call void @__cxa_free_exception(ptr %i.hu) #30
  br label %.body122

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126.thread190: ; preds = %bb.bx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit126
  %i.ia = add nuw i64 %.045213, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ia, %i.hf
  br i1 %exitcond.not, label %.lr.ph.i.i.i, label %bb.bx, !llvm.loop !664

.body122:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %.body109, %bb.bs
  %.pn76.pn.pn = phi { ptr, i32 } [ %i.gz, %.body109 ], [ %i.fx, %bb.bs ], [ %.pn76193, %bb.cc ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #30
  br label %.body

.body:                                            ; preds = %.loopexit199, %.loopexit.split-lp200, %bb.bo, %bb.bn, %.body122
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn, %.body122 ], [ %i.fm, %bb.bn ], [ %i.fm, %bb.bo ], [ %lpad.loopexit201, %.loopexit199 ], [ %lpad.loopexit.split-lp202, %.loopexit.split-lp200 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.cm

bb.cd:                                            ; preds = %bb.au
  %i.ib = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ce unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_throw(ptr nonnull %i.ib, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.dp unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread: ; preds = %bb.cd
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.0 = phi i1 [ false, %bb.cf ], [ true, %bb.ce ] ; 2 uses
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ie = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.cg
  call void @_ZdlPv(ptr noundef %i.ie) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br i1 %.0, label %bb.ch, label %bb.cm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br i1 %.0, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %.pn85196 = phi { ptr, i32 } [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.thread ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ]
  call void @__cxa_free_exception(ptr %i.ib) #30
  br label %bb.cm

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.be, %bb.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.au
  %i.ih = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ci unwind label %.loopexit198 ; 3 uses

bb.ci:                                            ; preds = %.loopexit
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 464 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 472 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !300 ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 480 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.ik, %i.im
  br i1 %.not.i.i, label %bb.cj, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ci
  %i.in = load i64, ptr %10, align 8, !tbaa !567
  store i64 %i.in, ptr %i.ik, align 8, !tbaa !567
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.io, ptr %i.ij, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.cj:                                            ; preds = %bb.ci
  %i.ip = load ptr, ptr %i.ii, align 8, !tbaa !303 ; 10 uses
  %i.iq = ptrtoint ptr %i.ik to i64               ; 3 uses
  %i.ir = ptrtoint ptr %i.ip to i64               ; 3 uses
  %i.is = sub i64 %i.iq, %i.ir                    ; 3 uses
  %i.it = icmp eq i64 %i.is, 9223372036854775800
  br i1 %i.it, label %bb.ck, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc134 unwind label %.loopexit.split-lp

.noexc134:                                        ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cj
  %i.iu = ashr exact i64 %i.is, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.iu, i64 1)
  %i.iv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.iu ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %i.iu
  %i.ix = call i64 @llvm.umin.i64(i64 %i.iv, i64 1152921504606846975)
  %i.iy = select i1 %i.iw, i64 1152921504606846975, i64 %i.ix ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.iy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.iz = shl nuw nsw i64 %i.iy, 3
  %i.ja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #33
          to label %.noexc135 unwind label %.loopexit198 ; 10 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.is
  %i.jc = load i64, ptr %10, align 8, !tbaa !567
  store i64 %i.jc, ptr %i.jb, align 8, !tbaa !567
  store ptr null, ptr %10, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ip, %i.ik
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc135
  %19 = add i64 %i.iq, -8
  %20 = sub i64 %19, %i.ir                        ; 2 uses
  %i.jd = lshr i64 %20, 3
  %i.je = add nuw nsw i64 %i.jd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %20, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader280, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ja, i64 8
  %i.jf = add i64 %i.iq, -8
  %i.jg = sub i64 %i.jf, %i.ir
  %i.jh = and i64 %i.jg, -8                       ; 2 uses
  %scevgep274 = getelementptr i8, ptr %scevgep, i64 %i.jh
  %scevgep275 = getelementptr i8, ptr %i.ip, i64 8
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.jh
  %bound0 = icmp ult ptr %i.ja, %scevgep276
  %bound1 = icmp ult ptr %i.ip, %scevgep274
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader280, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.je, 4611686018427387900     ; 3 uses
  %i.ji = shl i64 %n.vec, 3                       ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ja, i64 %i.ji  ; 2 uses
  %i.jk = getelementptr i8, ptr %i.ip, i64 %i.ji
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ja, i64 %i.jl ; 2 uses
  %next.gep277 = getelementptr i8, ptr %i.ip, i64 %i.jl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.jm = getelementptr i8, ptr %next.gep277, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep277, align 8, !tbaa !567, !alias.scope !670, !noalias !665
  %wide.load278 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !567, !alias.scope !670, !noalias !665
  %i.jn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !673, !noalias !670
  store <2 x i64> %wide.load278, ptr %i.jn, align 8, !tbaa !567, !alias.scope !673, !noalias !670
  %i.jo = getelementptr i8, ptr %next.gep277, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep277, align 8, !tbaa !567, !alias.scope !670, !noalias !665
  store <2 x ptr> splat (ptr null), ptr %i.jo, align 8, !tbaa !567, !alias.scope !670, !noalias !665
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jp = icmp eq i64 %index.next, %n.vec
  br i1 %i.jp, label %middle.block, label %vector.body, !llvm.loop !675

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.je, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader280

.lr.ph.i.i.i.i.i.i.i.preheader280:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ja, %vector.memcheck ], [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.jj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ip, %vector.memcheck ], [ %i.ip, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.jk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader280, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader280 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader280 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.jq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !668, !noalias !665
  store i64 %i.jq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !665, !noalias !668
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !668, !noalias !665
  %i.jr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jr, %i.ik
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !676

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc135
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ja, %.noexc135 ], [ %i.jj, %middle.block ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ip) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.cl
  store ptr %i.ja, ptr %i.ii, align 8, !tbaa !303
  store ptr %i.jt, ptr %i.ij, align 8, !tbaa !300
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.iy
  store ptr %i.ju, ptr %i.il, align 8, !tbaa !544
  %.pr = load ptr, ptr %10, align 8, !tbaa !567   ; 3 uses
  %.not.i136 = icmp eq ptr %.pr, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.jv = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.jy = add nuw i64 %.072220, 1                 ; 2 uses
  %i.jz = load ptr, ptr %i.by, align 8, !tbaa !300
  %i.ka = load ptr, ptr %i.bx, align 8, !tbaa !303
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = ashr exact i64 %i.kd, 3
  %i.kf = icmp ult i64 %i.jy, %i.ke
  br i1 %i.kf, label %bb.aq, label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit._crit_edge, !llvm.loop !677

bb.cm:                                            ; preds = %.loopexit198, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.br, %.body, %bb.bf, %bb.bi, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.ch, %bb.ba
  %.pn85.pn = phi { ptr, i32 } [ %.pn85196, %bb.ch ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.ed, %bb.ba ], [ %i.el, %bb.bg ], [ %i.ek, %bb.bf ], [ %i.eu, %bb.bi ], [ %.pn76.pn.pn.pn, %.body ], [ %i.fw, %bb.br ], [ %lpad.loopexit, %.loopexit198 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.kg = load ptr, ptr %10, align 8, !tbaa !567  ; 3 uses
  %.not.i137 = icmp eq ptr %i.kg, null
  br i1 %.not.i137, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit139, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i138

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i138: ; preds = %bb.cm
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !7
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.kg) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit139

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit139: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i138, %bb.cm, %bb.av
  %.pn85.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.av ], [ %.pn85.pn, %bb.cm ], [ %.pn85.pn, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.dn

bb.cn:                                            ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.kk = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.co unwind label %bb.dj

bb.co:                                            ; preds = %bb.cn
  %i.kl = load ptr, ptr %7, align 8, !tbaa !637
  store ptr null, ptr %7, align 8, !tbaa !637
  store ptr %i.kl, ptr %18, align 8, !tbaa !639
  %i.km = load ptr, ptr %i.l, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder19BindCreateTableInfoENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %17, ptr noundef nonnull align 8 dereferenceable(472) %i.kk, ptr noundef nonnull %18, ptr noundef nonnull align 8 dereferenceable(248) %i.km)
          to label %bb.cp unwind label %bb.dk

bb.cp:                                            ; preds = %bb.co
  %i.kn = load ptr, ptr %18, align 8, !tbaa !214  ; 3 uses
  %.not.i140 = icmp eq ptr %i.kn, null
  br i1 %.not.i140, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.cp
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !7
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(320) %i.kn) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cp, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.kt = load ptr, ptr %i.l, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.ku = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cq unwind label %bb.dl

bb.cq:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.kv = invoke noalias noundef nonnull dereferenceable(688) ptr @_Znwm(i64 noundef 688) #33
          to label %.noexc143 unwind label %bb.dl, !inline_history !642 ; 3 uses

.noexc143:                                        ; preds = %bb.cq
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !94, !noalias !678 ; 2 uses
  %i.la = load <2 x ptr>, ptr %i.kw, align 8, !tbaa !95, !noalias !678
  store <2 x ptr> %i.la, ptr %4, align 16, !tbaa !95, !noalias !678
  %.not.i.i.i.i.i141 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i.i141, label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i, label %bb.cr

bb.cr:                                            ; preds = %.noexc143
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 3 uses
  %i.lc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !678
  %.not.i.i.i.i.i.i = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ld = load i32, ptr %i.lb, align 4, !tbaa !3, !noalias !678
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.lb, align 4, !tbaa !3, !noalias !678
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

bb.ct:                                            ; preds = %bb.cr
  %i.lf = atomicrmw volatile add ptr %i.lb, i32 1 acq_rel, align 4, !noalias !678 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i: ; preds = %bb.ct, %bb.cs, %.noexc143
  invoke void @_ZN6duckdb14DuckTableEntryC1ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoENS_10shared_ptrINS_9DataTableELb1EEE(ptr noundef nonnull align 8 dereferenceable(688) %i.kv, ptr noundef nonnull align 8 dereferenceable(80) %i.ks, ptr noundef nonnull align 8 dereferenceable(248) %i.kt, ptr noundef nonnull align 8 dereferenceable(360) %i.ku, ptr noundef nonnull %4)
          to label %bb.cu unwind label %bb.db, !noalias !678, !inline_history !642

bb.cu:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !94, !noalias !678 ; 8 uses
  %.not.i.i.i.i142 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i142, label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 4 uses
  %i.li = load atomic i64, ptr %i.lh acquire, align 8, !noalias !678 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 4294967297
  %i.lk = trunc i64 %i.li to i32                  ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb14DuckTableEntry12RenameColumnERNS_13ClientContextERNS_16RenameColumnInfoE:bb.a
  %.pn97.pn = phi { ptr, i32 } [ %.pn97188, %bb.f ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn89.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit156 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn97.pn

bb.dp:                                            ; preds = %bb.cf, %bb.ca, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14DuckTableEntry11RenameFieldERNS_13ClientContextERNS_15RenameFieldInfoE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(176) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::DroppedFieldMapping", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.duckdb::vector.151", align 8 ; 19 uses
  %13 = alloca %"class.duckdb::unique_ptr.1034", align 8 ; 8 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %15 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %18 = alloca %"class.duckdb::unique_ptr.1001", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::ChangeColumnTypeInfo", align 8 ; 7 uses
  %20 = alloca %"struct.duckdb::AlterEntryData", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %23 = alloca %"class.duckdb::unique_ptr.805", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 6 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb10ColumnList12ColumnExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bs unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.013 = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.013, label %bb.g, label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.013, label %bb.g, label %bb.br

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn195 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.br

bb.h:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.n = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @_ZN6duckdb21RenameFieldFromStructERKNS_11LogicalTypeERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEERKS9_m(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::DroppedFieldMapping") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 1)
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !681, !range !70, !noundef !71
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %10) #32
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %10, align 8, !tbaa !15    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.v) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.l
  %.pn50 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.u, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bq

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.o unwind label %bb.ax

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1034") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.p unwind label %bb.ax

bb.p:                                             ; preds = %bb.o
  %i.z = load ptr, ptr %13, align 8, !tbaa !685   ; 5 uses
  store ptr null, ptr %13, align 8, !tbaa !685
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 14 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.q, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.p
  %i.ae = ptrtoint ptr %i.z to i64
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !168
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.ah = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #33
          to label %.noexc57 unwind label %bb.ay  ; 12 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  %i.at = ptrtoint ptr %i.z to i64
  store i64 %i.at, ptr %i.as, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc57
  %24 = add i64 %i.ah, -8
  %25 = sub i64 %24, %i.ai                        ; 2 uses
  %i.au = lshr i64 %25, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %25, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader325, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aw = add i64 %i.ah, -8
  %i.ax = sub i64 %i.aw, %i.ai
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.az
  %scevgep250 = getelementptr i8, ptr %i.ag, i64 %i.az
  %bound0 = icmp ult ptr %i.ar, %scevgep250
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader325, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ar, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ag, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %next.gep251 = getelementptr i8, ptr %i.ag, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.be = getelementptr i8, ptr %next.gep251, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep251, align 8, !tbaa !168, !alias.scope !692, !noalias !687
  %wide.load252 = load <2 x i64>, ptr %i.be, align 8, !tbaa !168, !alias.scope !692, !noalias !687
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !695, !noalias !692
  store <2 x i64> %wide.load252, ptr %i.bf, align 8, !tbaa !168, !alias.scope !695, !noalias !692
  %i.bg = getelementptr i8, ptr %next.gep251, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep251, align 8, !tbaa !168, !alias.scope !692, !noalias !687
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !168, !alias.scope !692, !noalias !687
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader325

.lr.ph.i.i.i.i.i.i.i.preheader325:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader325, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader325 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader325 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !690, !noalias !687
  store i64 %i.bi, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !687, !noalias !690
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !690, !noalias !687
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !698

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc57
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc57 ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread241, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread241: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ar, ptr %12, align 8, !tbaa !170
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !166
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #31
  %.pre.pre = load ptr, ptr %13, align 8, !tbaa !685 ; 3 uses
  store ptr %i.ar, ptr %12, align 8, !tbaa !170
  store ptr %i.bl, ptr %i.aa, align 8, !tbaa !166
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bn, ptr %i.ac, align 8, !tbaa !167
  %.not.i58 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bo = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(80) %.pre.pre) #30, !inline_history !699
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread241, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %bb.s unwind label %bb.az

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %15)
          to label %bb.t unwind label %bb.ba

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bs = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc59 unwind label %bb.bb  ; 6 uses

.noexc59:                                         ; preds = %bb.t
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %14) #30, !noalias !700
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bs, ptr noundef nonnull %6)
          to label %bb.v unwind label %bb.u, !noalias !700

bb.u:                                             ; preds = %.noexc59
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !noalias !700
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #31, !noalias !700
  br label %.body

bb.v:                                             ; preds = %.noexc59
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 6 uses
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !167
  %.not.i.i60 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = ptrtoint ptr %i.bs to i64
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !168
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bx, ptr %i.aa, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.by = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.bz = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.y, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i61

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc73 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit151

.noexc73:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i61: ; preds = %bb.x
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i62 = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i62, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i.i63 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i.i63)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #33
          to label %.noexc74 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit151 ; 10 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i61
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  %i.cl = ptrtoint ptr %i.bs to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i64 = icmp eq ptr %i.by, %i.bu
  br i1 %.not10.i.i.i.i.i.i.i64, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65.preheader

.lr.ph.i.i.i.i.i.i.i65.preheader:                 ; preds = %.noexc74
  %26 = add i64 %i.bz, -8
  %27 = sub i64 %26, %i.ca                        ; 2 uses
  %i.cm = lshr i64 %27, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check261 = icmp ult i64 %27, 152
  br i1 %min.iters.check261, label %.lr.ph.i.i.i.i.i.i.i65.preheader323, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.lr.ph.i.i.i.i.i.i.i65.preheader
  %i.co = add i64 %i.bz, -8
  %i.cp = sub i64 %i.co, %i.ca
  %i.cq = and i64 %i.cp, -8
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %scevgep255 = getelementptr i8, ptr %i.cj, i64 %i.cr
  %scevgep256 = getelementptr i8, ptr %i.by, i64 %i.cr
  %bound0257 = icmp ult ptr %i.cj, %scevgep256
  %bound1258 = icmp ult ptr %i.by, %scevgep255
  %found.conflict259 = and i1 %bound0257, %bound1258
  br i1 %found.conflict259, label %.lr.ph.i.i.i.i.i.i.i65.preheader323, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck254
  %n.vec264 = and i64 %i.cn, 4611686018427387900  ; 3 uses
  %i.cs = shl i64 %n.vec264, 3                    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cj, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %i.by, i64 %i.cs
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph262
  %index266 = phi i64 [ 0, %vector.ph262 ], [ %index.next271, %vector.body265 ] ; 2 uses
  %i.cv = shl i64 %index266, 3                    ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.cj, i64 %i.cv ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.by, i64 %i.cv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.cw = getelementptr i8, ptr %next.gep268, i64 16
  %wide.load269 = load <2 x i64>, ptr %next.gep268, align 8, !tbaa !168, !alias.scope !708, !noalias !703
  %wide.load270 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !168, !alias.scope !708, !noalias !703
  %i.cx = getelementptr i8, ptr %next.gep267, i64 16
  store <2 x i64> %wide.load269, ptr %next.gep267, align 8, !tbaa !168, !alias.scope !711, !noalias !708
  store <2 x i64> %wide.load270, ptr %i.cx, align 8, !tbaa !168, !alias.scope !711, !noalias !708
  %i.cy = getelementptr i8, ptr %next.gep268, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep268, align 8, !tbaa !168, !alias.scope !708, !noalias !703
  store <2 x ptr> splat (ptr null), ptr %i.cy, align 8, !tbaa !168, !alias.scope !708, !noalias !703
  %index.next271 = add nuw i64 %index266, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next271, %n.vec264
  br i1 %i.cz, label %middle.block272, label %vector.body265, !llvm.loop !713

middle.block272:                                  ; preds = %vector.body265
  %cmp.n273 = icmp eq i64 %i.cn, %n.vec264
  br i1 %cmp.n273, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65.preheader323

.lr.ph.i.i.i.i.i.i.i65.preheader323:              ; preds = %vector.memcheck254, %.lr.ph.i.i.i.i.i.i.i65.preheader, %middle.block272
  %.012.i.i.i.i.i.i.i66.ph = phi ptr [ %i.cj, %vector.memcheck254 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i65.preheader ], [ %i.ct, %middle.block272 ]
  %.0911.i.i.i.i.i.i.i67.ph = phi ptr [ %i.by, %vector.memcheck254 ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i65.preheader ], [ %i.cu, %middle.block272 ]
  br label %.lr.ph.i.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i.i65:                           ; preds = %.lr.ph.i.i.i.i.i.i.i65.preheader323, %.lr.ph.i.i.i.i.i.i.i65
  %.012.i.i.i.i.i.i.i66 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i65 ], [ %.012.i.i.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i.i.i65.preheader323 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i67 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i65 ], [ %.0911.i.i.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i.i.i65.preheader323 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.da = load i64, ptr %.0911.i.i.i.i.i.i.i67, align 8, !tbaa !168, !alias.scope !706, !noalias !703
  store i64 %i.da, ptr %.012.i.i.i.i.i.i.i66, align 8, !tbaa !168, !alias.scope !703, !noalias !706
  store ptr null, ptr %.0911.i.i.i.i.i.i.i67, align 8, !tbaa !168, !alias.scope !706, !noalias !703
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i67, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i66, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i68 = icmp eq ptr %i.db, %i.bu
  br i1 %.not.i.i.i.i.i.i.i68, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65, !llvm.loop !714

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i.i.i65, %middle.block272, %.noexc74
  %.0.lcssa.i.i.i.i.i.i.i70 = phi ptr [ %i.cj, %.noexc74 ], [ %i.ct, %middle.block272 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i65 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i70, i64 8
  %.not.i23.i.i.i71 = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i71, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i72, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69
  call void @_ZdlPv(ptr noundef nonnull %i.by) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i72

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i72: ; preds = %bb.z, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i69
  store ptr %i.cj, ptr %12, align 8, !tbaa !170
  store ptr %i.dd, ptr %i.aa, align 8, !tbaa !166
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.de, ptr %i.ac, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i72, %bb.w
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.df = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc80 unwind label %bb.be  ; 6 uses

.noexc80:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %9) #30, !noalias !715
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull %5)
          to label %bb.ab unwind label %bb.aa, !noalias !715

bb.aa:                                            ; preds = %.noexc80
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !715
  call void @_ZdlPv(ptr noundef nonnull %i.df) #31, !noalias !715
  br label %.body81

bb.ab:                                            ; preds = %.noexc80
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !715
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dh = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 6 uses
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !167
  %.not.i.i84 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i.i84, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = ptrtoint ptr %i.df to i64
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !168
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dk, ptr %i.aa, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit105

bb.ad:                                            ; preds = %bb.ab
  %i.dl = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.dm = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.dn = ptrtoint ptr %i.dl to i64               ; 3 uses
  %i.do = sub i64 %i.dm, %i.dn                    ; 3 uses
  %i.dp = icmp eq i64 %i.do, 9223372036854775800
  br i1 %i.dp, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc97 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit157

.noexc97:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85: ; preds = %bb.ad
  %i.dq = ashr exact i64 %i.do, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i86 = call i64 @llvm.umax.i64(i64 %i.dq, i64 1)
  %i.dr = add nsw i64 %.sroa.speculated.i.i.i.i86, %i.dq ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dr, i64 1152921504606846975)
  %i.du = select i1 %i.ds, i64 1152921504606846975, i64 %i.dt ; 3 uses
  %.not.i.i.i.i87 = icmp ne i64 %i.du, 0
  call void @llvm.assume(i1 %.not.i.i.i.i87)
  %i.dv = shl nuw nsw i64 %i.du, 3
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #33
          to label %.noexc98 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit157 ; 10 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i85
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do
  %i.dy = ptrtoint ptr %i.df to i64
  store i64 %i.dy, ptr %i.dx, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i88 = icmp eq ptr %i.dl, %i.dh
  br i1 %.not10.i.i.i.i.i.i.i88, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i.i.i89.preheader:                 ; preds = %.noexc98
  %28 = add i64 %i.dm, -8
  %29 = sub i64 %28, %i.dn                        ; 2 uses
  %i.dz = lshr i64 %29, 3
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check283 = icmp ult i64 %29, 152
  br i1 %min.iters.check283, label %.lr.ph.i.i.i.i.i.i.i89.preheader321, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph.i.i.i.i.i.i.i89.preheader
  %i.eb = add i64 %i.dm, -8
  %i.ec = sub i64 %i.eb, %i.dn
  %i.ed = and i64 %i.ec, -8
  %i.ee = add i64 %i.ed, 8                        ; 2 uses
  %scevgep277 = getelementptr i8, ptr %i.dw, i64 %i.ee
  %scevgep278 = getelementptr i8, ptr %i.dl, i64 %i.ee
  %bound0279 = icmp ult ptr %i.dw, %scevgep278
  %bound1280 = icmp ult ptr %i.dl, %scevgep277
  %found.conflict281 = and i1 %bound0279, %bound1280
  br i1 %found.conflict281, label %.lr.ph.i.i.i.i.i.i.i89.preheader321, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck276
  %n.vec286 = and i64 %i.ea, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec286, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dw, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dl, i64 %i.ef
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph284
  %index288 = phi i64 [ 0, %vector.ph284 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %i.ei = shl i64 %index288, 3                    ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.dw, i64 %i.ei ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.dl, i64 %i.ei ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.ej = getelementptr i8, ptr %next.gep290, i64 16
  %wide.load291 = load <2 x i64>, ptr %next.gep290, align 8, !tbaa !168, !alias.scope !723, !noalias !718
  %wide.load292 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !168, !alias.scope !723, !noalias !718
  %i.ek = getelementptr i8, ptr %next.gep289, i64 16
  store <2 x i64> %wide.load291, ptr %next.gep289, align 8, !tbaa !168, !alias.scope !726, !noalias !723
  store <2 x i64> %wide.load292, ptr %i.ek, align 8, !tbaa !168, !alias.scope !726, !noalias !723
  %i.el = getelementptr i8, ptr %next.gep290, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep290, align 8, !tbaa !168, !alias.scope !723, !noalias !718
  store <2 x ptr> splat (ptr null), ptr %i.el, align 8, !tbaa !168, !alias.scope !723, !noalias !718
  %index.next293 = add nuw i64 %index288, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next293, %n.vec286
  br i1 %i.em, label %middle.block294, label %vector.body287, !llvm.loop !728

middle.block294:                                  ; preds = %vector.body287
  %cmp.n295 = icmp eq i64 %i.ea, %n.vec286
  br i1 %cmp.n295, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89.preheader321

.lr.ph.i.i.i.i.i.i.i89.preheader321:              ; preds = %vector.memcheck276, %.lr.ph.i.i.i.i.i.i.i89.preheader, %middle.block294
  %.012.i.i.i.i.i.i.i90.ph = phi ptr [ %i.dw, %vector.memcheck276 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.eg, %middle.block294 ]
  %.0911.i.i.i.i.i.i.i91.ph = phi ptr [ %i.dl, %vector.memcheck276 ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i89.preheader ], [ %i.eh, %middle.block294 ]
  br label %.lr.ph.i.i.i.i.i.i.i89

.lr.ph.i.i.i.i.i.i.i89:                           ; preds = %.lr.ph.i.i.i.i.i.i.i89.preheader321, %.lr.ph.i.i.i.i.i.i.i89
  %.012.i.i.i.i.i.i.i90 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.012.i.i.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i.i.i89.preheader321 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i91 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i89 ], [ %.0911.i.i.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i.i.i89.preheader321 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.en = load i64, ptr %.0911.i.i.i.i.i.i.i91, align 8, !tbaa !168, !alias.scope !721, !noalias !718
  store i64 %i.en, ptr %.012.i.i.i.i.i.i.i90, align 8, !tbaa !168, !alias.scope !718, !noalias !721
  store ptr null, ptr %.0911.i.i.i.i.i.i.i91, align 8, !tbaa !168, !alias.scope !721, !noalias !718
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i91, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i90, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq ptr %i.eo, %i.dh
  br i1 %.not.i.i.i.i.i.i.i92, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i89, !llvm.loop !729

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93: ; preds = %.lr.ph.i.i.i.i.i.i.i89, %middle.block294, %.noexc98
  %.0.lcssa.i.i.i.i.i.i.i94 = phi ptr [ %i.dw, %.noexc98 ], [ %i.eg, %middle.block294 ], [ %i.ep, %.lr.ph.i.i.i.i.i.i.i89 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i94, i64 8
  %.not.i23.i.i.i95 = icmp eq ptr %i.dl, null
  br i1 %.not.i23.i.i.i95, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i96, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93
  call void @_ZdlPv(ptr noundef nonnull %i.dl) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i96

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i96: ; preds = %bb.af, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i93
  store ptr %i.dw, ptr %12, align 8, !tbaa !170
  store ptr %i.eq, ptr %i.aa, align 8, !tbaa !166
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.du
  store ptr %i.er, ptr %i.ac, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit105

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit105: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i96, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef zeroext 1)
          to label %bb.ag unwind label %bb.bf

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit105
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull %17)
          to label %bb.ah unwind label %bb.bg

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.es = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc106 unwind label %bb.bh ; 6 uses

.noexc106:                                        ; preds = %bb.ah
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %16) #30, !noalias !730
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.es, ptr noundef nonnull %4)
          to label %bb.aj unwind label %bb.ai, !noalias !730

bb.ai:                                            ; preds = %.noexc106
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !730
  call void @_ZdlPv(ptr noundef nonnull %i.es) #31, !noalias !730
  br label %.body107

bb.aj:                                            ; preds = %.noexc106
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !730
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.eu = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 6 uses
  %i.ev = load ptr, ptr %i.ac, align 8, !tbaa !167
  %.not.i.i110 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i110, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = ptrtoint ptr %i.es to i64
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !168
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.ex, ptr %i.aa, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit131

bb.al:                                            ; preds = %bb.aj
  %i.ey = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.ez = ptrtoint ptr %i.eu to i64               ; 3 uses
  %i.fa = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.fb = sub i64 %i.ez, %i.fa                    ; 3 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775800
  br i1 %i.fc, label %bb.am, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i111

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc123 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit163

.noexc123:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i111: ; preds = %bb.al
  %i.fd = ashr exact i64 %i.fb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i112 = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %i.fe = add nsw i64 %.sroa.speculated.i.i.i.i112, %i.fd ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fd
  %i.fg = call i64 @llvm.umin.i64(i64 %i.fe, i64 1152921504606846975)
  %i.fh = select i1 %i.ff, i64 1152921504606846975, i64 %i.fg ; 3 uses
  %.not.i.i.i.i113 = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i113)
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #33
          to label %.noexc124 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit163 ; 10 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i111
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fb
  %i.fl = ptrtoint ptr %i.es to i64
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i114 = icmp eq ptr %i.ey, %i.eu
  br i1 %.not10.i.i.i.i.i.i.i114, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i115.preheader

.lr.ph.i.i.i.i.i.i.i115.preheader:                ; preds = %.noexc124
  %30 = add i64 %i.ez, -8
  %31 = sub i64 %30, %i.fa                        ; 2 uses
  %i.fm = lshr i64 %31, 3
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check305 = icmp ult i64 %31, 152
  br i1 %min.iters.check305, label %.lr.ph.i.i.i.i.i.i.i115.preheader320, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.i.i.i.i.i.i.i115.preheader
  %i.fo = add i64 %i.ez, -8
  %i.fp = sub i64 %i.fo, %i.fa
  %i.fq = and i64 %i.fp, -8
  %i.fr = add i64 %i.fq, 8                        ; 2 uses
  %scevgep299 = getelementptr i8, ptr %i.fj, i64 %i.fr
  %scevgep300 = getelementptr i8, ptr %i.ey, i64 %i.fr
  %bound0301 = icmp ult ptr %i.fj, %scevgep300
  %bound1302 = icmp ult ptr %i.ey, %scevgep299
  %found.conflict303 = and i1 %bound0301, %bound1302
  br i1 %found.conflict303, label %.lr.ph.i.i.i.i.i.i.i115.preheader320, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck298
  %n.vec308 = and i64 %i.fn, 4611686018427387900  ; 3 uses
  %i.fs = shl i64 %n.vec308, 3                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fj, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ey, i64 %i.fs
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph306
  %index310 = phi i64 [ 0, %vector.ph306 ], [ %index.next315, %vector.body309 ] ; 2 uses
  %i.fv = shl i64 %index310, 3                    ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.fj, i64 %i.fv ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.ey, i64 %i.fv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.fw = getelementptr i8, ptr %next.gep312, i64 16
  %wide.load313 = load <2 x i64>, ptr %next.gep312, align 8, !tbaa !168, !alias.scope !738, !noalias !733
  %wide.load314 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !168, !alias.scope !738, !noalias !733
  %i.fx = getelementptr i8, ptr %next.gep311, i64 16
  store <2 x i64> %wide.load313, ptr %next.gep311, align 8, !tbaa !168, !alias.scope !741, !noalias !738
  store <2 x i64> %wide.load314, ptr %i.fx, align 8, !tbaa !168, !alias.scope !741, !noalias !738
  %i.fy = getelementptr i8, ptr %next.gep312, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep312, align 8, !tbaa !168, !alias.scope !738, !noalias !733
  store <2 x ptr> splat (ptr null), ptr %i.fy, align 8, !tbaa !168, !alias.scope !738, !noalias !733
  %index.next315 = add nuw i64 %index310, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next315, %n.vec308
  br i1 %i.fz, label %middle.block316, label %vector.body309, !llvm.loop !743

middle.block316:                                  ; preds = %vector.body309
  %cmp.n317 = icmp eq i64 %i.fn, %n.vec308
  br i1 %cmp.n317, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i115.preheader320

.lr.ph.i.i.i.i.i.i.i115.preheader320:             ; preds = %vector.memcheck298, %.lr.ph.i.i.i.i.i.i.i115.preheader, %middle.block316
  %.012.i.i.i.i.i.i.i116.ph = phi ptr [ %i.fj, %vector.memcheck298 ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i115.preheader ], [ %i.ft, %middle.block316 ]
  %.0911.i.i.i.i.i.i.i117.ph = phi ptr [ %i.ey, %vector.memcheck298 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i115.preheader ], [ %i.fu, %middle.block316 ]
  br label %.lr.ph.i.i.i.i.i.i.i115

.lr.ph.i.i.i.i.i.i.i115:                          ; preds = %.lr.ph.i.i.i.i.i.i.i115.preheader320, %.lr.ph.i.i.i.i.i.i.i115
  %.012.i.i.i.i.i.i.i116 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i.i115 ], [ %.012.i.i.i.i.i.i.i116.ph, %.lr.ph.i.i.i.i.i.i.i115.preheader320 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i117 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i115 ], [ %.0911.i.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i.i115.preheader320 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.ga = load i64, ptr %.0911.i.i.i.i.i.i.i117, align 8, !tbaa !168, !alias.scope !736, !noalias !733
  store i64 %i.ga, ptr %.012.i.i.i.i.i.i.i116, align 8, !tbaa !168, !alias.scope !733, !noalias !736
  store ptr null, ptr %.0911.i.i.i.i.i.i.i117, align 8, !tbaa !168, !alias.scope !736, !noalias !733
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i117, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i116, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i118 = icmp eq ptr %i.gb, %i.eu
  br i1 %.not.i.i.i.i.i.i.i118, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i115, !llvm.loop !744

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119: ; preds = %.lr.ph.i.i.i.i.i.i.i115, %middle.block316, %.noexc124
  %.0.lcssa.i.i.i.i.i.i.i120 = phi ptr [ %i.fj, %.noexc124 ], [ %i.ft, %middle.block316 ], [ %i.gc, %.lr.ph.i.i.i.i.i.i.i115 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i120, i64 8
  %.not.i23.i.i.i121 = icmp eq ptr %i.ey, null
  br i1 %.not.i23.i.i.i121, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i122, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119
  call void @_ZdlPv(ptr noundef nonnull %i.ey) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i122

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i122: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i119
  store ptr %i.fj, ptr %12, align 8, !tbaa !170
  store ptr %i.gd, ptr %i.aa, align 8, !tbaa !166
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fh
  store ptr %i.ge, ptr %i.ac, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit131

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit131: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i122, %bb.ak
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA13_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1001") align 8 %18, ptr noundef nonnull align 1 dereferenceable(13) @.str.32, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ao unwind label %bb.bk

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZNK6duckdb9AlterInfo17GetAlterEntryDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::AlterEntryData") align 8 %20, ptr noundef nonnull align 8 dereferenceable(113) %3)
          to label %bb.ap unwind label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  %i.gf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.aq unwind label %bb.bm     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.gg, ptr %21, align 8, !tbaa !12
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !15 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.gj, ptr %i.a, align 8, !tbaa !19
  %i.gk = icmp ugt i64 %i.gj, 15
  br i1 %i.gk, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.aq
  %i.gl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bm ; 2 uses

.noexc132:                                        ; preds = %.noexc.i
  store ptr %i.gl, ptr %21, align 8, !tbaa !15
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.gm, ptr %i.gg, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc132, %bb.aq
  %i.gn = phi ptr [ %i.gl, %.noexc132 ], [ %i.gg, %bb.aq ] ; 2 uses
  switch i64 %i.gj, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.go = load i8, ptr %i.gh, align 1, !tbaa !20
  store i8 %i.go, ptr %i.gn, align 1, !tbaa !20
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gn, ptr align 1 %i.gh, i64 %i.gj, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i
  %i.gp = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !18
  %i.gr = load ptr, ptr %21, align 8, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gp
  store i8 0, ptr %i.gs, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.br) #30
  %i.gt = load ptr, ptr %18, align 8, !tbaa !745
  store ptr null, ptr %18, align 8, !tbaa !745
  store ptr %i.gt, ptr %23, align 8, !tbaa !747
  invoke void @_ZN6duckdb20ChangeColumnTypeInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23)
          to label %bb.au unwind label %bb.bn

bb.au:                                            ; preds = %bb.at
  %i.gu = load ptr, ptr %23, align 8, !tbaa !168  ; 3 uses
  %.not.i133 = icmp eq ptr %i.gu, null
  br i1 %.not.i133, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i134

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i134: ; preds = %bb.au
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !7
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(56) %i.gu) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135: ; preds = %bb.au, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i134
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #30
  %i.gy = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gg
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135
  call void @_ZdlPv(ptr noundef %i.gy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  %i.ha = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  call void @_ZdlPv(ptr noundef %i.hb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !15 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.hf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.hi = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hk = icmp eq ptr %i.hi, %i.hj
end_hunk_5
begin_hunk_6_@_ZN6duckdb14DuckTableEntry9AddColumnERNS_13ClientContextERNS_13AddColumnInfoE:bb.a
bb.l:                                             ; preds = %_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.aa, 0 ; 6 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.aa, 1
  %i.ab = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ab, label %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit, label %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit.thread

_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit: ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !158, !noalias !763 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !159, !noalias !763 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %.not.i106 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i106, label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit, label %.lr.ph.split.us.split

_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit.thread: ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !484, !noalias !763 ; 2 uses
  %i.am = load ptr, ptr %.fca.0.extract, align 8, !tbaa !487, !noalias !763 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 216
  %.not.i106157 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i106157, label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit, label %.lr.ph.split.split

.lr.ph.split.us.split:                            ; preds = %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit, %bb.o
  %.sroa.898.0108.us = phi i64 [ %i.au, %bb.o ], [ 0, %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit ] ; 2 uses
  %i.ar = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %.fca.0.extract, i64 %.sroa.898.0108.us)
          to label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit.us unwind label %.split.us.split

_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit.us: ; preds = %.lr.ph.split.us.split
  %i.as = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %.split.us.split

bb.m:                                             ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit.us
  invoke void @_ZNK6duckdb16ColumnDefinition4CopyEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnDefinition") align 8 %7, ptr noundef nonnull align 8 dereferenceable(216) %i.ar)
          to label %bb.n unwind label %.split.us.split

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  invoke void @_ZN6duckdb10ColumnList9AddColumnENS_16ColumnDefinitionE(ptr noundef nonnull align 8 dereferenceable(105) %i.at, ptr noundef nonnull %7)
          to label %bb.o unwind label %.split110.us.split

bb.o:                                             ; preds = %bb.n
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %7) #30
  %i.au = add i64 %.sroa.898.0108.us, 1           ; 2 uses
  %.not.i.us = icmp eq i64 %i.au, %i.aj
  br i1 %.not.i.us, label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit, label %.lr.ph.split.us.split

.split.us.split:                                  ; preds = %bb.m, %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit.us, %.lr.ph.split.us.split
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split110.us.split:                               ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.split110.us

_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit: ; preds = %bb.u, %bb.o, %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit.thread, %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !543 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !543 ; 2 uses
  %.not121 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not121, label %._crit_edge, label %.lr.ph123

bb.p:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81

bb.q:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.r:                                             ; preds = %_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph.split.split:                               ; preds = %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit.thread, %bb.u
  %.sroa.898.0108 = phi i64 [ %i.bh, %bb.u ], [ 0, %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit.thread ] ; 2 uses
  %i.be = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %.fca.0.extract, i64 %.sroa.898.0108)
          to label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit unwind label %.split.split

_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit: ; preds = %.lr.ph.split.split
  %i.bf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %.split.split

bb.s:                                             ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit
  invoke void @_ZNK6duckdb16ColumnDefinition4CopyEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ColumnDefinition") align 8 %7, ptr noundef nonnull align 8 dereferenceable(216) %i.be)
          to label %bb.t unwind label %.split.split

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 352
  invoke void @_ZN6duckdb10ColumnList9AddColumnENS_16ColumnDefinitionE(ptr noundef nonnull align 8 dereferenceable(105) %i.bg, ptr noundef nonnull %7)
          to label %bb.u unwind label %.split110.split

bb.u:                                             ; preds = %bb.t
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %7) #30
  %i.bh = add i64 %.sroa.898.0108, 1              ; 2 uses
  %.not.i = icmp eq i64 %i.bh, %i.aq
  br i1 %.not.i, label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit, label %.lr.ph.split.split

.split.split:                                     ; preds = %.lr.ph.split.split, %bb.s, %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split110.split:                                  ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.split110.us

.split110.us:                                     ; preds = %.split110.split, %.split110.us.split
  %.us-phi111 = phi { ptr, i32 } [ %i.bj, %.split110.split ], [ %i.aw, %.split110.us.split ]
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %7) #30
  br label %.split.us

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.883") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr null, i8 noundef zeroext 0)
          to label %bb.ae unwind label %bb.cb

.lr.ph123:                                        ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit
  %.sroa.089.0122 = phi ptr [ %i.df, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit ], [ %i.ay, %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit ] ; 2 uses
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.v unwind label %bb.ab      ; 3 uses

bb.v:                                             ; preds = %.lr.ph123
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.089.0122)
          to label %bb.w unwind label %bb.ac      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %8, ptr noundef nonnull align 8 dereferenceable(9) %i.bm)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 472 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !300 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 480 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not.i.i, label %bb.y, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.x
  %i.bu = load i64, ptr %8, align 8, !tbaa !567
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !567
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !303 ; 10 uses
  %i.bx = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64               ; 3 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.z, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #33
          to label %.noexc57 unwind label %.loopexit ; 10 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  %i.cj = load i64, ptr %8, align 8, !tbaa !567
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !567
  store ptr null, ptr %8, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc57
  %17 = add i64 %i.bx, -8
  %18 = sub i64 %17, %i.by                        ; 2 uses
  %i.ck = lshr i64 %18, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %18, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ch, i64 8
  %i.cm = add i64 %i.bx, -8
  %i.cn = sub i64 %i.cm, %i.by
  %i.co = and i64 %i.cn, -8                       ; 2 uses
  %scevgep160 = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep161 = getelementptr i8, ptr %i.bw, i64 8
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.co
  %bound0 = icmp ult ptr %i.ch, %scevgep162
  %bound1 = icmp ult ptr %i.bw, %scevgep160
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ch, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bw, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.cs ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.bw, i64 %i.cs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.ct = getelementptr i8, ptr %next.gep163, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep163, align 8, !tbaa !567, !alias.scope !771, !noalias !766
  %wide.load164 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !567, !alias.scope !771, !noalias !766
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !774, !noalias !771
  store <2 x i64> %wide.load164, ptr %i.cu, align 8, !tbaa !567, !alias.scope !774, !noalias !771
  %i.cv = getelementptr i8, ptr %next.gep163, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep163, align 8, !tbaa !567, !alias.scope !771, !noalias !766
  store <2 x ptr> splat (ptr null), ptr %i.cv, align 8, !tbaa !567, !alias.scope !771, !noalias !766
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !776

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader166

.lr.ph.i.i.i.i.i.i.i.preheader166:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader166, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader166 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader166 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !769, !noalias !766
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !766, !noalias !769
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !769, !noalias !766
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.br
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !777

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc57
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.noexc57 ], [ %i.cq, %middle.block ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.aa
  store ptr %i.ch, ptr %i.bl, align 8, !tbaa !303
  store ptr %i.da, ptr %i.bq, align 8, !tbaa !300
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.db, ptr %i.bs, align 8, !tbaa !544
  %.pr = load ptr, ptr %8, align 8, !tbaa !567    ; 3 uses
  %.not.i58 = icmp eq ptr %.pr, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dc = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.0122, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.df, %i.ba
  br i1 %.not, label %._crit_edge, label %.lr.ph123

bb.ab:                                            ; preds = %.lr.ph123
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.ac:                                            ; preds = %bb.w, %bb.v
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit61

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.di = load ptr, ptr %8, align 8, !tbaa !567   ; 3 uses
  %.not.i59 = icmp eq ptr %i.di, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit61, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i60

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i60: ; preds = %bb.ad
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.di) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit61

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit61: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i60, %bb.ad, %bb.ac
  %.pn42 = phi { ptr, i32 } [ %i.dh, %bb.ac ], [ %lpad.phi, %bb.ad ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.split.us

bb.ae:                                            ; preds = %._crit_edge
  %i.dm = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.af unwind label %bb.cc

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  invoke void @_ZN6duckdb6Binder13SetSearchPathERNS_7CatalogERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(472) %i.dm, ptr noundef nonnull align 8 dereferenceable(80) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dq)
          to label %bb.ag unwind label %bb.cc

bb.ag:                                            ; preds = %bb.af
  %i.dr = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ah unwind label %bb.cc

bb.ah:                                            ; preds = %bb.ag
  %i.ds = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb16ColumnDefinition11TypeMutableEv(ptr noundef nonnull align 8 dereferenceable(216) %i.a)
          to label %bb.ai unwind label %bb.cc

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6duckdb6Binder15BindLogicalTypeERNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(472) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %bb.aj unwind label %bb.cc

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZNK6duckdb16ColumnDefinition7GetTypeEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %10, ptr noundef nonnull align 8 dereferenceable(216) %i.a)
          to label %bb.ak unwind label %bb.cd

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.du = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZN6duckdb7Catalog11GetAttachedEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dt)
          to label %bb.al unwind label %bb.ce

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_ZN6duckdbL20CheckTypeIsSupportedERKNS_11LogicalTypeERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(408) %i.du)
          to label %bb.am unwind label %bb.ce

bb.am:                                            ; preds = %bb.al
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !484
  %i.dx = load ptr, ptr %i.z, align 8, !tbaa !487
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 216
  invoke void @_ZN6duckdb16ColumnDefinition6SetOidEm(ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 noundef %i.eb)
          to label %bb.an unwind label %bb.cc

bb.an:                                            ; preds = %bb.am
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !158
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !159
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 3
  invoke void @_ZN6duckdb16ColumnDefinition13SetStorageOidEm(ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 noundef %i.ej)
          to label %bb.ao unwind label %bb.cc

end_hunk_6
begin_hunk_7_@_ZN6duckdb14DuckTableEntry9AddColumnERNS_13ClientContextERNS_13AddColumnInfoE:bb.a
  %.pn35.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn, %bb.cp ], [ %i.jq, %bb.cc ], [ %.pn, %bb.cf ]
  call void @_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #30
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cb
  %.pn35.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn, %bb.cq ], [ %i.jp, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.split.us

.split.us:                                        ; preds = %.split.us.split, %.split.split, %bb.ab, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit61, %.split110.us, %bb.r, %bb.cr, %bb.q
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %.us-phi111, %.split110.us ], [ %.pn35.pn.pn.pn.pn.pn, %bb.cr ], [ %i.bd, %bb.r ], [ %i.dg, %bb.ab ], [ %.pn42, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit61 ], [ %i.bi, %.split.split ], [ %i.av, %.split.us.split ] ; 2 uses
  %i.ke = load ptr, ptr %6, align 8, !tbaa !637   ; 3 uses
  %.not.i79 = icmp eq ptr %i.ke, null
  br i1 %.not.i79, label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81, label %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i80

_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i80: ; preds = %.split.us
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !7
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(600) %i.ke) #30, !inline_history !648
  br label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81

_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81: ; preds = %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i80, %.split.us, %bb.p
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %.pn45.pn.pn.pn.pn, %.split.us ], [ %.pn45.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit, %bb.c
  %i.ki = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef %i.ki) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.ct:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81, %bb.d
  %.pn45.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit81 ], [ %i.g, %bb.d ]
  %i.kl = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ct
  call void @_ZdlPv(ptr noundef %i.kl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14DuckTableEntry8AddFieldERNS_13ClientContextERNS_12AddFieldInfoE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(361) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %6 = alloca %"struct.duckdb::StructMappingInfo", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.duckdb::vector.151", align 8 ; 19 uses
  %10 = alloca %"class.duckdb::unique_ptr.1034", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::unique_ptr.1001", align 8 ; 8 uses
  %15 = alloca %"struct.duckdb::ChangeColumnTypeInfo", align 8 ; 7 uses
  %16 = alloca %"struct.duckdb::AlterEntryData", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %19 = alloca %"class.duckdb::unique_ptr.805", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.e = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @_ZN6duckdb16AddFieldToStructERKNS_11LogicalTypeERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEERKNS_16ColumnDefinitionEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::StructMappingInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(216) %i.g, i64 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !681, !range !70, !noundef !71
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.l = load i8, ptr %i.k, align 8, !tbaa !789, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %7) #32
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn39 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bk

bb.h:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !213
  br label %bb.bj

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.j unwind label %bb.ar

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1034") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %bb.k unwind label %bb.ar

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %10, align 8, !tbaa !685   ; 5 uses
  store ptr null, ptr %10, align 8, !tbaa !685
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 14 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.l, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.k
  %i.y = ptrtoint ptr %i.t to i64
  store i64 %i.y, ptr %i.v, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %9, align 8, !tbaa !170   ; 10 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33
          to label %.noexc42 unwind label %bb.as  ; 12 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = ptrtoint ptr %i.t to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc42
  %20 = add i64 %i.ab, -8
  %21 = sub i64 %20, %i.ac                        ; 2 uses
  %i.ao = lshr i64 %21, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %21, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader284, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aq = add i64 %i.ab, -8
  %i.ar = sub i64 %i.aq, %i.ac
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.at
  %scevgep209 = getelementptr i8, ptr %i.aa, i64 %i.at
  %bound0 = icmp ult ptr %i.al, %scevgep209
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader284, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep210 = getelementptr i8, ptr %i.aa, i64 %i.ax ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.ay = getelementptr i8, ptr %next.gep210, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep210, align 8, !tbaa !168, !alias.scope !796, !noalias !791
  %wide.load211 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !168, !alias.scope !796, !noalias !791
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !799, !noalias !796
  store <2 x i64> %wide.load211, ptr %i.az, align 8, !tbaa !168, !alias.scope !799, !noalias !796
  %i.ba = getelementptr i8, ptr %next.gep210, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep210, align 8, !tbaa !168, !alias.scope !796, !noalias !791
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !168, !alias.scope !796, !noalias !791
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !801

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader284

.lr.ph.i.i.i.i.i.i.i.preheader284:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader284, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader284 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader284 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !794, !noalias !791
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !791, !noalias !794
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !794, !noalias !791
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !802

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc42
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.al, %.noexc42 ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread200, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread200: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.al, ptr %9, align 8, !tbaa !170
  store ptr %i.bf, ptr %i.u, align 8, !tbaa !166
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bg, ptr %i.w, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #31
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !685 ; 3 uses
  store ptr %i.al, ptr %9, align 8, !tbaa !170
  store ptr %i.bf, ptr %i.u, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bh, ptr %i.w, align 8, !tbaa !167
  %.not.i43 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bi = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(80) %.pre.pre) #30, !inline_history !699
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread200, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.n unwind label %bb.at

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %12)
          to label %bb.o unwind label %bb.au

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bl = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc44 unwind label %bb.av  ; 6 uses

.noexc44:                                         ; preds = %bb.o
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %11) #30, !noalias !803
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bl, ptr noundef nonnull %5)
          to label %bb.q unwind label %bb.p, !noalias !803

bb.p:                                             ; preds = %.noexc44
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !803
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #31, !noalias !803
  br label %.body

bb.q:                                             ; preds = %.noexc44
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !803
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !166 ; 6 uses
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !167
  %.not.i.i45 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i45, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = ptrtoint ptr %i.bl to i64
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !168
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bq, ptr %i.u, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %9, align 8, !tbaa !170   ; 10 uses
  %i.bs = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc58 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit126

.noexc58:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.ca, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #33
          to label %.noexc59 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit126 ; 10 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  %i.ce = ptrtoint ptr %i.bl to i64
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i49 = icmp eq ptr %i.br, %i.bn
  br i1 %.not10.i.i.i.i.i.i.i49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i.i.i50.preheader:                 ; preds = %.noexc59
  %22 = add i64 %i.bs, -8
  %23 = sub i64 %22, %i.bt                        ; 2 uses
  %i.cf = lshr i64 %23, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check220 = icmp ult i64 %23, 152
  br i1 %min.iters.check220, label %.lr.ph.i.i.i.i.i.i.i50.preheader282, label %vector.memcheck213

vector.memcheck213:                               ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader
  %i.ch = add i64 %i.bs, -8
  %i.ci = sub i64 %i.ch, %i.bt
  %i.cj = and i64 %i.ci, -8
  %i.ck = add i64 %i.cj, 8                        ; 2 uses
  %scevgep214 = getelementptr i8, ptr %i.cc, i64 %i.ck
  %scevgep215 = getelementptr i8, ptr %i.br, i64 %i.ck
  %bound0216 = icmp ult ptr %i.cc, %scevgep215
  %bound1217 = icmp ult ptr %i.br, %scevgep214
  %found.conflict218 = and i1 %bound0216, %bound1217
  br i1 %found.conflict218, label %.lr.ph.i.i.i.i.i.i.i50.preheader282, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck213
  %n.vec223 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec223, 3                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cc, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.br, i64 %i.cl
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph221
  %index225 = phi i64 [ 0, %vector.ph221 ], [ %index.next230, %vector.body224 ] ; 2 uses
  %i.co = shl i64 %index225, 3                    ; 2 uses
  %next.gep226 = getelementptr i8, ptr %i.cc, i64 %i.co ; 2 uses
  %next.gep227 = getelementptr i8, ptr %i.br, i64 %i.co ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.cp = getelementptr i8, ptr %next.gep227, i64 16
  %wide.load228 = load <2 x i64>, ptr %next.gep227, align 8, !tbaa !168, !alias.scope !811, !noalias !806
  %wide.load229 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !168, !alias.scope !811, !noalias !806
  %i.cq = getelementptr i8, ptr %next.gep226, i64 16
  store <2 x i64> %wide.load228, ptr %next.gep226, align 8, !tbaa !168, !alias.scope !814, !noalias !811
  store <2 x i64> %wide.load229, ptr %i.cq, align 8, !tbaa !168, !alias.scope !814, !noalias !811
  %i.cr = getelementptr i8, ptr %next.gep227, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep227, align 8, !tbaa !168, !alias.scope !811, !noalias !806
  store <2 x ptr> splat (ptr null), ptr %i.cr, align 8, !tbaa !168, !alias.scope !811, !noalias !806
  %index.next230 = add nuw i64 %index225, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.cs, label %middle.block231, label %vector.body224, !llvm.loop !816

middle.block231:                                  ; preds = %vector.body224
  %cmp.n232 = icmp eq i64 %i.cg, %n.vec223
  br i1 %cmp.n232, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader282

.lr.ph.i.i.i.i.i.i.i50.preheader282:              ; preds = %vector.memcheck213, %.lr.ph.i.i.i.i.i.i.i50.preheader, %middle.block231
  %.012.i.i.i.i.i.i.i51.ph = phi ptr [ %i.cc, %vector.memcheck213 ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.cm, %middle.block231 ]
  %.0911.i.i.i.i.i.i.i52.ph = phi ptr [ %i.br, %vector.memcheck213 ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.cn, %middle.block231 ]
  br label %.lr.ph.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i50:                           ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader282, %.lr.ph.i.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i.i51 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.012.i.i.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader282 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i52 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.0911.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader282 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.ct = load i64, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !168, !alias.scope !809, !noalias !806
  store i64 %i.ct, ptr %.012.i.i.i.i.i.i.i51, align 8, !tbaa !168, !alias.scope !806, !noalias !809
  store ptr null, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !168, !alias.scope !809, !noalias !806
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.cu, %i.bn
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50, !llvm.loop !817

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i.i50, %middle.block231, %.noexc59
  %.0.lcssa.i.i.i.i.i.i.i55 = phi ptr [ %i.cc, %.noexc59 ], [ %i.cm, %middle.block231 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i50 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i55, i64 8
  %.not.i23.i.i.i56 = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i56, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  call void @_ZdlPv(ptr noundef nonnull %i.br) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57: ; preds = %bb.u, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  store ptr %i.cc, ptr %9, align 8, !tbaa !170
  store ptr %i.cw, ptr %i.u, align 8, !tbaa !166
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.cx, ptr %i.w, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i57, %bb.r
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb16ColumnDefinition4NameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(216) %i.e)
          to label %bb.v unwind label %bb.ay

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.cz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.e)
          to label %bb.w unwind label %bb.ay

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb16ConstructMappingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %bb.x unwind label %bb.ay

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.da = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc65 unwind label %bb.az  ; 6 uses

.noexc65:                                         ; preds = %bb.x
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %13) #30, !noalias !818
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.da, ptr noundef nonnull %4)
          to label %bb.z unwind label %bb.y, !noalias !818

bb.y:                                             ; preds = %.noexc65
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !818
  call void @_ZdlPv(ptr noundef nonnull %i.da) #31, !noalias !818
  br label %.body66

bb.z:                                             ; preds = %.noexc65
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.dc = load ptr, ptr %i.u, align 8, !tbaa !166 ; 6 uses
  %i.dd = load ptr, ptr %i.w, align 8, !tbaa !167
  %.not.i.i69 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i.i69, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = ptrtoint ptr %i.da to i64
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !168
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.df, ptr %i.u, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90

bb.ab:                                            ; preds = %bb.z
  %i.dg = load ptr, ptr %9, align 8, !tbaa !170   ; 10 uses
  %i.dh = ptrtoint ptr %i.dc to i64               ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i70

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc82 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132

.noexc82:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i70: ; preds = %bb.ab
  %i.dl = ashr exact i64 %i.dj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i71 = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i71, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 1152921504606846975)
  %i.dp = select i1 %i.dn, i64 1152921504606846975, i64 %i.do ; 3 uses
  %.not.i.i.i.i72 = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i72)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #33
          to label %.noexc83 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132 ; 10 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i70
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  %i.dt = ptrtoint ptr %i.da to i64
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i73 = icmp eq ptr %i.dg, %i.dc
  br i1 %.not10.i.i.i.i.i.i.i73, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74.preheader

.lr.ph.i.i.i.i.i.i.i74.preheader:                 ; preds = %.noexc83
  %24 = add i64 %i.dh, -8
  %25 = sub i64 %24, %i.di                        ; 2 uses
  %i.du = lshr i64 %25, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check242 = icmp ult i64 %25, 152
  br i1 %min.iters.check242, label %.lr.ph.i.i.i.i.i.i.i74.preheader280, label %vector.memcheck235

vector.memcheck235:                               ; preds = %.lr.ph.i.i.i.i.i.i.i74.preheader
  %i.dw = add i64 %i.dh, -8
  %i.dx = sub i64 %i.dw, %i.di
  %i.dy = and i64 %i.dx, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %scevgep236 = getelementptr i8, ptr %i.dr, i64 %i.dz
  %scevgep237 = getelementptr i8, ptr %i.dg, i64 %i.dz
  %bound0238 = icmp ult ptr %i.dr, %scevgep237
  %bound1239 = icmp ult ptr %i.dg, %scevgep236
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %.lr.ph.i.i.i.i.i.i.i74.preheader280, label %vector.ph243

vector.ph243:                                     ; preds = %vector.memcheck235
  %n.vec245 = and i64 %i.dv, 4611686018427387900  ; 3 uses
  %i.ea = shl i64 %n.vec245, 3                    ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dr, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dg, i64 %i.ea
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph243
  %index247 = phi i64 [ 0, %vector.ph243 ], [ %index.next252, %vector.body246 ] ; 2 uses
  %i.ed = shl i64 %index247, 3                    ; 2 uses
  %next.gep248 = getelementptr i8, ptr %i.dr, i64 %i.ed ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.dg, i64 %i.ed ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.ee = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load250 = load <2 x i64>, ptr %next.gep249, align 8, !tbaa !168, !alias.scope !826, !noalias !821
  %wide.load251 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !168, !alias.scope !826, !noalias !821
  %i.ef = getelementptr i8, ptr %next.gep248, i64 16
  store <2 x i64> %wide.load250, ptr %next.gep248, align 8, !tbaa !168, !alias.scope !829, !noalias !826
  store <2 x i64> %wide.load251, ptr %i.ef, align 8, !tbaa !168, !alias.scope !829, !noalias !826
  %i.eg = getelementptr i8, ptr %next.gep249, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep249, align 8, !tbaa !168, !alias.scope !826, !noalias !821
  store <2 x ptr> splat (ptr null), ptr %i.eg, align 8, !tbaa !168, !alias.scope !826, !noalias !821
  %index.next252 = add nuw i64 %index247, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next252, %n.vec245
  br i1 %i.eh, label %middle.block253, label %vector.body246, !llvm.loop !831

middle.block253:                                  ; preds = %vector.body246
  %cmp.n254 = icmp eq i64 %i.dv, %n.vec245
  br i1 %cmp.n254, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74.preheader280

.lr.ph.i.i.i.i.i.i.i74.preheader280:              ; preds = %vector.memcheck235, %.lr.ph.i.i.i.i.i.i.i74.preheader, %middle.block253
  %.012.i.i.i.i.i.i.i75.ph = phi ptr [ %i.dr, %vector.memcheck235 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i74.preheader ], [ %i.eb, %middle.block253 ]
  %.0911.i.i.i.i.i.i.i76.ph = phi ptr [ %i.dg, %vector.memcheck235 ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i74.preheader ], [ %i.ec, %middle.block253 ]
  br label %.lr.ph.i.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i.i74:                           ; preds = %.lr.ph.i.i.i.i.i.i.i74.preheader280, %.lr.ph.i.i.i.i.i.i.i74
  %.012.i.i.i.i.i.i.i75 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i74 ], [ %.012.i.i.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i.i.i74.preheader280 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i76 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i74 ], [ %.0911.i.i.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i.i.i74.preheader280 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.ei = load i64, ptr %.0911.i.i.i.i.i.i.i76, align 8, !tbaa !168, !alias.scope !824, !noalias !821
  store i64 %i.ei, ptr %.012.i.i.i.i.i.i.i75, align 8, !tbaa !168, !alias.scope !821, !noalias !824
  store ptr null, ptr %.0911.i.i.i.i.i.i.i76, align 8, !tbaa !168, !alias.scope !824, !noalias !821
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i76, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i75, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i77 = icmp eq ptr %i.ej, %i.dc
  br i1 %.not.i.i.i.i.i.i.i77, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i74, !llvm.loop !832

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78: ; preds = %.lr.ph.i.i.i.i.i.i.i74, %middle.block253, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i79 = phi ptr [ %i.dr, %.noexc83 ], [ %i.eb, %middle.block253 ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i74 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i79, i64 8
  %.not.i23.i.i.i80 = icmp eq ptr %i.dg, null
  br i1 %.not.i23.i.i.i80, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i81, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i81

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i81: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i78
  store ptr %i.dr, ptr %9, align 8, !tbaa !170
  store ptr %i.el, ptr %i.u, align 8, !tbaa !166
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.em, ptr %i.w, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i81, %bb.aa
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.eo = load ptr, ptr %i.u, align 8, !tbaa !166 ; 6 uses
  %i.ep = load ptr, ptr %i.w, align 8, !tbaa !167
  %.not.i.i91 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i91, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90
  %i.eq = load i64, ptr %i.en, align 8, !tbaa !168
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !168
  store ptr null, ptr %i.en, align 8, !tbaa !168
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.er, ptr %i.u, align 8, !tbaa !166
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit106

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit90
  %i.es = load ptr, ptr %9, align 8, !tbaa !170   ; 10 uses
  %i.et = ptrtoint ptr %i.eo to i64               ; 3 uses
  %i.eu = ptrtoint ptr %i.es to i64               ; 3 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 3 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.ag, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i92

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc104 unwind label %bb.bb

.noexc104:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i92: ; preds = %bb.af
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i93 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i.i93, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i.i.i94 = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i94)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #33
          to label %.noexc105 unwind label %bb.bb ; 10 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i92
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ev
  %i.ff = load i64, ptr %i.en, align 8, !tbaa !168
  store i64 %i.ff, ptr %i.fe, align 8, !tbaa !168
  store ptr null, ptr %i.en, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i95 = icmp eq ptr %i.es, %i.eo
  br i1 %.not10.i.i.i.i.i.i.i95, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100, label %.lr.ph.i.i.i.i.i.i.i96.preheader

.lr.ph.i.i.i.i.i.i.i96.preheader:                 ; preds = %.noexc105
  %26 = add i64 %i.et, -8
  %27 = sub i64 %26, %i.eu                        ; 2 uses
  %i.fg = lshr i64 %27, 3
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check264 = icmp ult i64 %27, 152
  br i1 %min.iters.check264, label %.lr.ph.i.i.i.i.i.i.i96.preheader279, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph.i.i.i.i.i.i.i96.preheader
  %i.fi = add i64 %i.et, -8
  %i.fj = sub i64 %i.fi, %i.eu
  %i.fk = and i64 %i.fj, -8
  %i.fl = add i64 %i.fk, 8                        ; 2 uses
  %scevgep258 = getelementptr i8, ptr %i.fd, i64 %i.fl
  %scevgep259 = getelementptr i8, ptr %i.es, i64 %i.fl
  %bound0260 = icmp ult ptr %i.fd, %scevgep259
  %bound1261 = icmp ult ptr %i.es, %scevgep258
  %found.conflict262 = and i1 %bound0260, %bound1261
  br i1 %found.conflict262, label %.lr.ph.i.i.i.i.i.i.i96.preheader279, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck257
  %n.vec267 = and i64 %i.fh, 4611686018427387900  ; 3 uses
  %i.fm = shl i64 %n.vec267, 3                    ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fd, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %i.es, i64 %i.fm
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph265
  %index269 = phi i64 [ 0, %vector.ph265 ], [ %index.next274, %vector.body268 ] ; 2 uses
  %i.fp = shl i64 %index269, 3                    ; 2 uses
  %next.gep270 = getelementptr i8, ptr %i.fd, i64 %i.fp ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.es, i64 %i.fp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.fq = getelementptr i8, ptr %next.gep271, i64 16
  %wide.load272 = load <2 x i64>, ptr %next.gep271, align 8, !tbaa !168, !alias.scope !838, !noalias !833
  %wide.load273 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !168, !alias.scope !838, !noalias !833
  %i.fr = getelementptr i8, ptr %next.gep270, i64 16
  store <2 x i64> %wide.load272, ptr %next.gep270, align 8, !tbaa !168, !alias.scope !841, !noalias !838
  store <2 x i64> %wide.load273, ptr %i.fr, align 8, !tbaa !168, !alias.scope !841, !noalias !838
  %i.fs = getelementptr i8, ptr %next.gep271, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep271, align 8, !tbaa !168, !alias.scope !838, !noalias !833
  store <2 x ptr> splat (ptr null), ptr %i.fs, align 8, !tbaa !168, !alias.scope !838, !noalias !833
  %index.next274 = add nuw i64 %index269, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.ft, label %middle.block275, label %vector.body268, !llvm.loop !843

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %i.fh, %n.vec267
  br i1 %cmp.n276, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100, label %.lr.ph.i.i.i.i.i.i.i96.preheader279

.lr.ph.i.i.i.i.i.i.i96.preheader279:              ; preds = %vector.memcheck257, %.lr.ph.i.i.i.i.i.i.i96.preheader, %middle.block275
  %.012.i.i.i.i.i.i.i97.ph = phi ptr [ %i.fd, %vector.memcheck257 ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i96.preheader ], [ %i.fn, %middle.block275 ]
  %.0911.i.i.i.i.i.i.i98.ph = phi ptr [ %i.es, %vector.memcheck257 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i96.preheader ], [ %i.fo, %middle.block275 ]
  br label %.lr.ph.i.i.i.i.i.i.i96

.lr.ph.i.i.i.i.i.i.i96:                           ; preds = %.lr.ph.i.i.i.i.i.i.i96.preheader279, %.lr.ph.i.i.i.i.i.i.i96
  %.012.i.i.i.i.i.i.i97 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i96 ], [ %.012.i.i.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i.i.i96.preheader279 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i98 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i96 ], [ %.0911.i.i.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i.i.i96.preheader279 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.fu = load i64, ptr %.0911.i.i.i.i.i.i.i98, align 8, !tbaa !168, !alias.scope !836, !noalias !833
  store i64 %i.fu, ptr %.012.i.i.i.i.i.i.i97, align 8, !tbaa !168, !alias.scope !833, !noalias !836
  store ptr null, ptr %.0911.i.i.i.i.i.i.i98, align 8, !tbaa !168, !alias.scope !836, !noalias !833
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i98, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i97, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i99 = icmp eq ptr %i.fv, %i.eo
  br i1 %.not.i.i.i.i.i.i.i99, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100, label %.lr.ph.i.i.i.i.i.i.i96, !llvm.loop !844

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100: ; preds = %.lr.ph.i.i.i.i.i.i.i96, %middle.block275, %.noexc105
  %.0.lcssa.i.i.i.i.i.i.i101 = phi ptr [ %i.fd, %.noexc105 ], [ %i.fn, %middle.block275 ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i96 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i101, i64 8
  %.not.i23.i.i.i102 = icmp eq ptr %i.es, null
  br i1 %.not.i23.i.i.i102, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i103, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100
  call void @_ZdlPv(ptr noundef nonnull %i.es) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i103

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i103: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i100
  store ptr %i.fd, ptr %9, align 8, !tbaa !170
  store ptr %i.fx, ptr %i.u, align 8, !tbaa !166
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.fy, ptr %i.w, align 8, !tbaa !167
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit106

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit106: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i103, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA13_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1001") align 8 %14, ptr noundef nonnull align 1 dereferenceable(13) @.str.32, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ai unwind label %bb.bc

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZNK6duckdb9AlterInfo17GetAlterEntryDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::AlterEntryData") align 8 %16, ptr noundef nonnull align 8 dereferenceable(113) %3)
          to label %bb.aj unwind label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  %i.fz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.ak unwind label %bb.be     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.ga, ptr %17, align 8, !tbaa !12
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !15 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.gd, ptr %i.a, align 8, !tbaa !19
  %i.ge = icmp ugt i64 %i.gd, 15
  br i1 %i.ge, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ak
  %i.gf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.be ; 2 uses

.noexc107:                                        ; preds = %.noexc.i
  store ptr %i.gf, ptr %17, align 8, !tbaa !15
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.gg, ptr %i.ga, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc107, %bb.ak
  %i.gh = phi ptr [ %i.gf, %.noexc107 ], [ %i.ga, %bb.ak ] ; 2 uses
  switch i64 %i.gd, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.gi = load i8, ptr %i.gb, align 1, !tbaa !20
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !20
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.gb, i64 %i.gd, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i
  %i.gj = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !18
  %i.gl = load ptr, ptr %17, align 8, !tbaa !15
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gj
  store i8 0, ptr %i.gm, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %6) #30
  %i.gn = load ptr, ptr %14, align 8, !tbaa !745
  store ptr null, ptr %14, align 8, !tbaa !745
  store ptr %i.gn, ptr %19, align 8, !tbaa !747
  invoke void @_ZN6duckdb20ChangeColumnTypeInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19)
          to label %bb.ao unwind label %bb.bf

bb.ao:                                            ; preds = %bb.an
  %i.go = load ptr, ptr %19, align 8, !tbaa !168  ; 3 uses
  %.not.i108 = icmp eq ptr %i.go, null
  br i1 %.not.i108, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i109

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i109: ; preds = %bb.ao
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !7
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(56) %i.go) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110: ; preds = %bb.ao, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i109
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #30
  %i.gs = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.ga
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110
  call void @_ZdlPv(ptr noundef %i.gs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !15 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  call void @_ZdlPv(ptr noundef %i.gv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !15 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.gz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.hc = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZN6duckdb14AlterEntryDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
end_hunk_7
begin_hunk_8_@_ZN6duckdb14DuckTableEntry11RemoveFieldERNS_13ClientContextERNS_15RemoveFieldInfoE:bb.a
  %12 = alloca %"class.duckdb::vector.151", align 8 ; 19 uses
  %13 = alloca %"class.duckdb::unique_ptr.1034", align 8 ; 8 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %15 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %18 = alloca %"class.duckdb::unique_ptr.1001", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::ChangeColumnTypeInfo", align 8 ; 7 uses
  %20 = alloca %"struct.duckdb::AlterEntryData", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %23 = alloca %"class.duckdb::unique_ptr.805", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 6 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb10ColumnList12ColumnExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.g = load i8, ptr %i.f, align 8, !tbaa !875, !range !70, !noundef !71
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.by unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.014 = phi i1 [ false, %bb.f ], [ true, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.m) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.014, label %bb.h, label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.014, label %bb.h, label %bb.bx

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn196 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #30
  br label %bb.bx

bb.i:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !213
  br label %bb.bw

bb.j:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.q = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.q)
  call void @_ZN6duckdb19DropFieldFromStructERKNS_11LogicalTypeERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::DroppedFieldMapping") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !681, !range !70, !noundef !71
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.w = load i8, ptr %i.v, align 8, !tbaa !875, !range !70, !noundef !71
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %10) #32
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.p:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.aa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.o
  %.pn51 = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.z, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bv

bb.q:                                             ; preds = %bb.k
  store ptr null, ptr %0, align 8, !tbaa !213
  br label %bb.bu

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.s unwind label %bb.bb

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1034") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.t unwind label %bb.bb

bb.t:                                             ; preds = %bb.s
  %i.ae = load ptr, ptr %13, align 8, !tbaa !685  ; 5 uses
  store ptr null, ptr %13, align 8, !tbaa !685
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 14 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !166 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.u, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.t
  %i.aj = ptrtoint ptr %i.ae to i64
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !168
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.al = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.am = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.v, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #33
          to label %.noexc58 unwind label %bb.bc  ; 12 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.ay = ptrtoint ptr %i.ae to i64
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ag
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc58
  %24 = add i64 %i.am, -8
  %25 = sub i64 %24, %i.an                        ; 2 uses
  %i.az = lshr i64 %25, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %25, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader326, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bb = add i64 %i.am, -8
  %i.bc = sub i64 %i.bb, %i.an
  %i.bd = and i64 %i.bc, -8
  %i.be = add i64 %i.bd, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.be
  %scevgep251 = getelementptr i8, ptr %i.al, i64 %i.be
  %bound0 = icmp ult ptr %i.aw, %scevgep251
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader326, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %next.gep252 = getelementptr i8, ptr %i.al, i64 %i.bi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.bj = getelementptr i8, ptr %next.gep252, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep252, align 8, !tbaa !168, !alias.scope !882, !noalias !877
  %wide.load253 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !168, !alias.scope !882, !noalias !877
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !885, !noalias !882
  store <2 x i64> %wide.load253, ptr %i.bk, align 8, !tbaa !168, !alias.scope !885, !noalias !882
  %i.bl = getelementptr i8, ptr %next.gep252, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep252, align 8, !tbaa !168, !alias.scope !882, !noalias !877
  store <2 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !168, !alias.scope !882, !noalias !877
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !887

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader326

.lr.ph.i.i.i.i.i.i.i.preheader326:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader326, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader326 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader326 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !880, !noalias !877
  store i64 %i.bn, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !877, !noalias !880
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !880, !noalias !877
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.ag
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !888

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc58
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.noexc58 ], [ %i.bg, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread242, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread242: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aw, ptr %12, align 8, !tbaa !170
  store ptr %i.bq, ptr %i.af, align 8, !tbaa !166
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.br, ptr %i.ah, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #31
  %.pre.pre = load ptr, ptr %13, align 8, !tbaa !685 ; 3 uses
  store ptr %i.aw, ptr %12, align 8, !tbaa !170
  store ptr %i.bq, ptr %i.af, align 8, !tbaa !166
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bs, ptr %i.ah, align 8, !tbaa !167
  %.not.i59 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(80) %.pre.pre) #30, !inline_history !699
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread242, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %bb.w unwind label %bb.bd

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %15)
          to label %bb.x unwind label %bb.be

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bx = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc60 unwind label %bb.bf  ; 6 uses

.noexc60:                                         ; preds = %bb.x
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %14) #30, !noalias !889
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, ptr noundef nonnull %6)
          to label %bb.z unwind label %bb.y, !noalias !889

bb.y:                                             ; preds = %.noexc60
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !noalias !889
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #31, !noalias !889
  br label %.body

bb.z:                                             ; preds = %.noexc60
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #30, !noalias !889
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bz = load ptr, ptr %i.af, align 8, !tbaa !166 ; 6 uses
  %i.ca = load ptr, ptr %i.ah, align 8, !tbaa !167
  %.not.i.i61 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i61, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = ptrtoint ptr %i.bx to i64
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !168
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cc, ptr %i.af, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.ce = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 3 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc74 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit152

.noexc74:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.ab
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #33
          to label %.noexc75 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit152 ; 10 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  %i.cq = ptrtoint ptr %i.bx to i64
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i65 = icmp eq ptr %i.cd, %i.bz
  br i1 %.not10.i.i.i.i.i.i.i65, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66.preheader

.lr.ph.i.i.i.i.i.i.i66.preheader:                 ; preds = %.noexc75
  %26 = add i64 %i.ce, -8
  %27 = sub i64 %26, %i.cf                        ; 2 uses
  %i.cr = lshr i64 %27, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check262 = icmp ult i64 %27, 152
  br i1 %min.iters.check262, label %.lr.ph.i.i.i.i.i.i.i66.preheader324, label %vector.memcheck255

vector.memcheck255:                               ; preds = %.lr.ph.i.i.i.i.i.i.i66.preheader
  %i.ct = add i64 %i.ce, -8
  %i.cu = sub i64 %i.ct, %i.cf
  %i.cv = and i64 %i.cu, -8
  %i.cw = add i64 %i.cv, 8                        ; 2 uses
  %scevgep256 = getelementptr i8, ptr %i.co, i64 %i.cw
  %scevgep257 = getelementptr i8, ptr %i.cd, i64 %i.cw
  %bound0258 = icmp ult ptr %i.co, %scevgep257
  %bound1259 = icmp ult ptr %i.cd, %scevgep256
  %found.conflict260 = and i1 %bound0258, %bound1259
  br i1 %found.conflict260, label %.lr.ph.i.i.i.i.i.i.i66.preheader324, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck255
  %n.vec265 = and i64 %i.cs, 4611686018427387900  ; 3 uses
  %i.cx = shl i64 %n.vec265, 3                    ; 2 uses
  %i.cy = getelementptr i8, ptr %i.co, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cd, i64 %i.cx
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph263
  %index267 = phi i64 [ 0, %vector.ph263 ], [ %index.next272, %vector.body266 ] ; 2 uses
  %i.da = shl i64 %index267, 3                    ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.co, i64 %i.da ; 2 uses
  %next.gep269 = getelementptr i8, ptr %i.cd, i64 %i.da ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.db = getelementptr i8, ptr %next.gep269, i64 16
  %wide.load270 = load <2 x i64>, ptr %next.gep269, align 8, !tbaa !168, !alias.scope !897, !noalias !892
  %wide.load271 = load <2 x i64>, ptr %i.db, align 8, !tbaa !168, !alias.scope !897, !noalias !892
  %i.dc = getelementptr i8, ptr %next.gep268, i64 16
  store <2 x i64> %wide.load270, ptr %next.gep268, align 8, !tbaa !168, !alias.scope !900, !noalias !897
  store <2 x i64> %wide.load271, ptr %i.dc, align 8, !tbaa !168, !alias.scope !900, !noalias !897
  %i.dd = getelementptr i8, ptr %next.gep269, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep269, align 8, !tbaa !168, !alias.scope !897, !noalias !892
  store <2 x ptr> splat (ptr null), ptr %i.dd, align 8, !tbaa !168, !alias.scope !897, !noalias !892
  %index.next272 = add nuw i64 %index267, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next272, %n.vec265
  br i1 %i.de, label %middle.block273, label %vector.body266, !llvm.loop !902

middle.block273:                                  ; preds = %vector.body266
  %cmp.n274 = icmp eq i64 %i.cs, %n.vec265
  br i1 %cmp.n274, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66.preheader324

.lr.ph.i.i.i.i.i.i.i66.preheader324:              ; preds = %vector.memcheck255, %.lr.ph.i.i.i.i.i.i.i66.preheader, %middle.block273
  %.012.i.i.i.i.i.i.i67.ph = phi ptr [ %i.co, %vector.memcheck255 ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i66.preheader ], [ %i.cy, %middle.block273 ]
  %.0911.i.i.i.i.i.i.i68.ph = phi ptr [ %i.cd, %vector.memcheck255 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i66.preheader ], [ %i.cz, %middle.block273 ]
  br label %.lr.ph.i.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i.i66:                           ; preds = %.lr.ph.i.i.i.i.i.i.i66.preheader324, %.lr.ph.i.i.i.i.i.i.i66
  %.012.i.i.i.i.i.i.i67 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i66 ], [ %.012.i.i.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i.i.i66.preheader324 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i68 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i66 ], [ %.0911.i.i.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i.i.i66.preheader324 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.df = load i64, ptr %.0911.i.i.i.i.i.i.i68, align 8, !tbaa !168, !alias.scope !895, !noalias !892
  store i64 %i.df, ptr %.012.i.i.i.i.i.i.i67, align 8, !tbaa !168, !alias.scope !892, !noalias !895
  store ptr null, ptr %.0911.i.i.i.i.i.i.i68, align 8, !tbaa !168, !alias.scope !895, !noalias !892
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i68, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i69 = icmp eq ptr %i.dg, %i.bz
  br i1 %.not.i.i.i.i.i.i.i69, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66, !llvm.loop !903

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70: ; preds = %.lr.ph.i.i.i.i.i.i.i66, %middle.block273, %.noexc75
  %.0.lcssa.i.i.i.i.i.i.i71 = phi ptr [ %i.co, %.noexc75 ], [ %i.cy, %middle.block273 ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i66 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i71, i64 8
  %.not.i23.i.i.i72 = icmp eq ptr %i.cd, null
  br i1 %.not.i23.i.i.i72, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70
  call void @_ZdlPv(ptr noundef nonnull %i.cd) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i70
  store ptr %i.co, ptr %12, align 8, !tbaa !170
  store ptr %i.di, ptr %i.af, align 8, !tbaa !166
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.dj, ptr %i.ah, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i73, %bb.aa
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.dk = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc81 unwind label %bb.bi  ; 6 uses

.noexc81:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %9) #30, !noalias !904
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.dk, ptr noundef nonnull %5)
          to label %bb.af unwind label %bb.ae, !noalias !904

bb.ae:                                            ; preds = %.noexc81
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !904
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #31, !noalias !904
  br label %.body82

bb.af:                                            ; preds = %.noexc81
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #30, !noalias !904
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dm = load ptr, ptr %i.af, align 8, !tbaa !166 ; 6 uses
  %i.dn = load ptr, ptr %i.ah, align 8, !tbaa !167
  %.not.i.i85 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i85, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = ptrtoint ptr %i.dk to i64
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !168
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dp, ptr %i.af, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit106

bb.ah:                                            ; preds = %bb.af
  %i.dq = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.dr = ptrtoint ptr %i.dm to i64               ; 3 uses
  %i.ds = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.ai, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc98 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit158

.noexc98:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86: ; preds = %bb.ah
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i87 = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i.i87, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #33
          to label %.noexc99 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit158 ; 10 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  %i.ed = ptrtoint ptr %i.dk to i64
  store i64 %i.ed, ptr %i.ec, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i89 = icmp eq ptr %i.dq, %i.dm
  br i1 %.not10.i.i.i.i.i.i.i89, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i.i.i90.preheader:                 ; preds = %.noexc99
  %28 = add i64 %i.dr, -8
  %29 = sub i64 %28, %i.ds                        ; 2 uses
  %i.ee = lshr i64 %29, 3
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check284 = icmp ult i64 %29, 152
  br i1 %min.iters.check284, label %.lr.ph.i.i.i.i.i.i.i90.preheader322, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.i.i.i.i.i.i.i90.preheader
  %i.eg = add i64 %i.dr, -8
  %i.eh = sub i64 %i.eg, %i.ds
  %i.ei = and i64 %i.eh, -8
  %i.ej = add i64 %i.ei, 8                        ; 2 uses
  %scevgep278 = getelementptr i8, ptr %i.eb, i64 %i.ej
  %scevgep279 = getelementptr i8, ptr %i.dq, i64 %i.ej
  %bound0280 = icmp ult ptr %i.eb, %scevgep279
  %bound1281 = icmp ult ptr %i.dq, %scevgep278
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %.lr.ph.i.i.i.i.i.i.i90.preheader322, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck277
  %n.vec287 = and i64 %i.ef, 4611686018427387900  ; 3 uses
  %i.ek = shl i64 %n.vec287, 3                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.eb, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %i.dq, i64 %i.ek
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph285
  %index289 = phi i64 [ 0, %vector.ph285 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %i.en = shl i64 %index289, 3                    ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.eb, i64 %i.en ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.dq, i64 %i.en ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.eo = getelementptr i8, ptr %next.gep291, i64 16
  %wide.load292 = load <2 x i64>, ptr %next.gep291, align 8, !tbaa !168, !alias.scope !912, !noalias !907
  %wide.load293 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !168, !alias.scope !912, !noalias !907
  %i.ep = getelementptr i8, ptr %next.gep290, i64 16
  store <2 x i64> %wide.load292, ptr %next.gep290, align 8, !tbaa !168, !alias.scope !915, !noalias !912
  store <2 x i64> %wide.load293, ptr %i.ep, align 8, !tbaa !168, !alias.scope !915, !noalias !912
  %i.eq = getelementptr i8, ptr %next.gep291, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep291, align 8, !tbaa !168, !alias.scope !912, !noalias !907
  store <2 x ptr> splat (ptr null), ptr %i.eq, align 8, !tbaa !168, !alias.scope !912, !noalias !907
  %index.next294 = add nuw i64 %index289, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.er, label %middle.block295, label %vector.body288, !llvm.loop !917

middle.block295:                                  ; preds = %vector.body288
  %cmp.n296 = icmp eq i64 %i.ef, %n.vec287
  br i1 %cmp.n296, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90.preheader322

.lr.ph.i.i.i.i.i.i.i90.preheader322:              ; preds = %vector.memcheck277, %.lr.ph.i.i.i.i.i.i.i90.preheader, %middle.block295
  %.012.i.i.i.i.i.i.i91.ph = phi ptr [ %i.eb, %vector.memcheck277 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i90.preheader ], [ %i.el, %middle.block295 ]
  %.0911.i.i.i.i.i.i.i92.ph = phi ptr [ %i.dq, %vector.memcheck277 ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i90.preheader ], [ %i.em, %middle.block295 ]
  br label %.lr.ph.i.i.i.i.i.i.i90

.lr.ph.i.i.i.i.i.i.i90:                           ; preds = %.lr.ph.i.i.i.i.i.i.i90.preheader322, %.lr.ph.i.i.i.i.i.i.i90
  %.012.i.i.i.i.i.i.i91 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i90 ], [ %.012.i.i.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i.i.i90.preheader322 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i92 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i90 ], [ %.0911.i.i.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i.i.i90.preheader322 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.es = load i64, ptr %.0911.i.i.i.i.i.i.i92, align 8, !tbaa !168, !alias.scope !910, !noalias !907
  store i64 %i.es, ptr %.012.i.i.i.i.i.i.i91, align 8, !tbaa !168, !alias.scope !907, !noalias !910
  store ptr null, ptr %.0911.i.i.i.i.i.i.i92, align 8, !tbaa !168, !alias.scope !910, !noalias !907
  %i.et = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i92, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i93 = icmp eq ptr %i.et, %i.dm
  br i1 %.not.i.i.i.i.i.i.i93, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90, !llvm.loop !918

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94: ; preds = %.lr.ph.i.i.i.i.i.i.i90, %middle.block295, %.noexc99
  %.0.lcssa.i.i.i.i.i.i.i95 = phi ptr [ %i.eb, %.noexc99 ], [ %i.el, %middle.block295 ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i90 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i95, i64 8
  %.not.i23.i.i.i96 = icmp eq ptr %i.dq, null
  br i1 %.not.i23.i.i.i96, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i97, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94
  call void @_ZdlPv(ptr noundef nonnull %i.dq) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i97

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i97: ; preds = %bb.aj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94
  store ptr %i.eb, ptr %12, align 8, !tbaa !170
  store ptr %i.ev, ptr %i.af, align 8, !tbaa !166
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ew, ptr %i.ah, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit106

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit106: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i97, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef zeroext 1)
          to label %bb.ak unwind label %bb.bj

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit106
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull %17)
          to label %bb.al unwind label %bb.bk

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ex = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc107 unwind label %bb.bl ; 6 uses

.noexc107:                                        ; preds = %bb.al
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %16) #30, !noalias !919
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ex, ptr noundef nonnull %4)
          to label %bb.an unwind label %bb.am, !noalias !919

bb.am:                                            ; preds = %.noexc107
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !919
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #31, !noalias !919
  br label %.body108

bb.an:                                            ; preds = %.noexc107
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #30, !noalias !919
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ez = load ptr, ptr %i.af, align 8, !tbaa !166 ; 6 uses
  %i.fa = load ptr, ptr %i.ah, align 8, !tbaa !167
  %.not.i.i111 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not.i.i111, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = ptrtoint ptr %i.ex to i64
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !168
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.fc, ptr %i.af, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132

bb.ap:                                            ; preds = %bb.an
  %i.fd = load ptr, ptr %12, align 8, !tbaa !170  ; 10 uses
  %i.fe = ptrtoint ptr %i.ez to i64               ; 3 uses
  %i.ff = ptrtoint ptr %i.fd to i64               ; 3 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775800
  br i1 %i.fh, label %bb.aq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc124 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit164

.noexc124:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112: ; preds = %bb.ap
  %i.fi = ashr exact i64 %i.fg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i113 = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i113, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 1152921504606846975)
  %i.fm = select i1 %i.fk, i64 1152921504606846975, i64 %i.fl ; 3 uses
  %.not.i.i.i.i114 = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i114)
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #33
          to label %.noexc125 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit164 ; 10 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg
  %i.fq = ptrtoint ptr %i.ex to i64
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i115 = icmp eq ptr %i.fd, %i.ez
  br i1 %.not10.i.i.i.i.i.i.i115, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116.preheader

.lr.ph.i.i.i.i.i.i.i116.preheader:                ; preds = %.noexc125
  %30 = add i64 %i.fe, -8
  %31 = sub i64 %30, %i.ff                        ; 2 uses
  %i.fr = lshr i64 %31, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check306 = icmp ult i64 %31, 152
  br i1 %min.iters.check306, label %.lr.ph.i.i.i.i.i.i.i116.preheader321, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i.i.i.i.i.i116.preheader
  %i.ft = add i64 %i.fe, -8
  %i.fu = sub i64 %i.ft, %i.ff
  %i.fv = and i64 %i.fu, -8
  %i.fw = add i64 %i.fv, 8                        ; 2 uses
  %scevgep300 = getelementptr i8, ptr %i.fo, i64 %i.fw
  %scevgep301 = getelementptr i8, ptr %i.fd, i64 %i.fw
  %bound0302 = icmp ult ptr %i.fo, %scevgep301
  %bound1303 = icmp ult ptr %i.fd, %scevgep300
  %found.conflict304 = and i1 %bound0302, %bound1303
  br i1 %found.conflict304, label %.lr.ph.i.i.i.i.i.i.i116.preheader321, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck299
  %n.vec309 = and i64 %i.fs, 4611686018427387900  ; 3 uses
  %i.fx = shl i64 %n.vec309, 3                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fo, i64 %i.fx  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fd, i64 %i.fx
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph307
  %index311 = phi i64 [ 0, %vector.ph307 ], [ %index.next316, %vector.body310 ] ; 2 uses
  %i.ga = shl i64 %index311, 3                    ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.fo, i64 %i.ga ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.fd, i64 %i.ga ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.gb = getelementptr i8, ptr %next.gep313, i64 16
  %wide.load314 = load <2 x i64>, ptr %next.gep313, align 8, !tbaa !168, !alias.scope !927, !noalias !922
  %wide.load315 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !168, !alias.scope !927, !noalias !922
  %i.gc = getelementptr i8, ptr %next.gep312, i64 16
  store <2 x i64> %wide.load314, ptr %next.gep312, align 8, !tbaa !168, !alias.scope !930, !noalias !927
  store <2 x i64> %wide.load315, ptr %i.gc, align 8, !tbaa !168, !alias.scope !930, !noalias !927
  %i.gd = getelementptr i8, ptr %next.gep313, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep313, align 8, !tbaa !168, !alias.scope !927, !noalias !922
  store <2 x ptr> splat (ptr null), ptr %i.gd, align 8, !tbaa !168, !alias.scope !927, !noalias !922
  %index.next316 = add nuw i64 %index311, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next316, %n.vec309
  br i1 %i.ge, label %middle.block317, label %vector.body310, !llvm.loop !932

middle.block317:                                  ; preds = %vector.body310
  %cmp.n318 = icmp eq i64 %i.fs, %n.vec309
  br i1 %cmp.n318, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116.preheader321

.lr.ph.i.i.i.i.i.i.i116.preheader321:             ; preds = %vector.memcheck299, %.lr.ph.i.i.i.i.i.i.i116.preheader, %middle.block317
  %.012.i.i.i.i.i.i.i117.ph = phi ptr [ %i.fo, %vector.memcheck299 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i116.preheader ], [ %i.fy, %middle.block317 ]
  %.0911.i.i.i.i.i.i.i118.ph = phi ptr [ %i.fd, %vector.memcheck299 ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i116.preheader ], [ %i.fz, %middle.block317 ]
  br label %.lr.ph.i.i.i.i.i.i.i116

.lr.ph.i.i.i.i.i.i.i116:                          ; preds = %.lr.ph.i.i.i.i.i.i.i116.preheader321, %.lr.ph.i.i.i.i.i.i.i116
  %.012.i.i.i.i.i.i.i117 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i116 ], [ %.012.i.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i.i116.preheader321 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i118 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i.i116 ], [ %.0911.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i116.preheader321 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.gf = load i64, ptr %.0911.i.i.i.i.i.i.i118, align 8, !tbaa !168, !alias.scope !925, !noalias !922
  store i64 %i.gf, ptr %.012.i.i.i.i.i.i.i117, align 8, !tbaa !168, !alias.scope !922, !noalias !925
  store ptr null, ptr %.0911.i.i.i.i.i.i.i118, align 8, !tbaa !168, !alias.scope !925, !noalias !922
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i118, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i117, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i119 = icmp eq ptr %i.gg, %i.ez
  br i1 %.not.i.i.i.i.i.i.i119, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116, !llvm.loop !933

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120: ; preds = %.lr.ph.i.i.i.i.i.i.i116, %middle.block317, %.noexc125
  %.0.lcssa.i.i.i.i.i.i.i121 = phi ptr [ %i.fo, %.noexc125 ], [ %i.fy, %middle.block317 ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.i116 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i121, i64 8
  %.not.i23.i.i.i122 = icmp eq ptr %i.fd, null
  br i1 %.not.i23.i.i.i122, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120
  call void @_ZdlPv(ptr noundef nonnull %i.fd) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123: ; preds = %bb.ar, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120
  store ptr %i.fo, ptr %12, align 8, !tbaa !170
  store ptr %i.gi, ptr %i.af, align 8, !tbaa !166
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.gj, ptr %i.ah, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123, %bb.ao
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA13_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1001") align 8 %18, ptr noundef nonnull align 1 dereferenceable(13) @.str.32, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.as unwind label %bb.bo

bb.as:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZNK6duckdb9AlterInfo17GetAlterEntryDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::AlterEntryData") align 8 %20, ptr noundef nonnull align 8 dereferenceable(113) %3)
          to label %bb.at unwind label %bb.bp

bb.at:                                            ; preds = %bb.as
  %i.gk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.au unwind label %bb.bq     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.gl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.gl, ptr %21, align 8, !tbaa !12
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !15 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.go, ptr %i.a, align 8, !tbaa !19
  %i.gp = icmp ugt i64 %i.go, 15
  br i1 %i.gp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.au
  %i.gq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc133 unwind label %bb.bq ; 2 uses

.noexc133:                                        ; preds = %.noexc.i
  store ptr %i.gq, ptr %21, align 8, !tbaa !15
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.gr, ptr %i.gl, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc133, %bb.au
  %i.gs = phi ptr [ %i.gq, %.noexc133 ], [ %i.gl, %bb.au ] ; 2 uses
  switch i64 %i.go, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %bb.ax
  ]

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.gt = load i8, ptr %i.gm, align 1, !tbaa !20
  store i8 %i.gt, ptr %i.gs, align 1, !tbaa !20
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 1 %i.gm, i64 %i.go, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i
  %i.gu = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !18
  %i.gw = load ptr, ptr %21, align 8, !tbaa !15
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gu
  store i8 0, ptr %i.gx, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #30
  %i.gy = load ptr, ptr %18, align 8, !tbaa !745
  store ptr null, ptr %18, align 8, !tbaa !745
  store ptr %i.gy, ptr %23, align 8, !tbaa !747
  invoke void @_ZN6duckdb20ChangeColumnTypeInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23)
          to label %bb.ay unwind label %bb.br

bb.ay:                                            ; preds = %bb.ax
  %i.gz = load ptr, ptr %23, align 8, !tbaa !168  ; 3 uses
  %.not.i134 = icmp eq ptr %i.gz, null
  br i1 %.not.i134, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i135

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i135: ; preds = %bb.ay
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !7
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(56) %i.gz) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136: ; preds = %bb.ay, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i135
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #30
  %i.hd = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gl
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136
  call void @_ZdlPv(ptr noundef %i.hd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.hf = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  call void @_ZdlPv(ptr noundef %i.hg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !15 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.hk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.hn = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hp = icmp eq ptr %i.hn, %i.ho
end_hunk_8
begin_hunk_9_@_ZN6duckdb14DuckTableEntry16ChangeColumnTypeERNS_13ClientContextERNS_20ChangeColumnTypeInfoE:bb.a

..loopexit_crit_edge21.i.i.i.i184:                ; preds = %bb.es
  br label %.loopexit317, !llvm.loop !949

_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189: ; preds = %bb.eq, %bb.er, %bb.eo
  %i.lr = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.et unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread

bb.et:                                            ; preds = %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.eu unwind label %bb.ew

bb.eu:                                            ; preds = %bb.et
  invoke void @__cxa_throw(ptr nonnull %i.lr, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.hw unwind label %bb.ew

bb.ev:                                            ; preds = %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEaSERKS6_.exit
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread: ; preds = %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu, %bb.et
  %.093 = phi i1 [ false, %bb.eu ], [ true, %bb.et ] ; 2 uses
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lv = load ptr, ptr %29, align 8, !tbaa !15   ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.ew
  call void @_ZdlPv(ptr noundef %i.lv) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br i1 %.093, label %bb.ex, label %bb.ez

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br i1 %.093, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.pn111307 = phi { ptr, i32 } [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ]
  call void @__cxa_free_exception(ptr %i.lr) #30
  br label %bb.ez

.loopexit317:                                     ; preds = %.lr.ph.i.i.i.i180, %.preheader, %..loopexit_crit_edge21.i.i.i.i184, %bb.ep
  %i.ly = load ptr, ptr %i.ed, align 8, !tbaa !958 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ly, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i193

.lr.ph.i.i.i.i193:                                ; preds = %.loopexit317, %.lr.ph.i.i.i.i193
  %.06.i.i.i.i = phi ptr [ %i.lz, %.lr.ph.i.i.i.i193 ], [ %i.ly, %.loopexit317 ] ; 2 uses
  %i.lz = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !118 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #31
  %.not.i.i.i.i194 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i.i194, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i193, !llvm.loop !959

_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i193, %.loopexit317
  %i.ma = load ptr, ptr %28, align 8, !tbaa !948
  %i.mb = load i64, ptr %i.ec, align 8, !tbaa !947
  %i.mc = shl i64 %i.mb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ma, i8 0, i64 %i.mc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  %i.md = load ptr, ptr %28, align 8, !tbaa !948  ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.eg
  br i1 %i.me, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.md) #31
  br label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %.loopexit

bb.ez:                                            ; preds = %.loopexit320, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.ex, %bb.ev
  %.pn111.pn = phi { ptr, i32 } [ %.pn111307, %bb.ex ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ls, %bb.ev ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %lpad.loopexit, %.loopexit320 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #30
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.el
  %.pn111.pn.pn = phi { ptr, i32 } [ %.pn111.pn, %bb.ez ], [ %i.kj, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.fk

bb.fb:                                            ; preds = %bb.cr
  %i.mf = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.fc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.thread

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.fd unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  invoke void @__cxa_throw(ptr nonnull %i.mf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.hw unwind label %bb.fe

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.thread: ; preds = %bb.fb
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.091 = phi i1 [ false, %bb.fd ], [ true, %bb.fc ] ; 2 uses
  %i.mh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mi = load ptr, ptr %31, align 8, !tbaa !15   ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.fe
  call void @_ZdlPv(ptr noundef %i.mi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br i1 %.091, label %bb.ff, label %bb.fk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br i1 %.091, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %.pn124310 = phi { ptr, i32 } [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.thread ], [ %i.mh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %i.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ]
  call void @__cxa_free_exception(ptr %i.mf) #30
  br label %bb.fk

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i162, %bb.dr, %.lr.ph.i.i.i.i, %bb.cz, %bb.dt, %..loopexit_crit_edge21.i.i.i.i166, %bb.db, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, %bb.cr
  %i.ml = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.fg unwind label %.loopexit321 ; 3 uses

bb.fg:                                            ; preds = %.loopexit
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 464 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 472 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !300 ; 6 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 480 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !544
  %.not.i.i198 = icmp eq ptr %i.mo, %i.mq
  br i1 %.not.i.i198, label %bb.fh, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.fg
  %i.mr = load i64, ptr %23, align 8, !tbaa !567
  store i64 %i.mr, ptr %i.mo, align 8, !tbaa !567
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %i.ms, ptr %i.mn, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.fh:                                            ; preds = %bb.fg
  %i.mt = load ptr, ptr %i.mm, align 8, !tbaa !303 ; 10 uses
  %i.mu = ptrtoint ptr %i.mo to i64               ; 3 uses
  %i.mv = ptrtoint ptr %i.mt to i64               ; 3 uses
  %i.mw = sub i64 %i.mu, %i.mv                    ; 3 uses
  %i.mx = icmp eq i64 %i.mw, 9223372036854775800
  br i1 %i.mx, label %bb.fi, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc201 unwind label %.loopexit.split-lp322

.noexc201:                                        ; preds = %bb.fi
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fh
  %i.my = ashr exact i64 %i.mw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.my, i64 1)
  %i.mz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.my ; 2 uses
  %i.na = icmp ult i64 %i.mz, %i.my
  %i.nb = call i64 @llvm.umin.i64(i64 %i.mz, i64 1152921504606846975)
  %i.nc = select i1 %i.na, i64 1152921504606846975, i64 %i.nb ; 3 uses
  %.not.i.i.i.i199 = icmp ne i64 %i.nc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i199)
  %i.nd = shl nuw nsw i64 %i.nc, 3
  %i.ne = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nd) #33
          to label %.noexc202 unwind label %.loopexit321 ; 10 uses

.noexc202:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.mw
  %i.ng = load i64, ptr %23, align 8, !tbaa !567
  store i64 %i.ng, ptr %i.nf, align 8, !tbaa !567
  store ptr null, ptr %23, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.mt, %i.mo
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc202
  %39 = add i64 %i.mu, -8
  %40 = sub i64 %39, %i.mv                        ; 2 uses
  %i.nh = lshr i64 %40, 3
  %i.ni = add nuw nsw i64 %i.nh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %40, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader441, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ne, i64 8
  %i.nj = add i64 %i.mu, -8
  %i.nk = sub i64 %i.nj, %i.mv
  %i.nl = and i64 %i.nk, -8                       ; 2 uses
  %scevgep435 = getelementptr i8, ptr %scevgep, i64 %i.nl
  %scevgep436 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep437 = getelementptr i8, ptr %scevgep436, i64 %i.nl
  %bound0 = icmp ult ptr %i.ne, %scevgep437
  %bound1 = icmp ult ptr %i.mt, %scevgep435
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader441, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ni, 4611686018427387900     ; 3 uses
  %i.nm = shl i64 %n.vec, 3                       ; 2 uses
  %i.nn = getelementptr i8, ptr %i.ne, i64 %i.nm  ; 2 uses
  %i.no = getelementptr i8, ptr %i.mt, i64 %i.nm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.np = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ne, i64 %i.np ; 2 uses
  %next.gep438 = getelementptr i8, ptr %i.mt, i64 %i.np ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.nq = getelementptr i8, ptr %next.gep438, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep438, align 8, !tbaa !567, !alias.scope !965, !noalias !960
  %wide.load439 = load <2 x i64>, ptr %i.nq, align 8, !tbaa !567, !alias.scope !965, !noalias !960
  %i.nr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !968, !noalias !965
  store <2 x i64> %wide.load439, ptr %i.nr, align 8, !tbaa !567, !alias.scope !968, !noalias !965
  %i.ns = getelementptr i8, ptr %next.gep438, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep438, align 8, !tbaa !567, !alias.scope !965, !noalias !960
  store <2 x ptr> splat (ptr null), ptr %i.ns, align 8, !tbaa !567, !alias.scope !965, !noalias !960
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nt = icmp eq i64 %index.next, %n.vec
  br i1 %i.nt, label %middle.block, label %vector.body, !llvm.loop !970

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ni, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader441

.lr.ph.i.i.i.i.i.i.i.preheader441:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ne, %vector.memcheck ], [ %i.ne, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.nn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.mt, %vector.memcheck ], [ %i.mt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.no, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader441, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader441 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.nv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader441 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.nu = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !963, !noalias !960
  store i64 %i.nu, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !960, !noalias !963
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !963, !noalias !960
  %i.nv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i200 = icmp eq ptr %i.nv, %i.mo
  br i1 %.not.i.i.i.i.i.i.i200, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !971

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc202
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ne, %.noexc202 ], [ %i.nn, %middle.block ], [ %i.nw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mt) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.fj
  store ptr %i.ne, ptr %i.mm, align 8, !tbaa !303
  store ptr %i.nx, ptr %i.mn, align 8, !tbaa !300
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.nc
  store ptr %i.ny, ptr %i.mp, align 8, !tbaa !544
  %.pr = load ptr, ptr %23, align 8, !tbaa !567   ; 3 uses
  %.not.i203 = icmp eq ptr %.pr, null
  br i1 %.not.i203, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.nz = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.oc = add nuw i64 %.099332, 1                 ; 2 uses
  %i.od = load ptr, ptr %i.dz, align 8, !tbaa !300
  %i.oe = load ptr, ptr %i.cf, align 8, !tbaa !303
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = ashr exact i64 %i.oh, 3
  %i.oj = icmp ult i64 %i.oc, %i.oi
  br i1 %i.oj, label %bb.cn, label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit._crit_edge, !llvm.loop !972

bb.fk:                                            ; preds = %.loopexit321, %.loopexit.split-lp322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %bb.ea, %bb.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.di, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %bb.ek, %bb.fa, %bb.dz, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.ff
  %.pn124.pn = phi { ptr, i32 } [ %.pn124310, %bb.ff ], [ %i.mh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %i.jo, %bb.dz ], [ %i.jp, %bb.ea ], [ %i.hy, %bb.dh ], [ %i.ki, %bb.ek ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %.pn111.pn.pn, %bb.fa ], [ %.pn120299, %bb.dk ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %i.hz, %bb.di ], [ %.pn116303, %bb.ec ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %lpad.loopexit323, %.loopexit321 ], [ %lpad.loopexit.split-lp324, %.loopexit.split-lp322 ] ; 2 uses
  %i.ok = load ptr, ptr %23, align 8, !tbaa !567  ; 3 uses
  %.not.i204 = icmp eq ptr %i.ok, null
  br i1 %.not.i204, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit206, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i205

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i205: ; preds = %bb.fk
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !7
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ok) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit206

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit206: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i205, %bb.fk, %bb.cs
  %.pn124.pn.pn = phi { ptr, i32 } [ %i.go, %bb.cs ], [ %.pn124.pn, %bb.fk ], [ %.pn124.pn, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i205 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.ho

bb.fl:                                            ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit._crit_edge
  %i.oo = load ptr, ptr %8, align 8, !tbaa !637
  store ptr null, ptr %8, align 8, !tbaa !637
  store ptr %i.oo, ptr %34, align 8, !tbaa !639
  %i.op = load ptr, ptr %i.d, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder19BindCreateTableInfoENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %33, ptr noundef nonnull align 8 dereferenceable(472) %i.gf, ptr noundef nonnull %34, ptr noundef nonnull align 8 dereferenceable(248) %i.op)
          to label %bb.fm unwind label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.oq = load ptr, ptr %34, align 8, !tbaa !214  ; 3 uses
  %.not.i207 = icmp eq ptr %i.oq, null
  br i1 %.not.i207, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.fm
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !7
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(320) %i.oq) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.fm, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %i.ou = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !519
  %i.ow = load ptr, ptr %10, align 8, !tbaa !515
  %.not336 = icmp eq ptr %i.ov, %i.ow
  %i.ox = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 5 uses
  br i1 %.not336, label %._crit_edge.thread, label %.lr.ph335

.lr.ph335:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.oy = getelementptr inbounds nuw i8, ptr %35, i64 16
  br label %bb.fp

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EE12emplace_backIJmEEEvDpOT_.exit
  %.pre347 = load ptr, ptr %35, align 8, !tbaa !973
  %.pre348 = load ptr, ptr %i.ox, align 8, !tbaa !973 ; 2 uses
  %i.oz = icmp eq ptr %.pre347, %.pre348
  %i.pa = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  br i1 %i.oz, label %._crit_edge.thread, label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EE12emplace_backIJRKmEEEvDpOT_.exit

bb.fn:                                            ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit._crit_edge
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit210

bb.fo:                                            ; preds = %bb.fl
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pd = load ptr, ptr %34, align 8, !tbaa !214  ; 3 uses
  %.not.i208 = icmp eq ptr %i.pd, null
  br i1 %.not.i208, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit210, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i209

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i209: ; preds = %bb.fo
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !7
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(320) %i.pd) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit210

bb.fp:                                            ; preds = %.lr.ph335, %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EE12emplace_backIJmEEEvDpOT_.exit
  %.090334 = phi i64 [ 0, %.lr.ph335 ], [ %i.pn, %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EE12emplace_backIJmEEEvDpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_12LogicalIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %.090334)
          to label %bb.fq unwind label %bb.fu

bb.fq:                                            ; preds = %bb.fp
  %.sroa.01.0.copyload = load i64, ptr %i.ph, align 8, !tbaa !19
  %i.pi = invoke i64 @_ZNK6duckdb10ColumnList17LogicalToPhysicalENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.cg, i64 %.sroa.01.0.copyload)
          to label %bb.fr unwind label %bb.fu     ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  store i64 %i.pi, ptr %36, align 8
  %i.pj = load ptr, ptr %i.ox, align 8, !tbaa !590 ; 3 uses
  %i.pk = load ptr, ptr %i.oy, align 8, !tbaa !974
  %.not.i211 = icmp eq ptr %i.pj, %i.pk
  br i1 %.not.i211, label %bb.ft, label %bb.fs
end_hunk_9
begin_hunk_10_@_ZN6duckdb14DuckTableEntry24DropForeignKeyConstraintERNS_13ClientContextERNS_19AlterForeignKeyInfoE:bb.a
  %.not4.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bj, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb16ColumnDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %.05.i.i.i.i) #30
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !529

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 16, !tbaa !487
  br label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.bm = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bj, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb10ColumnListD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #31
  br label %_ZN6duckdb10ColumnListD2Ev.exit

_ZN6duckdb10ColumnListD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !300
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !303
  %.not = icmp eq ptr %i.bp, %i.bq
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb10ColumnListD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 128
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb10ColumnListD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.883") align 8 %8, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr null, i8 noundef zeroext 0)
          to label %bb.ai unwind label %bb.bd

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.o:                                             ; preds = %_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10ColumnListD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %6) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.p ], [ %i.bu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.bi

bb.r:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit
  %.01154 = phi i64 [ 0, %.lr.ph ], [ %i.em, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ConstraintESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %.01154)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %bb.t unwind label %bb.ab      ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(9) %i.bx)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.cb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !304
  %i.ce = icmp eq i8 %i.cd, 4
  br i1 %i.ce, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.cf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.cg = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN6duckdb10Constraint4CastINS_20ForeignKeyConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.cf)
          to label %bb.y unwind label %bb.ac      ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !307
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !18 ; 3 uses
  %i.cn = load i64, ptr %i.bs, align 8, !tbaa !18
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.cp = icmp eq i64 %i.cm, 0
  br i1 %i.cp, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.aa
  %i.cq = load ptr, ptr %i.br, align 8, !tbaa !15
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !15
  %bcmp.i = call i32 @bcmp(ptr %i.cr, ptr %i.cq, i64 %i.cm)
  %i.cs = icmp eq i32 %bcmp.i, 0
  br i1 %i.cs, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %.critedge

bb.ab:                                            ; preds = %bb.t, %bb.s, %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit34

.loopexit:                                        ; preds = %bb.u, %.critedge, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %bb.x, %bb.w
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.critedge:                                        ; preds = %bb.z, %bb.y, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.v
  %i.cv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %.loopexit ; 3 uses

bb.ad:                                            ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 464 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 472 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !300 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 480 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i, label %bb.ae, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ad
  %i.db = load i64, ptr %7, align 8, !tbaa !567
  store i64 %i.db, ptr %i.cy, align 8, !tbaa !567
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !303 ; 10 uses
  %i.de = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.df = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.af, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #33
          to label %.noexc31 unwind label %.loopexit ; 10 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  %i.dq = load i64, ptr %7, align 8, !tbaa !567
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !567
  store ptr null, ptr %7, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cy
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i28.preheader

.lr.ph.i.i.i.i.i.i.i28.preheader:                 ; preds = %.noexc31
  %11 = add i64 %i.de, -8
  %12 = sub i64 %11, %i.df                        ; 2 uses
  %i.dr = lshr i64 %12, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i28.preheader88, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i28.preheader
  %scevgep = getelementptr i8, ptr %i.do, i64 8
  %i.dt = add i64 %i.de, -8
  %i.du = sub i64 %i.dt, %i.df
  %i.dv = and i64 %i.du, -8                       ; 2 uses
  %scevgep82 = getelementptr i8, ptr %scevgep, i64 %i.dv
  %scevgep83 = getelementptr i8, ptr %i.dd, i64 8
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.dv
  %bound0 = icmp ult ptr %i.do, %scevgep84
  %bound1 = icmp ult ptr %i.dd, %scevgep82
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i28.preheader88, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ds, 4611686018427387900     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %i.do, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dd, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.do, i64 %i.dz ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.dd, i64 %i.dz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.ea = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep85, align 8, !tbaa !567, !alias.scope !985, !noalias !980
  %wide.load86 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !567, !alias.scope !985, !noalias !980
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !988, !noalias !985
  store <2 x i64> %wide.load86, ptr %i.eb, align 8, !tbaa !567, !alias.scope !988, !noalias !985
  %i.ec = getelementptr i8, ptr %next.gep85, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep85, align 8, !tbaa !567, !alias.scope !985, !noalias !980
  store <2 x ptr> splat (ptr null), ptr %i.ec, align 8, !tbaa !567, !alias.scope !985, !noalias !980
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !990

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i28.preheader88

.lr.ph.i.i.i.i.i.i.i28.preheader88:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i28.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.do, %vector.memcheck ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i28.preheader ], [ %i.dx, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i28.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i.i28:                           ; preds = %.lr.ph.i.i.i.i.i.i.i28.preheader88, %.lr.ph.i.i.i.i.i.i.i28
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i28 ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i28.preheader88 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.i28 ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i28.preheader88 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.ee = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !983, !noalias !980
  store i64 %i.ee, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !980, !noalias !983
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !983, !noalias !980
  %i.ef = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.ef, %i.cy
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i28, !llvm.loop !991

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i28, %middle.block, %.noexc31
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.do, %.noexc31 ], [ %i.dx, %middle.block ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i28 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dd) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.do, ptr %i.cw, align 8, !tbaa !303
  store ptr %i.eh, ptr %i.cx, align 8, !tbaa !300
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.ei, ptr %i.cz, align 8, !tbaa !544
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.pr52 = load ptr, ptr %7, align 8, !tbaa !567  ; 3 uses
  %.not.i = icmp eq ptr %.pr52, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ej = load ptr, ptr %.pr52, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr52) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.em = add nuw i64 %.01154, 1                  ; 2 uses
  %i.en = load ptr, ptr %i.bo, align 8, !tbaa !300
  %i.eo = load ptr, ptr %i.bn, align 8, !tbaa !303
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 3
  %i.et = icmp ult i64 %i.em, %i.es
  br i1 %i.et, label %bb.r, label %._crit_edge, !llvm.loop !992

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac
  %.pn22 = phi { ptr, i32 } [ %i.cu, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.eu = load ptr, ptr %7, align 8, !tbaa !567   ; 3 uses
  %.not.i32 = icmp eq ptr %i.eu, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit34, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i33

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i33: ; preds = %bb.ah
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.eu) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit34

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit34: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i33, %bb.ah, %bb.ab
  %.pn22.pn = phi { ptr, i32 } [ %i.ct, %bb.ab ], [ %.pn22, %bb.ah ], [ %.pn22, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bi

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ey = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.aj unwind label %bb.be

bb.aj:                                            ; preds = %bb.ai
  %i.ez = load ptr, ptr %5, align 8, !tbaa !637
  store ptr null, ptr %5, align 8, !tbaa !637
  store ptr %i.ez, ptr %10, align 8, !tbaa !639
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder19BindCreateTableInfoENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %9, ptr noundef nonnull align 8 dereferenceable(472) %i.ey, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(248) %i.fa)
          to label %bb.ak unwind label %bb.bf

bb.ak:                                            ; preds = %bb.aj
  %i.fb = load ptr, ptr %10, align 8, !tbaa !214  ; 3 uses
  %.not.i35 = icmp eq ptr %i.fb, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.ak
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(320) %i.fb) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ak, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.fi = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.al unwind label %bb.bg

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fj = invoke noalias noundef nonnull dereferenceable(688) ptr @_Znwm(i64 noundef 688) #33
          to label %.noexc38 unwind label %bb.bg, !inline_history !642 ; 3 uses

.noexc38:                                         ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !94, !noalias !993 ; 2 uses
  %i.fo = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !95, !noalias !993
  store <2 x ptr> %i.fo, ptr %4, align 16, !tbaa !95, !noalias !993
  %.not.i.i.i.i.i36 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i36, label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i, label %bb.am

bb.am:                                            ; preds = %.noexc38
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 3 uses
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !993
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !3, !noalias !993
  %i.fs = add nsw i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !3, !noalias !993
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.ft = atomicrmw volatile add ptr %i.fp, i32 1 acq_rel, align 4, !noalias !993 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i: ; preds = %bb.ao, %bb.an, %.noexc38
  invoke void @_ZN6duckdb14DuckTableEntryC1ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoENS_10shared_ptrINS_9DataTableELb1EEE(ptr noundef nonnull align 8 dereferenceable(688) %i.fj, ptr noundef nonnull align 8 dereferenceable(80) %i.fg, ptr noundef nonnull align 8 dereferenceable(248) %i.fh, ptr noundef nonnull align 8 dereferenceable(360) %i.fi, ptr noundef nonnull %4)
          to label %bb.ap unwind label %bb.aw, !noalias !993, !inline_history !642

bb.ap:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !94, !noalias !993 ; 8 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i37, label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb14DuckTableEntry24DropForeignKeyConstraintERNS_13ClientContextERNS_19AlterForeignKeyInfoE:bb.a
  br label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit48

_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit48: ; preds = %bb.bi, %_ZNKSt14default_deleteIN6duckdb15CreateTableInfoEEclEPS1_.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14DuckTableEntry10SetNotNullERNS_13ClientContextERNS_14SetNotNullInfoE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(688) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(152) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 6 uses
  %5 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.duckdb::unique_ptr.244", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::shared_ptr.883", align 8 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr.888", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::unique_ptr.244", align 8 ; 4 uses
  %12 = alloca %"class.duckdb::unique_ptr.1088", align 8 ; 7 uses
  %13 = alloca %"class.duckdb::shared_ptr.199", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.b = tail call i64 @_ZNK6duckdb17TableCatalogEntry14GetColumnIndexERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(448) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i1 noundef zeroext false) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.c, i64 %i.b)
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition9GeneratedEv(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.cb unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.031, label %bb.f, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.031, label %bb.f, label %bb.ca

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53126 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.ca

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.l = load ptr, ptr %1, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.244") align 8 %8, ptr noundef nonnull align 8 dereferenceable(448) %1)
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 464 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !543  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 472 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !543  ; 2 uses
  %.not.not136 = icmp eq ptr %i.q, %i.s
  br i1 %.not.not136, label %.critedge, label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %bb.h, %.thread
  %.sroa.0118.0137 = phi ptr [ %i.af, %.thread ], [ %i.q, %bb.h ] ; 3 uses
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0137)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !304
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0137)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10Constraint4CastINS_17NotNullConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.y)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !847
  %i.ac = icmp eq i64 %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit, label %.thread

bb.n:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.j, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0118.0137, i64 8 ; 2 uses
  %.not.not = icmp eq ptr %i.af, %i.s
  br i1 %.not.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.thread, %bb.h
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc unwind label %bb.u     ; 6 uses

.noexc:                                           ; preds = %.critedge
  invoke void @_ZN6duckdb17NotNullConstraintC1ENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 %i.b)
          to label %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.p, !noalias !996

bb.p:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #31, !noalias !996
  br label %.body

_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !300 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 480 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.al = ptrtoint ptr %i.ag to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !567
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.r, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.r:                                             ; preds = %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !303 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.s, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc56 unwind label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64

.noexc56:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #33
          to label %.noexc57 unwind label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64 ; 10 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ag to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc57
  %14 = add i64 %i.ao, -8
  %15 = sub i64 %14, %i.ap                        ; 2 uses
  %i.bb = lshr i64 %15, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bd = add i64 %i.ao, -8
  %i.be = sub i64 %i.bd, %i.ap
  %i.bf = and i64 %i.be, -8
  %i.bg = add i64 %i.bf, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bg
  %scevgep158 = getelementptr i8, ptr %i.an, i64 %i.bg
  %bound0 = icmp ult ptr %i.ay, %scevgep158
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ay, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bk ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.an, i64 %i.bk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.bl = getelementptr i8, ptr %next.gep159, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep159, align 8, !tbaa !567, !alias.scope !1004, !noalias !999
  %wide.load160 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !567, !alias.scope !1004, !noalias !999
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1007, !noalias !1004
  store <2 x i64> %wide.load160, ptr %i.bm, align 8, !tbaa !567, !alias.scope !1007, !noalias !1004
  %i.bn = getelementptr i8, ptr %next.gep159, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep159, align 8, !tbaa !567, !alias.scope !1004, !noalias !999
  store <2 x ptr> splat (ptr null), ptr %i.bn, align 8, !tbaa !567, !alias.scope !1004, !noalias !999
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1009

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader162

.lr.ph.i.i.i.i.i.i.i.preheader162:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader162, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader162 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader162 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1002, !noalias !999
  store i64 %i.bp, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !999, !noalias !1002
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1002, !noalias !999
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1010

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc57
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc57 ], [ %i.bi, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ay, ptr %i.p, align 8, !tbaa !303
  store ptr %i.bs, ptr %i.r, align 8, !tbaa !300
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bt, ptr %i.aj, align 8, !tbaa !544
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.u:                                             ; preds = %.critedge
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit64: ; preds = %bb.s, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %i.ag, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ag) #30, !inline_history !617
  br label %.body

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m, %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %.not.not134 = phi i1 [ true, %bb.q ], [ true, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ false, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.883") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr null, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.al

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bz = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  %i.ca = load i64, ptr %8, align 8, !tbaa !214
  store i64 %i.ca, ptr %11, align 8, !tbaa !214
  store ptr null, ptr %8, align 8, !tbaa !214
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !205, !nonnull !71, !align !204
  invoke void @_ZN6duckdb6Binder19BindCreateTableInfoENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.888") align 8 %10, ptr noundef nonnull align 8 dereferenceable(472) %i.bz, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(248) %i.cc)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  %i.cd = load ptr, ptr %11, align 8, !tbaa !214  ; 3 uses
  %.not.i65 = icmp eq ptr %i.cd, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.x
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(320) %i.cd) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  br i1 %.not.not134, label %bb.ap, label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.ck = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.z unwind label %bb.ao

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cl = invoke noalias noundef nonnull dereferenceable(688) ptr @_Znwm(i64 noundef 688) #33
          to label %.noexc67 unwind label %bb.ao, !inline_history !642 ; 3 uses

.noexc67:                                         ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !94, !noalias !1011 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !95, !noalias !1011
  store <2 x ptr> %i.cq, ptr %5, align 16, !tbaa !95, !noalias !1011
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc67
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !1011
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !1011
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !3, !noalias !1011
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cv = atomicrmw volatile add ptr %i.cr, i32 1 acq_rel, align 4, !noalias !1011 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i: ; preds = %bb.ac, %bb.ab, %.noexc67
  invoke void @_ZN6duckdb14DuckTableEntryC1ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoENS_10shared_ptrINS_9DataTableELb1EEE(ptr noundef nonnull align 8 dereferenceable(688) %i.cl, ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(248) %i.cj, ptr noundef nonnull align 8 dereferenceable(360) %i.ck, ptr noundef nonnull %5)
          to label %bb.ad unwind label %bb.ak, !noalias !1011, !inline_history !642

bb.ad:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9DataTableELb1EEC2ERKS2_.exit.i
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !94, !noalias !1011 ; 8 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i66, label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8, !noalias !1011 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cx, align 8, !tbaa !99, !noalias !1011
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !101, !noalias !1011
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !7, !noalias !1011
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !1011
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #30, !noalias !1011, !inline_history !646
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !7, !noalias !1011
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !1011
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #30, !noalias !1011, !inline_history !646
  br label %_ZNSt10unique_ptrIN6duckdb14DuckTableEntryESt14default_deleteIS1_EED2Ev.exit

end_hunk_11
begin_hunk_12_@_ZN6duckdb14DuckTableEntry13AddConstraintERNS_13ClientContextERNS_17AddConstraintInfoE:bb.a

.noexc:                                           ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !304
  %i.s = icmp eq i8 %i.r, 3
  br i1 %i.s, label %bb.g, label %.critedge11.i

bb.g:                                             ; preds = %.noexc
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.012.019.i)
          to label %.noexc43 unwind label %bb.o

.noexc43:                                         ; preds = %bb.g
  %i.u = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN6duckdb10Constraint4CastINS_16UniqueConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.t)
          to label %.noexc44 unwind label %bb.o   ; 2 uses

.noexc44:                                         ; preds = %.noexc43
  %i.v = invoke noundef zeroext i1 @_ZNK6duckdb16UniqueConstraint12IsPrimaryKeyEv(ptr noundef nonnull align 8 dereferenceable(49) %i.u)
          to label %.noexc45 unwind label %bb.o

.noexc45:                                         ; preds = %.noexc44
  br i1 %i.v, label %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit, label %.critedge11.i

.critedge11.i:                                    ; preds = %.noexc45, %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.o
  br i1 %.not.i, label %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit.thread, label %.lr.ph.i

_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit.thread: ; preds = %.critedge11.i, %bb.f
  store ptr null, ptr %6, align 8
  br label %bb.t

_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit: ; preds = %.noexc45
  store ptr %i.u, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !491, !range !70, !noundef !71
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.t

bb.h:                                             ; preds = %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNK6duckdb12optional_ptrINS_10ConstraintELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %6, align 8, !tbaa !1031  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(9) %i.aa)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ae = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bx unwind label %bb.q

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.n:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.o:                                             ; preds = %.noexc44, %.noexc43, %bb.g, %.lr.ph.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.p:                                             ; preds = %bb.h, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %bb.k
  %.014 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.am) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.014, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.014, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3787 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ae) #30
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3786 = phi { ptr, i32 } [ %.pn3787, %bb.r ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.p
  %.pn37.pn = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %.pn3786, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn3786, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ab

bb.t:                                             ; preds = %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit.thread, %_ZNK6duckdb17TableCatalogEntry13GetPrimaryKeyEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.at = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.u unwind label %bb.z       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %10, ptr noundef nonnull align 8 dereferenceable(9) %i.at)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 472 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !300 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 480 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i.i, label %bb.w, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.v
  %i.bb = load i64, ptr %10, align 8, !tbaa !567
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !567
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !303 ; 10 uses
  %i.be = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.x, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc50 unwind label %bb.aa

.noexc50:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.bi = ashr exact i64 %i.bg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #33
          to label %.noexc51 unwind label %bb.aa  ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  %i.bq = load i64, ptr %10, align 8, !tbaa !567
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !567
  store ptr null, ptr %10, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc51
  %18 = add i64 %i.be, -8
  %19 = sub i64 %18, %i.bf                        ; 2 uses
  %i.br = lshr i64 %19, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %19, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader121, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bt = add i64 %i.be, -8
  %i.bu = sub i64 %i.bt, %i.bf
  %i.bv = and i64 %i.bu, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.bw
  %scevgep117 = getelementptr i8, ptr %i.bd, i64 %i.bw
  %bound0 = icmp ult ptr %i.bo, %scevgep117
  %bound1 = icmp ult ptr %i.bd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bo, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bd, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.ca ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.bd, i64 %i.ca ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.cb = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep118, align 8, !tbaa !567, !alias.scope !1038, !noalias !1033
  %wide.load119 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !567, !alias.scope !1038, !noalias !1033
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1041, !noalias !1038
  store <2 x i64> %wide.load119, ptr %i.cc, align 8, !tbaa !567, !alias.scope !1041, !noalias !1038
  %i.cd = getelementptr i8, ptr %next.gep118, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep118, align 8, !tbaa !567, !alias.scope !1038, !noalias !1033
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !567, !alias.scope !1038, !noalias !1033
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1043

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.i.preheader121:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader121 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.cf = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1036, !noalias !1033
  store i64 %i.cf, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1033, !noalias !1036
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1036, !noalias !1033
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.ay
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1044

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.noexc51 ], [ %i.by, %middle.block ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bd) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.y
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !303
  store ptr %i.ci, ptr %i.ax, align 8, !tbaa !300
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.cj, ptr %i.az, align 8, !tbaa !544
  %.pr = load ptr, ptr %10, align 8, !tbaa !567   ; 3 uses
  %.not.i52 = icmp eq ptr %.pr, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ck = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.883") align 8 %13, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr null, i8 noundef zeroext 0)
          to label %bb.ah unwind label %bb.bo

bb.z:                                             ; preds = %bb.u, %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55

bb.aa:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %10, align 8, !tbaa !567  ; 3 uses
  %.not.i53 = icmp eq ptr %i.cp, null
  br i1 %.not.i53, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i54

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i54: ; preds = %bb.aa
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.cp) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i54, %bb.aa, %bb.z
  %.pn30 = phi { ptr, i32 } [ %i.cn, %bb.z ], [ %i.co, %bb.aa ], [ %i.co, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.o
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn30, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit55 ], [ %i.ai, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.bw

bb.ac:                                            ; preds = %bb.c
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bx unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread: ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cw = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.cw) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br i1 %.0, label %bb.ag, label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br i1 %.0, label %bb.ag, label %bb.bw

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn91 = phi { ptr, i32 } [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  call void @__cxa_free_exception(ptr %i.ct) #30
  br label %bb.bw

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.cz = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ai unwind label %bb.bp

bb.ai:                                            ; preds = %bb.ah
  %i.da = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.aj unwind label %bb.bp

bb.aj:                                            ; preds = %bb.ai
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  invoke void @_ZN6duckdb6Binder14BindConstraintERKNS_10ConstraintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_10ColumnListE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1049") align 8 %14, ptr noundef nonnull align 8 dereferenceable(472) %i.cz, ptr noundef nonnull align 8 dereferenceable(9) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(105) %i.dc)
          to label %bb.ak unwind label %bb.bp

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.dd = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.al unwind label %bb.bq

bb.al:                                            ; preds = %bb.ak
  %i.de = load i64, ptr %5, align 8, !tbaa !214
  store i64 %i.de, ptr %16, align 8, !tbaa !214
  store ptr null, ptr %5, align 8, !tbaa !214
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA13_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit9, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  %i.au = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.c
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12
  call void @_ZdlPv(ptr noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.al, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZdlPv(ptr noundef nonnull %i.b) #31
  resume { ptr, i32 } %.pn
}

declare void @_ZNK6duckdb9AlterInfo17GetAlterEntryDataEv(ptr dead_on_unwind writable sret(%"struct.duckdb::AlterEntryData") align 8, ptr noundef nonnull align 8 dereferenceable(113)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

declare void @_ZN6duckdb20ChangeColumnTypeInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISA_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14AlterEntryDataD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.i = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  tail call void @_ZdlPv(ptr noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb20ChangeColumnTypeInfoD1Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14DuckTableEntry29UpdateConstraintsOnColumnDropERKNS_12LogicalIndexERKNS_6vectorIS1_Lb1ESaIS1_EEERKNS_16RemoveColumnInfoERNS_15CreateTableInfoERKNS4_INS_10unique_ptrINS_15BoundConstraintESt14default_deleteISF_ELb1EEELb1ESaISI_EEEb(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(154) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(600) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.duckdb::unique_ptr.827", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.duckdb::unique_ptr.827", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::unique_ptr.827", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %21 = alloca %"class.duckdb::unique_ptr.827", align 8 ; 11 uses
  %22 = alloca %"class.duckdb::vector.181", align 8 ; 14 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::allocator", align 1   ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !300
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !303
  %.not377 = icmp eq ptr %i.d, %i.e
  br i1 %.not377, label %._crit_edge376, label %.lr.ph375

.lr.ph375:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 464 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 472 ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 480 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  br label %bb.b

._crit_edge376:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph375, %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit
  %.068373 = phi i64 [ 0, %.lr.ph375 ], [ %i.qg, %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ConstraintESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.068373) ; 5 uses
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_15BoundConstraintESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.068373) ; 2 uses
  %i.p = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !304
  switch i8 %i.r, label %bb.cu [
    i8 1, label %bb.c
    i8 2, label %bb.j
    i8 3, label %bb.ag
    i8 4, label %bb.bv
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15BoundConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.t = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb15BoundConstraint4CastINS_22BoundNotNullConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.032.0.copyload = load i64, ptr %i.u, align 8, !tbaa !19
  %i.v = call i64 @_ZNK6duckdb10ColumnList17PhysicalToLogicalENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.m, i64 %.sroa.032.0.copyload) ; 2 uses
  %i.w = load i64, ptr %1, align 8, !tbaa !847
  %.not323 = icmp eq i64 %i.v, %i.w
  br i1 %.not323, label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_12LogicalIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.v)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %i.z = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33, !noalias !1107 ; 6 uses
  invoke void @_ZN6duckdb17NotNullConstraintC1ENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 %i.y)
          to label %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.e, !noalias !1107

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit224, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit271, %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ab, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %.pn119322, %bb.cy ], [ %i.qc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %lpad.phi350, %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129 ], [ %.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit271 ], [ %.pn111.pn, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit224 ], [ %lpad.phi347, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit151 ], [ %.pn114303, %bb.ab ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.phi342, %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit175 ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.qc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.z) #31, !noalias !1107
  br label %common.resume

_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !300 ; 6 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !544
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ad = ptrtoint ptr %i.z to i64
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !567
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZN6duckdb9make_uniqINS_17NotNullConstraintEJRNS_12LogicalIndexEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !303 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #33
          to label %.noexc122 unwind label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129.loopexit ; 10 uses

.noexc122:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  %i.as = ptrtoint ptr %i.z to i64
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc122
  %27 = add i64 %i.ag, -8
  %28 = sub i64 %27, %i.ah                        ; 2 uses
  %i.at = lshr i64 %28, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %28, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader597, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.aq, i64 8
  %i.av = add i64 %i.ag, -8
  %i.aw = sub i64 %i.av, %i.ah
  %i.ax = and i64 %i.aw, -8                       ; 2 uses
  %scevgep495 = getelementptr i8, ptr %scevgep, i64 %i.ax
  %scevgep496 = getelementptr i8, ptr %i.af, i64 8
  %scevgep497 = getelementptr i8, ptr %scevgep496, i64 %i.ax
  %bound0 = icmp ult ptr %i.aq, %scevgep497
  %bound1 = icmp ult ptr %i.af, %scevgep495
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader597, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.af, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bb ; 2 uses
  %next.gep498 = getelementptr i8, ptr %i.af, i64 %i.bb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.bc = getelementptr i8, ptr %next.gep498, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep498, align 8, !tbaa !567, !alias.scope !1115, !noalias !1110
  %wide.load499 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !567, !alias.scope !1115, !noalias !1110
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1118, !noalias !1115
  store <2 x i64> %wide.load499, ptr %i.bd, align 8, !tbaa !567, !alias.scope !1118, !noalias !1115
  %i.be = getelementptr i8, ptr %next.gep498, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep498, align 8, !tbaa !567, !alias.scope !1115, !noalias !1110
  store <2 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !567, !alias.scope !1115, !noalias !1110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader597

.lr.ph.i.i.i.i.i.i.i.preheader597:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader597, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader597 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader597 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.bg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1113, !noalias !1110
  store i64 %i.bg, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1110, !noalias !1113
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1113, !noalias !1110
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1121

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc122
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.noexc122 ], [ %i.az, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.af) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !303
  store ptr %i.bj, ptr %i.k, align 8, !tbaa !300
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !544
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit348 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129.loopexit.split-lp: ; preds = %bb.h
  %lpad.loopexit.split-lp349 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129

_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129: ; preds = %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129.loopexit
  %lpad.phi350 = phi { ptr, i32 } [ %lpad.loopexit348, %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129.loopexit ], [ %lpad.loopexit.split-lp349, %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit129.loopexit.split-lp ]
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.z) #30, !inline_history !617
  br label %common.resume

bb.j:                                             ; preds = %bb.b
  %i.bo = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15BoundConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.bp = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb15BoundConstraint4CastINS_20BoundCheckConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.bo) ; 4 uses
  br i1 %6, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bq = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %7, ptr noundef nonnull align 8 dereferenceable(9) %i.bq)
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !300 ; 6 uses
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !544
  %.not.i.i130 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i130, label %bb.l, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit145.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit145.thread: ; preds = %bb.k
  %i.bw = load i64, ptr %7, align 8, !tbaa !567
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !567
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bx, ptr %i.k, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit148

bb.l:                                             ; preds = %bb.k
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !303 ; 10 uses
  %i.bz = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i131

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc143 unwind label %.loopexit.split-lp344

.noexc143:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i131: ; preds = %bb.l
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i132 = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i132, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #33
          to label %.noexc144 unwind label %.loopexit343 ; 10 uses

.noexc144:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i131
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  %i.cl = load i64, ptr %7, align 8, !tbaa !567
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !567
  store ptr null, ptr %7, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i134 = icmp eq ptr %i.by, %i.bu
  br i1 %.not10.i.i.i.i.i.i.i134, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i139, label %.lr.ph.i.i.i.i.i.i.i135.preheader

.lr.ph.i.i.i.i.i.i.i135.preheader:                ; preds = %.noexc144
  %29 = add i64 %i.bz, -8
  %30 = sub i64 %29, %i.ca                        ; 2 uses
  %i.cm = lshr i64 %30, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check510 = icmp ult i64 %30, 56
  br i1 %min.iters.check510, label %.lr.ph.i.i.i.i.i.i.i135.preheader598, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph.i.i.i.i.i.i.i135.preheader
  %scevgep502 = getelementptr i8, ptr %i.cj, i64 8
  %i.co = add i64 %i.bz, -8
  %i.cp = sub i64 %i.co, %i.ca
  %i.cq = and i64 %i.cp, -8                       ; 2 uses
  %scevgep503 = getelementptr i8, ptr %scevgep502, i64 %i.cq
  %scevgep504 = getelementptr i8, ptr %i.by, i64 8
  %scevgep505 = getelementptr i8, ptr %scevgep504, i64 %i.cq
  %bound0506 = icmp ult ptr %i.cj, %scevgep505
  %bound1507 = icmp ult ptr %i.by, %scevgep503
  %found.conflict508 = and i1 %bound0506, %bound1507
  br i1 %found.conflict508, label %.lr.ph.i.i.i.i.i.i.i135.preheader598, label %vector.ph511

vector.ph511:                                     ; preds = %vector.memcheck501
  %n.vec513 = and i64 %i.cn, 4611686018427387900  ; 3 uses
  %i.cr = shl i64 %n.vec513, 3                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cj, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.cr
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph511
  %index515 = phi i64 [ 0, %vector.ph511 ], [ %index.next520, %vector.body514 ] ; 2 uses
  %i.cu = shl i64 %index515, 3                    ; 2 uses
  %next.gep516 = getelementptr i8, ptr %i.cj, i64 %i.cu ; 2 uses
  %next.gep517 = getelementptr i8, ptr %i.by, i64 %i.cu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.cv = getelementptr i8, ptr %next.gep517, i64 16
  %wide.load518 = load <2 x i64>, ptr %next.gep517, align 8, !tbaa !567, !alias.scope !1127, !noalias !1122
  %wide.load519 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !567, !alias.scope !1127, !noalias !1122
  %i.cw = getelementptr i8, ptr %next.gep516, i64 16
  store <2 x i64> %wide.load518, ptr %next.gep516, align 8, !tbaa !567, !alias.scope !1130, !noalias !1127
  store <2 x i64> %wide.load519, ptr %i.cw, align 8, !tbaa !567, !alias.scope !1130, !noalias !1127
  %i.cx = getelementptr i8, ptr %next.gep517, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep517, align 8, !tbaa !567, !alias.scope !1127, !noalias !1122
  store <2 x ptr> splat (ptr null), ptr %i.cx, align 8, !tbaa !567, !alias.scope !1127, !noalias !1122
  %index.next520 = add nuw i64 %index515, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next520, %n.vec513
  br i1 %i.cy, label %middle.block521, label %vector.body514, !llvm.loop !1132

middle.block521:                                  ; preds = %vector.body514
  %cmp.n522 = icmp eq i64 %i.cn, %n.vec513
  br i1 %cmp.n522, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i139, label %.lr.ph.i.i.i.i.i.i.i135.preheader598

.lr.ph.i.i.i.i.i.i.i135.preheader598:             ; preds = %vector.memcheck501, %.lr.ph.i.i.i.i.i.i.i135.preheader, %middle.block521
  %.012.i.i.i.i.i.i.i136.ph = phi ptr [ %i.cj, %vector.memcheck501 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i135.preheader ], [ %i.cs, %middle.block521 ]
  %.0911.i.i.i.i.i.i.i137.ph = phi ptr [ %i.by, %vector.memcheck501 ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i135.preheader ], [ %i.ct, %middle.block521 ]
  br label %.lr.ph.i.i.i.i.i.i.i135

.lr.ph.i.i.i.i.i.i.i135:                          ; preds = %.lr.ph.i.i.i.i.i.i.i135.preheader598, %.lr.ph.i.i.i.i.i.i.i135
  %.012.i.i.i.i.i.i.i136 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i135 ], [ %.012.i.i.i.i.i.i.i136.ph, %.lr.ph.i.i.i.i.i.i.i135.preheader598 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i137 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i135 ], [ %.0911.i.i.i.i.i.i.i137.ph, %.lr.ph.i.i.i.i.i.i.i135.preheader598 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.cz = load i64, ptr %.0911.i.i.i.i.i.i.i137, align 8, !tbaa !567, !alias.scope !1125, !noalias !1122
  store i64 %i.cz, ptr %.012.i.i.i.i.i.i.i136, align 8, !tbaa !567, !alias.scope !1122, !noalias !1125
  store ptr null, ptr %.0911.i.i.i.i.i.i.i137, align 8, !tbaa !567, !alias.scope !1125, !noalias !1122
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i137, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i136, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i138 = icmp eq ptr %i.da, %i.bu
  br i1 %.not.i.i.i.i.i.i.i138, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i139, label %.lr.ph.i.i.i.i.i.i.i135, !llvm.loop !1133

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i139: ; preds = %.lr.ph.i.i.i.i.i.i.i135, %middle.block521, %.noexc144
  %.0.lcssa.i.i.i.i.i.i.i140 = phi ptr [ %i.cj, %.noexc144 ], [ %i.cs, %middle.block521 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i135 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i140, i64 8
  %.not.i23.i.i.i141 = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i141, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit145, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i139
  call void @_ZdlPv(ptr noundef nonnull %i.by) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit145

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit145: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i139, %bb.n
  store ptr %i.cj, ptr %i.j, align 8, !tbaa !303
  store ptr %i.dc, ptr %i.k, align 8, !tbaa !300
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.dd, ptr %i.l, align 8, !tbaa !544
  %.pr = load ptr, ptr %7, align 8, !tbaa !567    ; 3 uses
  %.not.i146 = icmp eq ptr %.pr, null
  br i1 %.not.i146, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit148, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i147

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i147: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit145
  %i.de = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit148

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit148: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit145.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit145, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

.loopexit343:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i131
  %lpad.loopexit345 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp344:                            ; preds = %bb.m
  %lpad.loopexit.split-lp346 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp344, %.loopexit343
  %lpad.phi347 = phi { ptr, i32 } [ %lpad.loopexit345, %.loopexit343 ], [ %lpad.loopexit.split-lp346, %.loopexit.split-lp344 ]
  %i.dh = load ptr, ptr %7, align 8, !tbaa !567   ; 3 uses
  %.not.i149 = icmp eq ptr %i.dh, null
  br i1 %.not.i149, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit151, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i150

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i150: ; preds = %bb.o
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.dh) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit151

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit151: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %common.resume

bb.p:                                             ; preds = %bb.j
  %.sroa.026.0.copyload = load i64, ptr %1, align 8, !tbaa !19
  %i.dl = call i64 @_ZNK6duckdb10ColumnList17LogicalToPhysicalENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.m, i64 %.sroa.026.0.copyload) ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !942 ; 2 uses
  %.not.not.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.not.i.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.sroa.06.0.in.i.i = phi ptr [ %i.do, %bb.q ], [ %.sroa.06.0.i.i, %bb.s ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !118 ; 3 uses
  %.not.i.i153 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i153, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !944
  %i.dr = icmp eq i64 %i.dl, %i.dq
  br i1 %i.dr, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %bb.r, !llvm.loop !946

bb.t:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !947 ; 2 uses
  %i.dv = urem i64 %i.dl, %i.du                   ; 2 uses
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !948
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !508 ; 2 uses
  %.not.i.i.i.i152 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i152, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !118 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !506
  %i.ed = icmp eq i64 %i.dl, %i.ec
  %i.ee = load i64, ptr %i.ea, align 8
  %i.ef = icmp eq i64 %i.dl, %i.ee
  %i.eg = select i1 %i.ed, i1 %i.ef, i1 false
  br i1 %i.eg, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i

bb.v:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ei = icmp eq i64 %i.dl, %i.eo
  %i.ej = load i64, ptr %i.eh, align 8
  %i.ek = icmp eq i64 %i.dl, %i.ej
  %i.el = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %i.el, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !949

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %bb.v
  %.020.i.i.i.i = phi ptr [ %i.em, %bb.v ], [ %i.dz, %bb.u ]
  %i.em = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !118 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !506 ; 2 uses
  %i.ep = urem i64 %i.eo, %i.du
  %.not19.i.i.i.i = icmp eq i64 %i.ep, %i.dv
  br i1 %.not19.i.i.i.i, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !949

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.w
  br label %.loopexit, !llvm.loop !949

_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %bb.v, %bb.s, %bb.u
  %i.eq = icmp ugt i64 %i.dn, 1
  br i1 %i.eq, label %bb.x, label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.x:                                             ; preds = %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  %i.er = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.cz unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.x
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.092 = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eu = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.eu) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.092, label %bb.ab, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.092, label %bb.ab, label %common.resume

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn114303 = phi { ptr, i32 } [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.er) #30
  br label %common.resume

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.r, %..loopexit_crit_edge21.i.i.i.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ex = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %10, ptr noundef nonnull align 8 dereferenceable(9) %i.ex)
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !300 ; 6 uses
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !544
  %.not.i.i154 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i.i154, label %bb.ac, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit169.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit169.thread: ; preds = %.loopexit
  %i.fd = load i64, ptr %10, align 8, !tbaa !567
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !567
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fe, ptr %i.k, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit172

bb.ac:                                            ; preds = %.loopexit
  %i.ff = load ptr, ptr %i.j, align 8, !tbaa !303 ; 10 uses
  %i.fg = ptrtoint ptr %i.fb to i64               ; 3 uses
  %i.fh = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775800
  br i1 %i.fj, label %bb.ad, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i155

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc167 unwind label %.loopexit.split-lp339

.noexc167:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i155: ; preds = %bb.ac
  %i.fk = ashr exact i64 %i.fi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i156 = call i64 @llvm.umax.i64(i64 %i.fk, i64 1)
  %i.fl = add nsw i64 %.sroa.speculated.i.i.i.i156, %i.fk ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.fk
  %i.fn = call i64 @llvm.umin.i64(i64 %i.fl, i64 1152921504606846975)
  %i.fo = select i1 %i.fm, i64 1152921504606846975, i64 %i.fn ; 3 uses
  %.not.i.i.i.i157 = icmp ne i64 %i.fo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i157)
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #33
          to label %.noexc168 unwind label %.loopexit338 ; 10 uses

.noexc168:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i155
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fi
  %i.fs = load i64, ptr %10, align 8, !tbaa !567
  store i64 %i.fs, ptr %i.fr, align 8, !tbaa !567
  store ptr null, ptr %10, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i158 = icmp eq ptr %i.ff, %i.fb
  br i1 %.not10.i.i.i.i.i.i.i158, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i159.preheader

.lr.ph.i.i.i.i.i.i.i159.preheader:                ; preds = %.noexc168
  %31 = add i64 %i.fg, -8
  %32 = sub i64 %31, %i.fh                        ; 2 uses
  %i.ft = lshr i64 %32, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check534 = icmp ult i64 %32, 56
  br i1 %min.iters.check534, label %.lr.ph.i.i.i.i.i.i.i159.preheader599, label %vector.memcheck525

vector.memcheck525:                               ; preds = %.lr.ph.i.i.i.i.i.i.i159.preheader
  %scevgep526 = getelementptr i8, ptr %i.fq, i64 8
  %i.fv = add i64 %i.fg, -8
  %i.fw = sub i64 %i.fv, %i.fh
  %i.fx = and i64 %i.fw, -8                       ; 2 uses
  %scevgep527 = getelementptr i8, ptr %scevgep526, i64 %i.fx
  %scevgep528 = getelementptr i8, ptr %i.ff, i64 8
  %scevgep529 = getelementptr i8, ptr %scevgep528, i64 %i.fx
  %bound0530 = icmp ult ptr %i.fq, %scevgep529
  %bound1531 = icmp ult ptr %i.ff, %scevgep527
  %found.conflict532 = and i1 %bound0530, %bound1531
  br i1 %found.conflict532, label %.lr.ph.i.i.i.i.i.i.i159.preheader599, label %vector.ph535

vector.ph535:                                     ; preds = %vector.memcheck525
  %n.vec537 = and i64 %i.fu, 4611686018427387900  ; 3 uses
  %i.fy = shl i64 %n.vec537, 3                    ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fq, i64 %i.fy  ; 2 uses
  %i.ga = getelementptr i8, ptr %i.ff, i64 %i.fy
  br label %vector.body538

vector.body538:                                   ; preds = %vector.body538, %vector.ph535
  %index539 = phi i64 [ 0, %vector.ph535 ], [ %index.next544, %vector.body538 ] ; 2 uses
  %i.gb = shl i64 %index539, 3                    ; 2 uses
  %next.gep540 = getelementptr i8, ptr %i.fq, i64 %i.gb ; 2 uses
  %next.gep541 = getelementptr i8, ptr %i.ff, i64 %i.gb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.gc = getelementptr i8, ptr %next.gep541, i64 16
  %wide.load542 = load <2 x i64>, ptr %next.gep541, align 8, !tbaa !567, !alias.scope !1139, !noalias !1134
  %wide.load543 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !567, !alias.scope !1139, !noalias !1134
  %i.gd = getelementptr i8, ptr %next.gep540, i64 16
  store <2 x i64> %wide.load542, ptr %next.gep540, align 8, !tbaa !567, !alias.scope !1142, !noalias !1139
  store <2 x i64> %wide.load543, ptr %i.gd, align 8, !tbaa !567, !alias.scope !1142, !noalias !1139
  %i.ge = getelementptr i8, ptr %next.gep541, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep541, align 8, !tbaa !567, !alias.scope !1139, !noalias !1134
  store <2 x ptr> splat (ptr null), ptr %i.ge, align 8, !tbaa !567, !alias.scope !1139, !noalias !1134
  %index.next544 = add nuw i64 %index539, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next544, %n.vec537
  br i1 %i.gf, label %middle.block545, label %vector.body538, !llvm.loop !1144

middle.block545:                                  ; preds = %vector.body538
  %cmp.n546 = icmp eq i64 %i.fu, %n.vec537
  br i1 %cmp.n546, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i159.preheader599

.lr.ph.i.i.i.i.i.i.i159.preheader599:             ; preds = %vector.memcheck525, %.lr.ph.i.i.i.i.i.i.i159.preheader, %middle.block545
  %.012.i.i.i.i.i.i.i160.ph = phi ptr [ %i.fq, %vector.memcheck525 ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i159.preheader ], [ %i.fz, %middle.block545 ]
  %.0911.i.i.i.i.i.i.i161.ph = phi ptr [ %i.ff, %vector.memcheck525 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i159.preheader ], [ %i.ga, %middle.block545 ]
  br label %.lr.ph.i.i.i.i.i.i.i159

.lr.ph.i.i.i.i.i.i.i159:                          ; preds = %.lr.ph.i.i.i.i.i.i.i159.preheader599, %.lr.ph.i.i.i.i.i.i.i159
  %.012.i.i.i.i.i.i.i160 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i.i159 ], [ %.012.i.i.i.i.i.i.i160.ph, %.lr.ph.i.i.i.i.i.i.i159.preheader599 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i161 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i159 ], [ %.0911.i.i.i.i.i.i.i161.ph, %.lr.ph.i.i.i.i.i.i.i159.preheader599 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.gg = load i64, ptr %.0911.i.i.i.i.i.i.i161, align 8, !tbaa !567, !alias.scope !1137, !noalias !1134
  store i64 %i.gg, ptr %.012.i.i.i.i.i.i.i160, align 8, !tbaa !567, !alias.scope !1134, !noalias !1137
  store ptr null, ptr %.0911.i.i.i.i.i.i.i161, align 8, !tbaa !567, !alias.scope !1137, !noalias !1134
  %i.gh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i161, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i160, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i162 = icmp eq ptr %i.gh, %i.fb
  br i1 %.not.i.i.i.i.i.i.i162, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i159, !llvm.loop !1145

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i163: ; preds = %.lr.ph.i.i.i.i.i.i.i159, %middle.block545, %.noexc168
  %.0.lcssa.i.i.i.i.i.i.i164 = phi ptr [ %i.fq, %.noexc168 ], [ %i.fz, %middle.block545 ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i159 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i164, i64 8
  %.not.i23.i.i.i165 = icmp eq ptr %i.ff, null
  br i1 %.not.i23.i.i.i165, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit169, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i163
  call void @_ZdlPv(ptr noundef nonnull %i.ff) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit169

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit169: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i163, %bb.ae
  store ptr %i.fq, ptr %i.j, align 8, !tbaa !303
  store ptr %i.gj, ptr %i.k, align 8, !tbaa !300
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fo
  store ptr %i.gk, ptr %i.l, align 8, !tbaa !544
  %.pr304 = load ptr, ptr %10, align 8, !tbaa !567 ; 3 uses
  %.not.i170 = icmp eq ptr %.pr304, null
  br i1 %.not.i170, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit172, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i171

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i171: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit169
  %i.gl = load ptr, ptr %.pr304, align 8, !tbaa !7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr304) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit172

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit172: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit169.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit169, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

.loopexit338:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i155
  %lpad.loopexit340 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp339:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp339, %.loopexit338
  %lpad.phi342 = phi { ptr, i32 } [ %lpad.loopexit340, %.loopexit338 ], [ %lpad.loopexit.split-lp341, %.loopexit.split-lp339 ]
  %i.go = load ptr, ptr %10, align 8, !tbaa !567  ; 3 uses
  %.not.i173 = icmp eq ptr %i.go, null
  br i1 %.not.i173, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit175, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i174

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i174: ; preds = %bb.af
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !7
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.go) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit175

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit175: ; preds = %bb.af, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %common.resume

bb.ag:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.gs = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !7
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %11, ptr noundef nonnull align 8 dereferenceable(9) %i.gs)
  %i.gw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ah unwind label %.loopexit333

bb.ah:                                            ; preds = %bb.ag
  %i.gx = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN6duckdb10Constraint4CastINS_16UniqueConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.gw)
          to label %bb.ai unwind label %.loopexit333 ; 6 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gy = invoke noundef zeroext i1 @_ZNK6duckdb16UniqueConstraint8HasIndexEv(ptr noundef nonnull align 8 dereferenceable(49) %i.gx)
          to label %bb.aj unwind label %.loopexit333

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.gy, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.gz = invoke i64 @_ZNK6duckdb16UniqueConstraint8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(49) %i.gx)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ha = load i64, ptr %1, align 8, !tbaa !847
  %i.hb = icmp eq i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.hc = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_throw(ptr nonnull %i.hc, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.cz unwind label %bb.aq

.loopexit333:                                     ; preds = %bb.ag, %bb.ah, %bb.ai, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i204
  %lpad.loopexit335 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp334:                            ; preds = %bb.bs
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.ap:                                            ; preds = %bb.ak
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread: ; preds = %bb.am
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %.094 = phi i1 [ false, %bb.ao ], [ true, %bb.an ] ; 2 uses
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hg = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

end_hunk_13
begin_hunk_14_@_ZN6duckdb14DuckTableEntry29UpdateConstraintsOnColumnDropERKNS_12LogicalIndexERKNS_6vectorIS1_Lb1ESaIS1_EEERKNS_16RemoveColumnInfoERNS_15CreateTableInfoERKNS4_INS_10unique_ptrINS_15BoundConstraintESt14default_deleteISF_ELb1EEELb1ESaISI_EEEb:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  %i.ig = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  call void @_ZdlPv(ptr noundef %i.ig) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.ij = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_EEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bh unwind label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.ij, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.cz unwind label %bb.bo

bb.bi:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bb
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.bk:                                            ; preds = %bb.bc
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.bl:                                            ; preds = %bb.bd
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

bb.bm:                                            ; preds = %bb.be
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.ip) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bl
  %.pn102 = phi { ptr, i32 } [ %i.in, %bb.bl ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %i.io, %bb.bm ] ; 2 uses
  %i.is = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  call void @_ZdlPv(ptr noundef %i.is) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.bk
  %.pn102.pn = phi { ptr, i32 } [ %i.im, %bb.bk ], [ %.pn102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %.pn102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ] ; 2 uses
  %i.iv = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  call void @_ZdlPv(ptr noundef %i.iv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.bj
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.il, %bb.bj ], [ %.pn102.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %bb.bi
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %i.ik, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bh, %bb.bg
  %.069 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ja = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %bb.bo
  call void @_ZdlPv(ptr noundef %i.ja) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br i1 %.069, label %bb.bp, label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br i1 %.069, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %.pn107313 = phi { ptr, i32 } [ %i.iy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.thread ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ]
  call void @__cxa_free_exception(ptr %i.ij) #30
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %.pn107312 = phi { ptr, i32 } [ %.pn107313, %bb.bp ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ] ; 2 uses
  %i.jd = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.bq
  call void @_ZdlPv(ptr noundef %i.jd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200, %bb.bn
  %.pn107.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn, %bb.bn ], [ %.pn107312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200 ], [ %.pn107312, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.bu

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread309: ; preds = %bb.az, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0280.0370, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.jg, %i.hp
  br i1 %.not, label %.loopexit326, label %bb.az

.loopexit326:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread309, %bb.ax, %bb.au
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !300 ; 6 uses
  %i.ji = load ptr, ptr %i.l, align 8, !tbaa !544
  %.not.i.i203 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i.i203, label %bb.br, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit218.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit218.thread: ; preds = %.loopexit326
  %i.jj = load i64, ptr %11, align 8, !tbaa !567
  store i64 %i.jj, ptr %i.jh, align 8, !tbaa !567
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr %i.jk, ptr %i.k, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit221

bb.br:                                            ; preds = %.loopexit326
  %i.jl = load ptr, ptr %i.j, align 8, !tbaa !303 ; 10 uses
  %i.jm = ptrtoint ptr %i.jh to i64               ; 3 uses
  %i.jn = ptrtoint ptr %i.jl to i64               ; 3 uses
  %i.jo = sub i64 %i.jm, %i.jn                    ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775800
  br i1 %i.jp, label %bb.bs, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i204

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc216 unwind label %.loopexit.split-lp334

.noexc216:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i204: ; preds = %bb.br
  %i.jq = ashr exact i64 %i.jo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i205 = call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i.i205, %i.jq ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jq
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jr, i64 1152921504606846975)
  %i.ju = select i1 %i.js, i64 1152921504606846975, i64 %i.jt ; 3 uses
  %.not.i.i.i.i206 = icmp ne i64 %i.ju, 0
  call void @llvm.assume(i1 %.not.i.i.i.i206)
  %i.jv = shl nuw nsw i64 %i.ju, 3
  %i.jw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #33
          to label %.noexc217 unwind label %.loopexit333 ; 10 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i204
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jo
  %i.jy = load i64, ptr %11, align 8, !tbaa !567
  store i64 %i.jy, ptr %i.jx, align 8, !tbaa !567
  store ptr null, ptr %11, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i207 = icmp eq ptr %i.jl, %i.jh
  br i1 %.not10.i.i.i.i.i.i.i207, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i212, label %.lr.ph.i.i.i.i.i.i.i208.preheader

.lr.ph.i.i.i.i.i.i.i208.preheader:                ; preds = %.noexc217
  %33 = add i64 %i.jm, -8
  %34 = sub i64 %33, %i.jn                        ; 2 uses
  %i.jz = lshr i64 %34, 3
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %min.iters.check558 = icmp ult i64 %34, 56
  br i1 %min.iters.check558, label %.lr.ph.i.i.i.i.i.i.i208.preheader602, label %vector.memcheck549

vector.memcheck549:                               ; preds = %.lr.ph.i.i.i.i.i.i.i208.preheader
  %scevgep550 = getelementptr i8, ptr %i.jw, i64 8
  %i.kb = add i64 %i.jm, -8
  %i.kc = sub i64 %i.kb, %i.jn
  %i.kd = and i64 %i.kc, -8                       ; 2 uses
  %scevgep551 = getelementptr i8, ptr %scevgep550, i64 %i.kd
  %scevgep552 = getelementptr i8, ptr %i.jl, i64 8
  %scevgep553 = getelementptr i8, ptr %scevgep552, i64 %i.kd
  %bound0554 = icmp ult ptr %i.jw, %scevgep553
  %bound1555 = icmp ult ptr %i.jl, %scevgep551
  %found.conflict556 = and i1 %bound0554, %bound1555
  br i1 %found.conflict556, label %.lr.ph.i.i.i.i.i.i.i208.preheader602, label %vector.ph559

vector.ph559:                                     ; preds = %vector.memcheck549
  %n.vec561 = and i64 %i.ka, 4611686018427387900  ; 3 uses
  %i.ke = shl i64 %n.vec561, 3                    ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jw, i64 %i.ke  ; 2 uses
  %i.kg = getelementptr i8, ptr %i.jl, i64 %i.ke
  br label %vector.body562

vector.body562:                                   ; preds = %vector.body562, %vector.ph559
  %index563 = phi i64 [ 0, %vector.ph559 ], [ %index.next568, %vector.body562 ] ; 2 uses
  %i.kh = shl i64 %index563, 3                    ; 2 uses
  %next.gep564 = getelementptr i8, ptr %i.jw, i64 %i.kh ; 2 uses
  %next.gep565 = getelementptr i8, ptr %i.jl, i64 %i.kh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.ki = getelementptr i8, ptr %next.gep565, i64 16
  %wide.load566 = load <2 x i64>, ptr %next.gep565, align 8, !tbaa !567, !alias.scope !1151, !noalias !1146
  %wide.load567 = load <2 x i64>, ptr %i.ki, align 8, !tbaa !567, !alias.scope !1151, !noalias !1146
  %i.kj = getelementptr i8, ptr %next.gep564, i64 16
  store <2 x i64> %wide.load566, ptr %next.gep564, align 8, !tbaa !567, !alias.scope !1154, !noalias !1151
  store <2 x i64> %wide.load567, ptr %i.kj, align 8, !tbaa !567, !alias.scope !1154, !noalias !1151
  %i.kk = getelementptr i8, ptr %next.gep565, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep565, align 8, !tbaa !567, !alias.scope !1151, !noalias !1146
  store <2 x ptr> splat (ptr null), ptr %i.kk, align 8, !tbaa !567, !alias.scope !1151, !noalias !1146
  %index.next568 = add nuw i64 %index563, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next568, %n.vec561
  br i1 %i.kl, label %middle.block569, label %vector.body562, !llvm.loop !1156

middle.block569:                                  ; preds = %vector.body562
  %cmp.n570 = icmp eq i64 %i.ka, %n.vec561
  br i1 %cmp.n570, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i212, label %.lr.ph.i.i.i.i.i.i.i208.preheader602

.lr.ph.i.i.i.i.i.i.i208.preheader602:             ; preds = %vector.memcheck549, %.lr.ph.i.i.i.i.i.i.i208.preheader, %middle.block569
  %.012.i.i.i.i.i.i.i209.ph = phi ptr [ %i.jw, %vector.memcheck549 ], [ %i.jw, %.lr.ph.i.i.i.i.i.i.i208.preheader ], [ %i.kf, %middle.block569 ]
  %.0911.i.i.i.i.i.i.i210.ph = phi ptr [ %i.jl, %vector.memcheck549 ], [ %i.jl, %.lr.ph.i.i.i.i.i.i.i208.preheader ], [ %i.kg, %middle.block569 ]
  br label %.lr.ph.i.i.i.i.i.i.i208

.lr.ph.i.i.i.i.i.i.i208:                          ; preds = %.lr.ph.i.i.i.i.i.i.i208.preheader602, %.lr.ph.i.i.i.i.i.i.i208
  %.012.i.i.i.i.i.i.i209 = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i.i.i208 ], [ %.012.i.i.i.i.i.i.i209.ph, %.lr.ph.i.i.i.i.i.i.i208.preheader602 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i210 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i208 ], [ %.0911.i.i.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i.i.i208.preheader602 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.km = load i64, ptr %.0911.i.i.i.i.i.i.i210, align 8, !tbaa !567, !alias.scope !1149, !noalias !1146
  store i64 %i.km, ptr %.012.i.i.i.i.i.i.i209, align 8, !tbaa !567, !alias.scope !1146, !noalias !1149
  store ptr null, ptr %.0911.i.i.i.i.i.i.i210, align 8, !tbaa !567, !alias.scope !1149, !noalias !1146
  %i.kn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i210, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i209, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i211 = icmp eq ptr %i.kn, %i.jh
  br i1 %.not.i.i.i.i.i.i.i211, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i212, label %.lr.ph.i.i.i.i.i.i.i208, !llvm.loop !1157

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i212: ; preds = %.lr.ph.i.i.i.i.i.i.i208, %middle.block569, %.noexc217
  %.0.lcssa.i.i.i.i.i.i.i213 = phi ptr [ %i.jw, %.noexc217 ], [ %i.kf, %middle.block569 ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.i208 ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i213, i64 8
  %.not.i23.i.i.i214 = icmp eq ptr %i.jl, null
  br i1 %.not.i23.i.i.i214, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit218, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i212
  call void @_ZdlPv(ptr noundef nonnull %i.jl) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit218

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit218: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i212, %bb.bt
  store ptr %i.jw, ptr %i.j, align 8, !tbaa !303
  store ptr %i.kp, ptr %i.k, align 8, !tbaa !300
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.ju
  store ptr %i.kq, ptr %i.l, align 8, !tbaa !544
  %.pr314 = load ptr, ptr %11, align 8, !tbaa !567 ; 3 uses
  %.not.i219 = icmp eq ptr %.pr314, null
  br i1 %.not.i219, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit221, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i220

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i220: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit218
  %i.kr = load ptr, ptr %.pr314, align 8, !tbaa !7
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr314) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit221

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit221: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit218.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit218, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZNSt10unique_ptrIN6duckdb17NotNullConstraintESt14default_deleteIS1_EED2Ev.exit

bb.bu:                                            ; preds = %.loopexit333, %.loopexit.split-lp334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %bb.ar, %bb.av, %bb.ap
  %.pn111.pn = phi { ptr, i32 } [ %.pn111308, %bb.ar ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %i.hl, %bb.av ], [ %i.hd, %bb.ap ], [ %.pn107.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.ht, %bb.ay ], [ %lpad.loopexit335, %.loopexit333 ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp334 ]
  %i.ku = load ptr, ptr %11, align 8, !tbaa !567  ; 3 uses
  %.not.i222 = icmp eq ptr %i.ku, null
  br i1 %.not.i222, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit224, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i223

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i223: ; preds = %bb.bu
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !7
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ku) #30, !inline_history !617
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit224

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit224: ; preds = %bb.bu, %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %common.resume

bb.bv:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.ky = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !7
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %21, ptr noundef nonnull align 8 dereferenceable(9) %i.ky)
  %i.lc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bw unwind label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  %i.ld = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN6duckdb10Constraint4CastINS_20ForeignKeyConstraintEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.lc)
          to label %bb.bx unwind label %bb.cd     ; 6 uses

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 24 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !659 ; 3 uses
  %i.lh = load ptr, ptr %i.le, align 8, !tbaa !660 ; 3 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.lg, %i.lh
  br i1 %.not.i.i.i.i.i, label %.noexc227, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ll = icmp ugt i64 %i.lk, 9223372036854775776
  br i1 %i.ll, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !37

.noexc.i.i.i:                                     ; preds = %bb.by
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc226 unwind label %.loopexit.split-lp

.noexc226:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.by
  %i.lm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc227_crit_edge unwind label %.loopexit327

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc227_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.le, align 8, !tbaa !658
  %.pre395 = load ptr, ptr %i.lf, align 8, !tbaa !658
  br label %.noexc227

.noexc227:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc227_crit_edge, %bb.bx
  %i.ln = phi ptr [ %i.lg, %bb.bx ], [ %.pre395, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc227_crit_edge ]
  %i.lo = phi ptr [ %i.lh, %bb.bx ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc227_crit_edge ]
  %i.lp = phi ptr [ null, %bb.bx ], [ %i.lm, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc227_crit_edge ] ; 4 uses
  store ptr %i.lp, ptr %22, align 8, !tbaa !660
  store ptr %i.lp, ptr %i.f, align 8, !tbaa !659
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lk
  store ptr %i.lq, ptr %i.g, align 8, !tbaa !661
  %i.lr = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.lo, ptr %i.ln, ptr noundef %i.lp)
          to label %bb.cb unwind label %bb.bz

bb.bz:                                            ; preds = %.noexc227
  %i.ls = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lt = load ptr, ptr %22, align 8, !tbaa !660  ; 2 uses
  %.not.i.i.i.i225 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i225, label %.body, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdlPv(ptr noundef nonnull %i.lt) #31
  br label %.body

bb.cb:                                            ; preds = %.noexc227
  store ptr %i.lr, ptr %i.f, align 8, !tbaa !659
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lv = load i8, ptr %i.lu, align 8, !tbaa !307
  switch i8 %i.lv, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit [
    i8 1, label %bb.cc
    i8 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.cb
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ld, i64 40 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ld, i64 48 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !659
  %i.lz = load ptr, ptr %i.lw, align 8, !tbaa !660 ; 2 uses
  %.not378 = icmp eq ptr %i.ly, %i.lz
  br i1 %.not378, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, label %.lr.ph

bb.cc:                                            ; preds = %bb.cb
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.mb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.ma)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %.loopexit328 ; 0 uses

bb.cd:                                            ; preds = %bb.bw, %bb.bv
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit327:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit328:                                     ; preds = %bb.cc, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i235
  %lpad.loopexit330 = landingpad { ptr, i32 }
          cleanup
  br label %.body257

.loopexit.split-lp329:                            ; preds = %bb.ck
  %lpad.loopexit.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %.body257

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.md = phi ptr [ %i.my, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %i.lz, %.preheader ]
  %.067366 = phi i64 [ %i.mw, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.md, i64 %.067366 ; 3 uses
  %i.mf = load ptr, ptr %i.f, align 8, !tbaa !659 ; 8 uses
  %i.mg = load ptr, ptr %i.g, align 8, !tbaa !661
  %.not.i231 = icmp eq ptr %i.mf, %i.mg
  br i1 %.not.i231, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 3 uses
  store ptr %i.mh, ptr %i.mf, align 8, !tbaa !12
  %i.mi = load ptr, ptr %i.me, align 8, !tbaa !15 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.mk, ptr %i.a, align 8, !tbaa !19
  %i.ml = icmp ugt i64 %i.mk, 15
  br i1 %i.ml, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ce
  %i.mm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc232 unwind label %.body229 ; 2 uses

.noexc232:                                        ; preds = %.noexc.i.i
  store ptr %i.mm, ptr %i.mf, align 8, !tbaa !15
  %i.mn = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.mn, ptr %i.mh, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc232, %bb.ce
  %i.mo = phi ptr [ %i.mm, %.noexc232 ], [ %i.mh, %bb.ce ] ; 2 uses
  switch i64 %i.mk, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i
  %i.mp = load i8, ptr %i.mi, align 1, !tbaa !20
  store i8 %i.mp, ptr %i.mo, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.cg:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mo, ptr align 1 %i.mi, i64 %i.mk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.cg, %bb.cf, %._crit_edge.i.i.i
  %i.mq = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !18
  %i.ms = load ptr, ptr %i.mf, align 8, !tbaa !15
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mq
  store i8 0, ptr %i.mt, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.mu = load ptr, ptr %i.f, align 8, !tbaa !659
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  store ptr %i.mv, ptr %i.f, align 8, !tbaa !659
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ch:                                            ; preds = %.lr.ph
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %i.me)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.body229

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.ch
  %i.mw = add nuw i64 %.067366, 1                 ; 2 uses
  %i.mx = load ptr, ptr %i.lx, align 8, !tbaa !659
  %i.my = load ptr, ptr %i.lw, align 8, !tbaa !660 ; 2 uses
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = ashr exact i64 %i.nb, 5
  %i.nd = icmp ult i64 %i.mw, %i.nc
  br i1 %i.nd, label %.lr.ph, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, !llvm.loop !1158

.body229:                                         ; preds = %.noexc.i.i, %bb.ch
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %.body257

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %.preheader, %bb.cc, %bb.cb
  %i.nf = load ptr, ptr %i.f, align 8, !tbaa !659 ; 4 uses
  %i.ng = load ptr, ptr %22, align 8, !tbaa !660  ; 5 uses
  %.not379 = icmp eq ptr %i.nf, %i.ng
  br i1 %.not379, label %._crit_edge, label %.lr.ph368

.lr.ph368:                                        ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = sub i64 %i.nh, %i.ni
  %i.nk = ashr exact i64 %i.nj, 5
  %i.nl = load i64, ptr %i.i, align 8, !tbaa !18  ; 3 uses
  %i.nm = load ptr, ptr %i.h, align 8
  %i.nn = icmp eq i64 %i.nl, 0
  br label %bb.cm

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread316, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  %i.no = load ptr, ptr %i.k, align 8, !tbaa !300 ; 6 uses
  %i.np = load ptr, ptr %i.l, align 8, !tbaa !544
  %.not.i.i234 = icmp eq ptr %i.no, %i.np
  br i1 %.not.i.i234, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge
  %i.nq = load i64, ptr %21, align 8, !tbaa !567
  store i64 %i.nq, ptr %i.no, align 8, !tbaa !567
  store ptr null, ptr %21, align 8, !tbaa !567
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.nr, ptr %i.k, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit249

bb.cj:                                            ; preds = %._crit_edge
  %i.ns = load ptr, ptr %i.j, align 8, !tbaa !303 ; 10 uses
  %i.nt = ptrtoint ptr %i.no to i64               ; 3 uses
  %i.nu = ptrtoint ptr %i.ns to i64               ; 3 uses
  %i.nv = sub i64 %i.nt, %i.nu                    ; 3 uses
  %i.nw = icmp eq i64 %i.nv, 9223372036854775800
  br i1 %i.nw, label %bb.ck, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i235

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc247 unwind label %.loopexit.split-lp329

.noexc247:                                        ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i235: ; preds = %bb.cj
  %i.nx = ashr exact i64 %i.nv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i236 = call i64 @llvm.umax.i64(i64 %i.nx, i64 1)
  %i.ny = add nsw i64 %.sroa.speculated.i.i.i.i236, %i.nx ; 2 uses
  %i.nz = icmp ult i64 %i.ny, %i.nx
  %i.oa = call i64 @llvm.umin.i64(i64 %i.ny, i64 1152921504606846975)
  %i.ob = select i1 %i.nz, i64 1152921504606846975, i64 %i.oa ; 3 uses
  %.not.i.i.i.i237 = icmp ne i64 %i.ob, 0
  call void @llvm.assume(i1 %.not.i.i.i.i237)
  %i.oc = shl nuw nsw i64 %i.ob, 3
  %i.od = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oc) #33
          to label %.noexc248 unwind label %.loopexit328 ; 10 uses

.noexc248:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i235
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.nv
  %i.of = load i64, ptr %21, align 8, !tbaa !567
  store i64 %i.of, ptr %i.oe, align 8, !tbaa !567
  store ptr null, ptr %21, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i238 = icmp eq ptr %i.ns, %i.no
  br i1 %.not10.i.i.i.i.i.i.i238, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i243, label %.lr.ph.i.i.i.i.i.i.i239.preheader

.lr.ph.i.i.i.i.i.i.i239.preheader:                ; preds = %.noexc248
  %35 = add i64 %i.nt, -8
  %36 = sub i64 %35, %i.nu                        ; 2 uses
  %i.og = lshr i64 %36, 3
  %i.oh = add nuw nsw i64 %i.og, 1                ; 2 uses
  %min.iters.check582 = icmp ult i64 %36, 56
  br i1 %min.iters.check582, label %.lr.ph.i.i.i.i.i.i.i239.preheader603, label %vector.memcheck573

vector.memcheck573:                               ; preds = %.lr.ph.i.i.i.i.i.i.i239.preheader
  %scevgep574 = getelementptr i8, ptr %i.od, i64 8
  %i.oi = add i64 %i.nt, -8
  %i.oj = sub i64 %i.oi, %i.nu
  %i.ok = and i64 %i.oj, -8                       ; 2 uses
  %scevgep575 = getelementptr i8, ptr %scevgep574, i64 %i.ok
  %scevgep576 = getelementptr i8, ptr %i.ns, i64 8
  %scevgep577 = getelementptr i8, ptr %scevgep576, i64 %i.ok
  %bound0578 = icmp ult ptr %i.od, %scevgep577
  %bound1579 = icmp ult ptr %i.ns, %scevgep575
  %found.conflict580 = and i1 %bound0578, %bound1579
  br i1 %found.conflict580, label %.lr.ph.i.i.i.i.i.i.i239.preheader603, label %vector.ph583

vector.ph583:                                     ; preds = %vector.memcheck573
  %n.vec585 = and i64 %i.oh, 4611686018427387900  ; 3 uses
  %i.ol = shl i64 %n.vec585, 3                    ; 2 uses
  %i.om = getelementptr i8, ptr %i.od, i64 %i.ol  ; 2 uses
  %i.on = getelementptr i8, ptr %i.ns, i64 %i.ol
  br label %vector.body586

vector.body586:                                   ; preds = %vector.body586, %vector.ph583
  %index587 = phi i64 [ 0, %vector.ph583 ], [ %index.next592, %vector.body586 ] ; 2 uses
  %i.oo = shl i64 %index587, 3                    ; 2 uses
  %next.gep588 = getelementptr i8, ptr %i.od, i64 %i.oo ; 2 uses
  %next.gep589 = getelementptr i8, ptr %i.ns, i64 %i.oo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.op = getelementptr i8, ptr %next.gep589, i64 16
  %wide.load590 = load <2 x i64>, ptr %next.gep589, align 8, !tbaa !567, !alias.scope !1164, !noalias !1159
  %wide.load591 = load <2 x i64>, ptr %i.op, align 8, !tbaa !567, !alias.scope !1164, !noalias !1159
  %i.oq = getelementptr i8, ptr %next.gep588, i64 16
  store <2 x i64> %wide.load590, ptr %next.gep588, align 8, !tbaa !567, !alias.scope !1167, !noalias !1164
  store <2 x i64> %wide.load591, ptr %i.oq, align 8, !tbaa !567, !alias.scope !1167, !noalias !1164
  %i.or = getelementptr i8, ptr %next.gep589, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep589, align 8, !tbaa !567, !alias.scope !1164, !noalias !1159
  store <2 x ptr> splat (ptr null), ptr %i.or, align 8, !tbaa !567, !alias.scope !1164, !noalias !1159
  %index.next592 = add nuw i64 %index587, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next592, %n.vec585
  br i1 %i.os, label %middle.block593, label %vector.body586, !llvm.loop !1169

middle.block593:                                  ; preds = %vector.body586
  %cmp.n594 = icmp eq i64 %i.oh, %n.vec585
  br i1 %cmp.n594, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i243, label %.lr.ph.i.i.i.i.i.i.i239.preheader603

.lr.ph.i.i.i.i.i.i.i239.preheader603:             ; preds = %vector.memcheck573, %.lr.ph.i.i.i.i.i.i.i239.preheader, %middle.block593
  %.012.i.i.i.i.i.i.i240.ph = phi ptr [ %i.od, %vector.memcheck573 ], [ %i.od, %.lr.ph.i.i.i.i.i.i.i239.preheader ], [ %i.om, %middle.block593 ]
  %.0911.i.i.i.i.i.i.i241.ph = phi ptr [ %i.ns, %vector.memcheck573 ], [ %i.ns, %.lr.ph.i.i.i.i.i.i.i239.preheader ], [ %i.on, %middle.block593 ]
  br label %.lr.ph.i.i.i.i.i.i.i239

.lr.ph.i.i.i.i.i.i.i239:                          ; preds = %.lr.ph.i.i.i.i.i.i.i239.preheader603, %.lr.ph.i.i.i.i.i.i.i239
  %.012.i.i.i.i.i.i.i240 = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.i.i.i239 ], [ %.012.i.i.i.i.i.i.i240.ph, %.lr.ph.i.i.i.i.i.i.i239.preheader603 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i241 = phi ptr [ %i.ou, %.lr.ph.i.i.i.i.i.i.i239 ], [ %.0911.i.i.i.i.i.i.i241.ph, %.lr.ph.i.i.i.i.i.i.i239.preheader603 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.ot = load i64, ptr %.0911.i.i.i.i.i.i.i241, align 8, !tbaa !567, !alias.scope !1162, !noalias !1159
  store i64 %i.ot, ptr %.012.i.i.i.i.i.i.i240, align 8, !tbaa !567, !alias.scope !1159, !noalias !1162
  store ptr null, ptr %.0911.i.i.i.i.i.i.i241, align 8, !tbaa !567, !alias.scope !1162, !noalias !1159
  %i.ou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i241, i64 8 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i240, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i242 = icmp eq ptr %i.ou, %i.no
  br i1 %.not.i.i.i.i.i.i.i242, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i243, label %.lr.ph.i.i.i.i.i.i.i239, !llvm.loop !1170

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i243: ; preds = %.lr.ph.i.i.i.i.i.i.i239, %middle.block593, %.noexc248
  %.0.lcssa.i.i.i.i.i.i.i244 = phi ptr [ %i.od, %.noexc248 ], [ %i.om, %middle.block593 ], [ %i.ov, %.lr.ph.i.i.i.i.i.i.i239 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i244, i64 8
  %.not.i23.i.i.i245 = icmp eq ptr %i.ns, null
  br i1 %.not.i23.i.i.i245, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i246, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i243
  call void @_ZdlPv(ptr noundef nonnull %i.ns) #31
  %.pre396.pre = load ptr, ptr %22, align 8, !tbaa !660
  %.pre397.pre = load ptr, ptr %i.f, align 8, !tbaa !659
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i246

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i246: ; preds = %bb.cl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i243
  %.pre397 = phi ptr [ %.pre397.pre, %bb.cl ], [ %i.nf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i243 ]
  %.pre396 = phi ptr [ %.pre396.pre, %bb.cl ], [ %i.ng, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i243 ]
  store ptr %i.od, ptr %i.j, align 8, !tbaa !303
  store ptr %i.ow, ptr %i.k, align 8, !tbaa !300
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.ob
  store ptr %i.ox, ptr %i.l, align 8, !tbaa !544
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit249

bb.cm:                                            ; preds = %.lr.ph368, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread316
  %.066367 = phi i64 [ 0, %.lr.ph368 ], [ %i.pk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread316 ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [32 x i8], ptr %i.ng, i64 %.066367 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !18
  %i.pb = icmp eq i64 %i.pa, %i.nl
  br i1 %i.pb, label %bb.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread316

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.nn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261: ; preds = %bb.cn
  %i.pc = load ptr, ptr %i.oy, align 8, !tbaa !15
  %bcmp.i260 = call i32 @bcmp(ptr %i.pc, ptr %i.nm, i64 %i.nl)
  %i.pd = icmp eq i32 %bcmp.i260, 0
  br i1 %i.pd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread316

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread: ; preds = %bb.cn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261
  %i.pe = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.co unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.thread

bb.co:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  invoke void @__cxa_throw(ptr nonnull %i.pe, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.cz unwind label %bb.cq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.064 = phi i1 [ false, %bb.cp ], [ true, %bb.co ] ; 2 uses
  %i.pg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ph = load ptr, ptr %23, align 8, !tbaa !15   ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.pj = icmp eq ptr %i.ph, %i.pi
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef %i.ph) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br i1 %.064, label %bb.cr, label %.body257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br i1 %.064, label %bb.cr, label %.body257

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  %.pn319 = phi { ptr, i32 } [ %i.pf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.thread ], [ %i.pg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264 ], [ %i.pg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262 ]
  call void @__cxa_free_exception(ptr %i.pe) #30
  br label %.body257

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261.thread316: ; preds = %bb.cm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit261
  %i.pk = add nuw i64 %.066367, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.pk, %i.nk
  br i1 %exitcond.not, label %._crit_edge, label %bb.cm, !llvm.loop !1171

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit249: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i246, %bb.ci
  %i.pl = phi ptr [ %.pre397, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i246 ], [ %i.nf, %bb.ci ] ; 2 uses
  %i.pm = phi ptr [ %.pre396, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i246 ], [ %i.ng, %bb.ci ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.pm, %i.pl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit249, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.pm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit249 ] ; 3 uses
  %i.pn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.pn) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i265 = icmp eq ptr %i.pq, %i.pl
  br i1 %.not.i.i.i265, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !663

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %22, align 8, !tbaa !660
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit249
  %i.pr = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.pm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit249 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.pr, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.pr) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.ps = load ptr, ptr %21, align 8, !tbaa !567  ; 3 uses
  %.not.i266 = icmp eq ptr %i.ps, null
  br i1 %.not.i266, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit268, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i267

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i267: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !7
end_hunk_14
begin_hunk_15_@_ZNK6duckdb17IndexCatalogEntry7GetInfoEv:bb.a

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 81
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !163
  %i.bq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.t unwind label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.t
  %i.bt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 352
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit37 unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit37: ; preds = %bb.u
  %i.bw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit37
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 440
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit38 unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit38: ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !153
  %i.cb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit38
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 472
  store i8 %i.ca, ptr %i.cc, align 8, !tbaa !125
  %i.cd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 480
  %i.cg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_ZN6duckdb6vectorImLb1ESaImEEaSERKS2_.exit unwind label %bb.ae ; 0 uses

_ZN6duckdb6vectorImLb1ESaImEEaSERKS2_.exit:       ; preds = %bb.x
  %i.ch = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEaSERKS2_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 120 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull align 8 dereferenceable(56) %i.ci)
          to label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit unwind label %bb.ae

_ZN6duckdb21LogicalDependencyListaSERKS0_.exit:   ; preds = %bb.y, %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !165 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !165 ; 2 uses
  %.not96 = icmp eq ptr %i.cm, %i.co
  br i1 %.not96, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !165 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !165 ; 2 uses
  %.not8998 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not8998, label %._crit_edge102, label %.lr.ph101

bb.aa:                                            ; preds = %_ZN6duckdb9make_uniqINS_15CreateIndexInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.ab:                                            ; preds = %bb.c
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.aa ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.cu, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.bb

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.ad:                                            ; preds = %bb.k
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.ac
  %.pn16 = phi { ptr, i32 } [ %i.cy, %bb.ac ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.cz, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.bb

bb.ae:                                            ; preds = %bb.ba, %bb.az, %bb.z, %bb.x, %bb.v, %bb.u, %bb.t, %bb.ay, %bb.ax, %._crit_edge102, %_ZN6duckdb6vectorImLb1ESaImEEaSERKS2_.exit, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph:                                           ; preds = %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.083.097 = phi ptr [ %i.ez, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.cm, %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit ] ; 2 uses
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.af unwind label %bb.al     ; 3 uses

bb.af:                                            ; preds = %.lr.ph
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 504 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.dg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.083.097)
          to label %bb.ag unwind label %bb.am     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.805") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.dg)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 512 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !166 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 520 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !167
  %.not.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not.i.i, label %bb.ai, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ah
  %i.do = load i64, ptr %5, align 8, !tbaa !168
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !168
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !170 ; 10 uses
  %i.dr = ptrtoint ptr %i.dl to i64               ; 3 uses
  %i.ds = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.aj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc45 unwind label %.loopexit.split-lp91

.noexc45:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #33
          to label %.noexc46 unwind label %.loopexit90 ; 10 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  %i.ed = load i64, ptr %5, align 8, !tbaa !168
  store i64 %i.ed, ptr %i.ec, align 8, !tbaa !168
  store ptr null, ptr %5, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dq, %i.dl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc46
  %7 = add i64 %i.dr, -8
  %8 = sub i64 %7, %i.ds                          ; 2 uses
  %i.ee = lshr i64 %8, 3
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.eb, i64 8
  %i.eg = add i64 %i.dr, -8
  %i.eh = sub i64 %i.eg, %i.ds
  %i.ei = and i64 %i.eh, -8                       ; 2 uses
  %scevgep150 = getelementptr i8, ptr %scevgep, i64 %i.ei
  %scevgep151 = getelementptr i8, ptr %i.dq, i64 8
  %scevgep152 = getelementptr i8, ptr %scevgep151, i64 %i.ei
  %bound0 = icmp ult ptr %i.eb, %scevgep152
  %bound1 = icmp ult ptr %i.dq, %scevgep150
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ef, 4611686018427387900     ; 3 uses
  %i.ej = shl i64 %n.vec, 3                       ; 2 uses
  %i.ek = getelementptr i8, ptr %i.eb, i64 %i.ej  ; 2 uses
  %i.el = getelementptr i8, ptr %i.dq, i64 %i.ej
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.em = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eb, i64 %i.em ; 2 uses
  %next.gep153 = getelementptr i8, ptr %i.dq, i64 %i.em ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.en = getelementptr i8, ptr %next.gep153, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep153, align 8, !tbaa !168, !alias.scope !1301, !noalias !1296
  %wide.load154 = load <2 x i64>, ptr %i.en, align 8, !tbaa !168, !alias.scope !1301, !noalias !1296
  %i.eo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !168, !alias.scope !1304, !noalias !1301
  store <2 x i64> %wide.load154, ptr %i.eo, align 8, !tbaa !168, !alias.scope !1304, !noalias !1301
  %i.ep = getelementptr i8, ptr %next.gep153, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep153, align 8, !tbaa !168, !alias.scope !1301, !noalias !1296
  store <2 x ptr> splat (ptr null), ptr %i.ep, align 8, !tbaa !168, !alias.scope !1301, !noalias !1296
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !1306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader181

.lr.ph.i.i.i.i.i.i.i.preheader181:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.eb, %vector.memcheck ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ek, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dq, %vector.memcheck ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.el, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader181, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader181 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader181 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.er = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !1299, !noalias !1296
  store i64 %i.er, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !1296, !noalias !1299
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !168, !alias.scope !1299, !noalias !1296
  %i.es = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.es, %i.dl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1307

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc46
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.eb, %.noexc46 ], [ %i.ek, %middle.block ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dq) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.ak
  store ptr %i.eb, ptr %i.df, align 8, !tbaa !170
  store ptr %i.eu, ptr %i.dk, align 8, !tbaa !166
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ev, ptr %i.dm, align 8, !tbaa !167
  %.pr = load ptr, ptr %5, align 8, !tbaa !168    ; 3 uses
  %.not.i47 = icmp eq ptr %.pr, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ew = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.083.097, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ez, %i.co
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.al:                                            ; preds = %.lr.ph
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.am:                                            ; preds = %bb.ag, %bb.af
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50

.loopexit90:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp91:                             ; preds = %bb.aj
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp91, %.loopexit90
  %lpad.phi94 = phi { ptr, i32 } [ %lpad.loopexit92, %.loopexit90 ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp91 ] ; 2 uses
  %i.fc = load ptr, ptr %5, align 8, !tbaa !168   ; 3 uses
  %.not.i48 = icmp eq ptr %i.fc, null
  br i1 %.not.i48, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i49

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i49: ; preds = %bb.an
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !7
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(56) %i.fc) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i49, %bb.an, %bb.am
  %.pn21 = phi { ptr, i32 } [ %i.fb, %bb.am ], [ %lpad.phi94, %bb.an ], [ %lpad.phi94, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.bb

._crit_edge102:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69, %._crit_edge
  %i.fg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ax unwind label %bb.ae

.lr.ph101:                                        ; preds = %._crit_edge, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69
  %.sroa.079.099 = phi ptr [ %i.hc, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69 ], [ %i.cq, %._crit_edge ] ; 2 uses
  %i.fh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ao unwind label %bb.au     ; 3 uses

bb.ao:                                            ; preds = %.lr.ph101
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 528 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.fj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.079.099)
          to label %bb.ap unwind label %bb.av     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !7
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.805") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.fj)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 536 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !166 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 544 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !167
  %.not.i.i51 = icmp eq ptr %i.fo, %i.fq
  br i1 %.not.i.i51, label %bb.ar, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66.thread: ; preds = %bb.aq
  %i.fr = load i64, ptr %6, align 8, !tbaa !168
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !168
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fs, ptr %i.fn, align 8, !tbaa !166
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69

bb.ar:                                            ; preds = %bb.aq
  %i.ft = load ptr, ptr %i.fi, align 8, !tbaa !170 ; 10 uses
  %i.fu = ptrtoint ptr %i.fo to i64               ; 3 uses
  %i.fv = ptrtoint ptr %i.ft to i64               ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775800
  br i1 %i.fx, label %bb.as, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i52

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i52: ; preds = %bb.ar
  %i.fy = ashr exact i64 %i.fw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i53 = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i.i.i53, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 1152921504606846975)
  %i.gc = select i1 %i.ga, i64 1152921504606846975, i64 %i.gb ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.gd = shl nuw nsw i64 %i.gc, 3
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #33
          to label %.noexc65 unwind label %.loopexit ; 10 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i52
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fw
  %i.gg = load i64, ptr %6, align 8, !tbaa !168
  store i64 %i.gg, ptr %i.gf, align 8, !tbaa !168
  store ptr null, ptr %6, align 8, !tbaa !168
  %.not10.i.i.i.i.i.i.i55 = icmp eq ptr %i.ft, %i.fo
  br i1 %.not10.i.i.i.i.i.i.i55, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i56.preheader

.lr.ph.i.i.i.i.i.i.i56.preheader:                 ; preds = %.noexc65
  %9 = add i64 %i.fu, -8
  %10 = sub i64 %9, %i.fv                         ; 2 uses
  %i.gh = lshr i64 %10, 3
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %10, 56
  br i1 %min.iters.check165, label %.lr.ph.i.i.i.i.i.i.i56.preheader180, label %vector.memcheck156

vector.memcheck156:                               ; preds = %.lr.ph.i.i.i.i.i.i.i56.preheader
  %scevgep157 = getelementptr i8, ptr %i.ge, i64 8
  %i.gj = add i64 %i.fu, -8
  %i.gk = sub i64 %i.gj, %i.fv
  %i.gl = and i64 %i.gk, -8                       ; 2 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.gl
  %scevgep159 = getelementptr i8, ptr %i.ft, i64 8
  %scevgep160 = getelementptr i8, ptr %scevgep159, i64 %i.gl
  %bound0161 = icmp ult ptr %i.ge, %scevgep160
  %bound1162 = icmp ult ptr %i.ft, %scevgep158
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.i.i.i.i.i.i56.preheader180, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck156
  %n.vec168 = and i64 %i.gi, 4611686018427387900  ; 3 uses
  %i.gm = shl i64 %n.vec168, 3                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.ge, i64 %i.gm  ; 2 uses
  %i.go = getelementptr i8, ptr %i.ft, i64 %i.gm
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.gp = shl i64 %index170, 3                    ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ge, i64 %i.gp ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.ft, i64 %i.gp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.gq = getelementptr i8, ptr %next.gep172, i64 16
  %wide.load173 = load <2 x i64>, ptr %next.gep172, align 8, !tbaa !168, !alias.scope !1313, !noalias !1308
  %wide.load174 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !168, !alias.scope !1313, !noalias !1308
  %i.gr = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x i64> %wide.load173, ptr %next.gep171, align 8, !tbaa !168, !alias.scope !1316, !noalias !1313
  store <2 x i64> %wide.load174, ptr %i.gr, align 8, !tbaa !168, !alias.scope !1316, !noalias !1313
  %i.gs = getelementptr i8, ptr %next.gep172, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep172, align 8, !tbaa !168, !alias.scope !1313, !noalias !1308
  store <2 x ptr> splat (ptr null), ptr %i.gs, align 8, !tbaa !168, !alias.scope !1313, !noalias !1308
  %index.next175 = add nuw i64 %index170, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.gt, label %middle.block176, label %vector.body169, !llvm.loop !1318

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.gi, %n.vec168
  br i1 %cmp.n177, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i56.preheader180

.lr.ph.i.i.i.i.i.i.i56.preheader180:              ; preds = %vector.memcheck156, %.lr.ph.i.i.i.i.i.i.i56.preheader, %middle.block176
  %.012.i.i.i.i.i.i.i57.ph = phi ptr [ %i.ge, %vector.memcheck156 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i56.preheader ], [ %i.gn, %middle.block176 ]
  %.0911.i.i.i.i.i.i.i58.ph = phi ptr [ %i.ft, %vector.memcheck156 ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.i56.preheader ], [ %i.go, %middle.block176 ]
  br label %.lr.ph.i.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i.i56:                           ; preds = %.lr.ph.i.i.i.i.i.i.i56.preheader180, %.lr.ph.i.i.i.i.i.i.i56
  %.012.i.i.i.i.i.i.i57 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i.i56 ], [ %.012.i.i.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i.i.i56.preheader180 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i58 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i56 ], [ %.0911.i.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i.i56.preheader180 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.gu = load i64, ptr %.0911.i.i.i.i.i.i.i58, align 8, !tbaa !168, !alias.scope !1311, !noalias !1308
  store i64 %i.gu, ptr %.012.i.i.i.i.i.i.i57, align 8, !tbaa !168, !alias.scope !1308, !noalias !1311
  store ptr null, ptr %.0911.i.i.i.i.i.i.i58, align 8, !tbaa !168, !alias.scope !1311, !noalias !1308
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i58, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i57, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.gv, %i.fo
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i56, !llvm.loop !1319

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i56, %middle.block176, %.noexc65
  %.0.lcssa.i.i.i.i.i.i.i61 = phi ptr [ %i.ge, %.noexc65 ], [ %i.gn, %middle.block176 ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i56 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i61, i64 8
  %.not.i23.i.i.i62 = icmp eq ptr %i.ft, null
  br i1 %.not.i23.i.i.i62, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i60
  call void @_ZdlPv(ptr noundef nonnull %i.ft) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i60, %bb.at
  store ptr %i.ge, ptr %i.fi, align 8, !tbaa !170
  store ptr %i.gx, ptr %i.fn, align 8, !tbaa !166
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gc
  store ptr %i.gy, ptr %i.fp, align 8, !tbaa !167
  %.pr87 = load ptr, ptr %6, align 8, !tbaa !168  ; 3 uses
  %.not.i67 = icmp eq ptr %.pr87, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i68

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i68: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66
  %i.gz = load ptr, ptr %.pr87, align 8, !tbaa !7
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(56) %.pr87) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit66, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.079.099, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.hc, %i.cs
  br i1 %.not89, label %._crit_edge102, label %.lr.ph101

bb.au:                                            ; preds = %.lr.ph101
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.av:                                            ; preds = %bb.ap, %bb.ao
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit72

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i52
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hf = load ptr, ptr %6, align 8, !tbaa !168   ; 3 uses
  %.not.i70 = icmp eq ptr %i.hf, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit72, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i71

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i71: ; preds = %bb.aw
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !7
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(56) %i.hf) #30, !inline_history !185
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit72

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit72: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i71, %bb.aw, %bb.av
  %.pn18 = phi { ptr, i32 } [ %i.he, %bb.av ], [ %lpad.phi, %bb.aw ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.bb

bb.ax:                                            ; preds = %._crit_edge102
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fg, i64 176
  %i.hl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hk, ptr noundef nonnull align 8 dereferenceable(64) %i.hj)
          to label %bb.ay unwind label %bb.ae     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.hm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.az unwind label %bb.ae     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 240 ; 2 uses
  %i.hp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(80) %i.ho, ptr noundef nonnull align 8 dereferenceable(80) %i.hn)
          to label %.noexc73 unwind label %bb.ae  ; 0 uses

.noexc73:                                         ; preds = %bb.az
  %i.hq = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hq, label %_ZNSt10unique_ptrIN6duckdb15CreateIndexInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %.noexc73
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 264
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSK_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.hr, ptr noundef nonnull align 8 dereferenceable(56) %i.hs)
          to label %_ZNSt10unique_ptrIN6duckdb15CreateIndexInfoESt14default_deleteIS1_EED2Ev.exit unwind label %bb.ae

_ZNSt10unique_ptrIN6duckdb15CreateIndexInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ba, %.noexc73
  %i.ht = load ptr, ptr %2, align 8, !tbaa !1294
  store ptr %i.ht, ptr %0, align 8, !tbaa !639
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.bb:                                            ; preds = %bb.au, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit72, %bb.al, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.fa, %bb.al ], [ %i.dd, %bb.ae ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn21, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50 ], [ %.pn18, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit72 ], [ %i.hd, %bb.au ]
  %i.hu = load ptr, ptr %2, align 8, !tbaa !1294  ; 3 uses
  %.not.i76 = icmp eq ptr %i.hu, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrIN6duckdb15CreateIndexInfoESt14default_deleteIS1_EED2Ev.exit78, label %_ZNKSt14default_deleteIN6duckdb15CreateIndexInfoEEclEPS1_.exit.i77

_ZNKSt14default_deleteIN6duckdb15CreateIndexInfoEEclEPS1_.exit.i77: ; preds = %bb.bb
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !7
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(600) %i.hu) #30, !inline_history !1320
  br label %_ZNSt10unique_ptrIN6duckdb15CreateIndexInfoESt14default_deleteIS1_EED2Ev.exit78

_ZNSt10unique_ptrIN6duckdb15CreateIndexInfoESt14default_deleteIS1_EED2Ev.exit78: ; preds = %bb.bb, %_ZNKSt14default_deleteIN6duckdb15CreateIndexInfoEEclEPS1_.exit.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1294   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
end_hunk_15
begin_hunk_16_@_ZNK6duckdb22TableMacroCatalogEntry4CopyERNS_13ClientContextE:bb.a

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31, !noalias !1346, !inline_history !1345
  br label %.body

_ZNSt10unique_ptrIN6duckdb22TableMacroCatalogEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  store ptr %i.i, ptr %0, align 8, !tbaa !213
  %i.k = load ptr, ptr %3, align 8, !tbaa !214    ; 3 uses
  %.not.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb22TableMacroCatalogEntryESt14default_deleteIS1_EED2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(320) %i.k) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb22TableMacroCatalogEntryESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.p, %bb.e ], [ %i.j, %bb.c ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !214    ; 3 uses
  %.not.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7: ; preds = %.body
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(320) %i.q) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb17MacroCatalogEntry7GetInfoEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.244") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.1219", align 8 ; 13 uses
  %3 = alloca %"class.duckdb::unique_ptr.1185", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.b = tail call noalias noundef nonnull dereferenceable(432) ptr @_Znwm(i64 noundef 432) #33, !noalias !1349 ; 3 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !1352, !noalias !1349
  invoke void @_ZN6duckdb15CreateMacroInfoC1ENS_11CatalogTypeE(ptr noundef nonnull align 8 dereferenceable(432) %i.b, i8 noundef zeroext %i.c)
          to label %_ZN6duckdb9make_uniqINS_15CreateMacroInfoEJRKNS_11CatalogTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1349

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb15CreateMacroInfoESt14default_deleteIS1_EED2Ev.exit23, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb15CreateMacroInfoESt14default_deleteIS1_EED2Ev.exit23 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #31, !noalias !1349
  br label %common.resume

_ZN6duckdb9make_uniqINS_15CreateMacroInfoEJRKNS_11CatalogTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !1353, !alias.scope !1349
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb7Catalog7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_15CreateMacroInfoEJRKNS_11CatalogTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateMacroInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !205, !nonnull !71, !align !204
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateMacroInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11 unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11: ; preds = %bb.e
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateMacroInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit12 unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit12: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1331 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1331 ; 2 uses
  %.not28 = icmp eq ptr %i.s, %i.u
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit12
  %i.v = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateMacroInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.q unwind label %bb.g

bb.g:                                             ; preds = %bb.v, %bb.u, %bb.r, %bb.f, %bb.e, %bb.d, %bb.t, %bb.s, %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.c, %_ZN6duckdb9make_uniqINS_15CreateMacroInfoEJRKNS_11CatalogTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit12, %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.024.029 = phi ptr [ %i.bs, %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit12 ] ; 2 uses
  %i.x = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateMacroInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.n       ; 3 uses

bb.h:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 408 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13MacroFunctionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.024.029)
          to label %bb.i unwind label %bb.o       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1185") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.z)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 416 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1335 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 424 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1333
  %.not.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i.i, label %bb.k, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j
  %i.ah = load i64, ptr %3, align 8, !tbaa !1337
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !1337
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !1335
  br label %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !1336 ; 10 uses
  %i.ak = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #33
          to label %.noexc13 unwind label %.loopexit ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  %i.aw = load i64, ptr %3, align 8, !tbaa !1337
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !1337
  store ptr null, ptr %3, align 8, !tbaa !1337
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc13
  %4 = add i64 %i.ak, -8
  %5 = sub i64 %4, %i.al                          ; 2 uses
  %i.ax = lshr i64 %5, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.au, i64 8
  %i.az = add i64 %i.ak, -8
  %i.ba = sub i64 %i.az, %i.al
  %i.bb = and i64 %i.ba, -8                       ; 2 uses
  %scevgep39 = getelementptr i8, ptr %scevgep, i64 %i.bb
  %scevgep40 = getelementptr i8, ptr %i.aj, i64 8
  %scevgep41 = getelementptr i8, ptr %scevgep40, i64 %i.bb
  %bound0 = icmp ult ptr %i.au, %scevgep41
  %bound1 = icmp ult ptr %i.aj, %scevgep39
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.au, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.aj, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bf ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.aj, i64 %i.bf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.bg = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep42, align 8, !tbaa !1337, !alias.scope !1360, !noalias !1355
  %wide.load43 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !1337, !alias.scope !1360, !noalias !1355
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1337, !alias.scope !1363, !noalias !1360
  store <2 x i64> %wide.load43, ptr %i.bh, align 8, !tbaa !1337, !alias.scope !1363, !noalias !1360
  %i.bi = getelementptr i8, ptr %next.gep42, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep42, align 8, !tbaa !1337, !alias.scope !1360, !noalias !1355
  store <2 x ptr> splat (ptr null), ptr %i.bi, align 8, !tbaa !1337, !alias.scope !1360, !noalias !1355
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader45

.lr.ph.i.i.i.i.i.i.i.preheader45:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader45, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader45 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader45 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.bk = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1337, !alias.scope !1358, !noalias !1355
  store i64 %i.bk, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1337, !alias.scope !1355, !noalias !1358
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1337, !alias.scope !1358, !noalias !1355
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.ae
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1366

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.au, %.noexc13 ], [ %i.bd, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.m
  store ptr %i.au, ptr %i.y, align 8, !tbaa !1336
  store ptr %i.bn, ptr %i.ad, align 8, !tbaa !1335
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bo, ptr %i.af, align 8, !tbaa !1333
  %.pr = load ptr, ptr %3, align 8, !tbaa !1337   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13MacroFunctionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13MacroFunctionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bp = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %.pr) #30, !inline_history !1367
  br label %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb13MacroFunctionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.024.029, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.u
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.o:                                             ; preds = %bb.i, %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit16

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !1337  ; 3 uses
  %.not.i14 = icmp eq ptr %i.bv, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN6duckdb13MacroFunctionEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN6duckdb13MacroFunctionEEclEPS1_.exit.i15: ; preds = %bb.p
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bv) #30, !inline_history !1367
  br label %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZNKSt14default_deleteIN6duckdb13MacroFunctionEEclEPS1_.exit.i15, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %lpad.phi, %bb.p ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb13MacroFunctionEEclEPS1_.exit.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.w

bb.q:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 8 dereferenceable(56) %i.bz)
          to label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit unwind label %bb.g

_ZN6duckdb21LogicalDependencyListaSERKS0_.exit:   ; preds = %bb.q, %bb.r
  %i.cc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateMacroInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.s unwind label %bb.g

bb.s:                                             ; preds = %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 176
  %i.cf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, ptr noundef nonnull align 8 dereferenceable(64) %i.cd)
          to label %bb.t unwind label %bb.g       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateMacroInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.u unwind label %bb.g       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 240 ; 2 uses
  %i.cj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(80) %i.ch)
          to label %.noexc18 unwind label %bb.g   ; 0 uses

.noexc18:                                         ; preds = %bb.u
  %i.ck = icmp eq ptr %i.ch, %i.ci
  br i1 %i.ck, label %_ZNSt10unique_ptrIN6duckdb15CreateMacroInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 264
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSK_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cl, ptr noundef nonnull align 8 dereferenceable(56) %i.cm)
          to label %_ZNSt10unique_ptrIN6duckdb15CreateMacroInfoESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g

_ZNSt10unique_ptrIN6duckdb15CreateMacroInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %.noexc18
  %i.cn = load ptr, ptr %2, align 8, !tbaa !1353
  store ptr %i.cn, ptr %0, align 8, !tbaa !639
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.w:                                             ; preds = %bb.n, %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit16, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.g ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb13MacroFunctionESt14default_deleteIS1_EED2Ev.exit16 ], [ %i.bt, %bb.n ]
  %i.co = load ptr, ptr %2, align 8, !tbaa !1353  ; 3 uses
  %.not.i21 = icmp eq ptr %i.co, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN6duckdb15CreateMacroInfoESt14default_deleteIS1_EED2Ev.exit23, label %_ZNKSt14default_deleteIN6duckdb15CreateMacroInfoEEclEPS1_.exit.i22

_ZNKSt14default_deleteIN6duckdb15CreateMacroInfoEEclEPS1_.exit.i22: ; preds = %bb.w
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(432) %i.co) #30, !inline_history !1368
  br label %_ZNSt10unique_ptrIN6duckdb15CreateMacroInfoESt14default_deleteIS1_EED2Ev.exit23

_ZNSt10unique_ptrIN6duckdb15CreateMacroInfoESt14default_deleteIS1_EED2Ev.exit23: ; preds = %bb.w, %_ZNKSt14default_deleteIN6duckdb15CreateMacroInfoEEclEPS1_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume
}
end_hunk_16
begin_hunk_17_@_ZNK6duckdb17TableCatalogEntry7GetInfoEv:bb.a
.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 480 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !544
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !303 ; 10 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 4 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bs
  br i1 %i.ca, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 472 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !300 ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.ce = sub i64 %i.cd, %i.by
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #33
          to label %.noexc14 unwind label %.loopexit.split-lp ; 9 uses

.noexc14:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.bw, %i.cc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12.preheader

.lr.ph.i.i.i.i.i12.preheader:                     ; preds = %.noexc14
  %i.cg = add i64 %i.cd, -8
  %i.ch = sub i64 %i.cg, %i.by                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i12.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i12.preheader
  %i.ck = add i64 %i.cd, -8
  %i.cl = sub i64 %i.ck, %i.by
  %i.cm = and i64 %i.cl, -8
  %i.cn = add i64 %i.cm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cf, i64 %i.cn
  %scevgep54 = getelementptr i8, ptr %i.bw, i64 %i.cn
  %bound0 = icmp ult ptr %i.cf, %scevgep54
  %bound1 = icmp ult ptr %i.bw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i12.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.bw, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cr ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.bw, i64 %i.cr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.cs = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !567, !alias.scope !1466, !noalias !1461
  %wide.load56 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !567, !alias.scope !1466, !noalias !1461
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !567, !alias.scope !1469, !noalias !1466
  store <2 x i64> %wide.load56, ptr %i.ct, align 8, !tbaa !567, !alias.scope !1469, !noalias !1466
  %i.cu = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !567, !alias.scope !1466, !noalias !1461
  store <2 x ptr> splat (ptr null), ptr %i.cu, align 8, !tbaa !567, !alias.scope !1466, !noalias !1461
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12.preheader83

.lr.ph.i.i.i.i.i12.preheader83:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i12.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i12.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i12.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i12

.lr.ph.i.i.i.i.i12:                               ; preds = %.lr.ph.i.i.i.i.i12.preheader83, %.lr.ph.i.i.i.i.i12
  %.012.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i12 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i12.preheader83 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i12 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i12.preheader83 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1464, !noalias !1461
  store i64 %i.cw, ptr %.012.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1461, !noalias !1464
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1464, !noalias !1461
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i13 = icmp eq ptr %i.cx, %i.cc
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i12, !llvm.loop !1472

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i12, %middle.block, %.noexc14
  %.not.i8.i = icmp eq ptr %i.bw, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #31
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.cf, ptr %i.bl, align 8, !tbaa !303
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store ptr %i.cz, ptr %i.cb, align 8, !tbaa !300
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bs
  store ptr %i.da, ptr %i.bu, align 8, !tbaa !544
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.p
  %i.db = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 120 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.dd, ptr noundef nonnull align 8 dereferenceable(56) %i.dc)
          to label %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit unwind label %.loopexit.split-lp

_ZN6duckdb21LogicalDependencyListaSERKS0_.exit:   ; preds = %bb.r, %bb.s
  %i.df = load ptr, ptr %i.bm, align 8, !tbaa !543 ; 2 uses
  %i.dg = load ptr, ptr %i.bn, align 8, !tbaa !543 ; 2 uses
  %.not5.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not5.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN6duckdb10unique_ptrINS2_10ConstraintESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEEZNKS2_17TableCatalogEntry7GetInfoEvE3$_0ET0_T_SH_SG_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit, %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i"
  %.sroa.02.06.i = phi ptr [ %i.fg, %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i" ], [ %i.df, %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit ] ; 2 uses
  %i.dh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc18 unwind label %.loopexit ; 3 uses

.noexc18:                                         ; preds = %.lr.ph.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.dj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ConstraintESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02.06.i)
          to label %.noexc19 unwind label %.loopexit ; 2 uses

.noexc19:                                         ; preds = %.noexc18
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.827") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %i.dj)
          to label %.noexc20 unwind label %.loopexit, !inline_history !1473

.noexc20:                                         ; preds = %.noexc19
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 472 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !300 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 480 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !544
  %.not.i.i.i = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i.i.i, label %bb.t, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread.i.i: ; preds = %.noexc20
  %i.dr = load i64, ptr %2, align 8, !tbaa !567
  store i64 %i.dr, ptr %i.do, align 8, !tbaa !567
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !300
  br label %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i"

bb.t:                                             ; preds = %.noexc20
  %i.dt = load ptr, ptr %i.di, align 8, !tbaa !303 ; 10 uses
  %i.du = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775800
  br i1 %i.dx, label %bb.u, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.t
  %i.dy = ashr exact i64 %i.dw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 1152921504606846975)
  %i.ec = select i1 %i.ea, i64 1152921504606846975, i64 %i.eb ; 3 uses
  %.not.i.i.i.i.i16 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i16)
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #33
          to label %.noexc3.i.i unwind label %.loopexit.i ; 10 uses

.noexc3.i.i:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  %i.eg = load i64, ptr %2, align 8, !tbaa !567
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !567
  store ptr null, ptr %2, align 8, !tbaa !567
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.do
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc3.i.i
  %5 = add i64 %i.du, -8
  %6 = sub i64 %5, %i.dv                          ; 2 uses
  %i.eh = lshr i64 %6, 3
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %6, 56
  br i1 %min.iters.check67, label %.lr.ph.i.i.i.i.i.i.i.i.preheader82, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %scevgep59 = getelementptr i8, ptr %i.ee, i64 8
  %i.ej = add i64 %i.du, -8
  %i.ek = sub i64 %i.ej, %i.dv
  %i.el = and i64 %i.ek, -8                       ; 2 uses
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.el
  %scevgep61 = getelementptr i8, ptr %i.dt, i64 8
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.el
  %bound063 = icmp ult ptr %i.ee, %scevgep62
  %bound164 = icmp ult ptr %i.dt, %scevgep60
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i.i.i.i.i.i.i.i.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck58
  %n.vec70 = and i64 %i.ei, 4611686018427387900   ; 3 uses
  %i.em = shl i64 %n.vec70, 3                     ; 2 uses
  %i.en = getelementptr i8, ptr %i.ee, i64 %i.em  ; 2 uses
  %i.eo = getelementptr i8, ptr %i.dt, i64 %i.em
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.ep = shl i64 %index72, 3                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.ee, i64 %i.ep ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.dt, i64 %i.ep ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.eq = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load75 = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !567, !alias.scope !1479, !noalias !1474
  %wide.load76 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !567, !alias.scope !1479, !noalias !1474
  %i.er = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep73, align 8, !tbaa !567, !alias.scope !1482, !noalias !1479
  store <2 x i64> %wide.load76, ptr %i.er, align 8, !tbaa !567, !alias.scope !1482, !noalias !1479
  %i.es = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !567, !alias.scope !1479, !noalias !1474
  store <2 x ptr> splat (ptr null), ptr %i.es, align 8, !tbaa !567, !alias.scope !1479, !noalias !1474
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.et = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.et, label %middle.block78, label %vector.body71, !llvm.loop !1484

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.ei, %n.vec70
  br i1 %cmp.n79, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.i.i.i.preheader82:               ; preds = %vector.memcheck58, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block78
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ee, %vector.memcheck58 ], [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.en, %middle.block78 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dt, %vector.memcheck58 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eo, %middle.block78 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader82 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader82 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.eu = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1477, !noalias !1474
  store i64 %i.eu, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1474, !noalias !1477
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !567, !alias.scope !1477, !noalias !1474
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ev, %i.do
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1485

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block78, %.noexc3.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ee, %.noexc3.i.i ], [ %i.en, %middle.block78 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ee, ptr %i.di, align 8, !tbaa !303
  store ptr %i.ex, ptr %i.dn, align 8, !tbaa !300
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ey, ptr %i.dp, align 8, !tbaa !544
  %.pr.i.i17 = load ptr, ptr %2, align 8, !tbaa !567 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %.pr.i.i17, null
  br i1 %.not.i4.i.i, label %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i", label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.i.i
  %i.ez = load ptr, ptr %.pr.i.i17, align 8, !tbaa !7
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.pr.i.i17) #30, !inline_history !1486
  br label %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i"

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp.i:                             ; preds = %bb.u
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fc = load ptr, ptr %2, align 8, !tbaa !567   ; 3 uses
  %.not.i5.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i5.i.i, label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit7.i.i, label %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i6.i.i

_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i6.i.i: ; preds = %bb.w
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !7
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.fc) #30, !inline_history !1486
  br label %_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit7.i.i

_ZNSt10unique_ptrIN6duckdb10ConstraintESt14default_deleteIS1_EED2Ev.exit7.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i6.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i": ; preds = %_ZNKSt14default_deleteIN6duckdb10ConstraintEEclEPS1_.exit.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.fg, %i.dg
  br i1 %.not.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN6duckdb10unique_ptrINS2_10ConstraintESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEEZNKS2_17TableCatalogEntry7GetInfoEvE3$_0ET0_T_SH_SG_.exit", label %.lr.ph.i, !llvm.loop !1487

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN6duckdb10unique_ptrINS2_10ConstraintESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEEZNKS2_17TableCatalogEntry7GetInfoEvE3$_0ET0_T_SH_SG_.exit": ; preds = %"_ZZNK6duckdb17TableCatalogEntry7GetInfoEvENK3$_0clERKNS_10unique_ptrINS_10ConstraintESt14default_deleteIS3_ELb1EEE.exit.i", %_ZN6duckdb21LogicalDependencyListaSERKS0_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !164, !range !70, !noundef !71
  %i.fj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN6duckdb10unique_ptrINS2_10ConstraintESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEEZNKS2_17TableCatalogEntry7GetInfoEvE3$_0ET0_T_SH_SG_.exit"
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 81
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !163
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !72, !range !70, !noundef !71
  %i.fn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 82
  store i8 %i.fm, ptr %i.fo, align 2, !tbaa !38
  %i.fp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 176
  %i.fs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fr, ptr noundef nonnull align 8 dereferenceable(64) %i.fq)
          to label %bb.aa unwind label %.loopexit.split-lp ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ft = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ab unwind label %.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 240 ; 2 uses
  %i.fw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(80) %i.fv, ptr noundef nonnull align 8 dereferenceable(80) %i.fu)
          to label %.noexc21 unwind label %.loopexit.split-lp ; 0 uses

.noexc21:                                         ; preds = %bb.ab
  %i.fx = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fx, label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc21
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 264
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSK_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull align 8 dereferenceable(56) %i.fz)
          to label %_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit unwind label %.loopexit.split-lp

_ZNSt10unique_ptrIN6duckdb15CreateTableInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ac, %.noexc21
  %i.ga = load ptr, ptr %3, align 8, !tbaa !637
  store ptr %i.ga, ptr %0, align 8, !tbaa !639
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc18, %.noexc19
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZN6duckdb9make_uniqINS_15CreateTableInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit10, %_ZN6duckdb10ColumnListD2Ev.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN6duckdb10unique_ptrINS2_10ConstraintESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEEZNKS2_17TableCatalogEntry7GetInfoEvE3$_0ET0_T_SH_SG_.exit", %bb.x, %bb.y, %bb.z, %bb.aa, %bb.d, %bb.e, %bb.f, %bb.o, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.s, %bb.ab, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit11
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.g
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10ColumnListD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %4) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
end_hunk_17
begin_hunk_18_@_ZN6duckdb13LogicalUpdate16BindExtraColumnsERNS_17TableCatalogEntryERNS_10LogicalGetERNS_17LogicalProjectionERS0_RSt13unordered_setINS_13PhysicalIndexENS_25PhysicalIndexHashFunctionESt8equal_toIS9_ESaIS9_EE:bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader267, %bb.f, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE6insertERKS1_.exit
  %.1 = phi i64 [ %i.ar, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE6insertERKS1_.exit ], [ %.0186, %..loopexit_crit_edge21.i.i.i.i ], [ %.0186, %.preheader267 ], [ %.0186, %bb.f ], [ %.0186, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aw = add nuw i64 %.034185, 1                 ; 2 uses
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !1532
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !647
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = icmp ult i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.c, label %._crit_edge, !llvm.loop !1533

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0137.0188 = load ptr, ptr %i.be, align 8, !tbaa !118 ; 2 uses
  %.not144189 = icmp eq ptr %.sroa.0137.0188, null
  br i1 %.not144189, label %.loopexit147, label %.lr.ph192

.lr.ph192:                                        ; preds = %._crit_edge.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph192, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67
  %.sroa.0137.0190 = phi ptr [ %.sroa.0137.0188, %.lr.ph192 ], [ %.sroa.0137.0, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0137.0190, i64 8 ; 3 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !942
  %.not.not.i.i56 = icmp eq i64 %i.br, 0
  %i.bs = load i64, ptr %i.bq, align 8            ; 7 uses
  br i1 %.not.not.i.i56, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.m, %bb.n
  %.sroa.06.0.in.i.i64 = phi ptr [ %.sroa.06.0.i.i65, %bb.n ], [ %i.f, %bb.m ]
  %.sroa.06.0.i.i65 = load ptr, ptr %.sroa.06.0.in.i.i64, align 8, !tbaa !118 ; 3 uses
  %.not.i.i66 = icmp eq ptr %.sroa.06.0.i.i65, null
  br i1 %.not.i.i66, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i65, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !944
  %i.bv = icmp eq i64 %i.bs, %i.bu
  br i1 %i.bv, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67, label %.preheader, !llvm.loop !946

bb.o:                                             ; preds = %bb.m
  %i.bw = load i64, ptr %i.e, align 8, !tbaa !947 ; 2 uses
  %i.bx = urem i64 %i.bs, %i.bw                   ; 2 uses
  %i.by = load ptr, ptr %8, align 8, !tbaa !948
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !508 ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i57, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !118 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !506
  %i.cf = icmp eq i64 %i.bs, %i.ce
  %i.cg = load i64, ptr %i.cc, align 8
  %i.ch = icmp eq i64 %i.bs, %i.cg
  %i.ci = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %i.ci, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67, label %.lr.ph.i.i.i.i58

bb.q:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ck = icmp eq i64 %i.bs, %i.cq
  %i.cl = load i64, ptr %i.cj, align 8
  %i.cm = icmp eq i64 %i.bs, %i.cl
  %i.cn = select i1 %i.ck, i1 %i.cm, i1 false
  br i1 %i.cn, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67, label %.lr.ph.i.i.i.i58, !llvm.loop !949

.lr.ph.i.i.i.i58:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i59 = phi ptr [ %i.co, %bb.q ], [ %i.cb, %bb.p ]
  %i.co = load ptr, ptr %.020.i.i.i.i59, align 8, !tbaa !118 ; 4 uses
  %.not18.i.i.i.i60 = icmp eq ptr %i.co, null
  br i1 %.not18.i.i.i.i60, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !506 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bw
  %.not19.i.i.i.i61 = icmp eq i64 %i.cr, %i.bx
  br i1 %.not19.i.i.i.i61, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i62, !llvm.loop !949

..loopexit_crit_edge21.i.i.i.i62:                 ; preds = %bb.r
  br label %.loopexit, !llvm.loop !949

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i58, %.preheader, %..loopexit_crit_edge21.i.i.i.i62, %bb.o
  %i.cs = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.bg, i64 %i.bs)
          to label %bb.s unwind label %.loopexit148 ; 3 uses

bb.s:                                             ; preds = %.loopexit
  %i.ct = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cs)
          to label %bb.t unwind label %bb.au

bb.t:                                             ; preds = %bb.s
  %i.cu = load i64, ptr %i.bi, align 8, !tbaa !1534
  %i.cv = load ptr, ptr %i.bk, align 8, !tbaa !784
  %i.cw = load ptr, ptr %i.bj, align 8, !tbaa !781
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.db = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33
          to label %.noexc unwind label %bb.av    ; 6 uses

.noexc:                                           ; preds = %bb.t
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %bb.u unwind label %bb.v, !noalias !1548

bb.u:                                             ; preds = %.noexc
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.db, ptr noundef nonnull %6, i64 %i.cu, i64 %i.da, i64 noundef 0)
          to label %bb.y unwind label %bb.w, !noalias !1548

bb.v:                                             ; preds = %.noexc
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #30, !noalias !1548
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.dd, %bb.w ], [ %i.dc, %bb.v ]
  call void @_ZdlPv(ptr noundef nonnull %i.db) #31, !noalias !1548
  br label %.body

bb.y:                                             ; preds = %bb.u
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #30, !noalias !1548
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !784 ; 6 uses
  %i.df = load ptr, ptr %i.bm, align 8, !tbaa !1551
  %.not.i.i68 = icmp eq ptr %i.de, %i.df
  br i1 %.not.i.i68, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = ptrtoint ptr %i.db to i64
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !785
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dh, ptr %i.bl, align 8, !tbaa !784
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.di = load ptr, ptr %i.bh, align 8, !tbaa !781 ; 10 uses
  %i.dj = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.ab, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc70 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111.loopexit.split-lp

.noexc70:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.dn = ashr exact i64 %i.dl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 1152921504606846975)
  %i.dr = select i1 %i.dp, i64 1152921504606846975, i64 %i.dq ; 3 uses
  %.not.i.i.i.i69 = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i69)
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #33
          to label %.noexc71 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111.loopexit ; 10 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl
  %i.dv = ptrtoint ptr %i.db to i64
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !785
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.di, %i.de
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc71
  %9 = add i64 %i.dj, -8
  %10 = sub i64 %9, %i.dk                         ; 2 uses
  %i.dw = lshr i64 %10, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %10, 56
  br i1 %min.iters.check322, label %.lr.ph.i.i.i.i.i.i.i.preheader339, label %vector.memcheck313

vector.memcheck313:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep314 = getelementptr i8, ptr %i.dt, i64 8
  %i.dy = add i64 %i.dj, -8
  %i.dz = sub i64 %i.dy, %i.dk
  %i.ea = and i64 %i.dz, -8                       ; 2 uses
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.ea
  %scevgep316 = getelementptr i8, ptr %i.di, i64 8
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.ea
  %bound0318 = icmp ult ptr %i.dt, %scevgep317
  %bound1319 = icmp ult ptr %i.di, %scevgep315
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i.i.i.i.i.i.preheader339, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck313
  %n.vec325 = and i64 %i.dx, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec325, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dt, i64 %i.eb  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.di, i64 %i.eb
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph323
  %index327 = phi i64 [ 0, %vector.ph323 ], [ %index.next332, %vector.body326 ] ; 2 uses
  %i.ee = shl i64 %index327, 3                    ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.di, i64 %i.ee ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.ef = getelementptr i8, ptr %next.gep329, i64 16
  %wide.load330 = load <2 x i64>, ptr %next.gep329, align 8, !tbaa !785, !alias.scope !1557, !noalias !1552
  %wide.load331 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !785, !alias.scope !1557, !noalias !1552
  %i.eg = getelementptr i8, ptr %next.gep328, i64 16
  store <2 x i64> %wide.load330, ptr %next.gep328, align 8, !tbaa !785, !alias.scope !1560, !noalias !1557
  store <2 x i64> %wide.load331, ptr %i.eg, align 8, !tbaa !785, !alias.scope !1560, !noalias !1557
  %i.eh = getelementptr i8, ptr %next.gep329, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep329, align 8, !tbaa !785, !alias.scope !1557, !noalias !1552
  store <2 x ptr> splat (ptr null), ptr %i.eh, align 8, !tbaa !785, !alias.scope !1557, !noalias !1552
  %index.next332 = add nuw i64 %index327, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.ei, label %middle.block333, label %vector.body326, !llvm.loop !1562

middle.block333:                                  ; preds = %vector.body326
  %cmp.n334 = icmp eq i64 %i.dx, %n.vec325
  br i1 %cmp.n334, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader339

.lr.ph.i.i.i.i.i.i.i.preheader339:                ; preds = %vector.memcheck313, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block333
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dt, %vector.memcheck313 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ec, %middle.block333 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.di, %vector.memcheck313 ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ed, %middle.block333 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader339, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader339 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader339 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.ej = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !785, !alias.scope !1555, !noalias !1552
  store i64 %i.ej, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !785, !alias.scope !1552, !noalias !1555
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !785, !alias.scope !1555, !noalias !1552
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ek, %i.de
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1563

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block333, %.noexc71
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.noexc71 ], [ %i.ec, %middle.block333 ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.di) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dt, ptr %i.bh, align 8, !tbaa !781
  store ptr %i.em, ptr %i.bl, align 8, !tbaa !784
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.en, ptr %i.bm, align 8, !tbaa !1551
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.z
  %i.eo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cs)
          to label %bb.ad unwind label %bb.aw

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ep = load i64, ptr %i.bn, align 8, !tbaa !1564
  %i.eq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10LogicalGet12GetColumnIdsEv(ptr noundef nonnull align 8 dereferenceable(1104) %1)
          to label %bb.ae unwind label %bb.ax     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !584
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !583
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = sdiv exact i64 %i.ew, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ey = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33
          to label %.noexc77 unwind label %bb.ax  ; 6 uses

.noexc77:                                         ; preds = %bb.ae
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %bb.af unwind label %bb.ag, !noalias !1616

bb.af:                                            ; preds = %.noexc77
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.ey, ptr noundef nonnull %5, i64 %i.ep, i64 %i.ex, i64 noundef 0)
          to label %bb.aj unwind label %bb.ah, !noalias !1616

bb.ag:                                            ; preds = %.noexc77
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #30, !noalias !1616
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn.i73 = phi { ptr, i32 } [ %i.fa, %bb.ah ], [ %i.ez, %bb.ag ]
  call void @_ZdlPv(ptr noundef nonnull %i.ey) #31, !noalias !1616
  br label %.body

bb.aj:                                            ; preds = %bb.af
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #30, !noalias !1616
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fb = load ptr, ptr %i.bk, align 8, !tbaa !784 ; 6 uses
  %i.fc = load ptr, ptr %i.bo, align 8, !tbaa !1551
  %.not.i.i81 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i.i81, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fd = ptrtoint ptr %i.ey to i64
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !785
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fe, ptr %i.bk, align 8, !tbaa !784
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit102

bb.al:                                            ; preds = %bb.aj
  %i.ff = load ptr, ptr %i.bj, align 8, !tbaa !781 ; 10 uses
  %i.fg = ptrtoint ptr %i.fb to i64               ; 3 uses
  %i.fh = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775800
  br i1 %i.fj, label %bb.am, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i82

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc94 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117.loopexit.split-lp

.noexc94:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i82: ; preds = %bb.al
  %i.fk = ashr exact i64 %i.fi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i83 = call i64 @llvm.umax.i64(i64 %i.fk, i64 1)
  %i.fl = add nsw i64 %.sroa.speculated.i.i.i.i83, %i.fk ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.fk
  %i.fn = call i64 @llvm.umin.i64(i64 %i.fl, i64 1152921504606846975)
  %i.fo = select i1 %i.fm, i64 1152921504606846975, i64 %i.fn ; 3 uses
  %.not.i.i.i.i84 = icmp ne i64 %i.fo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i84)
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #33
          to label %.noexc95 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117.loopexit ; 10 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i82
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fi
  %i.fs = ptrtoint ptr %i.ey to i64
  store i64 %i.fs, ptr %i.fr, align 8, !tbaa !785
  %.not10.i.i.i.i.i.i.i85 = icmp eq ptr %i.ff, %i.fb
  br i1 %.not10.i.i.i.i.i.i.i85, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i90, label %.lr.ph.i.i.i.i.i.i.i86.preheader

.lr.ph.i.i.i.i.i.i.i86.preheader:                 ; preds = %.noexc95
  %11 = add i64 %i.fg, -8
  %12 = sub i64 %11, %i.fh                        ; 2 uses
  %i.ft = lshr i64 %12, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %12, 56
  br i1 %min.iters.check298, label %.lr.ph.i.i.i.i.i.i.i86.preheader338, label %vector.memcheck293

vector.memcheck293:                               ; preds = %.lr.ph.i.i.i.i.i.i.i86.preheader
  %scevgep = getelementptr i8, ptr %i.fq, i64 8
  %i.fv = add i64 %i.fg, -8
  %i.fw = sub i64 %i.fv, %i.fh
  %i.fx = and i64 %i.fw, -8                       ; 2 uses
  %scevgep294 = getelementptr i8, ptr %scevgep, i64 %i.fx
  %scevgep295 = getelementptr i8, ptr %i.ff, i64 8
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.fx
  %bound0 = icmp ult ptr %i.fq, %scevgep296
  %bound1 = icmp ult ptr %i.ff, %scevgep294
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i86.preheader338, label %vector.ph299

vector.ph299:                                     ; preds = %vector.memcheck293
  %n.vec301 = and i64 %i.fu, 4611686018427387900  ; 3 uses
  %i.fy = shl i64 %n.vec301, 3                    ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fq, i64 %i.fy  ; 2 uses
  %i.ga = getelementptr i8, ptr %i.ff, i64 %i.fy
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph299
  %index303 = phi i64 [ 0, %vector.ph299 ], [ %index.next308, %vector.body302 ] ; 2 uses
  %i.gb = shl i64 %index303, 3                    ; 2 uses
  %next.gep304 = getelementptr i8, ptr %i.fq, i64 %i.gb ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.ff, i64 %i.gb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.gc = getelementptr i8, ptr %next.gep305, i64 16
  %wide.load306 = load <2 x i64>, ptr %next.gep305, align 8, !tbaa !785, !alias.scope !1624, !noalias !1619
  %wide.load307 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !785, !alias.scope !1624, !noalias !1619
  %i.gd = getelementptr i8, ptr %next.gep304, i64 16
  store <2 x i64> %wide.load306, ptr %next.gep304, align 8, !tbaa !785, !alias.scope !1627, !noalias !1624
  store <2 x i64> %wide.load307, ptr %i.gd, align 8, !tbaa !785, !alias.scope !1627, !noalias !1624
  %i.ge = getelementptr i8, ptr %next.gep305, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep305, align 8, !tbaa !785, !alias.scope !1624, !noalias !1619
  store <2 x ptr> splat (ptr null), ptr %i.ge, align 8, !tbaa !785, !alias.scope !1624, !noalias !1619
  %index.next308 = add nuw i64 %index303, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.gf, label %middle.block309, label %vector.body302, !llvm.loop !1629

middle.block309:                                  ; preds = %vector.body302
  %cmp.n310 = icmp eq i64 %i.fu, %n.vec301
  br i1 %cmp.n310, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i90, label %.lr.ph.i.i.i.i.i.i.i86.preheader338

.lr.ph.i.i.i.i.i.i.i86.preheader338:              ; preds = %vector.memcheck293, %.lr.ph.i.i.i.i.i.i.i86.preheader, %middle.block309
  %.012.i.i.i.i.i.i.i87.ph = phi ptr [ %i.fq, %vector.memcheck293 ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i86.preheader ], [ %i.fz, %middle.block309 ]
  %.0911.i.i.i.i.i.i.i88.ph = phi ptr [ %i.ff, %vector.memcheck293 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i86.preheader ], [ %i.ga, %middle.block309 ]
  br label %.lr.ph.i.i.i.i.i.i.i86

.lr.ph.i.i.i.i.i.i.i86:                           ; preds = %.lr.ph.i.i.i.i.i.i.i86.preheader338, %.lr.ph.i.i.i.i.i.i.i86
  %.012.i.i.i.i.i.i.i87 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i.i86 ], [ %.012.i.i.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i.i.i86.preheader338 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i88 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i86 ], [ %.0911.i.i.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i.i.i86.preheader338 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.gg = load i64, ptr %.0911.i.i.i.i.i.i.i88, align 8, !tbaa !785, !alias.scope !1622, !noalias !1619
  store i64 %i.gg, ptr %.012.i.i.i.i.i.i.i87, align 8, !tbaa !785, !alias.scope !1619, !noalias !1622
  store ptr null, ptr %.0911.i.i.i.i.i.i.i88, align 8, !tbaa !785, !alias.scope !1622, !noalias !1619
  %i.gh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i88, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i87, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i89 = icmp eq ptr %i.gh, %i.fb
  br i1 %.not.i.i.i.i.i.i.i89, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i90, label %.lr.ph.i.i.i.i.i.i.i86, !llvm.loop !1630

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i90: ; preds = %.lr.ph.i.i.i.i.i.i.i86, %middle.block309, %.noexc95
  %.0.lcssa.i.i.i.i.i.i.i91 = phi ptr [ %i.fq, %.noexc95 ], [ %i.fz, %middle.block309 ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i86 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i91, i64 8
  %.not.i23.i.i.i92 = icmp eq ptr %i.ff, null
  br i1 %.not.i23.i.i.i92, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i93, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i90
  call void @_ZdlPv(ptr noundef nonnull %i.ff) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i93

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i93: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i90
  store ptr %i.fq, ptr %i.bj, align 8, !tbaa !781
  store ptr %i.gj, ptr %i.bk, align 8, !tbaa !784
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fo
  store ptr %i.gk, ptr %i.bo, align 8, !tbaa !1551
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit102

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit102: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i93, %bb.ak
  %i.gl = invoke i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cs)
          to label %bb.ao unwind label %bb.ay

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit102
  invoke void @_ZN6duckdb10LogicalGet11AddColumnIdEm(ptr noundef nonnull align 8 dereferenceable(1104) %1, i64 noundef %i.gl)
          to label %bb.ap unwind label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.gm = load ptr, ptr %i.j, align 8, !tbaa !1532 ; 6 uses
  %i.gn = load ptr, ptr %i.bp, align 8, !tbaa !1193
  %.not.i103 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not.i103, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.go = load i64, ptr %i.bq, align 8, !tbaa !19
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !19
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gp, ptr %i.j, align 8, !tbaa !1532
  br label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67

bb.ar:                                            ; preds = %bb.ap
  %i.gq = load ptr, ptr %i.i, align 8, !tbaa !647 ; 7 uses
  %i.gr = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64               ; 3 uses
  %i.gt = sub i64 %i.gr, %i.gs                    ; 3 uses
  %i.gu = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.gu, label %bb.as, label %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc104 unwind label %.loopexit.split-lp

.noexc104:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.gv = ashr exact i64 %i.gt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gw = add nsw i64 %.sroa.speculated.i.i.i, %i.gv ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gv
  %i.gy = call i64 @llvm.umin.i64(i64 %i.gw, i64 1152921504606846975)
  %i.gz = select i1 %i.gx, i64 1152921504606846975, i64 %i.gy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ha = shl nuw nsw i64 %i.gz, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #33
          to label %.noexc105 unwind label %.loopexit148 ; 8 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gt
  %i.hd = load i64, ptr %i.bq, align 8, !tbaa !19
  store i64 %i.hd, ptr %i.hc, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.gq, %i.gm
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc105
  %i.he = ptrtoaddr ptr %i.hb to i64
  %13 = add i64 %i.gr, -8
  %14 = sub i64 %13, %i.gs                        ; 2 uses
  %i.hf = lshr i64 %14, 3
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 24
  %i.hh = sub i64 %i.he, %i.gs
  %diff.check = icmp ult i64 %i.hh, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader337, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.hg, 4611686018427387900     ; 3 uses
  %i.hi = shl i64 %n.vec, 3                       ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hb, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gq, i64 %i.hi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hb, i64 %i.hl ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.gq, i64 %i.hl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %i.hm = getelementptr i8, ptr %next.gep290, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep290, align 8, !tbaa !19, !alias.scope !1634, !noalias !1631
  %wide.load291 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !19, !alias.scope !1634, !noalias !1631
  %i.hn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !1631, !noalias !1634
  store <2 x i64> %wide.load291, ptr %i.hn, align 8, !tbaa !19, !alias.scope !1631, !noalias !1634
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !1636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader337

.lr.ph.i.i.i.i.i.i.preheader337:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hj, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.hk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader337, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader337 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader337 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %i.hp = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1634, !noalias !1631
  store i64 %i.hp, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1631, !noalias !1634
  %i.hq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hq, %i.gm
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1637

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc105
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.hb, %.noexc105 ], [ %i.hj, %middle.block ], [ %i.hr, %.lr.ph.i.i.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.gq) #31
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.hb, ptr %i.i, align 8, !tbaa !647
  store ptr %i.hs, ptr %i.j, align 8, !tbaa !1532
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gz
  store ptr %i.ht, ptr %i.bp, align 8, !tbaa !1193
  br label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67

_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67: ; preds = %bb.q, %bb.n, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aq, %bb.p
  %.sroa.0137.0 = load ptr, ptr %.sroa.0137.0190, align 8, !tbaa !118 ; 2 uses
  %.not144 = icmp eq ptr %.sroa.0137.0, null
  br i1 %.not144, label %.loopexit147, label %bb.m

.loopexit148:                                     ; preds = %.loopexit, %_ZNKSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.s
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.t
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111.loopexit.split-lp: ; preds = %bb.ab
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111.loopexit
  %lpad.phi151 = phi { ptr, i32 } [ %lpad.loopexit149, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111.loopexit ], [ %lpad.loopexit.split-lp150, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111.loopexit.split-lp ]
  %i.hw = load ptr, ptr %i.db, align 8, !tbaa !7
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(88) %i.db) #30, !inline_history !979
  br label %.body

bb.aw:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.ae, %bb.ad
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i82
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117.loopexit.split-lp: ; preds = %bb.am
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117.loopexit
  %lpad.phi154 = phi { ptr, i32 } [ %lpad.loopexit152, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117.loopexit ], [ %lpad.loopexit.split-lp153, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117.loopexit.split-lp ]
  %i.ib = load ptr, ptr %i.ey, align 8, !tbaa !7
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(88) %i.ey) #30, !inline_history !979
  br label %.body

bb.ay:                                            ; preds = %bb.ao, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit102
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit147:                                     ; preds = %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit67, %._crit_edge.thread, %._crit_edge
  %i.if = load ptr, ptr %i.f, align 8, !tbaa !958 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i118

.lr.ph.i.i.i.i118:                                ; preds = %.loopexit147, %.lr.ph.i.i.i.i118
  %.06.i.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i.i118 ], [ %i.if, %.loopexit147 ] ; 2 uses
  %i.ig = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !118 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #31
  %.not.i.i.i.i119 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i119, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i118, !llvm.loop !959

_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i118, %.loopexit147
  %i.ih = load ptr, ptr %8, align 8, !tbaa !948
  %i.ii = load i64, ptr %i.e, align 8, !tbaa !947
  %i.ij = shl i64 %i.ii, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ih, i8 0, i64 %i.ij, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.ik = load ptr, ptr %8, align 8, !tbaa !948   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.d
  br i1 %i.il, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ik) #31
  br label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit148, %.loopexit.split-lp, %bb.ay, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111, %bb.x, %bb.av, %bb.au, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117, %bb.ai, %bb.ax, %bb.aw, %bb.k, %bb.l
  %.pn53.pn = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.av, %bb.l ], [ %.pn.i73, %bb.ai ], [ %i.ia, %bb.ax ], [ %i.ie, %bb.ay ], [ %.pn.i, %bb.x ], [ %i.hu, %bb.au ], [ %lpad.phi151, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit111 ], [ %i.hv, %bb.av ], [ %i.hz, %bb.aw ], [ %lpad.phi154, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit117 ], [ %lpad.loopexit, %.loopexit148 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn53.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1532
  %i.e = load ptr, ptr %0, align 8, !tbaa !647    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN6duckdb23ColumnDependencyManagerD2Ev:bb.a
  %.not.i.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i23, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i.i.i.i21, !llvm.loop !874

_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i21, %.lr.ph.i.i.i.i18
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !551
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !553
  %i.bn = shl i64 %i.bm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %i.bn, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !551 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 64
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24
  tail call void @_ZdlPv(ptr noundef %i.bo) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25: ; preds = %bb.g, %_ZNSt10_HashtableIN6duckdb12LogicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_24LogicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i24
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i19) #31
  %.not.i.i.i.i26 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i26, label %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27, label %.lr.ph.i.i.i.i18, !llvm.loop !1679

_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb12LogicalIndexESt13unordered_setIS4_NS3_24LogicalIndexHashFunctionESt8equal_toIS4_ESaIS4_EEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i25, %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit16
  %i.br = load ptr, ptr %0, align 8, !tbaa !545
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !547
  %i.bu = shl i64 %i.bt, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.br, i8 0, i64 %i.bu, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.bv = load ptr, ptr %0, align 8, !tbaa !545   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit28, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27
  tail call void @_ZdlPv(ptr noundef %i.bv) #31
  br label %_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit28

_ZNSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEED2Ev.exit28: ; preds = %_ZNSt10_HashtableIN6duckdb12LogicalIndexESt4pairIKS1_St13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EEESaISA_ENSt8__detail10_Select1stES7_S5_NSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i27, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23ColumnDependencyManager18AddGeneratedColumnERKNS_16ColumnDefinitionERKNS_10ColumnListE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(105) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.181", align 8 ; 10 uses
  %4 = alloca %"class.duckdb::vector.836", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb16ColumnDefinition21GetListOfDependenciesERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %3, align 8, !tbaa !658    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !658  ; 2 uses
  %.not49 = icmp eq ptr %i.a, %i.c
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit, %bb.b
  %i.f = phi ptr [ null, %bb.b ], [ %i.ba, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  store ptr %i.f, ptr %4, align 8
  %i.g = invoke i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %1)
          to label %bb.t unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.az, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.032.050 = phi ptr [ %i.a, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.ba, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit ] ; 20 uses
  %i.l = invoke noundef zeroext i1 @_ZNK6duckdb10ColumnList12ColumnExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.032.050)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.k, ptr %4, align 8
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.93, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.032.050)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.ab unwind label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %4, align 8
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %.018 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.q) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.018, label %bb.k, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.018, label %bb.k, label %bb.y

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #30
  br label %bb.y

bb.l:                                             ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.032.050)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.u = invoke i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %i.t)
          to label %bb.n unwind label %.loopexit  ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %i.u, ptr %i.j, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.d, align 8, !tbaa !519
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.w = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.q, label %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  store ptr %i.k, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #33
          to label %.noexc26 unwind label %.loopexit ; 8 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.u, ptr %i.ah, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc26
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %7 = add i64 %i.w, -8
  %8 = sub i64 %7, %i.x                           ; 2 uses
  %i.aj = lshr i64 %8, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.al = sub i64 %i.ai, %i.x
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ag, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.k, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ap ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.k, i64 %i.ap ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %i.aq = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep102, align 8, !tbaa !19, !alias.scope !1683, !noalias !1680
  %wide.load103 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !19, !alias.scope !1683, !noalias !1680
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !1680, !noalias !1683
  store <2 x i64> %wide.load103, ptr %i.ar, align 8, !tbaa !19, !alias.scope !1680, !noalias !1683
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1685

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader105

.lr.ph.i.i.i.i.i.i.i.preheader105:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader105, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1683, !noalias !1680
  store i64 %i.at, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1680, !noalias !1683
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1686

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc26
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc26 ], [ %i.an, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !519
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !520
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.o
  %i.ay = phi ptr [ %i.ax, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.i, %bb.o ]
  %i.az = phi ptr [ %i.aw, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.v, %bb.o ]
  %i.ba = phi ptr [ %i.ag, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.k, %bb.o ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.050, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d

bb.s:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %4, align 8
  br label %bb.y

.loopexit:                                        ; preds = %bb.m, %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %4, align 8
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb23ColumnDependencyManager18AddGeneratedColumnENS_12LogicalIndexERKNS_6vectorIS1_Lb1ESaIS1_EEEb(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.f) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bd = load ptr, ptr %3, align 8, !tbaa !660   ; 3 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !659 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bd, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit ] ; 3 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bf) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bi, %i.be
  br i1 %.not.i.i.i27, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !663

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !660
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit
  %i.bj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.x:                                             ; preds = %bb.t, %._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %i.bl = phi ptr [ %i.f, %bb.x ], [ %i.k, %bb.i ], [ %i.k, %bb.k ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.s ], [ %i.k, %.loopexit ], [ %i.k, %.loopexit.split-lp ] ; 2 uses
  %.pn21.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.n, %bb.i ], [ %.pn37, %bb.k ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bc, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29, %bb.c
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit29 ], [ %i.h, %bb.c ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn21.pn.pn.pn

bb.ab:                                            ; preds = %bb.h
  unreachable
}

declare void @_ZNK6duckdb16ColumnDefinition21GetListOfDependenciesERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1438", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1687
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1687
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !267, !noalias !1687 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !1687 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
end_hunk_19
begin_hunk_20_@_ZN6duckdb23ColumnDependencyManager16CleanupInternalsEm:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.au, %bb.g ], [ %i.ah, %bb.f ]
  %i.au = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !118 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit101, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !506 ; 2 uses
  %i.ax = urem i64 %i.aw, %i.ac
  %.not19.i.i.i.i.i = icmp eq i64 %i.ax, %i.ad
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !854

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %.loopexit101, !llvm.loop !854

.loopexit102:                                     ; preds = %bb.g, %bb.d, %bb.f
  %i.ay = add i64 %.024119, 1
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit

.loopexit105:                                     ; preds = %bb.b, %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit101:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader100, %..loopexit_crit_edge21.i.i.i.i.i, %bb.e
  %i.az = icmp ugt i64 %.026117, %i.m
  br i1 %i.az, label %bb.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %.loopexit101
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !549
  %.not.not.i.i.i31 = icmp eq i64 %i.ba, 0
  br i1 %.not.not.i.i.i31, label %.preheader128, label %bb.k

.preheader128:                                    ; preds = %bb.i, %bb.j
  %.sroa.06.0.in.i.i.i39 = phi ptr [ %.sroa.06.0.i.i.i40, %bb.j ], [ %i.s, %bb.i ]
  %.sroa.06.0.i.i.i40 = load ptr, ptr %.sroa.06.0.in.i.i.i39, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %.sroa.06.0.i.i.i40, null
  br i1 %.not.i.i.i41, label %.loopexit96, label %bb.j

bb.j:                                             ; preds = %.preheader128
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i40, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !847
  %i.bd = icmp eq i64 %.026117, %i.bc
  br i1 %i.bd, label %.loopexit, label %.preheader128, !llvm.loop !848

bb.k:                                             ; preds = %bb.i
  %i.be = load i64, ptr %i.r, align 8, !tbaa !547 ; 2 uses
  %i.bf = urem i64 %.026117, %i.be                ; 2 uses
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !545
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !508 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i32, label %.loopexit96, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !118 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !506
  %i.bn = icmp eq i64 %.026117, %i.bm
  %i.bo = load i64, ptr %i.bk, align 8
  %i.bp = icmp eq i64 %.026117, %i.bo
  %i.bq = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %i.bq, label %.loopexit, label %.lr.ph.i.i.i.i.i33

bb.m:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bs = icmp eq i64 %.026117, %i.by
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = icmp eq i64 %.026117, %i.bt
  %i.bv = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %i.bv, label %.loopexit, label %.lr.ph.i.i.i.i.i33, !llvm.loop !849

.lr.ph.i.i.i.i.i33:                               ; preds = %bb.l, %bb.m
  %.020.i.i.i.i.i34 = phi ptr [ %i.bw, %bb.m ], [ %i.bj, %bb.l ]
  %i.bw = load ptr, ptr %.020.i.i.i.i.i34, align 8, !tbaa !118 ; 4 uses
  %.not18.i.i.i.i.i35 = icmp eq ptr %i.bw, null
  br i1 %.not18.i.i.i.i.i35, label %.loopexit96, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !506 ; 2 uses
  %i.bz = urem i64 %i.by, %i.be
  %.not19.i.i.i.i.i36 = icmp eq i64 %i.bz, %i.bf
  br i1 %.not19.i.i.i.i.i36, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i.i37, !llvm.loop !849

..loopexit_crit_edge21.i.i.i.i.i37:               ; preds = %bb.n
  br label %.loopexit96, !llvm.loop !849

.loopexit96:                                      ; preds = %.lr.ph.i.i.i.i.i33, %.preheader128, %..loopexit_crit_edge21.i.i.i.i.i37, %bb.k
  %i.ca = load i64, ptr %i.t, align 8, !tbaa !549
  %.not.not.i.i.i42 = icmp eq i64 %i.ca, 0
  br i1 %.not.not.i.i.i42, label %.preheader125, label %bb.p

.preheader125:                                    ; preds = %.loopexit96, %bb.o
  %.sroa.06.0.in.i.i.i50 = phi ptr [ %.sroa.06.0.i.i.i51, %bb.o ], [ %i.v, %.loopexit96 ]
  %.sroa.06.0.i.i.i51 = load ptr, ptr %.sroa.06.0.in.i.i.i50, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %.sroa.06.0.i.i.i51, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit, label %bb.o

bb.o:                                             ; preds = %.preheader125
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i51, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !847
  %i.cd = icmp eq i64 %.026117, %i.cc
  br i1 %i.cd, label %.loopexit, label %.preheader125, !llvm.loop !848

bb.p:                                             ; preds = %.loopexit96
  %i.ce = load i64, ptr %i.u, align 8, !tbaa !547 ; 2 uses
  %i.cf = urem i64 %.026117, %i.ce                ; 2 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !545
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !508 ; 2 uses
  %.not.i.i.i.i.i43 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i43, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !118 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !506
  %i.cn = icmp eq i64 %.026117, %i.cm
  %i.co = load i64, ptr %i.ck, align 8
  %i.cp = icmp eq i64 %.026117, %i.co
  %i.cq = select i1 %i.cn, i1 %i.cp, i1 false
  br i1 %i.cq, label %.loopexit, label %.lr.ph.i.i.i.i.i44

bb.r:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cs = icmp eq i64 %.026117, %i.cy
  %i.ct = load i64, ptr %i.cr, align 8
  %i.cu = icmp eq i64 %.026117, %i.ct
  %i.cv = select i1 %i.cs, i1 %i.cu, i1 false
  br i1 %i.cv, label %.loopexit, label %.lr.ph.i.i.i.i.i44, !llvm.loop !849

.lr.ph.i.i.i.i.i44:                               ; preds = %bb.q, %bb.r
  %.020.i.i.i.i.i45 = phi ptr [ %i.cw, %bb.r ], [ %i.cj, %bb.q ]
  %i.cw = load ptr, ptr %.020.i.i.i.i.i45, align 8, !tbaa !118 ; 4 uses
  %.not18.i.i.i.i.i46 = icmp eq ptr %i.cw, null
  br i1 %.not18.i.i.i.i.i46, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i44
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !506 ; 2 uses
  %i.cz = urem i64 %i.cy, %i.ce
  %.not19.i.i.i.i.i47 = icmp eq i64 %i.cz, %i.cf
  br i1 %.not19.i.i.i.i.i47, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i.i48, !llvm.loop !849

..loopexit_crit_edge21.i.i.i.i.i48:               ; preds = %bb.s
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit, !llvm.loop !849

.loopexit:                                        ; preds = %bb.m, %bb.j, %bb.r, %bb.o, %bb.q, %bb.l
  %.not.i = icmp eq ptr %.sroa.9.0115, %.sroa.13.0114
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  store i64 %.026117, ptr %.sroa.9.0115, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.9.0115, i64 8
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %.loopexit
  %i.db = ptrtoint ptr %.sroa.9.0115 to i64       ; 2 uses
  %i.dc = ptrtoint ptr %.sroa.075.0116 to i64     ; 3 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.v, label %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i.i53 = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i53)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #33
          to label %.noexc55 unwind label %.loopexit105 ; 8 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  store i64 %.026117, ptr %i.dm, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.075.0116, %.sroa.9.0115
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc55
  %i.dn = ptrtoaddr ptr %i.dl to i64
  %3 = add i64 %i.db, -8
  %4 = sub i64 %3, %i.dc                          ; 2 uses
  %i.do = lshr i64 %4, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 24
  %i.dq = sub i64 %i.dn, %i.dc
  %diff.check = icmp ult i64 %i.dq, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader174, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dp, 4611686018427387900     ; 3 uses
  %i.dr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dl, i64 %i.dr  ; 2 uses
  %i.dt = getelementptr i8, ptr %.sroa.075.0116, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dl, i64 %i.du ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.sroa.075.0116, i64 %i.du ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.dv = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !19, !alias.scope !1705, !noalias !1702
  %wide.load172 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !19, !alias.scope !1705, !noalias !1702
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !1702, !noalias !1705
  store <2 x i64> %wide.load172, ptr %i.dw, align 8, !tbaa !19, !alias.scope !1702, !noalias !1705
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !1707

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader174

.lr.ph.i.i.i.i.i.i.preheader174:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.075.0116, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader174, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader174 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader174 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.dy = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1705, !noalias !1702
  store i64 %i.dy, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1702, !noalias !1705
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dz, %.sroa.9.0115
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1708

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc55
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dl, %.noexc55 ], [ %i.ds, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %.sroa.075.0116, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.075.0116) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i44, %.preheader125, %bb.p, %..loopexit_crit_edge21.i.i.i.i.i48, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.t, %.loopexit101, %.loopexit102
  %.sroa.13.1 = phi ptr [ %.sroa.13.0114, %.loopexit102 ], [ %.sroa.13.0114, %bb.t ], [ %.sroa.13.0114, %.loopexit101 ], [ %i.ec, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0114, %..loopexit_crit_edge21.i.i.i.i.i48 ], [ %.sroa.13.0114, %.preheader125 ], [ %.sroa.13.0114, %bb.p ], [ %.sroa.13.0114, %.lr.ph.i.i.i.i.i44 ]
  %.sroa.9.1 = phi ptr [ %.sroa.9.0115, %.loopexit102 ], [ %i.da, %bb.t ], [ %.sroa.9.0115, %.loopexit101 ], [ %i.eb, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.0115, %..loopexit_crit_edge21.i.i.i.i.i48 ], [ %.sroa.9.0115, %.preheader125 ], [ %.sroa.9.0115, %bb.p ], [ %.sroa.9.0115, %.lr.ph.i.i.i.i.i44 ] ; 3 uses
  %.sroa.075.1 = phi ptr [ %.sroa.075.0116, %.loopexit102 ], [ %.sroa.075.0116, %bb.t ], [ %.sroa.075.0116, %.loopexit101 ], [ %i.dl, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.075.0116, %..loopexit_crit_edge21.i.i.i.i.i48 ], [ %.sroa.075.0116, %.preheader125 ], [ %.sroa.075.0116, %bb.p ], [ %.sroa.075.0116, %.lr.ph.i.i.i.i.i44 ] ; 6 uses
  %.125 = phi i64 [ %i.ay, %.loopexit102 ], [ %.024119, %bb.t ], [ %.024119, %.loopexit101 ], [ %.024119, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.024119, %..loopexit_crit_edge21.i.i.i.i.i48 ], [ %.024119, %.preheader125 ], [ %.024119, %bb.p ], [ %.024119, %.lr.ph.i.i.i.i.i44 ]
  %i.ed = add nuw i64 %.026117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %2
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !1709

._crit_edge:                                      ; preds = %bb.z, %.preheader.thread, %.preheader
  %.sroa.075.0.lcssa152 = phi ptr [ null, %.preheader.thread ], [ %.sroa.075.1, %.preheader ], [ %.sroa.075.1, %bb.z ] ; 2 uses
  %i.ee = phi ptr [ %i.b, %.preheader.thread ], [ %i.i, %.preheader ], [ %i.i, %bb.z ]
  %i.ef = phi ptr [ %i.c, %.preheader.thread ], [ %i.j, %.preheader ], [ %i.j, %bb.z ] ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !554 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i ], [ %i.eg, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %.06.i.i.i, align 8, !tbaa !118 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #31
  %.not.i.i.i56 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i56, label %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !874

_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %._crit_edge
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !551
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !553
  %i.el = shl i64 %i.ek, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ei, i8 0, i64 %i.el, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  %.not.i.i.i57 = icmp eq ptr %.sroa.075.0.lcssa152, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.075.0.lcssa152) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit: ; preds = %_ZNSt13unordered_setIN6duckdb12LogicalIndexENS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EE5clearEv.exit, %bb.x
  ret void

.lr.ph123:                                        ; preds = %.preheader, %bb.z
  %.sroa.062.0122 = phi ptr [ %i.eq, %bb.z ], [ %.sroa.075.1, %.preheader ] ; 3 uses
  %i.em = load i64, ptr %.sroa.062.0122, align 8, !tbaa !847 ; 2 uses
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_12LogicalIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.em)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %.lr.ph123
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !847
  %i.ep = sub i64 %i.em, %i.eo
  %.sroa.0.0.copyload = load i64, ptr %.sroa.062.0122, align 8, !tbaa !19
  invoke void @_ZN6duckdb23ColumnDependencyManager12AdjustSingleENS_12LogicalIndexEm(ptr noundef nonnull align 8 dereferenceable(224) %1, i64 %.sroa.0.0.copyload, i64 noundef %i.ep)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.062.0122, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eq, %.sroa.9.1
  br i1 %.not, label %._crit_edge, label %.lr.ph123

bb.aa:                                            ; preds = %bb.y, %.lr.ph123
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit105, %.loopexit.split-lp, %bb.aa
  %.sroa.075.0109 = phi ptr [ %.sroa.075.1, %bb.aa ], [ %.sroa.075.0116, %.loopexit105 ], [ %.sroa.075.0116, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.er, %bb.aa ], [ %lpad.loopexit, %.loopexit105 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.es = load ptr, ptr %0, align 8, !tbaa !515   ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit59, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdlPv(ptr noundef nonnull %i.es) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit59

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit59: ; preds = %bb.ac, %bb.ab
  %.not.i.i.i60 = icmp eq ptr %.sroa.075.0109, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit61, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit59
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.075.0109) #31
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit61

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit61: ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit59, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb23ColumnDependencyManager15GetDependenciesENS_12LogicalIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i64 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !118, !nonnull !71, !noundef !71 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !847
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNKSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEE4findERS9_.exit, label %bb.c, !llvm.loop !848

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !547  ; 2 uses
  %i.j = urem i64 %1, %i.i                        ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !545
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !508, !nonnull !71, !noundef !71
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !506
  %i.r = icmp eq i64 %1, %i.q
  %i.s = load i64, ptr %i.o, align 8
  %i.t = icmp eq i64 %1, %i.s
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNKSt13unordered_mapIN6duckdb12LogicalIndexESt13unordered_setIS1_NS0_24LogicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EES3_S5_SaISt4pairIKS1_S7_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.n, %bb.d ]
  %i.v = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !118, !nonnull !71, !noundef !71 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !506  ; 2 uses
  %i.y = urem i64 %i.x, %i.i
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.j
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
end_hunk_20
begin_hunk_21_@_ZN6duckdb9make_uniqINS_19AlterForeignKeyInfoEJNS_14AlterEntryDataERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6vectorIS8_Lb1ESaIS8_EEESD_RNSA_INS_13PhysicalIndexELb1ESaISE_EEESH_RNS_19AlterForeignKeyTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !20
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !20
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre76 = load i64, ptr %.phi.trans.insert75, align 8, !tbaa !18
  br label %_ZN6duckdb14AlterEntryDataC2EOS0_.exit

_ZN6duckdb14AlterEntryDataC2EOS0_.exit:           ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i
  %i.an = phi i64 [ %i.aj, %bb.d ], [ %.pre76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !18
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !15
  store i64 0, ptr %i.ao, align 8, !tbaa !18
  store i8 0, ptr %i.ag, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !317
  store i8 %i.as, ptr %i.aq, align 8, !tbaa !317
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.at, ptr %9, align 8, !tbaa !12
  %i.au = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !19
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6duckdb14AlterEntryDataC2EOS0_.exit
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.w     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ay, ptr %9, align 8, !tbaa !15
  %i.az = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.az, ptr %i.at, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN6duckdb14AlterEntryDataC2EOS0_.exit
  %i.ba = phi ptr [ %i.ay, %.noexc ], [ %i.at, %_ZN6duckdb14AlterEntryDataC2EOS0_.exit ] ; 2 uses
  switch i64 %i.aw, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !20
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !18
  %i.be = load ptr, ptr %9, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !659 ; 3 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !660   ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i, label %.noexc20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = icmp ugt i64 %i.bl, 9223372036854775776
  br i1 %i.bm, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !37

.noexc.i.i.i:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #33
          to label %.noexc20 unwind label %bb.x

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.g
  %i.bo = phi ptr [ null, %bb.g ], [ %i.bn, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.bo, ptr %10, align 8, !tbaa !660
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !659
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !661
  %i.bs = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bi, ptr %i.bh, ptr noundef %i.bo)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %10, align 8, !tbaa !660  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #31
  br label %.body

bb.k:                                             ; preds = %.noexc20
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !659
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !659 ; 3 uses
  %i.bx = load ptr, ptr %4, align 8, !tbaa !660   ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i21 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i.i21, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = icmp ugt i64 %i.ca, 9223372036854775776
  br i1 %i.cb, label %.noexc.i.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i22, !prof !37

.noexc.i.i.i25:                                   ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc26 unwind label %bb.y

.noexc26:                                         ; preds = %.noexc.i.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i22: ; preds = %bb.l
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #33
          to label %.noexc27 unwind label %bb.y

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i22, %bb.k
  %i.cd = phi ptr [ null, %bb.k ], [ %i.cc, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i22 ] ; 4 uses
  store ptr %i.cd, ptr %11, align 8, !tbaa !660
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !659
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !661
  %i.ch = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bx, ptr %i.bw, ptr noundef %i.cd)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %.noexc27
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %11, align 8, !tbaa !660  ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i23, label %.body28, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.cj) #31
  br label %.body28

bb.o:                                             ; preds = %.noexc27
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !659
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1532 ; 3 uses
  %i.cm = load ptr, ptr %5, align 8, !tbaa !647   ; 5 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i31 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i.i.i.i31, label %.noexc34.thread, label %bb.p

.noexc34.thread:                                  ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr null, i64 %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !1193
  br label %.loopexit70

bb.p:                                             ; preds = %bb.o
  %i.ct = icmp ugt i64 %i.cp, 9223372036854775800
  br i1 %i.ct, label %.noexc.i.i.i32, label %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i, !prof !37

.noexc.i.i.i32:                                   ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc33 unwind label %bb.z

.noexc33:                                         ; preds = %.noexc.i.i.i32
  unreachable

_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #33
          to label %.noexc34 unwind label %bb.z   ; 7 uses

.noexc34:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.cu, ptr %12, align 8, !tbaa !647
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !1532
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cp
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !1193
  %14 = add i64 %i.cn, -8
  %15 = sub i64 %14, %i.co                        ; 2 uses
  %i.cy = lshr i64 %15, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 56
  %i.da = ptrtoaddr ptr %i.cu to i64
  %i.db = sub i64 %i.da, %i.co
  %diff.check = icmp ult i64 %i.db, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc34
  %n.vec = and i64 %i.cz, 4611686018427387900     ; 3 uses
  %i.dc = shl i64 %n.vec, 3                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cu, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.cm, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.df ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.cm, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep117, align 8, !tbaa !19
  %wide.load118 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !19
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19
  store <2 x i64> %wide.load118, ptr %i.dh, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1892

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %.loopexit70, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc34, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.cu, %.noexc34 ], [ %i.dd, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.cm, %.noexc34 ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.dj = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !19
  store i64 %i.dj, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.cl
  br i1 %.not.i.i.i.i.i.i, label %.loopexit70, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1893

.loopexit70:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc34.thread
  %i.dm = phi ptr [ %i.cq, %.noexc34.thread ], [ %i.cv, %middle.block ], [ %i.cv, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc34.thread ], [ %i.dd, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.dm, align 8, !tbaa !1532
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1532 ; 3 uses
  %i.dp = load ptr, ptr %6, align 8, !tbaa !647   ; 5 uses
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i35 = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i.i.i.i.i35, label %.noexc45.thread, label %bb.q

.noexc45.thread:                                  ; preds = %.loopexit70
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr null, i64 %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !1193
  br label %.loopexit

bb.q:                                             ; preds = %.loopexit70
  %i.dw = icmp ugt i64 %i.ds, 9223372036854775800
  br i1 %i.dw, label %.noexc.i.i.i43, label %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i36, !prof !37

.noexc.i.i.i43:                                   ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc44 unwind label %bb.aa

.noexc44:                                         ; preds = %.noexc.i.i.i43
  unreachable

_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i36: ; preds = %bb.q
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #33
          to label %.noexc45 unwind label %bb.aa  ; 7 uses

.noexc45:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i36
  store ptr %i.dx, ptr %13, align 8, !tbaa !647
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !1532
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ds
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !1193
  %16 = add i64 %i.dq, -8
  %17 = sub i64 %16, %i.dr                        ; 2 uses
  %i.eb = lshr i64 %17, 3
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check123 = icmp ult i64 %17, 56
  %i.ed = ptrtoaddr ptr %i.dx to i64
  %i.ee = sub i64 %i.ed, %i.dr
  %diff.check121 = icmp ult i64 %i.ee, 32
  %or.cond140 = or i1 %min.iters.check123, %diff.check121
  br i1 %or.cond140, label %.lr.ph.i.i.i.i.i.i38.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.noexc45
  %n.vec126 = and i64 %i.ec, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec126, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dp, i64 %i.ef
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.ei = shl i64 %index128, 3                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.dp, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load131 = load <2 x i64>, ptr %next.gep130, align 8, !tbaa !19
  %wide.load132 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !19
  %i.ek = getelementptr i8, ptr %next.gep129, i64 16
  store <2 x i64> %wide.load131, ptr %next.gep129, align 8, !tbaa !19
  store <2 x i64> %wide.load132, ptr %i.ek, align 8, !tbaa !19
  %index.next133 = add nuw i64 %index128, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.el, label %middle.block134, label %vector.body127, !llvm.loop !1894

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.ec, %n.vec126
  br i1 %cmp.n135, label %.loopexit, label %.lr.ph.i.i.i.i.i.i38.preheader

.lr.ph.i.i.i.i.i.i38.preheader:                   ; preds = %.noexc45, %middle.block134
  %.09.i.i.i.i.i.i39.ph = phi ptr [ %i.dx, %.noexc45 ], [ %i.eg, %middle.block134 ]
  %.sroa.04.08.i.i.i.i.i.i40.ph = phi ptr [ %i.dp, %.noexc45 ], [ %i.eh, %middle.block134 ]
  br label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.preheader, %.lr.ph.i.i.i.i.i.i38
  %.09.i.i.i.i.i.i39 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i38 ], [ %.09.i.i.i.i.i.i39.ph, %.lr.ph.i.i.i.i.i.i38.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i40 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i38 ], [ %.sroa.04.08.i.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i.i38.preheader ] ; 2 uses
  %i.em = load i64, ptr %.sroa.04.08.i.i.i.i.i.i40, align 8, !tbaa !19
  store i64 %i.em, ptr %.09.i.i.i.i.i.i39, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i40, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i39, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i41 = icmp eq ptr %i.en, %i.do
  br i1 %.not.i.i.i.i.i.i41, label %.loopexit, label %.lr.ph.i.i.i.i.i.i38, !llvm.loop !1895

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i38, %middle.block134, %.noexc45.thread
  %i.ep = phi ptr [ %i.dt, %.noexc45.thread ], [ %i.dy, %middle.block134 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i38 ]
  %.0.lcssa.i.i.i.i.i.i42 = phi ptr [ null, %.noexc45.thread ], [ %i.eg, %middle.block134 ], [ %i.eo, %.lr.ph.i.i.i.i.i.i38 ]
  store ptr %.0.lcssa.i.i.i.i.i.i42, ptr %i.ep, align 8, !tbaa !1532
  %i.eq = load i8, ptr %7, align 1, !tbaa !298
  invoke void @_ZN6duckdb19AlterForeignKeyInfoC1ENS_14AlterEntryDataENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorIS7_Lb1ESaIS7_EEESA_NS8_INS_13PhysicalIndexELb1ESaISB_EEESD_NS_19AlterForeignKeyTypeE(ptr noundef nonnull align 8 dereferenceable(249) %i.b, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext %i.eq)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %.loopexit
  store ptr %i.b, ptr %0, align 8, !tbaa !293
  %i.er = load ptr, ptr %13, align 8, !tbaa !647  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPv(ptr noundef nonnull %i.er) #31
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit: ; preds = %bb.r, %bb.s
  %i.es = load ptr, ptr %12, align 8, !tbaa !647  ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit48, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.es) #31
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit48

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit48: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, %bb.t
  %i.et = load ptr, ptr %11, align 8, !tbaa !660  ; 3 uses
  %i.eu = load ptr, ptr %i.ce, align 8, !tbaa !659 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.et, %i.eu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit48, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ey, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.et, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit48 ] ; 3 uses
  %i.ev = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ev) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ey, %i.eu
  br i1 %.not.i.i.i49, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !663

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !660
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit48
  %i.ez = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.et, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit48 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ez) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.u
  %i.fa = load ptr, ptr %10, align 8, !tbaa !660  ; 3 uses
  %i.fb = load ptr, ptr %i.bp, align 8, !tbaa !659 ; 2 uses
  %.not4.i.i.i50 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not4.i.i.i50, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i58, label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i54
  %.05.i.i.i52 = phi ptr [ %i.ff, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i54 ], [ %i.fa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.fc = load ptr, ptr %.05.i.i.i52, align 8, !tbaa !15 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i52, i64 16
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53: ; preds = %.lr.ph.i.i.i51
  call void @_ZdlPv(ptr noundef %i.fc) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i54

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i54: ; preds = %.lr.ph.i.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i52, i64 32 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.ff, %i.fb
  br i1 %.not.i.i.i55, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i56, label %.lr.ph.i.i.i51, !llvm.loop !663

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i56: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i54
  %.pr.i57 = load ptr, ptr %10, align 8, !tbaa !660
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i58

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i58: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i56, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.fg = phi ptr [ %.pr.i57, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i56 ], [ %i.fa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i59 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i1.i59, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit61, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i58
  call void @_ZdlPv(ptr noundef nonnull %i.fg) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit61

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit61: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i58, %bb.v
  %i.fh = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.at
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit61
  call void @_ZdlPv(ptr noundef %i.fh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.fj = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ae
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.fj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fl = load ptr, ptr %i.o, align 8, !tbaa !15  ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.q
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.fl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.fn = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.c
  br i1 %i.fo, label %_ZN6duckdb14AlterEntryDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.fn) #31
  br label %_ZN6duckdb14AlterEntryDataD2Ev.exit

_ZN6duckdb14AlterEntryDataD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  ret void

bb.w:                                             ; preds = %.noexc.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.x:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i22, %.noexc.i.i.i25
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body28
end_hunk_21
