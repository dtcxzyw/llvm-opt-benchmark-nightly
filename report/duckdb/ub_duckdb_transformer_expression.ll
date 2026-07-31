inline.NumInlined: 4303
inline.NumDeleted: 1845
begin_hunk_0_@_ZN6duckdb11Transformer17TransformFuncCallERN17duckdb_libpgquery10PGFuncCallE:bb.a
          to label %bb.db unwind label %bb.de     ; 3 uses

bb.db:                                            ; preds = %bb.da
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 272 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !268 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 280
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !269 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 288
  %i.ld = load <2 x ptr>, ptr %i.kx, align 8, !tbaa !270
  store <2 x ptr> %i.ld, ptr %i.ky, align 8, !tbaa !270
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !271
  store ptr %i.lf, ptr %i.lc, align 8, !tbaa !271
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.kz, %i.lb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.db, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ll, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i ], [ %i.kz, %bb.db ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !23
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(56) %i.lh) #21, !inline_history !272
  br label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ll, %i.lb
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !273

_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i, %bb.db
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kz) #23
  br label %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.dc
  %i.lm = load ptr, ptr %49, align 8, !tbaa !266  ; 3 uses
  %.not.i362 = icmp eq ptr %i.lm, null
  br i1 %.not.i362, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i: ; preds = %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !23
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(40) %i.lm) #21, !inline_history !274
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.df

bb.dd:                                            ; preds = %bb.cw
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit365

bb.de:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = load ptr, ptr %49, align 8, !tbaa !266  ; 3 uses
  %.not.i363 = icmp eq ptr %i.ls, null
  br i1 %.not.i363, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit365, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i364

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i364: ; preds = %bb.de
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !23
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(40) %i.ls) #21, !inline_history !274
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit365

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit365: ; preds = %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i364, %bb.de, %bb.dd
  %.pn263 = phi { ptr, i32 } [ %i.lq, %bb.dd ], [ %i.lr, %bb.de ], [ %i.lr, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i364 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.hw

bb.df:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, %bb.cv
  %i.lw = load i8, ptr %i.d, align 1, !tbaa !237
  %i.lx = icmp eq i8 %i.lw, 110
  br i1 %i.lx, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.ly = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.dh unwind label %bb.cs     ; 3 uses

bb.dh:                                            ; preds = %bb.dg
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 152 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !36 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 160
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !39 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 168
  %i.me = load <2 x ptr>, ptr %31, align 16, !tbaa !127
  store <2 x ptr> %i.me, ptr %i.lz, align 8, !tbaa !127
  %i.mf = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.mg = load ptr, ptr %i.mf, align 16, !tbaa !40
  store ptr %i.mg, ptr %i.md, align 8, !tbaa !40
  %.not4.i.i.i.i.i.i366 = icmp eq ptr %i.ma, %i.mc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i366, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i367

.lr.ph.i.i.i.i.i.i367:                            ; preds = %bb.dh, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i368 = phi ptr [ %i.ml, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ma, %bb.dh ] ; 2 uses
  %i.mh = load ptr, ptr %.05.i.i.i.i.i.i368, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i367
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !23
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8
  call void %i.mk(ptr noundef nonnull align 8 dereferenceable(56) %i.mh) #21, !inline_history !275
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i367
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i368, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i369 = icmp eq ptr %i.ml, %i.mc
  br i1 %.not.i.i.i.i.i.i369, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i367, !llvm.loop !89

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %bb.dh
  %.not.i.i1.i.i.i.i370 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i1.i.i.i.i370, label %bb.ev, label %bb.di

bb.di:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ma) #23
  br label %bb.ev

bb.dj:                                            ; preds = %bb.df
  %i.mm = load ptr, ptr %31, align 16, !tbaa !127
  %i.mn = load ptr, ptr %i.ew, align 8, !tbaa !127
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.dl unwind label %bb.cs     ; 3 uses

bb.dl:                                            ; preds = %bb.dk
  %i.mq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 0)
          to label %bb.dm unwind label %bb.cs     ; 4 uses

bb.dm:                                            ; preds = %bb.dl
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 152 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 160 ; 3 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !39 ; 6 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 168 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.mt, %i.mv
  br i1 %.not.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mw = load i64, ptr %i.mq, align 8, !tbaa !19
  store i64 %i.mw, ptr %i.mt, align 8, !tbaa !19
  store ptr null, ptr %i.mq, align 8, !tbaa !19
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store ptr %i.mx, ptr %i.ms, align 8, !tbaa !39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.do:                                            ; preds = %bb.dm
  %i.my = load ptr, ptr %i.mr, align 8, !tbaa !36 ; 10 uses
  %i.mz = ptrtoint ptr %i.mt to i64               ; 3 uses
  %i.na = ptrtoint ptr %i.my to i64               ; 3 uses
  %i.nb = sub i64 %i.mz, %i.na                    ; 3 uses
  %i.nc = icmp eq i64 %i.nb, 9223372036854775800
  br i1 %i.nc, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.do
  %i.nd = ashr exact i64 %i.nb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nd, i64 1)
  %i.ne = add nsw i64 %.sroa.speculated.i.i.i.i, %i.nd ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %i.nd
  %i.ng = call i64 @llvm.umin.i64(i64 %i.ne, i64 1152921504606846975)
  %i.nh = select i1 %i.nf, i64 1152921504606846975, i64 %i.ng ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.nh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ni = shl nuw nsw i64 %i.nh, 3
  %i.nj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ni) #22
          to label %.noexc373 unwind label %bb.cs ; 10 uses

.noexc373:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nb
  %i.nl = load i64, ptr %i.mq, align 8, !tbaa !19
  store i64 %i.nl, ptr %i.nk, align 8, !tbaa !19
  store ptr null, ptr %i.mq, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.my, %i.mt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc373
  %i.nm = sub i64 %i.mz, %i.na
  %i.nn = add i64 %i.nm, -8                       ; 2 uses
  %i.no = lshr i64 %i.nn, 3
  %i.np = add nuw nsw i64 %i.no, 1                ; 2 uses
  %min.iters.check1396 = icmp ult i64 %i.nn, 136
  br i1 %min.iters.check1396, label %.lr.ph.i.i.i.i.i.i.i.preheader1488, label %vector.memcheck1389

vector.memcheck1389:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.nq = add i64 %i.mz, -8
  %i.nr = sub i64 %i.nq, %i.na
  %i.ns = and i64 %i.nr, -8
  %i.nt = add i64 %i.ns, 8                        ; 2 uses
  %scevgep1390 = getelementptr i8, ptr %i.nj, i64 %i.nt
  %scevgep1391 = getelementptr i8, ptr %i.my, i64 %i.nt
  %bound01392 = icmp ult ptr %i.nj, %scevgep1391
  %bound11393 = icmp ult ptr %i.my, %scevgep1390
  %found.conflict1394 = and i1 %bound01392, %bound11393
  br i1 %found.conflict1394, label %.lr.ph.i.i.i.i.i.i.i.preheader1488, label %vector.ph1397

vector.ph1397:                                    ; preds = %vector.memcheck1389
  %n.vec1399 = and i64 %i.np, 4611686018427387900 ; 3 uses
  %i.nu = shl i64 %n.vec1399, 3                   ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nj, i64 %i.nu  ; 2 uses
  %i.nw = getelementptr i8, ptr %i.my, i64 %i.nu
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1397
  %index1401 = phi i64 [ 0, %vector.ph1397 ], [ %index.next1406, %vector.body1400 ] ; 2 uses
  %i.nx = shl i64 %index1401, 3                   ; 2 uses
  %next.gep1402 = getelementptr i8, ptr %i.nj, i64 %i.nx ; 2 uses
  %next.gep1403 = getelementptr i8, ptr %i.my, i64 %i.nx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ny = getelementptr i8, ptr %next.gep1403, i64 16
  %wide.load1404 = load <2 x i64>, ptr %next.gep1403, align 8, !tbaa !19, !alias.scope !281, !noalias !276
  %wide.load1405 = load <2 x i64>, ptr %i.ny, align 8, !tbaa !19, !alias.scope !281, !noalias !276
  %i.nz = getelementptr i8, ptr %next.gep1402, i64 16
  store <2 x i64> %wide.load1404, ptr %next.gep1402, align 8, !tbaa !19, !alias.scope !284, !noalias !281
  store <2 x i64> %wide.load1405, ptr %i.nz, align 8, !tbaa !19, !alias.scope !284, !noalias !281
  %i.oa = getelementptr i8, ptr %next.gep1403, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1403, align 8, !tbaa !19, !alias.scope !281, !noalias !276
  store <2 x ptr> splat (ptr null), ptr %i.oa, align 8, !tbaa !19, !alias.scope !281, !noalias !276
  %index.next1406 = add nuw i64 %index1401, 4     ; 2 uses
  %i.ob = icmp eq i64 %index.next1406, %n.vec1399
  br i1 %i.ob, label %middle.block1407, label %vector.body1400, !llvm.loop !286

middle.block1407:                                 ; preds = %vector.body1400
  %cmp.n1408 = icmp eq i64 %i.np, %n.vec1399
  br i1 %cmp.n1408, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1488

.lr.ph.i.i.i.i.i.i.i.preheader1488:               ; preds = %vector.memcheck1389, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1407
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.nj, %vector.memcheck1389 ], [ %i.nj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.nv, %middle.block1407 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.my, %vector.memcheck1389 ], [ %i.my, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.nw, %middle.block1407 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1488, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.oe, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1488 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.od, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1488 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.oc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !279, !noalias !276
  store i64 %i.oc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !276, !noalias !279
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !279, !noalias !276
  %i.od = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i371 = icmp eq ptr %i.od, %i.mt
  br i1 %.not.i.i.i.i.i.i.i371, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !287

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block1407, %.noexc373
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.nj, %.noexc373 ], [ %i.nv, %middle.block1407 ], [ %i.oe, %.lr.ph.i.i.i.i.i.i.i ]
  %i.of = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.my, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.my) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.dp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.nj, ptr %i.mr, align 8, !tbaa !36
  store ptr %i.of, ptr %i.ms, align 8, !tbaa !39
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nh
  store ptr %i.og, ptr %i.mu, align 8, !tbaa !40
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.dn, %bb.dj
  %i.oh = load i8, ptr %i.d, align 1, !tbaa !237  ; 2 uses
  %i.oi = and i8 %i.oh, -2
  %or.cond = icmp eq i8 %i.oi, -124
  br i1 %or.cond, label %bb.dq, label %bb.ec

bb.dq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.oj = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.ok = load ptr, ptr %31, align 16, !tbaa !36
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = icmp ugt i64 %i.on, 8
  br i1 %i.oo, label %bb.dr, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit376

bb.dr:                                            ; preds = %bb.dq
  %i.op = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 1)
          to label %bb.ds unwind label %bb.cs     ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.oq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.dt unwind label %bb.cs

bb.dt:                                            ; preds = %bb.ds
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 256 ; 2 uses
  %i.os = load ptr, ptr %i.op, align 8, !tbaa !19
  store ptr null, ptr %i.op, align 8, !tbaa !19
  %i.ot = load ptr, ptr %i.or, align 8, !tbaa !19 ; 3 uses
  store ptr %i.os, ptr %i.or, align 8, !tbaa !19
  %.not.i.i.i.i.i374 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i.i.i374, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit376, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i375

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i375: ; preds = %bb.dt
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !23
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(56) %i.ot) #21, !inline_history !25
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit376

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit376: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i375, %bb.dt, %bb.dq
  %i.ox = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.oy = load ptr, ptr %31, align 16, !tbaa !36
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = icmp ugt i64 %i.pb, 16
  br i1 %i.pc, label %bb.du, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit379

bb.du:                                            ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit376
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 2)
          to label %bb.dv unwind label %bb.cs     ; 2 uses

bb.dv:                                            ; preds = %bb.du
  %i.pe = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.dw unwind label %bb.cs

bb.dw:                                            ; preds = %bb.dv
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 264 ; 2 uses
  %i.pg = load ptr, ptr %i.pd, align 8, !tbaa !19
  store ptr null, ptr %i.pd, align 8, !tbaa !19
  %i.ph = load ptr, ptr %i.pf, align 8, !tbaa !19 ; 3 uses
  store ptr %i.pg, ptr %i.pf, align 8, !tbaa !19
  %.not.i.i.i.i.i377 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i.i.i377, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit379, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i378

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i378: ; preds = %bb.dw
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !23
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(56) %i.ph) #21, !inline_history !25
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit379

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit379: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i378, %bb.dw, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit376
  %i.pl = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.pm = load ptr, ptr %31, align 16, !tbaa !36
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = icmp ugt i64 %i.pp, 24
  br i1 %i.pq, label %bb.dx, label %bb.ev

bb.dx:                                            ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit379
  %i.pr = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %bb.dy unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZN6duckdb15ParserExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.pr, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.dz unwind label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  invoke void @__cxa_throw(ptr nonnull %i.pr, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.oq unwind label %bb.ea

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread: ; preds = %bb.dx
  %i.ps = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.0170 = phi i1 [ false, %bb.dz ], [ true, %bb.dy ] ; 2 uses
  %i.pt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pu = load ptr, ptr %50, align 8, !tbaa !126  ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %bb.ea
  call void @_ZdlPv(ptr noundef %i.pu) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br i1 %.0170, label %bb.eb, label %bb.hw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br i1 %.0170, label %bb.eb, label %bb.hw

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
  %.pn269820 = phi { ptr, i32 } [ %i.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread ], [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ %i.pt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380 ]
  call void @__cxa_free_exception(ptr %i.pr) #21
  br label %bb.hw

bb.ec:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.px = icmp eq i8 %i.oh, -122
  %i.py = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.pz = load ptr, ptr %31, align 16, !tbaa !36
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = icmp ugt i64 %i.qc, 8                   ; 2 uses
  br i1 %i.px, label %bb.ed, label %bb.ep

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.qd, label %bb.ee, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit398

bb.ee:                                            ; preds = %bb.ed
  %i.qe = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16WindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.ef unwind label %bb.cs     ; 3 uses

bb.ef:                                            ; preds = %bb.ee
  %i.qf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 1)
          to label %bb.eg unwind label %bb.cs     ; 4 uses

bb.eg:                                            ; preds = %bb.ef
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 152 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 160 ; 3 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !39 ; 6 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 168 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !40
  %.not.i.i383 = icmp eq ptr %i.qi, %i.qk
  br i1 %.not.i.i383, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ql = load i64, ptr %i.qf, align 8, !tbaa !19
  store i64 %i.ql, ptr %i.qi, align 8, !tbaa !19
  store ptr null, ptr %i.qf, align 8, !tbaa !19
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store ptr %i.qm, ptr %i.qh, align 8, !tbaa !39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit398

bb.ei:                                            ; preds = %bb.eg
  %i.qn = load ptr, ptr %i.qg, align 8, !tbaa !36 ; 10 uses
  %i.qo = ptrtoint ptr %i.qi to i64               ; 3 uses
  %i.qp = ptrtoint ptr %i.qn to i64               ; 3 uses
  %i.qq = sub i64 %i.qo, %i.qp                    ; 3 uses
  %i.qr = icmp eq i64 %i.qq, 9223372036854775800
  br i1 %i.qr, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i384

.invoke:                                          ; preds = %bb.ei, %bb.do
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.cont unwind label %bb.cs

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i384: ; preds = %bb.ei
  %i.qs = ashr exact i64 %i.qq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i385 = call i64 @llvm.umax.i64(i64 %i.qs, i64 1)
  %i.qt = add nsw i64 %.sroa.speculated.i.i.i.i385, %i.qs ; 2 uses
  %i.qu = icmp ult i64 %i.qt, %i.qs
  %i.qv = call i64 @llvm.umin.i64(i64 %i.qt, i64 1152921504606846975)
  %i.qw = select i1 %i.qu, i64 1152921504606846975, i64 %i.qv ; 3 uses
  %.not.i.i.i.i386 = icmp ne i64 %i.qw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i386)
  %i.qx = shl nuw nsw i64 %i.qw, 3
  %i.qy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qx) #22
          to label %.noexc397 unwind label %bb.cs ; 10 uses

.noexc397:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i384
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qq
  %i.ra = load i64, ptr %i.qf, align 8, !tbaa !19
  store i64 %i.ra, ptr %i.qz, align 8, !tbaa !19
  store ptr null, ptr %i.qf, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i387 = icmp eq ptr %i.qn, %i.qi
  br i1 %.not10.i.i.i.i.i.i.i387, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i392, label %.lr.ph.i.i.i.i.i.i.i388.preheader

.lr.ph.i.i.i.i.i.i.i388.preheader:                ; preds = %.noexc397
  %i.rb = sub i64 %i.qo, %i.qp
  %i.rc = add i64 %i.rb, -8                       ; 2 uses
  %i.rd = lshr i64 %i.rc, 3
  %i.re = add nuw nsw i64 %i.rd, 1                ; 2 uses
  %min.iters.check1418 = icmp ult i64 %i.rc, 136
  br i1 %min.iters.check1418, label %.lr.ph.i.i.i.i.i.i.i388.preheader1486, label %vector.memcheck1411

vector.memcheck1411:                              ; preds = %.lr.ph.i.i.i.i.i.i.i388.preheader
  %i.rf = add i64 %i.qo, -8
  %i.rg = sub i64 %i.rf, %i.qp
  %i.rh = and i64 %i.rg, -8
  %i.ri = add i64 %i.rh, 8                        ; 2 uses
  %scevgep1412 = getelementptr i8, ptr %i.qy, i64 %i.ri
  %scevgep1413 = getelementptr i8, ptr %i.qn, i64 %i.ri
  %bound01414 = icmp ult ptr %i.qy, %scevgep1413
  %bound11415 = icmp ult ptr %i.qn, %scevgep1412
  %found.conflict1416 = and i1 %bound01414, %bound11415
  br i1 %found.conflict1416, label %.lr.ph.i.i.i.i.i.i.i388.preheader1486, label %vector.ph1419

vector.ph1419:                                    ; preds = %vector.memcheck1411
  %n.vec1421 = and i64 %i.re, 4611686018427387900 ; 3 uses
  %i.rj = shl i64 %n.vec1421, 3                   ; 2 uses
  %i.rk = getelementptr i8, ptr %i.qy, i64 %i.rj  ; 2 uses
  %i.rl = getelementptr i8, ptr %i.qn, i64 %i.rj
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1419
  %index1423 = phi i64 [ 0, %vector.ph1419 ], [ %index.next1428, %vector.body1422 ] ; 2 uses
  %i.rm = shl i64 %index1423, 3                   ; 2 uses
  %next.gep1424 = getelementptr i8, ptr %i.qy, i64 %i.rm ; 2 uses
  %next.gep1425 = getelementptr i8, ptr %i.qn, i64 %i.rm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.rn = getelementptr i8, ptr %next.gep1425, i64 16
  %wide.load1426 = load <2 x i64>, ptr %next.gep1425, align 8, !tbaa !19, !alias.scope !293, !noalias !288
  %wide.load1427 = load <2 x i64>, ptr %i.rn, align 8, !tbaa !19, !alias.scope !293, !noalias !288
  %i.ro = getelementptr i8, ptr %next.gep1424, i64 16
  store <2 x i64> %wide.load1426, ptr %next.gep1424, align 8, !tbaa !19, !alias.scope !296, !noalias !293
  store <2 x i64> %wide.load1427, ptr %i.ro, align 8, !tbaa !19, !alias.scope !296, !noalias !293
  %i.rp = getelementptr i8, ptr %next.gep1425, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1425, align 8, !tbaa !19, !alias.scope !293, !noalias !288
  store <2 x ptr> splat (ptr null), ptr %i.rp, align 8, !tbaa !19, !alias.scope !293, !noalias !288
  %index.next1428 = add nuw i64 %index1423, 4     ; 2 uses
  %i.rq = icmp eq i64 %index.next1428, %n.vec1421
  br i1 %i.rq, label %middle.block1429, label %vector.body1422, !llvm.loop !298

middle.block1429:                                 ; preds = %vector.body1422
  %cmp.n1430 = icmp eq i64 %i.re, %n.vec1421
  br i1 %cmp.n1430, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i392, label %.lr.ph.i.i.i.i.i.i.i388.preheader1486

.lr.ph.i.i.i.i.i.i.i388.preheader1486:            ; preds = %vector.memcheck1411, %.lr.ph.i.i.i.i.i.i.i388.preheader, %middle.block1429
  %.012.i.i.i.i.i.i.i389.ph = phi ptr [ %i.qy, %vector.memcheck1411 ], [ %i.qy, %.lr.ph.i.i.i.i.i.i.i388.preheader ], [ %i.rk, %middle.block1429 ]
  %.0911.i.i.i.i.i.i.i390.ph = phi ptr [ %i.qn, %vector.memcheck1411 ], [ %i.qn, %.lr.ph.i.i.i.i.i.i.i388.preheader ], [ %i.rl, %middle.block1429 ]
  br label %.lr.ph.i.i.i.i.i.i.i388

.lr.ph.i.i.i.i.i.i.i388:                          ; preds = %.lr.ph.i.i.i.i.i.i.i388.preheader1486, %.lr.ph.i.i.i.i.i.i.i388
  %.012.i.i.i.i.i.i.i389 = phi ptr [ %i.rt, %.lr.ph.i.i.i.i.i.i.i388 ], [ %.012.i.i.i.i.i.i.i389.ph, %.lr.ph.i.i.i.i.i.i.i388.preheader1486 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i390 = phi ptr [ %i.rs, %.lr.ph.i.i.i.i.i.i.i388 ], [ %.0911.i.i.i.i.i.i.i390.ph, %.lr.ph.i.i.i.i.i.i.i388.preheader1486 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.rr = load i64, ptr %.0911.i.i.i.i.i.i.i390, align 8, !tbaa !19, !alias.scope !291, !noalias !288
  store i64 %i.rr, ptr %.012.i.i.i.i.i.i.i389, align 8, !tbaa !19, !alias.scope !288, !noalias !291
  store ptr null, ptr %.0911.i.i.i.i.i.i.i390, align 8, !tbaa !19, !alias.scope !291, !noalias !288
  %i.rs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i390, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i389, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i391 = icmp eq ptr %i.rs, %i.qi
  br i1 %.not.i.i.i.i.i.i.i391, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i392, label %.lr.ph.i.i.i.i.i.i.i388, !llvm.loop !299

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i392: ; preds = %.lr.ph.i.i.i.i.i.i.i388, %middle.block1429, %.noexc397
  %.0.lcssa.i.i.i.i.i.i.i393 = phi ptr [ %i.qy, %.noexc397 ], [ %i.rk, %middle.block1429 ], [ %i.rt, %.lr.ph.i.i.i.i.i.i.i388 ]
  %i.ru = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i393, i64 8
  %.not.i23.i.i.i394 = icmp eq ptr %i.qn, null
  br i1 %.not.i23.i.i.i394, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i395, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i392
  call void @_ZdlPv(ptr noundef nonnull %i.qn) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i395

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i395: ; preds = %bb.ej, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i392
  store ptr %i.qy, ptr %i.qg, align 8, !tbaa !36
  store ptr %i.ru, ptr %i.qh, align 8, !tbaa !39
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %i.qw
  store ptr %i.rv, ptr %i.qj, align 8, !tbaa !40
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit398

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit398: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i395, %bb.eh, %bb.ed
  %i.rw = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.rx = load ptr, ptr %31, align 16, !tbaa !36
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = icmp ugt i64 %i.sa, 16
  br i1 %i.sb, label %bb.ek, label %bb.ev

bb.ek:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit398
  %i.sc = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %53)
          to label %bb.el unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.thread

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN6duckdb15ParserExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.sc, ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %bb.el
  invoke void @__cxa_throw(ptr nonnull %i.sc, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.oq unwind label %bb.en

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.thread: ; preds = %bb.ek
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br label %bb.eo

bb.en:                                            ; preds = %bb.em, %bb.el
  %.0168 = phi i1 [ false, %bb.em ], [ true, %bb.el ] ; 2 uses
  %i.se = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.sf = load ptr, ptr %52, align 8, !tbaa !126  ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399: ; preds = %bb.en
  call void @_ZdlPv(ptr noundef %i.sf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br i1 %.0168, label %bb.eo, label %bb.hw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401: ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br i1 %.0168, label %bb.eo, label %bb.hw

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401
  %.pn267823 = phi { ptr, i32 } [ %i.sd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.thread ], [ %i.se, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401 ], [ %i.se, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399 ]
  call void @__cxa_free_exception(ptr %i.sc) #21
  br label %bb.hw

bb.ep:                                            ; preds = %bb.ec
  br i1 %i.qd, label %bb.eq, label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  %i.si = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %55)
          to label %bb.er unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404.thread

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZN6duckdb15ParserExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.si, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.es unwind label %bb.et

bb.es:                                            ; preds = %bb.er
  invoke void @__cxa_throw(ptr nonnull %i.si, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.oq unwind label %bb.et

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404.thread: ; preds = %bb.eq
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  br label %bb.eu

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0166 = phi i1 [ false, %bb.es ], [ true, %bb.er ] ; 2 uses
  %i.sk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.sl = load ptr, ptr %54, align 8, !tbaa !126  ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.sn = icmp eq ptr %i.sl, %i.sm
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402: ; preds = %bb.et
  call void @_ZdlPv(ptr noundef %i.sl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  br i1 %.0166, label %bb.eu, label %bb.hw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404: ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  br i1 %.0166, label %bb.eu, label %bb.hw

bb.eu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404
  %.pn265826 = phi { ptr, i32 } [ %i.sj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404.thread ], [ %i.sk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404 ], [ %i.sk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402 ]
  call void @__cxa_free_exception(ptr %i.si) #21
  br label %bb.hw

bb.ev:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit398, %bb.ep, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit379, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  %i.so = load ptr, ptr %i.fz, align 8, !tbaa !233
  store ptr %i.so, ptr %56, align 8
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGWindowDefELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.ew unwind label %bb.fp

bb.ew:                                            ; preds = %bb.ev
  %i.sp = load ptr, ptr %56, align 8              ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !300
  %.not271 = icmp eq ptr %i.sr, null
  %i.ss = ptrtoint ptr %i.sp to i64
  br i1 %.not271, label %bb.fv, label %bb.ex
end_hunk_0
begin_hunk_1_@_ZN6duckdb11Transformer17TransformFuncCallERN17duckdb_libpgquery10PGFuncCallE:bb.a
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1104: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit561
  %i.aod = load ptr, ptr %32, align 8, !tbaa !126 ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 1
  %i.aof = xor i32 %i.aoe, 1970169449
  %i.aog = getelementptr i8, ptr %i.aod, i64 4
  %i.aoh = load i16, ptr %i.aog, align 1
  %i.aoi = zext i16 %i.aoh to i32
  %i.aoj = xor i32 %i.aoi, 27756
  %i.aok = or i32 %i.aof, %i.aoj
  %i.aol = icmp ne i32 %i.aok, 0
  %i.aom = zext i1 %i.aol to i32
  %i.aon = icmp eq i32 %i.aom, 0
  br i1 %i.aon, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1104.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1153.thread1165

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1104.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1104
  %i.aoo = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.aop = load ptr, ptr %31, align 16, !tbaa !36
  %i.aoq = ptrtoint ptr %i.aoo to i64
  %i.aor = ptrtoint ptr %i.aop to i64
  %i.aos = sub i64 %i.aoq, %i.aor
  %.not216 = icmp eq i64 %i.aos, 16
  br i1 %.not216, label %bb.ma, label %bb.lv

bb.lv:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1104.thread
  %i.aot = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %94, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %95)
          to label %bb.lw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661.thread

bb.lw:                                            ; preds = %bb.lv
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aot, ptr noundef nonnull align 8 dereferenceable(32) %94)
          to label %bb.lx unwind label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  invoke void @__cxa_throw(ptr nonnull %i.aot, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.oq unwind label %bb.ly

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661.thread: ; preds = %bb.lv
  %i.aou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #21
  br label %bb.lz

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  %.0136 = phi i1 [ false, %bb.lx ], [ true, %bb.lw ] ; 2 uses
  %i.aov = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aow = load ptr, ptr %94, align 8, !tbaa !126 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %94, i64 16
  %i.aoy = icmp eq ptr %i.aow, %i.aox
  br i1 %i.aoy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659: ; preds = %bb.ly
  call void @_ZdlPv(ptr noundef %i.aow) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #21
  br i1 %.0136, label %bb.lz, label %.body1161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661: ; preds = %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #21
  br i1 %.0136, label %bb.lz, label %.body1161

bb.lz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661
  %.pn219880 = phi { ptr, i32 } [ %i.aou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661.thread ], [ %i.aov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661 ], [ %i.aov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659 ]
  call void @__cxa_free_exception(ptr %i.aot) #21
  br label %.body1161

bb.ma:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1104.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.aoz = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22
          to label %.noexc1116 unwind label %bb.mo ; 3 uses

.noexc1116:                                       ; preds = %bb.ma
  store ptr null, ptr %5, align 8, !tbaa !7, !noalias !354
  store ptr null, ptr %6, align 8, !tbaa !7, !noalias !354
  invoke void @_ZN6duckdb18OperatorExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(80) %i.aoz, i8 noundef zeroext -104, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.mb unwind label %bb.mc, !noalias !354

bb.mb:                                            ; preds = %.noexc1116
  store ptr %i.aoz, ptr %96, align 8, !tbaa !344, !alias.scope !354
  %i.apa = load ptr, ptr %6, align 8, !tbaa !19, !noalias !354 ; 3 uses
  %.not.i.i1111 = icmp eq ptr %i.apa, null
  br i1 %.not.i.i1111, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i1113, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i1112

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i1112: ; preds = %bb.mb
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !23, !noalias !354
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8, !noalias !354
  call void %i.apd(ptr noundef nonnull align 8 dereferenceable(56) %i.apa) #21, !noalias !354, !inline_history !346
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i1113

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i1113: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i1112, %bb.mb
  %i.ape = load ptr, ptr %5, align 8, !tbaa !19, !noalias !354 ; 3 uses
  %.not.i3.i1114 = icmp eq ptr %i.ape, null
  br i1 %.not.i3.i1114, label %bb.md, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i4.i1115

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i4.i1115: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i1113
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !23, !noalias !354
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  %i.aph = load ptr, ptr %i.apg, align 8, !noalias !354
  call void %i.aph(ptr noundef nonnull align 8 dereferenceable(56) %i.ape) #21, !noalias !354, !inline_history !346
  br label %bb.md

bb.mc:                                            ; preds = %.noexc1116
  %i.api = landingpad { ptr, i32 }
          cleanup
  %i.apj = load ptr, ptr %6, align 8, !tbaa !19, !noalias !354 ; 3 uses
  %.not.i6.i1105 = icmp eq ptr %i.apj, null
  br i1 %.not.i6.i1105, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i1107, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i1106

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i1106: ; preds = %bb.mc
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !23, !noalias !354
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  %i.apm = load ptr, ptr %i.apl, align 8, !noalias !354
  call void %i.apm(ptr noundef nonnull align 8 dereferenceable(56) %i.apj) #21, !noalias !354, !inline_history !346
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i1107

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i1107: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i1106, %bb.mc
  %i.apn = load ptr, ptr %5, align 8, !tbaa !19, !noalias !354 ; 3 uses
  %.not.i9.i1108 = icmp eq ptr %i.apn, null
  br i1 %.not.i9.i1108, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit11.i1110, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i10.i1109

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i10.i1109: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i1107
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !23, !noalias !354
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.apq = load ptr, ptr %i.app, align 8, !noalias !354
  call void %i.apq(ptr noundef nonnull align 8 dereferenceable(56) %i.apn) #21, !noalias !354, !inline_history !346
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit11.i1110

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit11.i1110: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i10.i1109, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i1107
  call void @_ZdlPv(ptr noundef nonnull %i.aoz) #23, !noalias !354
  br label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit667

bb.md:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i4.i1115, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i1113
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.apr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18OperatorExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %96)
          to label %bb.me unwind label %bb.mp     ; 3 uses

bb.me:                                            ; preds = %bb.md
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 0)
          to label %bb.mf unwind label %bb.mp     ; 4 uses

bb.mf:                                            ; preds = %bb.me
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apr, i64 56 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 64 ; 3 uses
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !39 ; 6 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apr, i64 72 ; 2 uses
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !40
  %.not.i.i1118 = icmp eq ptr %i.apv, %i.apx
  br i1 %.not.i.i1118, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.apy = load i64, ptr %i.aps, align 8, !tbaa !19
  store i64 %i.apy, ptr %i.apv, align 8, !tbaa !19
  store ptr null, ptr %i.aps, align 8, !tbaa !19
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  store ptr %i.apz, ptr %i.apu, align 8, !tbaa !39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1133

bb.mh:                                            ; preds = %bb.mf
  %i.aqa = load ptr, ptr %i.apt, align 8, !tbaa !36 ; 10 uses
  %i.aqb = ptrtoint ptr %i.apv to i64             ; 3 uses
  %i.aqc = ptrtoint ptr %i.aqa to i64             ; 3 uses
  %i.aqd = sub i64 %i.aqb, %i.aqc                 ; 3 uses
  %i.aqe = icmp eq i64 %i.aqd, 9223372036854775800
  br i1 %i.aqe, label %.invoke1371, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1119

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1119: ; preds = %bb.mh
  %i.aqf = ashr exact i64 %i.aqd, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1120 = call i64 @llvm.umax.i64(i64 %i.aqf, i64 1)
  %i.aqg = add nsw i64 %.sroa.speculated.i.i.i.i1120, %i.aqf ; 2 uses
  %i.aqh = icmp ult i64 %i.aqg, %i.aqf
  %i.aqi = call i64 @llvm.umin.i64(i64 %i.aqg, i64 1152921504606846975)
  %i.aqj = select i1 %i.aqh, i64 1152921504606846975, i64 %i.aqi ; 3 uses
  %.not.i.i.i.i1121 = icmp ne i64 %i.aqj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1121)
  %i.aqk = shl nuw nsw i64 %i.aqj, 3
  %i.aql = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqk) #22
          to label %.noexc1132 unwind label %bb.mp ; 10 uses

.noexc1132:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1119
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqd
  %i.aqn = load i64, ptr %i.aps, align 8, !tbaa !19
  store i64 %i.aqn, ptr %i.aqm, align 8, !tbaa !19
  store ptr null, ptr %i.aps, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i1122 = icmp eq ptr %i.aqa, %i.apv
  br i1 %.not10.i.i.i.i.i.i.i1122, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1127, label %.lr.ph.i.i.i.i.i.i.i1123.preheader

.lr.ph.i.i.i.i.i.i.i1123.preheader:               ; preds = %.noexc1132
  %i.aqo = sub i64 %i.aqb, %i.aqc
  %i.aqp = add i64 %i.aqo, -8                     ; 2 uses
  %i.aqq = lshr i64 %i.aqp, 3
  %i.aqr = add nuw nsw i64 %i.aqq, 1              ; 2 uses
  %min.iters.check1440 = icmp ult i64 %i.aqp, 136
  br i1 %min.iters.check1440, label %.lr.ph.i.i.i.i.i.i.i1123.preheader1478, label %vector.memcheck1433

vector.memcheck1433:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1123.preheader
  %i.aqs = add i64 %i.aqb, -8
  %i.aqt = sub i64 %i.aqs, %i.aqc
  %i.aqu = and i64 %i.aqt, -8
  %i.aqv = add i64 %i.aqu, 8                      ; 2 uses
  %scevgep1434 = getelementptr i8, ptr %i.aql, i64 %i.aqv
  %scevgep1435 = getelementptr i8, ptr %i.aqa, i64 %i.aqv
  %bound01436 = icmp ult ptr %i.aql, %scevgep1435
  %bound11437 = icmp ult ptr %i.aqa, %scevgep1434
  %found.conflict1438 = and i1 %bound01436, %bound11437
  br i1 %found.conflict1438, label %.lr.ph.i.i.i.i.i.i.i1123.preheader1478, label %vector.ph1441

vector.ph1441:                                    ; preds = %vector.memcheck1433
  %n.vec1443 = and i64 %i.aqr, 4611686018427387900 ; 3 uses
  %i.aqw = shl i64 %n.vec1443, 3                  ; 2 uses
  %i.aqx = getelementptr i8, ptr %i.aql, i64 %i.aqw ; 2 uses
  %i.aqy = getelementptr i8, ptr %i.aqa, i64 %i.aqw
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1441
  %index1445 = phi i64 [ 0, %vector.ph1441 ], [ %index.next1450, %vector.body1444 ] ; 2 uses
  %i.aqz = shl i64 %index1445, 3                  ; 2 uses
  %next.gep1446 = getelementptr i8, ptr %i.aql, i64 %i.aqz ; 2 uses
  %next.gep1447 = getelementptr i8, ptr %i.aqa, i64 %i.aqz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ara = getelementptr i8, ptr %next.gep1447, i64 16
  %wide.load1448 = load <2 x i64>, ptr %next.gep1447, align 8, !tbaa !19, !alias.scope !362, !noalias !357
  %wide.load1449 = load <2 x i64>, ptr %i.ara, align 8, !tbaa !19, !alias.scope !362, !noalias !357
  %i.arb = getelementptr i8, ptr %next.gep1446, i64 16
  store <2 x i64> %wide.load1448, ptr %next.gep1446, align 8, !tbaa !19, !alias.scope !365, !noalias !362
  store <2 x i64> %wide.load1449, ptr %i.arb, align 8, !tbaa !19, !alias.scope !365, !noalias !362
  %i.arc = getelementptr i8, ptr %next.gep1447, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1447, align 8, !tbaa !19, !alias.scope !362, !noalias !357
  store <2 x ptr> splat (ptr null), ptr %i.arc, align 8, !tbaa !19, !alias.scope !362, !noalias !357
  %index.next1450 = add nuw i64 %index1445, 4     ; 2 uses
  %i.ard = icmp eq i64 %index.next1450, %n.vec1443
  br i1 %i.ard, label %middle.block1451, label %vector.body1444, !llvm.loop !367

middle.block1451:                                 ; preds = %vector.body1444
  %cmp.n1452 = icmp eq i64 %i.aqr, %n.vec1443
  br i1 %cmp.n1452, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1127, label %.lr.ph.i.i.i.i.i.i.i1123.preheader1478

.lr.ph.i.i.i.i.i.i.i1123.preheader1478:           ; preds = %vector.memcheck1433, %.lr.ph.i.i.i.i.i.i.i1123.preheader, %middle.block1451
  %.012.i.i.i.i.i.i.i1124.ph = phi ptr [ %i.aql, %vector.memcheck1433 ], [ %i.aql, %.lr.ph.i.i.i.i.i.i.i1123.preheader ], [ %i.aqx, %middle.block1451 ]
  %.0911.i.i.i.i.i.i.i1125.ph = phi ptr [ %i.aqa, %vector.memcheck1433 ], [ %i.aqa, %.lr.ph.i.i.i.i.i.i.i1123.preheader ], [ %i.aqy, %middle.block1451 ]
  br label %.lr.ph.i.i.i.i.i.i.i1123

.lr.ph.i.i.i.i.i.i.i1123:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1123.preheader1478, %.lr.ph.i.i.i.i.i.i.i1123
  %.012.i.i.i.i.i.i.i1124 = phi ptr [ %i.arg, %.lr.ph.i.i.i.i.i.i.i1123 ], [ %.012.i.i.i.i.i.i.i1124.ph, %.lr.ph.i.i.i.i.i.i.i1123.preheader1478 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1125 = phi ptr [ %i.arf, %.lr.ph.i.i.i.i.i.i.i1123 ], [ %.0911.i.i.i.i.i.i.i1125.ph, %.lr.ph.i.i.i.i.i.i.i1123.preheader1478 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.are = load i64, ptr %.0911.i.i.i.i.i.i.i1125, align 8, !tbaa !19, !alias.scope !360, !noalias !357
  store i64 %i.are, ptr %.012.i.i.i.i.i.i.i1124, align 8, !tbaa !19, !alias.scope !357, !noalias !360
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1125, align 8, !tbaa !19, !alias.scope !360, !noalias !357
  %i.arf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1125, i64 8 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1124, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1126 = icmp eq ptr %i.arf, %i.apv
  br i1 %.not.i.i.i.i.i.i.i1126, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1127, label %.lr.ph.i.i.i.i.i.i.i1123, !llvm.loop !368

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1127: ; preds = %.lr.ph.i.i.i.i.i.i.i1123, %middle.block1451, %.noexc1132
  %.0.lcssa.i.i.i.i.i.i.i1128 = phi ptr [ %i.aql, %.noexc1132 ], [ %i.aqx, %middle.block1451 ], [ %i.arg, %.lr.ph.i.i.i.i.i.i.i1123 ]
  %i.arh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1128, i64 8
  %.not.i23.i.i.i1129 = icmp eq ptr %i.aqa, null
  br i1 %.not.i23.i.i.i1129, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i1130, label %bb.mi

bb.mi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1127
  call void @_ZdlPv(ptr noundef nonnull %i.aqa) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i1130

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i1130: ; preds = %bb.mi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1127
  store ptr %i.aql, ptr %i.apt, align 8, !tbaa !36
  store ptr %i.arh, ptr %i.apu, align 8, !tbaa !39
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %i.aql, i64 %i.aqj
  store ptr %i.ari, ptr %i.apw, align 8, !tbaa !40
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1133

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1133: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i1130, %bb.mg
  %i.arj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18OperatorExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %96)
          to label %bb.mj unwind label %bb.mp     ; 3 uses

bb.mj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1133
  %i.ark = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 1)
          to label %bb.mk unwind label %bb.mp     ; 4 uses

bb.mk:                                            ; preds = %bb.mj
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 56 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arj, i64 64 ; 3 uses
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !39 ; 6 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arj, i64 72 ; 2 uses
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !40
  %.not.i.i1134 = icmp eq ptr %i.arn, %i.arp
  br i1 %.not.i.i1134, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.arq = load i64, ptr %i.ark, align 8, !tbaa !19
  store i64 %i.arq, ptr %i.arn, align 8, !tbaa !19
  store ptr null, ptr %i.ark, align 8, !tbaa !19
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  store ptr %i.arr, ptr %i.arm, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit664

bb.mm:                                            ; preds = %bb.mk
  %i.ars = load ptr, ptr %i.arl, align 8, !tbaa !36 ; 10 uses
  %i.art = ptrtoint ptr %i.arn to i64             ; 3 uses
  %i.aru = ptrtoint ptr %i.ars to i64             ; 3 uses
  %i.arv = sub i64 %i.art, %i.aru                 ; 3 uses
  %i.arw = icmp eq i64 %i.arv, 9223372036854775800
  br i1 %i.arw, label %.invoke1371, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1135

.invoke1371:                                      ; preds = %bb.mm, %bb.mh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.cont1372 unwind label %bb.mp

.cont1372:                                        ; preds = %.invoke1371
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1135: ; preds = %bb.mm
  %i.arx = ashr exact i64 %i.arv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1136 = call i64 @llvm.umax.i64(i64 %i.arx, i64 1)
  %i.ary = add nsw i64 %.sroa.speculated.i.i.i.i1136, %i.arx ; 2 uses
  %i.arz = icmp ult i64 %i.ary, %i.arx
  %i.asa = call i64 @llvm.umin.i64(i64 %i.ary, i64 1152921504606846975)
  %i.asb = select i1 %i.arz, i64 1152921504606846975, i64 %i.asa ; 3 uses
  %.not.i.i.i.i1137 = icmp ne i64 %i.asb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1137)
  %i.asc = shl nuw nsw i64 %i.asb, 3
  %i.asd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asc) #22
          to label %.noexc1148 unwind label %bb.mp ; 10 uses

.noexc1148:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1135
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 %i.arv
  %i.asf = load i64, ptr %i.ark, align 8, !tbaa !19
  store i64 %i.asf, ptr %i.ase, align 8, !tbaa !19
  store ptr null, ptr %i.ark, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i1138 = icmp eq ptr %i.ars, %i.arn
  br i1 %.not10.i.i.i.i.i.i.i1138, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1143, label %.lr.ph.i.i.i.i.i.i.i1139.preheader

.lr.ph.i.i.i.i.i.i.i1139.preheader:               ; preds = %.noexc1148
  %i.asg = sub i64 %i.art, %i.aru
  %i.ash = add i64 %i.asg, -8                     ; 2 uses
  %i.asi = lshr i64 %i.ash, 3
  %i.asj = add nuw nsw i64 %i.asi, 1              ; 2 uses
  %min.iters.check1462 = icmp ult i64 %i.ash, 136
  br i1 %min.iters.check1462, label %.lr.ph.i.i.i.i.i.i.i1139.preheader1477, label %vector.memcheck1455

vector.memcheck1455:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1139.preheader
  %i.ask = add i64 %i.art, -8
  %i.asl = sub i64 %i.ask, %i.aru
  %i.asm = and i64 %i.asl, -8
  %i.asn = add i64 %i.asm, 8                      ; 2 uses
  %scevgep1456 = getelementptr i8, ptr %i.asd, i64 %i.asn
  %scevgep1457 = getelementptr i8, ptr %i.ars, i64 %i.asn
  %bound01458 = icmp ult ptr %i.asd, %scevgep1457
  %bound11459 = icmp ult ptr %i.ars, %scevgep1456
  %found.conflict1460 = and i1 %bound01458, %bound11459
  br i1 %found.conflict1460, label %.lr.ph.i.i.i.i.i.i.i1139.preheader1477, label %vector.ph1463

vector.ph1463:                                    ; preds = %vector.memcheck1455
  %n.vec1465 = and i64 %i.asj, 4611686018427387900 ; 3 uses
  %i.aso = shl i64 %n.vec1465, 3                  ; 2 uses
  %i.asp = getelementptr i8, ptr %i.asd, i64 %i.aso ; 2 uses
  %i.asq = getelementptr i8, ptr %i.ars, i64 %i.aso
  br label %vector.body1466

vector.body1466:                                  ; preds = %vector.body1466, %vector.ph1463
  %index1467 = phi i64 [ 0, %vector.ph1463 ], [ %index.next1472, %vector.body1466 ] ; 2 uses
  %i.asr = shl i64 %index1467, 3                  ; 2 uses
  %next.gep1468 = getelementptr i8, ptr %i.asd, i64 %i.asr ; 2 uses
  %next.gep1469 = getelementptr i8, ptr %i.ars, i64 %i.asr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.ass = getelementptr i8, ptr %next.gep1469, i64 16
  %wide.load1470 = load <2 x i64>, ptr %next.gep1469, align 8, !tbaa !19, !alias.scope !374, !noalias !369
  %wide.load1471 = load <2 x i64>, ptr %i.ass, align 8, !tbaa !19, !alias.scope !374, !noalias !369
  %i.ast = getelementptr i8, ptr %next.gep1468, i64 16
  store <2 x i64> %wide.load1470, ptr %next.gep1468, align 8, !tbaa !19, !alias.scope !377, !noalias !374
  store <2 x i64> %wide.load1471, ptr %i.ast, align 8, !tbaa !19, !alias.scope !377, !noalias !374
  %i.asu = getelementptr i8, ptr %next.gep1469, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1469, align 8, !tbaa !19, !alias.scope !374, !noalias !369
  store <2 x ptr> splat (ptr null), ptr %i.asu, align 8, !tbaa !19, !alias.scope !374, !noalias !369
  %index.next1472 = add nuw i64 %index1467, 4     ; 2 uses
  %i.asv = icmp eq i64 %index.next1472, %n.vec1465
  br i1 %i.asv, label %middle.block1473, label %vector.body1466, !llvm.loop !379

middle.block1473:                                 ; preds = %vector.body1466
  %cmp.n1474 = icmp eq i64 %i.asj, %n.vec1465
  br i1 %cmp.n1474, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1143, label %.lr.ph.i.i.i.i.i.i.i1139.preheader1477

.lr.ph.i.i.i.i.i.i.i1139.preheader1477:           ; preds = %vector.memcheck1455, %.lr.ph.i.i.i.i.i.i.i1139.preheader, %middle.block1473
  %.012.i.i.i.i.i.i.i1140.ph = phi ptr [ %i.asd, %vector.memcheck1455 ], [ %i.asd, %.lr.ph.i.i.i.i.i.i.i1139.preheader ], [ %i.asp, %middle.block1473 ]
  %.0911.i.i.i.i.i.i.i1141.ph = phi ptr [ %i.ars, %vector.memcheck1455 ], [ %i.ars, %.lr.ph.i.i.i.i.i.i.i1139.preheader ], [ %i.asq, %middle.block1473 ]
  br label %.lr.ph.i.i.i.i.i.i.i1139

.lr.ph.i.i.i.i.i.i.i1139:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1139.preheader1477, %.lr.ph.i.i.i.i.i.i.i1139
  %.012.i.i.i.i.i.i.i1140 = phi ptr [ %i.asy, %.lr.ph.i.i.i.i.i.i.i1139 ], [ %.012.i.i.i.i.i.i.i1140.ph, %.lr.ph.i.i.i.i.i.i.i1139.preheader1477 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1141 = phi ptr [ %i.asx, %.lr.ph.i.i.i.i.i.i.i1139 ], [ %.0911.i.i.i.i.i.i.i1141.ph, %.lr.ph.i.i.i.i.i.i.i1139.preheader1477 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.asw = load i64, ptr %.0911.i.i.i.i.i.i.i1141, align 8, !tbaa !19, !alias.scope !372, !noalias !369
  store i64 %i.asw, ptr %.012.i.i.i.i.i.i.i1140, align 8, !tbaa !19, !alias.scope !369, !noalias !372
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1141, align 8, !tbaa !19, !alias.scope !372, !noalias !369
  %i.asx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1141, i64 8 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1140, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1142 = icmp eq ptr %i.asx, %i.arn
  br i1 %.not.i.i.i.i.i.i.i1142, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1143, label %.lr.ph.i.i.i.i.i.i.i1139, !llvm.loop !380

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1143: ; preds = %.lr.ph.i.i.i.i.i.i.i1139, %middle.block1473, %.noexc1148
  %.0.lcssa.i.i.i.i.i.i.i1144 = phi ptr [ %i.asd, %.noexc1148 ], [ %i.asp, %middle.block1473 ], [ %i.asy, %.lr.ph.i.i.i.i.i.i.i1139 ]
  %i.asz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1144, i64 8
  %.not.i23.i.i.i1145 = icmp eq ptr %i.ars, null
  br i1 %.not.i23.i.i.i1145, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i1146, label %bb.mn

bb.mn:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1143
  call void @_ZdlPv(ptr noundef nonnull %i.ars) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i1146

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i1146: ; preds = %bb.mn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1143
  store ptr %i.asd, ptr %i.arl, align 8, !tbaa !36
  store ptr %i.asz, ptr %i.arm, align 8, !tbaa !39
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.asd, i64 %i.asb
  store ptr %i.ata, ptr %i.aro, align 8, !tbaa !40
  br label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit664

_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit664: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i1146, %bb.ml
  %i.atb = load ptr, ptr %96, align 8, !tbaa !344
  store ptr %i.atb, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #21
  br label %bb.ok

bb.mo:                                            ; preds = %bb.ma
  %i.atc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit667

bb.mp:                                            ; preds = %.invoke1371, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1135, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1119, %bb.mj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1133, %bb.me, %bb.md
  %i.atd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ate = load ptr, ptr %96, align 8, !tbaa !344 ; 3 uses
  %.not.i665 = icmp eq ptr %i.ate, null
  br i1 %.not.i665, label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit667, label %_ZNKSt14default_deleteIN6duckdb18OperatorExpressionEEclEPS1_.exit.i666

_ZNKSt14default_deleteIN6duckdb18OperatorExpressionEEclEPS1_.exit.i666: ; preds = %bb.mp
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !23
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  %i.ath = load ptr, ptr %i.atg, align 8
  call void %i.ath(ptr noundef nonnull align 8 dereferenceable(80) %i.ate) #21, !inline_history !347
  br label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit667

_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit667: ; preds = %bb.mo, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit11.i1110, %_ZNKSt14default_deleteIN6duckdb18OperatorExpressionEEclEPS1_.exit.i666, %bb.mp
  %.pn217 = phi { ptr, i32 } [ %i.atd, %_ZNKSt14default_deleteIN6duckdb18OperatorExpressionEEclEPS1_.exit.i666 ], [ %i.atd, %bb.mp ], [ %i.atc, %bb.mo ], [ %i.api, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit11.i1110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #21
  br label %.body1161

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit529
  %i.ati = load ptr, ptr %32, align 8, !tbaa !126
  %i.atj = load i32, ptr %i.ati, align 1
  %i.atk = icmp ne i32 %i.atj, 1953720684
  %i.atl = zext i1 %i.atk to i32
  %i.atm = icmp eq i32 %i.atl, 0
  br i1 %i.atm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1151.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1153

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1151.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1151
  %i.atn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %bb.mq unwind label %bb.ir     ; 2 uses

bb.mq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1151.thread
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 16
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atn, i64 24
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !269
  %i.atr = load ptr, ptr %i.ato, align 8, !tbaa !268
  %i.ats = ptrtoint ptr %i.atq to i64
  %i.att = ptrtoint ptr %i.atr to i64
  %i.atu = sub i64 %i.ats, %i.att
  %i.atv = icmp eq i64 %i.atu, 16
  br i1 %i.atv, label %bb.mr, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1151.thread1164_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1151.thread1164_crit_edge: ; preds = %bb.mq
  %.pre1186 = load i64, ptr %i.adc, align 8, !tbaa !168
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1151.thread1164

bb.mr:                                            ; preds = %bb.mq
  %i.atw = load ptr, ptr %i.ew, align 8, !tbaa !39
  %i.atx = load ptr, ptr %31, align 16, !tbaa !36
  %i.aty = ptrtoint ptr %i.atw to i64
  %i.atz = ptrtoint ptr %i.atx to i64
  %i.aua = sub i64 %i.aty, %i.atz
  %.not207 = icmp eq i64 %i.aua, 8
  br i1 %.not207, label %bb.mx, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.aub = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %98)
          to label %bb.mt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670.thread

bb.mt:                                            ; preds = %bb.ms
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aub, ptr noundef nonnull align 8 dereferenceable(32) %97)
          to label %bb.mu unwind label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  invoke void @__cxa_throw(ptr nonnull %i.aub, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.oq unwind label %bb.mv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670.thread: ; preds = %bb.ms
  %i.auc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #21
  br label %bb.mw

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %.0134 = phi i1 [ false, %bb.mu ], [ true, %bb.mt ] ; 2 uses
  %i.aud = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aue = load ptr, ptr %97, align 8, !tbaa !126 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %97, i64 16
  %i.aug = icmp eq ptr %i.aue, %i.auf
  br i1 %i.aug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668: ; preds = %bb.mv
  call void @_ZdlPv(ptr noundef %i.aue) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #21
  br i1 %.0134, label %bb.mw, label %.body1161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670: ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #21
  br i1 %.0134, label %bb.mw, label %.body1161

bb.mw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670
  %.pn214883 = phi { ptr, i32 } [ %i.auc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670.thread ], [ %i.aud, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670 ], [ %i.aud, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668 ]
  call void @__cxa_free_exception(ptr %i.aub) #21
  br label %.body1161

bb.mx:                                            ; preds = %bb.mr
  %i.auh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 0)
          to label %bb.my unwind label %bb.nn

bb.my:                                            ; preds = %bb.mx
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !19 ; 2 uses
  %i.auj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %70)
end_hunk_1
begin_hunk_2_@_ZN6duckdb11Transformer23TransformStarExpressionERN17duckdb_libpgquery7PGAStarE:bb.a
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !590 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qv, i64 208
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !590
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qh, i64 216 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !585 ; 3 uses
  store ptr %i.rp, ptr %i.qz, align 8, !tbaa !585
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qh, i64 224
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !591
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qv, i64 224
  store i64 %i.rr, ptr %i.rs, align 8, !tbaa !591
  %.not.i.i.i.i344 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i344, label %_ZNSt10_HashtableIN6duckdb19QualifiedColumnNameESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_ENSt8__detail10_Select1stENS0_23QualifiedColumnEqualityENS0_27QualifiedColumnHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 168
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !310
  %i.rv = urem i64 %i.ru, %i.rm
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %i.rv
  store ptr %i.qz, ptr %i.rw, align 8, !tbaa !309
  br label %_ZNSt10_HashtableIN6duckdb19QualifiedColumnNameESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_ENSt8__detail10_Select1stENS0_23QualifiedColumnEqualityENS0_27QualifiedColumnHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i

_ZNSt10_HashtableIN6duckdb19QualifiedColumnNameESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_ENSt8__detail10_Select1stENS0_23QualifiedColumnEqualityENS0_27QualifiedColumnHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i: ; preds = %bb.fn, %bb.fm
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qh, i64 240
  store i64 0, ptr %i.rx, align 8, !tbaa !592
  store i64 1, ptr %i.rl, align 8, !tbaa !590
  store ptr null, ptr %i.rh, align 8, !tbaa !589
  store ptr %i.rh, ptr %i.qw, align 8, !tbaa !586
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ro, i8 0, i64 16, i1 false)
  br label %_ZNSt13unordered_mapIN6duckdb19QualifiedColumnNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_27QualifiedColumnHashFunctionENS0_23QualifiedColumnEqualityESaISt4pairIKS1_S7_EEEaSEOSE_.exit

bb.fo:                                            ; preds = %bb.fj
  %i.ry = landingpad { ptr, i32 }
          catch ptr null
  %i.rz = extractvalue { ptr, i32 } %i.ry, 0
  call void @__clang_call_terminate(ptr %i.rz) #26
  unreachable

_ZNSt13unordered_mapIN6duckdb19QualifiedColumnNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_27QualifiedColumnHashFunctionENS0_23QualifiedColumnEqualityESaISt4pairIKS1_S7_EEEaSEOSE_.exit: ; preds = %bb.fi, %_ZNSt10_HashtableIN6duckdb19QualifiedColumnNameESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_ENSt8__detail10_Select1stENS0_23QualifiedColumnEqualityENS0_27QualifiedColumnHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i
  %i.sa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14StarExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.fp unwind label %bb.ft

bb.fp:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb19QualifiedColumnNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_27QualifiedColumnHashFunctionENS0_23QualifiedColumnEqualityESaISt4pairIKS1_S7_EEEaSEOSE_.exit
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 256 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !19 ; 3 uses
  store ptr null, ptr %i.sb, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i: ; preds = %bb.fp
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !23
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(56) %i.sc) #21, !inline_history !388
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

bb.fq:                                            ; preds = %.noexc337, %bb.et
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit347

bb.fr:                                            ; preds = %bb.eu
  %i.sh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.si = load ptr, ptr %40, align 8, !tbaa !19   ; 3 uses
  %.not.i345 = icmp eq ptr %i.si, null
  br i1 %.not.i345, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit347, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i346

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i346: ; preds = %bb.fr
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !23
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(56) %i.si) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit347

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit347: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i346, %bb.fr, %bb.fq
  %.pn118 = phi { ptr, i32 } [ %i.sg, %bb.fq ], [ %i.sh, %bb.fr ], [ %i.sh, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i346 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.gs

bb.fs:                                            ; preds = %bb.gr, %bb.gq, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, %bb.fv, %bb.fu, %bb.ex, %bb.ew, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit342
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.ft:                                            ; preds = %bb.fd, %_ZNSt13unordered_mapIN6duckdb19QualifiedColumnNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_27QualifiedColumnHashFunctionENS0_23QualifiedColumnEqualityESaISt4pairIKS1_S7_EEEaSEOSE_.exit, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS6_16ParsedExpressionESt14default_deleteIS8_ELb1EEENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_SB_EEEaSEOSI_.exit, %_ZNSt13unordered_setIN6duckdb19QualifiedColumnNameENS0_27QualifiedColumnHashFunctionENS0_23QualifiedColumnEqualityESaIS1_EEaSEOS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.fc, %bb.fb, %bb.fa, %bb.ez
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.fu:                                            ; preds = %bb.ey
  %i.so = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14StarExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.fv unwind label %bb.fs

bb.fv:                                            ; preds = %bb.fu
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 256
  %i.sq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sp)
          to label %bb.fw unwind label %bb.fs

bb.fw:                                            ; preds = %bb.fv
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load i8, ptr %i.sr, align 8, !tbaa !117
  %i.st = icmp eq i8 %i.ss, -25
  br i1 %i.st, label %bb.fx, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.su = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #22
          to label %.noexc351 unwind label %bb.gm ; 6 uses

.noexc351:                                        ; preds = %bb.fx
  %i.sv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.sv, ptr %3, align 8, !tbaa !166, !noalias !593
  %i.sw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.sw, align 8, !tbaa !168, !noalias !593
  store i8 0, ptr %i.sv, align 8, !tbaa !30, !noalias !593
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.su, ptr noundef nonnull %3)
          to label %bb.fy unwind label %bb.fz, !noalias !593

bb.fy:                                            ; preds = %.noexc351
  %i.sx = load ptr, ptr %3, align 8, !tbaa !126, !noalias !593 ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.sv
  br i1 %i.sy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348: ; preds = %bb.fy
  call void @_ZdlPv(ptr noundef %i.sx) #23, !noalias !593
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i350

bb.fz:                                            ; preds = %.noexc351
  %i.sz = landingpad { ptr, i32 }
          cleanup
  %i.ta = load ptr, ptr %3, align 8, !tbaa !126, !noalias !593 ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.sv
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.fz
  call void @_ZdlPv(ptr noundef %i.ta) #23, !noalias !593
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.su) #23, !noalias !593
  br label %.body352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i350: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.tc = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 7 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !39 ; 6 uses
  %i.te = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !40
  %.not.i.i354 = icmp eq ptr %i.td, %i.tf
  br i1 %.not.i.i354, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i350
  %i.tg = ptrtoint ptr %i.su to i64
  store i64 %i.tg, ptr %i.td, align 8, !tbaa !19
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store ptr %i.th, ptr %i.tc, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.gb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i350
  %i.ti = load ptr, ptr %41, align 8, !tbaa !36   ; 10 uses
  %i.tj = ptrtoint ptr %i.td to i64               ; 3 uses
  %i.tk = ptrtoint ptr %i.ti to i64               ; 3 uses
  %i.tl = sub i64 %i.tj, %i.tk                    ; 3 uses
  %i.tm = icmp eq i64 %i.tl, 9223372036854775800
  br i1 %i.tm, label %bb.gc, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc356 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit393

.noexc356:                                        ; preds = %bb.gc
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.gb
  %i.tn = ashr exact i64 %i.tl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.tn, i64 1)
  %i.to = add nsw i64 %.sroa.speculated.i.i.i.i, %i.tn ; 2 uses
  %i.tp = icmp ult i64 %i.to, %i.tn
  %i.tq = call i64 @llvm.umin.i64(i64 %i.to, i64 1152921504606846975)
  %i.tr = select i1 %i.tp, i64 1152921504606846975, i64 %i.tq ; 3 uses
  %.not.i.i.i.i355 = icmp ne i64 %i.tr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i355)
  %i.ts = shl nuw nsw i64 %i.tr, 3
  %i.tt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ts) #22
          to label %.noexc357 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit393 ; 10 uses

.noexc357:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tl
  %i.tv = ptrtoint ptr %i.su to i64
  store i64 %i.tv, ptr %i.tu, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ti, %i.td
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc357
  %i.tw = sub i64 %i.tj, %i.tk
  %i.tx = add i64 %i.tw, -8                       ; 2 uses
  %i.ty = lshr i64 %i.tx, 3
  %i.tz = add nuw nsw i64 %i.ty, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.tx, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader787, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ua = add i64 %i.tj, -8
  %i.ub = sub i64 %i.ua, %i.tk
  %i.uc = and i64 %i.ub, -8
  %i.ud = add i64 %i.uc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.tt, i64 %i.ud
  %scevgep760 = getelementptr i8, ptr %i.ti, i64 %i.ud
  %bound0 = icmp ult ptr %i.tt, %scevgep760
  %bound1 = icmp ult ptr %i.ti, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader787, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.tz, 4611686018427387900     ; 3 uses
  %i.ue = shl i64 %n.vec, 3                       ; 2 uses
  %i.uf = getelementptr i8, ptr %i.tt, i64 %i.ue  ; 2 uses
  %i.ug = getelementptr i8, ptr %i.ti, i64 %i.ue
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.tt, i64 %i.uh ; 2 uses
  %next.gep761 = getelementptr i8, ptr %i.ti, i64 %i.uh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.ui = getelementptr i8, ptr %next.gep761, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep761, align 8, !tbaa !19, !alias.scope !601, !noalias !596
  %wide.load762 = load <2 x i64>, ptr %i.ui, align 8, !tbaa !19, !alias.scope !601, !noalias !596
  %i.uj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !604, !noalias !601
  store <2 x i64> %wide.load762, ptr %i.uj, align 8, !tbaa !19, !alias.scope !604, !noalias !601
  %i.uk = getelementptr i8, ptr %next.gep761, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep761, align 8, !tbaa !19, !alias.scope !601, !noalias !596
  store <2 x ptr> splat (ptr null), ptr %i.uk, align 8, !tbaa !19, !alias.scope !601, !noalias !596
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ul = icmp eq i64 %index.next, %n.vec
  br i1 %i.ul, label %middle.block, label %vector.body, !llvm.loop !606

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader787

.lr.ph.i.i.i.i.i.i.i.preheader787:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.tt, %vector.memcheck ], [ %i.tt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.uf, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ti, %vector.memcheck ], [ %i.ti, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ug, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader787, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.uo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader787 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.un, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader787 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.um = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !599, !noalias !596
  store i64 %i.um, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !596, !noalias !599
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !599, !noalias !596
  %i.un = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.un, %i.td
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !607

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc357
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.tt, %.noexc357 ], [ %i.uf, %middle.block ], [ %i.uo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.up = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ti) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.gd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.tt, ptr %41, align 8, !tbaa !36
  store ptr %i.up, ptr %i.tc, align 8, !tbaa !39
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tr
  store ptr %i.uq, ptr %i.te, align 8, !tbaa !40
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ga
  %i.ur = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14StarExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ge unwind label %bb.gn

bb.ge:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 256 ; 4 uses
  %i.ut = load ptr, ptr %i.tc, align 8, !tbaa !39 ; 6 uses
  %i.uu = load ptr, ptr %i.te, align 8, !tbaa !40
  %.not.i.i362 = icmp eq ptr %i.ut, %i.uu
  br i1 %.not.i.i362, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.uv = load i64, ptr %i.us, align 8, !tbaa !19
  store i64 %i.uv, ptr %i.ut, align 8, !tbaa !19
  store ptr null, ptr %i.us, align 8, !tbaa !19
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store ptr %i.uw, ptr %i.tc, align 8, !tbaa !39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit377

bb.gg:                                            ; preds = %bb.ge
  %i.ux = load ptr, ptr %41, align 8, !tbaa !36   ; 10 uses
  %i.uy = ptrtoint ptr %i.ut to i64               ; 3 uses
  %i.uz = ptrtoint ptr %i.ux to i64               ; 3 uses
  %i.va = sub i64 %i.uy, %i.uz                    ; 3 uses
  %i.vb = icmp eq i64 %i.va, 9223372036854775800
  br i1 %i.vb, label %bb.gh, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i363

bb.gh:                                            ; preds = %bb.gg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc375 unwind label %bb.gn

.noexc375:                                        ; preds = %bb.gh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i363: ; preds = %bb.gg
  %i.vc = ashr exact i64 %i.va, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i364 = call i64 @llvm.umax.i64(i64 %i.vc, i64 1)
  %i.vd = add nsw i64 %.sroa.speculated.i.i.i.i364, %i.vc ; 2 uses
  %i.ve = icmp ult i64 %i.vd, %i.vc
  %i.vf = call i64 @llvm.umin.i64(i64 %i.vd, i64 1152921504606846975)
  %i.vg = select i1 %i.ve, i64 1152921504606846975, i64 %i.vf ; 3 uses
  %.not.i.i.i.i365 = icmp ne i64 %i.vg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i365)
  %i.vh = shl nuw nsw i64 %i.vg, 3
  %i.vi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vh) #22
          to label %.noexc376 unwind label %bb.gn ; 10 uses

.noexc376:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i363
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.va
  %i.vk = load i64, ptr %i.us, align 8, !tbaa !19
  store i64 %i.vk, ptr %i.vj, align 8, !tbaa !19
  store ptr null, ptr %i.us, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i366 = icmp eq ptr %i.ux, %i.ut
  br i1 %.not10.i.i.i.i.i.i.i366, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i371, label %.lr.ph.i.i.i.i.i.i.i367.preheader

.lr.ph.i.i.i.i.i.i.i367.preheader:                ; preds = %.noexc376
  %i.vl = sub i64 %i.uy, %i.uz
  %i.vm = add i64 %i.vl, -8                       ; 2 uses
  %i.vn = lshr i64 %i.vm, 3
  %i.vo = add nuw nsw i64 %i.vn, 1                ; 2 uses
  %min.iters.check771 = icmp ult i64 %i.vm, 136
  br i1 %min.iters.check771, label %.lr.ph.i.i.i.i.i.i.i367.preheader786, label %vector.memcheck764

vector.memcheck764:                               ; preds = %.lr.ph.i.i.i.i.i.i.i367.preheader
  %i.vp = add i64 %i.uy, -8
  %i.vq = sub i64 %i.vp, %i.uz
  %i.vr = and i64 %i.vq, -8
  %i.vs = add i64 %i.vr, 8                        ; 2 uses
  %scevgep765 = getelementptr i8, ptr %i.vi, i64 %i.vs
  %scevgep766 = getelementptr i8, ptr %i.ux, i64 %i.vs
  %bound0767 = icmp ult ptr %i.vi, %scevgep766
  %bound1768 = icmp ult ptr %i.ux, %scevgep765
  %found.conflict769 = and i1 %bound0767, %bound1768
  br i1 %found.conflict769, label %.lr.ph.i.i.i.i.i.i.i367.preheader786, label %vector.ph772

vector.ph772:                                     ; preds = %vector.memcheck764
  %n.vec774 = and i64 %i.vo, 4611686018427387900  ; 3 uses
  %i.vt = shl i64 %n.vec774, 3                    ; 2 uses
  %i.vu = getelementptr i8, ptr %i.vi, i64 %i.vt  ; 2 uses
  %i.vv = getelementptr i8, ptr %i.ux, i64 %i.vt
  br label %vector.body775

vector.body775:                                   ; preds = %vector.body775, %vector.ph772
  %index776 = phi i64 [ 0, %vector.ph772 ], [ %index.next781, %vector.body775 ] ; 2 uses
  %i.vw = shl i64 %index776, 3                    ; 2 uses
  %next.gep777 = getelementptr i8, ptr %i.vi, i64 %i.vw ; 2 uses
  %next.gep778 = getelementptr i8, ptr %i.ux, i64 %i.vw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.vx = getelementptr i8, ptr %next.gep778, i64 16
  %wide.load779 = load <2 x i64>, ptr %next.gep778, align 8, !tbaa !19, !alias.scope !613, !noalias !608
  %wide.load780 = load <2 x i64>, ptr %i.vx, align 8, !tbaa !19, !alias.scope !613, !noalias !608
  %i.vy = getelementptr i8, ptr %next.gep777, i64 16
  store <2 x i64> %wide.load779, ptr %next.gep777, align 8, !tbaa !19, !alias.scope !616, !noalias !613
  store <2 x i64> %wide.load780, ptr %i.vy, align 8, !tbaa !19, !alias.scope !616, !noalias !613
  %i.vz = getelementptr i8, ptr %next.gep778, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep778, align 8, !tbaa !19, !alias.scope !613, !noalias !608
  store <2 x ptr> splat (ptr null), ptr %i.vz, align 8, !tbaa !19, !alias.scope !613, !noalias !608
  %index.next781 = add nuw i64 %index776, 4       ; 2 uses
  %i.wa = icmp eq i64 %index.next781, %n.vec774
  br i1 %i.wa, label %middle.block782, label %vector.body775, !llvm.loop !618

middle.block782:                                  ; preds = %vector.body775
  %cmp.n783 = icmp eq i64 %i.vo, %n.vec774
  br i1 %cmp.n783, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i371, label %.lr.ph.i.i.i.i.i.i.i367.preheader786

.lr.ph.i.i.i.i.i.i.i367.preheader786:             ; preds = %vector.memcheck764, %.lr.ph.i.i.i.i.i.i.i367.preheader, %middle.block782
  %.012.i.i.i.i.i.i.i368.ph = phi ptr [ %i.vi, %vector.memcheck764 ], [ %i.vi, %.lr.ph.i.i.i.i.i.i.i367.preheader ], [ %i.vu, %middle.block782 ]
  %.0911.i.i.i.i.i.i.i369.ph = phi ptr [ %i.ux, %vector.memcheck764 ], [ %i.ux, %.lr.ph.i.i.i.i.i.i.i367.preheader ], [ %i.vv, %middle.block782 ]
  br label %.lr.ph.i.i.i.i.i.i.i367

.lr.ph.i.i.i.i.i.i.i367:                          ; preds = %.lr.ph.i.i.i.i.i.i.i367.preheader786, %.lr.ph.i.i.i.i.i.i.i367
  %.012.i.i.i.i.i.i.i368 = phi ptr [ %i.wd, %.lr.ph.i.i.i.i.i.i.i367 ], [ %.012.i.i.i.i.i.i.i368.ph, %.lr.ph.i.i.i.i.i.i.i367.preheader786 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i369 = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i.i.i367 ], [ %.0911.i.i.i.i.i.i.i369.ph, %.lr.ph.i.i.i.i.i.i.i367.preheader786 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.wb = load i64, ptr %.0911.i.i.i.i.i.i.i369, align 8, !tbaa !19, !alias.scope !611, !noalias !608
  store i64 %i.wb, ptr %.012.i.i.i.i.i.i.i368, align 8, !tbaa !19, !alias.scope !608, !noalias !611
  store ptr null, ptr %.0911.i.i.i.i.i.i.i369, align 8, !tbaa !19, !alias.scope !611, !noalias !608
  %i.wc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 8 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i370 = icmp eq ptr %i.wc, %i.ut
  br i1 %.not.i.i.i.i.i.i.i370, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i371, label %.lr.ph.i.i.i.i.i.i.i367, !llvm.loop !619

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i371: ; preds = %.lr.ph.i.i.i.i.i.i.i367, %middle.block782, %.noexc376
  %.0.lcssa.i.i.i.i.i.i.i372 = phi ptr [ %i.vi, %.noexc376 ], [ %i.vu, %middle.block782 ], [ %i.wd, %.lr.ph.i.i.i.i.i.i.i367 ]
  %i.we = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i372, i64 8
  %.not.i23.i.i.i373 = icmp eq ptr %i.ux, null
  br i1 %.not.i23.i.i.i373, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i374, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i371
  call void @_ZdlPv(ptr noundef nonnull %i.ux) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i374

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i374: ; preds = %bb.gi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i371
  store ptr %i.vi, ptr %41, align 8, !tbaa !36
  store ptr %i.we, ptr %i.tc, align 8, !tbaa !39
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.vg
  store ptr %i.wf, ptr %i.te, align 8, !tbaa !40
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit377

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit377: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i374, %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA12_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.194") align 8 %42, ptr noundef nonnull align 1 dereferenceable(12) @.str.9, ptr noundef nonnull align 8 dereferenceable(24) %41)
          to label %bb.gj unwind label %bb.go

bb.gj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit377
  %i.wg = load ptr, ptr %42, align 8, !tbaa !389  ; 4 uses
  store ptr null, ptr %42, align 8, !tbaa !389
  %i.wh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14StarExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.gk unwind label %bb.gp

bb.gk:                                            ; preds = %bb.gj
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 256 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !19 ; 3 uses
  store ptr %i.wg, ptr %i.wi, align 8, !tbaa !19
  %.not.i.i.i.i.i378 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.i.i.i378, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit383, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i379

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i379: ; preds = %bb.gk
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !23
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8
  call void %i.wm(ptr noundef nonnull align 8 dereferenceable(56) %i.wj) #21, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit383

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit383: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i379, %bb.gk
  %i.wn = load ptr, ptr %42, align 8, !tbaa !389  ; 3 uses
  %.not.i384 = icmp eq ptr %i.wn, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit383
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !23
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8
  call void %i.wq(ptr noundef nonnull align 8 dereferenceable(209) %i.wn) #21, !inline_history !391
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit383, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.wr = load ptr, ptr %41, align 8, !tbaa !36   ; 3 uses
  %i.ws = load ptr, ptr %i.tc, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wr, %i.ws
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.wx, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.wr, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.wt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i385 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i.i.i385, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i386

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i386: ; preds = %.lr.ph.i.i.i
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !23
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8
  call void %i.ww(ptr noundef nonnull align 8 dereferenceable(56) %i.wt) #21, !inline_history !396
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i386, %.lr.ph.i.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i387 = icmp eq ptr %i.wx, %i.ws
  br i1 %.not.i.i.i387, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %41, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.wy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.wr, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.gl

bb.gl:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.wy) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

bb.gm:                                            ; preds = %bb.fx
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %.body352

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit393: ; preds = %bb.gc, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.xa = landingpad { ptr, i32 }
          cleanup
  %i.xb = load ptr, ptr %i.su, align 8, !tbaa !23
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8
  call void %i.xd(ptr noundef nonnull align 8 dereferenceable(56) %i.su) #21, !inline_history !26
  br label %.body352

bb.gn:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i363, %bb.gh, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %.body352

bb.go:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit377
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit399

bb.gp:                                            ; preds = %bb.gj
  %i.xg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i394 = icmp eq ptr %i.wg, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit396, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i395

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i395: ; preds = %bb.gp
  %i.xh = load ptr, ptr %i.wg, align 8, !tbaa !23
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8
  call void %i.xj(ptr noundef nonnull align 8 dereferenceable(56) %i.wg) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit396

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit396: ; preds = %bb.gp, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i395
  %i.xk = load ptr, ptr %42, align 8, !tbaa !389  ; 3 uses
  %.not.i397 = icmp eq ptr %i.xk, null
  br i1 %.not.i397, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit399, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i398
end_hunk_2
begin_hunk_3_@_ZN6duckdb11Transformer17TransformSubqueryERN17duckdb_libpgquery9PGSubLinkE:bb.a
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i313

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i313: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i312, %bb.fs
  %i.rg = load ptr, ptr %5, align 8, !tbaa !19, !noalias !767 ; 3 uses
  %.not.i4.i314 = icmp eq ptr %i.rg, null
  br i1 %.not.i4.i314, label %bb.fu, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i315

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i315: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i313
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !23, !noalias !767
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !noalias !767
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(56) %i.rg) #21, !noalias !767, !inline_history !423
  br label %bb.fu

bb.ft:                                            ; preds = %.noexc316
  %i.rk = landingpad { ptr, i32 }
          cleanup
  %i.rl = load ptr, ptr %6, align 8, !tbaa !19, !noalias !767 ; 3 uses
  %.not.i7.i305 = icmp eq ptr %i.rl, null
  br i1 %.not.i7.i305, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i307, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i306

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i306: ; preds = %bb.ft
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !23, !noalias !767
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !noalias !767
  call void %i.ro(ptr noundef nonnull align 8 dereferenceable(56) %i.rl) #21, !noalias !767, !inline_history !423
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i307

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i307: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i306, %bb.ft
  %i.rp = load ptr, ptr %5, align 8, !tbaa !19, !noalias !767 ; 3 uses
  %.not.i10.i308 = icmp eq ptr %i.rp, null
  br i1 %.not.i10.i308, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i310, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i309

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i309: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i307
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !23, !noalias !767
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !noalias !767
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(56) %i.rp) #21, !noalias !767, !inline_history !423
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i310

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i310: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i309, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i307
  call void @_ZdlPv(ptr noundef nonnull %i.ra) #23, !noalias !767
  br label %.body317

bb.fu:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i315, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rt = load ptr, ptr %36, align 8, !tbaa !19   ; 3 uses
  %.not.i319 = icmp eq ptr %i.rt, null
  br i1 %.not.i319, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit321, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i320

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i320: ; preds = %bb.fu
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !23
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8
  call void %i.rw(ptr noundef nonnull align 8 dereferenceable(56) %i.rt) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit321

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit321: ; preds = %bb.fu, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA11_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.194") align 8 %38, ptr noundef nonnull align 1 dereferenceable(11) @.str.106, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.fv unwind label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit443.thread

bb.fv:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit321
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.rx = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22
          to label %.noexc322 unwind label %bb.gt ; 3 uses

.noexc322:                                        ; preds = %bb.fv
  invoke void @_ZN6duckdb14CaseExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.rx)
          to label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit330 unwind label %bb.fw, !noalias !770

bb.fw:                                            ; preds = %.noexc322
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.rx) #23, !noalias !770
  br label %.body323

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit330: ; preds = %.noexc322
  store ptr %i.rx, ptr %39, align 8, !tbaa !333, !alias.scope !770
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  store ptr %i.ra, ptr %40, align 8, !tbaa !19
  %i.rz = load ptr, ptr %38, align 8, !tbaa !389
  store ptr null, ptr %38, align 8, !tbaa !389
  %i.sa = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 5 uses
  store ptr %i.rz, ptr %i.sa, align 8, !tbaa !19
  %i.sb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CaseExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.fx unwind label %bb.gu     ; 3 uses

bb.fx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit330
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 64 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !335 ; 5 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 72
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !338
  %.not.i.i337 = icmp eq ptr %i.sd, %i.sf
  br i1 %.not.i.i337, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.sg = load i64, ptr %40, align 8, !tbaa !19
  store i64 %i.sg, ptr %i.sd, align 8, !tbaa !19
  store ptr null, ptr %40, align 8, !tbaa !19
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.si = load i64, ptr %i.sa, align 8, !tbaa !19
  store i64 %i.si, ptr %i.sh, align 8, !tbaa !19
  store ptr null, ptr %i.sa, align 8, !tbaa !19
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store ptr %i.sj, ptr %i.sc, align 8, !tbaa !335
  br label %_ZNSt6vectorIN6duckdb9CaseCheckESaIS1_EE9push_backEOS1_.exit

bb.fz:                                            ; preds = %bb.fx
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 56
  invoke void @_ZNSt6vectorIN6duckdb9CaseCheckESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.sk, ptr %i.sd, ptr noundef nonnull align 8 dereferenceable(16) %40)
          to label %_ZNSt6vectorIN6duckdb9CaseCheckESaIS1_EE9push_backEOS1_.exit unwind label %bb.gu

_ZNSt6vectorIN6duckdb9CaseCheckESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.fy, %bb.fz
  %i.sl = load ptr, ptr %27, align 8, !tbaa !389  ; 4 uses
  store ptr null, ptr %27, align 8, !tbaa !389
  %i.sm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CaseExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ga unwind label %bb.gv

bb.ga:                                            ; preds = %_ZNSt6vectorIN6duckdb9CaseCheckESaIS1_EE9push_backEOS1_.exit
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 80 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !19 ; 3 uses
  store ptr %i.sl, ptr %i.sn, align 8, !tbaa !19
  %.not.i.i.i.i.i339 = icmp eq ptr %i.so, null
  br i1 %.not.i.i.i.i.i339, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit344, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i340

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i340: ; preds = %bb.ga
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !23
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef nonnull align 8 dereferenceable(56) %i.so) #21, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit344

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit344: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i340, %bb.ga
  %i.ss = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.gb unwind label %bb.gu     ; 3 uses

bb.gb:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit344
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 120 ; 2 uses
  %i.su = load ptr, ptr %39, align 8, !tbaa !333  ; 5 uses
  store ptr null, ptr %39, align 8, !tbaa !333
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 128 ; 3 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !39 ; 6 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ss, i64 136 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !40
  %.not.i.i345 = icmp eq ptr %i.sw, %i.sy
  br i1 %.not.i.i345, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.sz = ptrtoint ptr %i.su to i64
  store i64 %i.sz, ptr %i.sw, align 8, !tbaa !19
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store ptr %i.ta, ptr %i.sv, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit363

bb.gd:                                            ; preds = %bb.gb
  %i.tb = load ptr, ptr %i.st, align 8, !tbaa !36 ; 10 uses
  %i.tc = ptrtoint ptr %i.sw to i64               ; 3 uses
  %i.td = ptrtoint ptr %i.tb to i64               ; 3 uses
  %i.te = sub i64 %i.tc, %i.td                    ; 3 uses
  %i.tf = icmp eq i64 %i.te, 9223372036854775800
  br i1 %i.tf, label %bb.ge, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i346

bb.ge:                                            ; preds = %bb.gd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc358 unwind label %bb.gw

.noexc358:                                        ; preds = %bb.ge
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i346: ; preds = %bb.gd
  %i.tg = ashr exact i64 %i.te, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i347 = call i64 @llvm.umax.i64(i64 %i.tg, i64 1)
  %i.th = add nsw i64 %.sroa.speculated.i.i.i.i347, %i.tg ; 2 uses
  %i.ti = icmp ult i64 %i.th, %i.tg
  %i.tj = call i64 @llvm.umin.i64(i64 %i.th, i64 1152921504606846975)
  %i.tk = select i1 %i.ti, i64 1152921504606846975, i64 %i.tj ; 3 uses
  %.not.i.i.i.i348 = icmp ne i64 %i.tk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i348)
  %i.tl = shl nuw nsw i64 %i.tk, 3
  %i.tm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tl) #22
          to label %.noexc359 unwind label %bb.gw ; 10 uses

.noexc359:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i346
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.te
  %i.to = ptrtoint ptr %i.su to i64
  store i64 %i.to, ptr %i.tn, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i349 = icmp eq ptr %i.tb, %i.sw
  br i1 %.not10.i.i.i.i.i.i.i349, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354, label %.lr.ph.i.i.i.i.i.i.i350.preheader

.lr.ph.i.i.i.i.i.i.i350.preheader:                ; preds = %.noexc359
  %i.tp = sub i64 %i.tc, %i.td
  %i.tq = add i64 %i.tp, -8                       ; 2 uses
  %i.tr = lshr i64 %i.tq, 3
  %i.ts = add nuw nsw i64 %i.tr, 1                ; 2 uses
  %min.iters.check744 = icmp ult i64 %i.tq, 136
  br i1 %min.iters.check744, label %.lr.ph.i.i.i.i.i.i.i350.preheader759, label %vector.memcheck737

vector.memcheck737:                               ; preds = %.lr.ph.i.i.i.i.i.i.i350.preheader
  %i.tt = add i64 %i.tc, -8
  %i.tu = sub i64 %i.tt, %i.td
  %i.tv = and i64 %i.tu, -8
  %i.tw = add i64 %i.tv, 8                        ; 2 uses
  %scevgep738 = getelementptr i8, ptr %i.tm, i64 %i.tw
  %scevgep739 = getelementptr i8, ptr %i.tb, i64 %i.tw
  %bound0740 = icmp ult ptr %i.tm, %scevgep739
  %bound1741 = icmp ult ptr %i.tb, %scevgep738
  %found.conflict742 = and i1 %bound0740, %bound1741
  br i1 %found.conflict742, label %.lr.ph.i.i.i.i.i.i.i350.preheader759, label %vector.ph745

vector.ph745:                                     ; preds = %vector.memcheck737
  %n.vec747 = and i64 %i.ts, 4611686018427387900  ; 3 uses
  %i.tx = shl i64 %n.vec747, 3                    ; 2 uses
  %i.ty = getelementptr i8, ptr %i.tm, i64 %i.tx  ; 2 uses
  %i.tz = getelementptr i8, ptr %i.tb, i64 %i.tx
  br label %vector.body748

vector.body748:                                   ; preds = %vector.body748, %vector.ph745
  %index749 = phi i64 [ 0, %vector.ph745 ], [ %index.next754, %vector.body748 ] ; 2 uses
  %i.ua = shl i64 %index749, 3                    ; 2 uses
  %next.gep750 = getelementptr i8, ptr %i.tm, i64 %i.ua ; 2 uses
  %next.gep751 = getelementptr i8, ptr %i.tb, i64 %i.ua ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.ub = getelementptr i8, ptr %next.gep751, i64 16
  %wide.load752 = load <2 x i64>, ptr %next.gep751, align 8, !tbaa !19, !alias.scope !778, !noalias !773
  %wide.load753 = load <2 x i64>, ptr %i.ub, align 8, !tbaa !19, !alias.scope !778, !noalias !773
  %i.uc = getelementptr i8, ptr %next.gep750, i64 16
  store <2 x i64> %wide.load752, ptr %next.gep750, align 8, !tbaa !19, !alias.scope !781, !noalias !778
  store <2 x i64> %wide.load753, ptr %i.uc, align 8, !tbaa !19, !alias.scope !781, !noalias !778
  %i.ud = getelementptr i8, ptr %next.gep751, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep751, align 8, !tbaa !19, !alias.scope !778, !noalias !773
  store <2 x ptr> splat (ptr null), ptr %i.ud, align 8, !tbaa !19, !alias.scope !778, !noalias !773
  %index.next754 = add nuw i64 %index749, 4       ; 2 uses
  %i.ue = icmp eq i64 %index.next754, %n.vec747
  br i1 %i.ue, label %middle.block755, label %vector.body748, !llvm.loop !783

middle.block755:                                  ; preds = %vector.body748
  %cmp.n756 = icmp eq i64 %i.ts, %n.vec747
  br i1 %cmp.n756, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354, label %.lr.ph.i.i.i.i.i.i.i350.preheader759

.lr.ph.i.i.i.i.i.i.i350.preheader759:             ; preds = %vector.memcheck737, %.lr.ph.i.i.i.i.i.i.i350.preheader, %middle.block755
  %.012.i.i.i.i.i.i.i351.ph = phi ptr [ %i.tm, %vector.memcheck737 ], [ %i.tm, %.lr.ph.i.i.i.i.i.i.i350.preheader ], [ %i.ty, %middle.block755 ]
  %.0911.i.i.i.i.i.i.i352.ph = phi ptr [ %i.tb, %vector.memcheck737 ], [ %i.tb, %.lr.ph.i.i.i.i.i.i.i350.preheader ], [ %i.tz, %middle.block755 ]
  br label %.lr.ph.i.i.i.i.i.i.i350

.lr.ph.i.i.i.i.i.i.i350:                          ; preds = %.lr.ph.i.i.i.i.i.i.i350.preheader759, %.lr.ph.i.i.i.i.i.i.i350
  %.012.i.i.i.i.i.i.i351 = phi ptr [ %i.uh, %.lr.ph.i.i.i.i.i.i.i350 ], [ %.012.i.i.i.i.i.i.i351.ph, %.lr.ph.i.i.i.i.i.i.i350.preheader759 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i352 = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i.i.i350 ], [ %.0911.i.i.i.i.i.i.i352.ph, %.lr.ph.i.i.i.i.i.i.i350.preheader759 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.uf = load i64, ptr %.0911.i.i.i.i.i.i.i352, align 8, !tbaa !19, !alias.scope !776, !noalias !773
  store i64 %i.uf, ptr %.012.i.i.i.i.i.i.i351, align 8, !tbaa !19, !alias.scope !773, !noalias !776
  store ptr null, ptr %.0911.i.i.i.i.i.i.i352, align 8, !tbaa !19, !alias.scope !776, !noalias !773
  %i.ug = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i352, i64 8 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i351, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i353 = icmp eq ptr %i.ug, %i.sw
  br i1 %.not.i.i.i.i.i.i.i353, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354, label %.lr.ph.i.i.i.i.i.i.i350, !llvm.loop !784

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354: ; preds = %.lr.ph.i.i.i.i.i.i.i350, %middle.block755, %.noexc359
  %.0.lcssa.i.i.i.i.i.i.i355 = phi ptr [ %i.tm, %.noexc359 ], [ %i.ty, %middle.block755 ], [ %i.uh, %.lr.ph.i.i.i.i.i.i.i350 ]
  %i.ui = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i355, i64 8
  %.not.i23.i.i.i356 = icmp eq ptr %i.tb, null
  br i1 %.not.i23.i.i.i356, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i357, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354
  call void @_ZdlPv(ptr noundef nonnull %i.tb) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i357

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i357: ; preds = %bb.gf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i354
  store ptr %i.tm, ptr %i.st, align 8, !tbaa !36
  store ptr %i.ui, ptr %i.sv, align 8, !tbaa !39
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.tk
  store ptr %i.uj, ptr %i.sx, align 8, !tbaa !40
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit363

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit363: ; preds = %bb.gc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i357
  %i.uk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.gg unwind label %bb.gx

bb.gg:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit363
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ul = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #22
          to label %.noexc367 unwind label %bb.gx ; 5 uses

.noexc367:                                        ; preds = %bb.gg
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 56 ; 2 uses
  %i.un = load i64, ptr %i.um, align 8, !tbaa !694, !noalias !785
  store i64 %i.un, ptr %3, align 8, !tbaa !694, !noalias !785
  store ptr null, ptr %i.um, align 8, !tbaa !694, !noalias !785
  %i.uo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.uo, ptr %4, align 8, !tbaa !166, !noalias !785
  %i.up = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.up, align 8, !tbaa !168, !noalias !785
  store i8 0, ptr %i.uo, align 8, !tbaa !30, !noalias !785
  invoke void @_ZN6duckdb11SubqueryRefC1ENS_10unique_ptrINS_15SelectStatementESt14default_deleteIS2_ELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ul, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.gh unwind label %bb.gi, !noalias !785

bb.gh:                                            ; preds = %.noexc367
  %i.uq = load ptr, ptr %4, align 8, !tbaa !126, !noalias !785 ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.uo
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364: ; preds = %bb.gh
  call void @_ZdlPv(ptr noundef %i.uq) #23, !noalias !785
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364
  %i.us = load ptr, ptr %3, align 8, !tbaa !694, !noalias !785 ; 3 uses
  %.not.i.i365 = icmp eq ptr %i.us, null
  br i1 %.not.i.i365, label %bb.gj, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !23, !noalias !785
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !noalias !785
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(128) %i.us) #21, !noalias !785, !inline_history !788
  br label %bb.gj

bb.gi:                                            ; preds = %.noexc367
  %i.uw = landingpad { ptr, i32 }
          cleanup
  %i.ux = load ptr, ptr %4, align 8, !tbaa !126, !noalias !785 ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.uo
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.gi
  call void @_ZdlPv(ptr noundef %i.ux) #23, !noalias !785
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.uz = load ptr, ptr %3, align 8, !tbaa !694, !noalias !785 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.uz, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !23, !noalias !785
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !noalias !785
  call void %i.vc(ptr noundef nonnull align 8 dereferenceable(128) %i.uz) #21, !noalias !785, !inline_history !788
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  call void @_ZdlPv(ptr noundef nonnull %i.ul) #23, !noalias !785
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit416

bb.gj:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.vd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.gk unwind label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit422

bb.gk:                                            ; preds = %bb.gj
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 144 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !789 ; 3 uses
  store ptr %i.ul, ptr %i.ve, align 8, !tbaa !789
  %.not.i.i.i.i.i370 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i.i.i370, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.gk
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !23
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.vf) #21, !inline_history !791
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.vj = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22
          to label %bb.gl unwind label %bb.gy     ; 14 uses

bb.gl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  store i8 1, ptr %i.vk, align 8, !tbaa !795, !noalias !792
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vl, i8 0, i64 16, i1 false), !noalias !792
  store ptr %i.vn, ptr %i.vm, align 8, !tbaa !798, !noalias !792
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vj, i64 40
  store i64 1, ptr %i.vo, align 8, !tbaa !799, !noalias !792
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 48
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, i8 0, i64 16, i1 false), !noalias !792
  store float 1.000000e+00, ptr %i.vq, align 8, !tbaa !800, !noalias !792
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vj, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vr, i8 0, i64 16, i1 false), !noalias !792
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vj, i64 88
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vj, i64 104 ; 2 uses
  store ptr %i.vt, ptr %i.vs, align 8, !tbaa !166, !noalias !792
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vj, i64 96
  store i64 0, ptr %i.vu, align 8, !tbaa !168, !noalias !792
  store i8 0, ptr %i.vt, align 8, !tbaa !30, !noalias !792
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %i.vj, align 8, !tbaa !23, !noalias !792
end_hunk_3
begin_hunk_4_@_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISD_ELb1EEELb1ESaISG_EEESG_NSC_INS_13OrderModifierESE_ISJ_ELb1EEERbbSM_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  %i.bm = load ptr, ptr %13, align 16, !tbaa !36  ; 3 uses
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.bm, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.bo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(56) %i.bo) #21, !inline_history !396
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bn
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 16, !tbaa !36
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bm, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.n
  %i.bu = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.af
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.bw = load ptr, ptr %11, align 8, !tbaa !126  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.r
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.by = load ptr, ptr %10, align 8, !tbaa !126  ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.e
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  call void @_ZdlPv(ptr noundef %i.by) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  ret void

bb.o:                                             ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.p:                                             ; preds = %.noexc.i18
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.q:                                             ; preds = %.noexc.i22, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.r:                                             ; preds = %bb.l
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %15, align 8, !tbaa !266  ; 3 uses
  %.not.i32 = icmp eq ptr %i.ce, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit34, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i33

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i33: ; preds = %bb.r
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #21, !inline_history !274
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit34

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit34: ; preds = %bb.r, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i33
  %i.ci = load ptr, ptr %14, align 8, !tbaa !19   ; 3 uses
  %.not.i35 = icmp eq ptr %i.ci, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i36

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i36: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit34
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(56) %i.ci) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit34, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i36
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #21
  %i.cm = load ptr, ptr %12, align 8, !tbaa !126  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.af
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37
  call void @_ZdlPv(ptr noundef %i.cm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.q ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.cd, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.co = load ptr, ptr %11, align 8, !tbaa !126  ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.r
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @_ZdlPv(ptr noundef %i.co) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %i.cq = load ptr, ptr %10, align 8, !tbaa !126  ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.e
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @_ZdlPv(ptr noundef %i.cq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.o ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  call void @_ZdlPv(ptr noundef nonnull %i.d) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJNS1_INS0_18FunctionExpressionES3_IS9_ELb1EEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !389
  store ptr null, ptr %1, align 8, !tbaa !389
  store ptr %i.e, ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !39
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 10 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load ptr, ptr %1, align 8, !tbaa !389
  store ptr null, ptr %1, align 8, !tbaa !389
  store ptr %i.t, ptr %i.s, align 8, !tbaa !7
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.u = sub i64 %i.h, %i.i
  %i.v = add i64 %i.u, -8                         ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = add i64 %i.h, -8
  %i.z = sub i64 %i.y, %i.i
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ab
  %scevgep5 = getelementptr i8, ptr %i.g, i64 %i.ab
  %bound0 = icmp ult ptr %i.r, %scevgep5
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.af ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.g, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !19, !alias.scope !1011, !noalias !1006
  %wide.load7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !19, !alias.scope !1011, !noalias !1006
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !1014, !noalias !1011
  store <2 x i64> %wide.load7, ptr %i.ah, align 8, !tbaa !19, !alias.scope !1014, !noalias !1011
  %i.ai = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !19, !alias.scope !1011, !noalias !1006
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !19, !alias.scope !1011, !noalias !1006
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1016

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1009, !noalias !1006
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1006, !noalias !1009
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1009, !noalias !1006
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1017

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18FunctionExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18FunctionExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18FunctionExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !36
  store ptr %i.an, ptr %i.a, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18FunctionExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !44
  store ptr null, ptr %1, align 8, !tbaa !44
  store ptr %i.e, ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !39
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 10 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load ptr, ptr %1, align 8, !tbaa !44
  store ptr null, ptr %1, align 8, !tbaa !44
  store ptr %i.t, ptr %i.s, align 8, !tbaa !7
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.u = sub i64 %i.h, %i.i
  %i.v = add i64 %i.u, -8                         ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = add i64 %i.h, -8
  %i.z = sub i64 %i.y, %i.i
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ab
  %scevgep5 = getelementptr i8, ptr %i.g, i64 %i.ab
  %bound0 = icmp ult ptr %i.r, %scevgep5
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.af ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.g, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !19, !alias.scope !1023, !noalias !1018
  %wide.load7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !19, !alias.scope !1023, !noalias !1018
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !1026, !noalias !1023
  store <2 x i64> %wide.load7, ptr %i.ah, align 8, !tbaa !19, !alias.scope !1026, !noalias !1023
  %i.ai = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !19, !alias.scope !1023, !noalias !1018
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !19, !alias.scope !1023, !noalias !1018
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1028

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1021, !noalias !1018
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1018, !noalias !1021
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1021, !noalias !1018
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1029

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !36
  store ptr %i.an, ptr %i.a, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISC_ELb1EEELb1ESaISF_EEESF_NSB_INS_13OrderModifierESD_ISI_ELb1EEERbbSL_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.194") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.duckdb::vector.28", align 16 ; 7 uses
  %14 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %15 = alloca %"class.duckdb::unique_ptr.67", align 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #22 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.c, ptr %10, align 8, !tbaa !166
  %i.d = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !168  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %10, align 8, !tbaa !126
  %i.k = load i64, ptr %i.e, align 8, !tbaa !30
  store i64 %i.k, ptr %i.c, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !168
  store ptr %i.e, ptr %1, align 8, !tbaa !126
  store i64 0, ptr %i.m, align 8, !tbaa !168
  store i8 0, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.o, ptr %11, align 8, !tbaa !166
  %i.p = load ptr, ptr %2, align 8, !tbaa !126    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !168  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.p, ptr %11, align 8, !tbaa !126
  %i.w = load i64, ptr %i.q, align 8, !tbaa !30
  store i64 %i.w, ptr %i.o, align 8, !tbaa !30
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre39 = load i64, ptr %.phi.trans.insert38, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.x = phi i64 [ %i.t, %bb.c ], [ %.pre39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.x, ptr %i.z, align 8, !tbaa !168
  store ptr %i.q, ptr %2, align 8, !tbaa !126
  store i64 0, ptr %i.y, align 8, !tbaa !168
  store i8 0, ptr %i.q, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.aa = load ptr, ptr %3, align 8, !tbaa !239   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.ab, ptr %12, align 8, !tbaa !166
  %i.ac = icmp eq ptr %i.aa, null
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.120) #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !167
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %bb.k   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i
  store ptr %i.af, ptr %12, align 8, !tbaa !126
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !167
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc15, %bb.e
  %i.ah = phi ptr [ %i.af, %.noexc15 ], [ %i.ab, %bb.e ] ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !30
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !30
end_hunk_4
begin_hunk_5_@_ZN6duckdb11Transformer22TransformAExprInternalERN17duckdb_libpgquery7PGAExprE:bb.a
    i32 11, label %bb.dh
    i32 4, label %bb.fa
    i32 3, label %bb.fm
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !529  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  store ptr %i.z, ptr %30, align 8, !noalias !1088
  %.not654 = icmp eq ptr %i.z, null
  br i1 %.not654, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %33, align 8, !tbaa !7, !alias.scope !1088
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %.noexc133 unwind label %bb.ai, !inline_history !22

.noexc133:                                        ; preds = %bb.h
  %i.aa = load ptr, ptr %30, align 8, !tbaa !20, !noalias !1088
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %33, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.aa)
          to label %bb.i unwind label %bb.ai, !inline_history !22

bb.i:                                             ; preds = %bb.g, %.noexc133
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1065 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  store ptr %i.ac, ptr %29, align 8, !noalias !1091
  %.not655 = icmp eq ptr %i.ac, null
  br i1 %.not655, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %34, align 8, !tbaa !7, !alias.scope !1091
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %.noexc135 unwind label %bb.aj, !inline_history !22

.noexc135:                                        ; preds = %bb.k
  %i.ad = load ptr, ptr %29, align 8, !tbaa !20, !noalias !1091
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %34, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ad)
          to label %bb.l unwind label %bb.aj, !inline_history !22

bb.l:                                             ; preds = %bb.j, %.noexc135
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.ae = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22
          to label %.noexc138 unwind label %bb.ak ; 4 uses

.noexc138:                                        ; preds = %bb.l
  invoke void @_ZN6duckdb18SubqueryExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(81) %i.ae)
          to label %bb.n unwind label %bb.m, !noalias !1094

bb.m:                                             ; preds = %.noexc138
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #23, !noalias !1094
  br label %.body

bb.n:                                             ; preds = %.noexc138
  store ptr %i.ae, ptr %35, align 8, !tbaa !676, !alias.scope !1094
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.ag = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22
          to label %bb.o unwind label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread ; 15 uses

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 1, ptr %i.ah, align 8, !tbaa !795, !noalias !1097
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !noalias !1097
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !798, !noalias !1097
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 1, ptr %i.al, align 8, !tbaa !799, !noalias !1097
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !1097
  store float 1.000000e+00, ptr %i.an, align 8, !tbaa !800, !noalias !1097
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !noalias !1097
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 104 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !166, !noalias !1097
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store i64 0, ptr %i.ar, align 8, !tbaa !168, !noalias !1097
  store i8 0, ptr %i.aq, align 8, !tbaa !30, !noalias !1097
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %i.ag, align 8, !tbaa !23, !noalias !1097
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  store ptr null, ptr %i.as, align 8, !tbaa !801, !noalias !1097
  store ptr %i.ag, ptr %36, align 8, !tbaa !694, !alias.scope !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.at = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #22
          to label %.noexc140 unwind label %.body141.thread ; 3 uses

.noexc140:                                        ; preds = %bb.o
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.at)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.p, !noalias !1100

bb.p:                                             ; preds = %.noexc140
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.at) #23, !noalias !1100
  br label %.body141

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %.noexc140
  store ptr %i.at, ptr %37, align 8, !tbaa !710, !alias.scope !1100
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.aw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %.noexc144 unwind label %bb.al ; 3 uses

.noexc144:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.ay = load i64, ptr %34, align 8, !tbaa !19
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !19
  store ptr null, ptr %34, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.aw, ptr %38, align 8, !tbaa !36
  store ptr %i.az, ptr %i.av, align 8, !tbaa !39
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !40
  %i.ba = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.q unwind label %bb.al      ; 3 uses

bb.q:                                             ; preds = %.noexc144
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA7_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.194") align 8 %39, ptr noundef nonnull align 1 dereferenceable(7) @.str.94, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.r unwind label %bb.am

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 3 uses
  %i.bc = load ptr, ptr %39, align 8, !tbaa !389  ; 5 uses
  store ptr null, ptr %39, align 8, !tbaa !389
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 128 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %.not.i.i145 = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i.i145, label %bb.s, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.r
  %i.bh = ptrtoint ptr %i.bc to i64
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !36 ; 10 uses
  %i.bk = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i146

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc158 unwind label %bb.an

.noexc158:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i146: ; preds = %bb.s
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i147 = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i147, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 4 uses
  %.not.i.i.i.i148 = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i148)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #22
          to label %.noexc159 unwind label %bb.an ; 12 uses

.noexc159:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i146
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  %i.bw = ptrtoint ptr %i.bc to i64
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i149 = icmp eq ptr %i.bj, %i.be
  br i1 %.not10.i.i.i.i.i.i.i149, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i150.preheader

.lr.ph.i.i.i.i.i.i.i150.preheader:                ; preds = %.noexc159
  %i.bx = sub i64 %i.bk, %i.bl
  %i.by = add i64 %i.bx, -8                       ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check866 = icmp ult i64 %i.by, 136
  br i1 %min.iters.check866, label %.lr.ph.i.i.i.i.i.i.i150.preheader881, label %vector.memcheck859

vector.memcheck859:                               ; preds = %.lr.ph.i.i.i.i.i.i.i150.preheader
  %i.cb = add i64 %i.bk, -8
  %i.cc = sub i64 %i.cb, %i.bl
  %i.cd = and i64 %i.cc, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %scevgep860 = getelementptr i8, ptr %i.bu, i64 %i.ce
  %scevgep861 = getelementptr i8, ptr %i.bj, i64 %i.ce
  %bound0862 = icmp ult ptr %i.bu, %scevgep861
  %bound1863 = icmp ult ptr %i.bj, %scevgep860
  %found.conflict864 = and i1 %bound0862, %bound1863
  br i1 %found.conflict864, label %.lr.ph.i.i.i.i.i.i.i150.preheader881, label %vector.ph867

vector.ph867:                                     ; preds = %vector.memcheck859
  %n.vec869 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec869, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bu, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bj, i64 %i.cf
  br label %vector.body870

vector.body870:                                   ; preds = %vector.body870, %vector.ph867
  %index871 = phi i64 [ 0, %vector.ph867 ], [ %index.next876, %vector.body870 ] ; 2 uses
  %i.ci = shl i64 %index871, 3                    ; 2 uses
  %next.gep872 = getelementptr i8, ptr %i.bu, i64 %i.ci ; 2 uses
  %next.gep873 = getelementptr i8, ptr %i.bj, i64 %i.ci ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.cj = getelementptr i8, ptr %next.gep873, i64 16
  %wide.load874 = load <2 x i64>, ptr %next.gep873, align 8, !tbaa !19, !alias.scope !1108, !noalias !1103
  %wide.load875 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !19, !alias.scope !1108, !noalias !1103
  %i.ck = getelementptr i8, ptr %next.gep872, i64 16
  store <2 x i64> %wide.load874, ptr %next.gep872, align 8, !tbaa !19, !alias.scope !1111, !noalias !1108
  store <2 x i64> %wide.load875, ptr %i.ck, align 8, !tbaa !19, !alias.scope !1111, !noalias !1108
  %i.cl = getelementptr i8, ptr %next.gep873, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep873, align 8, !tbaa !19, !alias.scope !1108, !noalias !1103
  store <2 x ptr> splat (ptr null), ptr %i.cl, align 8, !tbaa !19, !alias.scope !1108, !noalias !1103
  %index.next876 = add nuw i64 %index871, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next876, %n.vec869
  br i1 %i.cm, label %middle.block877, label %vector.body870, !llvm.loop !1113

middle.block877:                                  ; preds = %vector.body870
  %cmp.n878 = icmp eq i64 %i.ca, %n.vec869
  br i1 %cmp.n878, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i150.preheader881

.lr.ph.i.i.i.i.i.i.i150.preheader881:             ; preds = %vector.memcheck859, %.lr.ph.i.i.i.i.i.i.i150.preheader, %middle.block877
  %.012.i.i.i.i.i.i.i151.ph = phi ptr [ %i.bu, %vector.memcheck859 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i150.preheader ], [ %i.cg, %middle.block877 ]
  %.0911.i.i.i.i.i.i.i152.ph = phi ptr [ %i.bj, %vector.memcheck859 ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i150.preheader ], [ %i.ch, %middle.block877 ]
  br label %.lr.ph.i.i.i.i.i.i.i150

.lr.ph.i.i.i.i.i.i.i150:                          ; preds = %.lr.ph.i.i.i.i.i.i.i150.preheader881, %.lr.ph.i.i.i.i.i.i.i150
  %.012.i.i.i.i.i.i.i151 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i150 ], [ %.012.i.i.i.i.i.i.i151.ph, %.lr.ph.i.i.i.i.i.i.i150.preheader881 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i152 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i150 ], [ %.0911.i.i.i.i.i.i.i152.ph, %.lr.ph.i.i.i.i.i.i.i150.preheader881 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.cn = load i64, ptr %.0911.i.i.i.i.i.i.i152, align 8, !tbaa !19, !alias.scope !1106, !noalias !1103
  store i64 %i.cn, ptr %.012.i.i.i.i.i.i.i151, align 8, !tbaa !19, !alias.scope !1103, !noalias !1106
  store ptr null, ptr %.0911.i.i.i.i.i.i.i152, align 8, !tbaa !19, !alias.scope !1106, !noalias !1103
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i152, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i151, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i153 = icmp eq ptr %i.co, %i.be
  br i1 %.not.i.i.i.i.i.i.i153, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i150, !llvm.loop !1114

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154: ; preds = %.lr.ph.i.i.i.i.i.i.i150, %middle.block877, %.noexc159
  %.0.lcssa.i.i.i.i.i.i.i155 = phi ptr [ %i.bu, %.noexc159 ], [ %i.cg, %middle.block877 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i150 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i155, i64 8 ; 2 uses
  %.not.i23.i.i.i156 = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i.i.i156, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread800, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread800: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !36
  store ptr %i.cq, ptr %i.bd, align 8, !tbaa !39
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cr, ptr %i.bf, align 8, !tbaa !40
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i154
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #23
  %.pre669.pre = load ptr, ptr %39, align 8, !tbaa !389 ; 3 uses
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !36
  store ptr %i.cq, ptr %i.bd, align 8, !tbaa !39
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cs, ptr %i.bf, align 8, !tbaa !40
  %.not.i161 = icmp eq ptr %.pre669.pre, null
  br i1 %.not.i161, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ct = load ptr, ptr %.pre669.pre, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(209) %.pre669.pre) #21, !inline_history !391
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread800, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.cw = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #22
          to label %bb.u unwind label %bb.ao      ; 11 uses

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 8, ptr %i.cx, align 8, !tbaa !1115, !noalias !1134
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !166, !noalias !1134
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 0, ptr %i.da, align 8, !tbaa !168, !noalias !1134
  store i8 0, ptr %i.cz, align 8, !tbaa !30, !noalias !1134
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store ptr null, ptr %i.db, align 8, !tbaa !1137, !noalias !1134
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store i64 -1, ptr %i.dc, align 8, !tbaa !511, !noalias !1134
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dd, i8 0, i64 40, i1 false), !noalias !1134
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb13EmptyTableRefE, i64 16), ptr %i.cw, align 8, !tbaa !23, !noalias !1134
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.v unwind label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit180

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 144 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !789 ; 3 uses
  store ptr %i.cw, ptr %i.df, align 8, !tbaa !789
  %.not.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.v
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.dg) #21, !inline_history !791
  br label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i
  %i.dk = load ptr, ptr %37, align 8, !tbaa !710  ; 4 uses
  store ptr null, ptr %37, align 8, !tbaa !710
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 120 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !804 ; 3 uses
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !804
  %.not.i.i.i.i.i165 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i165, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.w
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.dn) #21, !inline_history !805
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.w
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  %i.dt = load ptr, ptr %36, align 8, !tbaa !694
  store ptr null, ptr %36, align 8, !tbaa !694
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !694 ; 3 uses
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !694
  %.not.i.i.i.i.i167 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i167, label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.x
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !23
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(128) %i.du) #21, !inline_history !695
  br label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.y unwind label %bb.al

bb.y:                                             ; preds = %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  store i8 4, ptr %i.dz, align 8, !tbaa !682
  %i.ea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.z unwind label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 72 ; 2 uses
  %i.ec = load ptr, ptr %33, align 8, !tbaa !19
  store ptr null, ptr %33, align 8, !tbaa !19
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !19 ; 3 uses
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !19
  %.not.i.i.i.i.i168 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i168, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.z
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(56) %i.ed) #21, !inline_history !25
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.z, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.eh = invoke noundef zeroext i8 @_ZN6duckdb24OperatorToExpressionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.aa unwind label %bb.al
end_hunk_5
begin_hunk_6_@_ZN6duckdb11Transformer22TransformAExprInternalERN17duckdb_libpgquery7PGAExprE:bb.a
_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196: ; preds = %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.hw = load ptr, ptr %33, align 8, !tbaa !19   ; 3 uses
  %.not.i197 = icmp eq ptr %i.hw, null
  br i1 %.not.i197, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !23
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(56) %i.hw) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.gu

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183: ; preds = %bb.az, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i182, %bb.ap, %bb.ao, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ar, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174, %bb.al
  %.pn116.pn = phi { ptr, i32 } [ %.pn116614, %bb.ar ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ex, %bb.al ], [ %i.fh, %bb.ao ], [ %.pn112, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174 ], [ %i.fi, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit180 ], [ %i.fm, %bb.ap ], [ %i.fm, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i182 ], [ %i.gw, %bb.az ], [ %i.gn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.ia = load ptr, ptr %37, align 8, !tbaa !710  ; 3 uses
  %.not.i200 = icmp eq ptr %i.ia, null
  br i1 %.not.i200, label %.body141, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !23
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(240) %i.ia) #21, !inline_history !806
  br label %.body141

.body141:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183, %bb.p
  %.pn116.pn.pn.ph = phi { ptr, i32 } [ %.pn116.pn, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201 ], [ %.pn116.pn, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183 ], [ %i.au, %bb.p ] ; 2 uses
  %.pr = load ptr, ptr %36, align 8, !tbaa !694   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  %.not.i203 = icmp eq ptr %.pr, null
  br i1 %.not.i203, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205, label %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge

.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge: ; preds = %.body141
  %.pre670 = load ptr, ptr %.pr, align 8, !tbaa !23
  br label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204: ; preds = %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge, %.body141.thread
  %i.ie = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), %.body141.thread ], [ %.pre670, %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge ]
  %.pn116.pn.pn617 = phi { ptr, i32 } [ %i.ew, %.body141.thread ], [ %.pn116.pn.pn.ph, %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge ]
  %i.if = phi ptr [ %i.ag, %.body141.thread ], [ %.pr, %.body141._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204_crit_edge ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(128) %i.if) #21, !inline_history !696
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204, %.body141
  %.pn116.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn116.pn.pn617, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204 ], [ %.pn116.pn.pn.ph, %.body141 ] ; 2 uses
  %.pr619 = load ptr, ptr %35, align 8, !tbaa !676 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %.not.i206 = icmp eq ptr %.pr619, null
  br i1 %.not.i206, label %.body, label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207

_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205
  %.pn116.pn.pn.pn622 = phi { ptr, i32 } [ %i.ev, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread ], [ %.pn116.pn.pn.pn.ph, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205 ]
  %i.ii = phi ptr [ %i.ae, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205.thread ], [ %.pr619, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205 ] ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !23
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(81) %i.ii) #21, !inline_history !809
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205, %bb.ak, %bb.m
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.m ], [ %i.eu, %bb.ak ], [ %.pn116.pn.pn.pn.ph, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205 ], [ %.pn116.pn.pn.pn622, %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  %i.im = load ptr, ptr %34, align 8, !tbaa !19   ; 3 uses
  %.not.i209 = icmp eq ptr %i.im, null
  br i1 %.not.i209, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210: ; preds = %.body
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !23
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(56) %i.im) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210, %.body, %bb.aj
  %.pn116.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.aj ], [ %.pn116.pn.pn.pn.pn, %.body ], [ %.pn116.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.iq = load ptr, ptr %33, align 8, !tbaa !19   ; 3 uses
  %.not.i212 = icmp eq ptr %i.iq, null
  br i1 %.not.i212, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !23
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(56) %i.iq) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211, %bb.ai
  %.pn116.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.ai ], [ %.pn116.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211 ], [ %.pn116.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.gv

bb.bd:                                            ; preds = %bb.e
  invoke void @_ZN6duckdb11Transformer21TransformInExpressionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN17duckdb_libpgquery7PGAExprE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.gu unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.bf:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !529 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store ptr %i.iw, ptr %26, align 8, !noalias !1141
  %.not652 = icmp eq ptr %i.iw, null
  br i1 %.not652, label %.thread803, label %bb.bg

.thread803:                                       ; preds = %bb.bf
  store ptr null, ptr %43, align 8, !tbaa !7, !alias.scope !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %i.ix = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %.noexc215 unwind label %bb.bs, !inline_history !22

.noexc215:                                        ; preds = %bb.bg
  %i.iz = load ptr, ptr %26, align 8, !tbaa !20, !noalias !1141
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %43, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.iz)
          to label %bb.bh unwind label %bb.bs, !inline_history !22

bb.bh:                                            ; preds = %.noexc215
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %42, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39 ; 3 uses
  %.phi.trans.insert667 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %.pre668 = load ptr, ptr %.phi.trans.insert667, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %i.ja = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %.not.i.i218 = icmp eq ptr %.pre, %.pre668
  br i1 %.not.i.i218, label %bb.bi, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread: ; preds = %bb.bh
  %i.jc = load i64, ptr %43, align 8, !tbaa !19
  store i64 %i.jc, ptr %.pre, align 8, !tbaa !19
  %i.jd = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.jd, ptr %i.ja, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236

bb.bi:                                            ; preds = %.thread803, %bb.bh
  %i.je = phi ptr [ %i.iy, %.thread803 ], [ %i.jb, %bb.bh ] ; 3 uses
  %i.jf = phi ptr [ %i.ix, %.thread803 ], [ %i.ja, %bb.bh ] ; 3 uses
  %i.jg = phi ptr [ null, %.thread803 ], [ %.pre668, %bb.bh ] ; 3 uses
  %i.jh = load ptr, ptr %42, align 8, !tbaa !36   ; 10 uses
  %i.ji = ptrtoint ptr %i.jg to i64               ; 3 uses
  %i.jj = ptrtoint ptr %i.jh to i64               ; 3 uses
  %i.jk = sub i64 %i.ji, %i.jj                    ; 3 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775800
  br i1 %i.jl, label %bb.bj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc231 unwind label %bb.bt

.noexc231:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219: ; preds = %bb.bi
  %i.jm = ashr exact i64 %i.jk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i220 = call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i.i220, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 1152921504606846975)
  %i.jq = select i1 %i.jo, i64 1152921504606846975, i64 %i.jp ; 3 uses
  %.not.i.i.i.i221 = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i221)
  %i.jr = shl nuw nsw i64 %i.jq, 3
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #22
          to label %.noexc232 unwind label %bb.bt ; 10 uses

.noexc232:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jk
  %i.ju = load i64, ptr %43, align 8, !tbaa !19
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !19
  store ptr null, ptr %43, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i222 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not10.i.i.i.i.i.i.i222, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, label %.lr.ph.i.i.i.i.i.i.i223.preheader

.lr.ph.i.i.i.i.i.i.i223.preheader:                ; preds = %.noexc232
  %i.jv = sub i64 %i.ji, %i.jj
  %i.jw = add i64 %i.jv, -8                       ; 2 uses
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check822 = icmp ult i64 %i.jw, 136
  br i1 %min.iters.check822, label %.lr.ph.i.i.i.i.i.i.i223.preheader884, label %vector.memcheck815

vector.memcheck815:                               ; preds = %.lr.ph.i.i.i.i.i.i.i223.preheader
  %i.jz = add i64 %i.ji, -8
  %i.ka = sub i64 %i.jz, %i.jj
  %i.kb = and i64 %i.ka, -8
  %i.kc = add i64 %i.kb, 8                        ; 2 uses
  %scevgep816 = getelementptr i8, ptr %i.js, i64 %i.kc
  %scevgep817 = getelementptr i8, ptr %i.jh, i64 %i.kc
  %bound0818 = icmp ult ptr %i.js, %scevgep817
  %bound1819 = icmp ult ptr %i.jh, %scevgep816
  %found.conflict820 = and i1 %bound0818, %bound1819
  br i1 %found.conflict820, label %.lr.ph.i.i.i.i.i.i.i223.preheader884, label %vector.ph823

vector.ph823:                                     ; preds = %vector.memcheck815
  %n.vec825 = and i64 %i.jy, 4611686018427387900  ; 3 uses
  %i.kd = shl i64 %n.vec825, 3                    ; 2 uses
  %i.ke = getelementptr i8, ptr %i.js, i64 %i.kd  ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jh, i64 %i.kd
  br label %vector.body826

vector.body826:                                   ; preds = %vector.body826, %vector.ph823
  %index827 = phi i64 [ 0, %vector.ph823 ], [ %index.next832, %vector.body826 ] ; 2 uses
  %i.kg = shl i64 %index827, 3                    ; 2 uses
  %next.gep828 = getelementptr i8, ptr %i.js, i64 %i.kg ; 2 uses
  %next.gep829 = getelementptr i8, ptr %i.jh, i64 %i.kg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %i.kh = getelementptr i8, ptr %next.gep829, i64 16
  %wide.load830 = load <2 x i64>, ptr %next.gep829, align 8, !tbaa !19, !alias.scope !1149, !noalias !1144
  %wide.load831 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !19, !alias.scope !1149, !noalias !1144
  %i.ki = getelementptr i8, ptr %next.gep828, i64 16
  store <2 x i64> %wide.load830, ptr %next.gep828, align 8, !tbaa !19, !alias.scope !1152, !noalias !1149
  store <2 x i64> %wide.load831, ptr %i.ki, align 8, !tbaa !19, !alias.scope !1152, !noalias !1149
  %i.kj = getelementptr i8, ptr %next.gep829, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep829, align 8, !tbaa !19, !alias.scope !1149, !noalias !1144
  store <2 x ptr> splat (ptr null), ptr %i.kj, align 8, !tbaa !19, !alias.scope !1149, !noalias !1144
  %index.next832 = add nuw i64 %index827, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next832, %n.vec825
  br i1 %i.kk, label %middle.block833, label %vector.body826, !llvm.loop !1154

middle.block833:                                  ; preds = %vector.body826
  %cmp.n834 = icmp eq i64 %i.jy, %n.vec825
  br i1 %cmp.n834, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, label %.lr.ph.i.i.i.i.i.i.i223.preheader884

.lr.ph.i.i.i.i.i.i.i223.preheader884:             ; preds = %vector.memcheck815, %.lr.ph.i.i.i.i.i.i.i223.preheader, %middle.block833
  %.012.i.i.i.i.i.i.i224.ph = phi ptr [ %i.js, %vector.memcheck815 ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i223.preheader ], [ %i.ke, %middle.block833 ]
  %.0911.i.i.i.i.i.i.i225.ph = phi ptr [ %i.jh, %vector.memcheck815 ], [ %i.jh, %.lr.ph.i.i.i.i.i.i.i223.preheader ], [ %i.kf, %middle.block833 ]
  br label %.lr.ph.i.i.i.i.i.i.i223

.lr.ph.i.i.i.i.i.i.i223:                          ; preds = %.lr.ph.i.i.i.i.i.i.i223.preheader884, %.lr.ph.i.i.i.i.i.i.i223
  %.012.i.i.i.i.i.i.i224 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i223 ], [ %.012.i.i.i.i.i.i.i224.ph, %.lr.ph.i.i.i.i.i.i.i223.preheader884 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i225 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i.i223 ], [ %.0911.i.i.i.i.i.i.i225.ph, %.lr.ph.i.i.i.i.i.i.i223.preheader884 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %i.kl = load i64, ptr %.0911.i.i.i.i.i.i.i225, align 8, !tbaa !19, !alias.scope !1147, !noalias !1144
  store i64 %i.kl, ptr %.012.i.i.i.i.i.i.i224, align 8, !tbaa !19, !alias.scope !1144, !noalias !1147
  store ptr null, ptr %.0911.i.i.i.i.i.i.i225, align 8, !tbaa !19, !alias.scope !1147, !noalias !1144
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i225, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i224, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i226 = icmp eq ptr %i.km, %i.jg
  br i1 %.not.i.i.i.i.i.i.i226, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, label %.lr.ph.i.i.i.i.i.i.i223, !llvm.loop !1155

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227: ; preds = %.lr.ph.i.i.i.i.i.i.i223, %middle.block833, %.noexc232
  %.0.lcssa.i.i.i.i.i.i.i228 = phi ptr [ %i.js, %.noexc232 ], [ %i.ke, %middle.block833 ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i223 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i228, i64 8
  %.not.i23.i.i.i229 = icmp eq ptr %i.jh, null
  br i1 %.not.i23.i.i.i229, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227
  call void @_ZdlPv(ptr noundef nonnull %i.jh) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, %bb.bk
  store ptr %i.js, ptr %42, align 8, !tbaa !36
  store ptr %i.ko, ptr %i.jf, align 8, !tbaa !39
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jq
  store ptr %i.kp, ptr %i.je, align 8, !tbaa !40
  %.pr624 = load ptr, ptr %43, align 8, !tbaa !19 ; 3 uses
  %.not.i234 = icmp eq ptr %.pr624, null
  br i1 %.not.i234, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233
  %i.kq = load ptr, ptr %.pr624, align 8, !tbaa !23
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(56) %.pr624) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235
  %i.kt = phi ptr [ %i.jb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread ], [ %i.je, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233 ], [ %i.je, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235 ] ; 2 uses
  %i.ku = phi ptr [ %i.ja, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread ], [ %i.jf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233 ], [ %i.jf, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1065 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store ptr %i.kw, ptr %25, align 8, !noalias !1156
  %.not653 = icmp eq ptr %i.kw, null
  br i1 %.not653, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236
  store ptr null, ptr %44, align 8, !tbaa !7, !alias.scope !1156
  br label %bb.bn

bb.bm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %.noexc237 unwind label %bb.bu, !inline_history !22

.noexc237:                                        ; preds = %bb.bm
  %i.kx = load ptr, ptr %25, align 8, !tbaa !20, !noalias !1156
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %44, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.kx)
          to label %bb.bn unwind label %bb.bu, !inline_history !22

bb.bn:                                            ; preds = %bb.bl, %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  %i.ky = load ptr, ptr %i.ku, align 8, !tbaa !39 ; 6 uses
  %i.kz = load ptr, ptr %i.kt, align 8, !tbaa !40
  %.not.i.i240 = icmp eq ptr %i.ky, %i.kz
  br i1 %.not.i.i240, label %bb.bo, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255.thread: ; preds = %bb.bn
  %i.la = load i64, ptr %44, align 8, !tbaa !19
  store i64 %i.la, ptr %i.ky, align 8, !tbaa !19
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %i.lb, ptr %i.ku, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit258

bb.bo:                                            ; preds = %bb.bn
  %i.lc = load ptr, ptr %42, align 8, !tbaa !36   ; 10 uses
  %i.ld = ptrtoint ptr %i.ky to i64               ; 3 uses
  %i.le = ptrtoint ptr %i.lc to i64               ; 3 uses
  %i.lf = sub i64 %i.ld, %i.le                    ; 3 uses
  %i.lg = icmp eq i64 %i.lf, 9223372036854775800
  br i1 %i.lg, label %bb.bp, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc253 unwind label %bb.bv

.noexc253:                                        ; preds = %bb.bp
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241: ; preds = %bb.bo
  %i.lh = ashr exact i64 %i.lf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i242 = call i64 @llvm.umax.i64(i64 %i.lh, i64 1)
  %i.li = add nsw i64 %.sroa.speculated.i.i.i.i242, %i.lh ; 2 uses
  %i.lj = icmp ult i64 %i.li, %i.lh
  %i.lk = call i64 @llvm.umin.i64(i64 %i.li, i64 1152921504606846975)
  %i.ll = select i1 %i.lj, i64 1152921504606846975, i64 %i.lk ; 3 uses
  %.not.i.i.i.i243 = icmp ne i64 %i.ll, 0
  call void @llvm.assume(i1 %.not.i.i.i.i243)
  %i.lm = shl nuw nsw i64 %i.ll, 3
  %i.ln = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lm) #22
          to label %.noexc254 unwind label %bb.bv ; 10 uses

.noexc254:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lf
  %i.lp = load i64, ptr %44, align 8, !tbaa !19
  store i64 %i.lp, ptr %i.lo, align 8, !tbaa !19
  store ptr null, ptr %44, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i244 = icmp eq ptr %i.lc, %i.ky
  br i1 %.not10.i.i.i.i.i.i.i244, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i249, label %.lr.ph.i.i.i.i.i.i.i245.preheader

.lr.ph.i.i.i.i.i.i.i245.preheader:                ; preds = %.noexc254
  %i.lq = sub i64 %i.ld, %i.le
  %i.lr = add i64 %i.lq, -8                       ; 2 uses
  %i.ls = lshr i64 %i.lr, 3
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %min.iters.check844 = icmp ult i64 %i.lr, 136
  br i1 %min.iters.check844, label %.lr.ph.i.i.i.i.i.i.i245.preheader882, label %vector.memcheck837

vector.memcheck837:                               ; preds = %.lr.ph.i.i.i.i.i.i.i245.preheader
  %i.lu = add i64 %i.ld, -8
  %i.lv = sub i64 %i.lu, %i.le
  %i.lw = and i64 %i.lv, -8
  %i.lx = add i64 %i.lw, 8                        ; 2 uses
  %scevgep838 = getelementptr i8, ptr %i.ln, i64 %i.lx
  %scevgep839 = getelementptr i8, ptr %i.lc, i64 %i.lx
  %bound0840 = icmp ult ptr %i.ln, %scevgep839
  %bound1841 = icmp ult ptr %i.lc, %scevgep838
  %found.conflict842 = and i1 %bound0840, %bound1841
  br i1 %found.conflict842, label %.lr.ph.i.i.i.i.i.i.i245.preheader882, label %vector.ph845

vector.ph845:                                     ; preds = %vector.memcheck837
  %n.vec847 = and i64 %i.lt, 4611686018427387900  ; 3 uses
  %i.ly = shl i64 %n.vec847, 3                    ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ln, i64 %i.ly  ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lc, i64 %i.ly
  br label %vector.body848

vector.body848:                                   ; preds = %vector.body848, %vector.ph845
  %index849 = phi i64 [ 0, %vector.ph845 ], [ %index.next854, %vector.body848 ] ; 2 uses
  %i.mb = shl i64 %index849, 3                    ; 2 uses
  %next.gep850 = getelementptr i8, ptr %i.ln, i64 %i.mb ; 2 uses
  %next.gep851 = getelementptr i8, ptr %i.lc, i64 %i.mb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.mc = getelementptr i8, ptr %next.gep851, i64 16
  %wide.load852 = load <2 x i64>, ptr %next.gep851, align 8, !tbaa !19, !alias.scope !1164, !noalias !1159
  %wide.load853 = load <2 x i64>, ptr %i.mc, align 8, !tbaa !19, !alias.scope !1164, !noalias !1159
  %i.md = getelementptr i8, ptr %next.gep850, i64 16
  store <2 x i64> %wide.load852, ptr %next.gep850, align 8, !tbaa !19, !alias.scope !1167, !noalias !1164
  store <2 x i64> %wide.load853, ptr %i.md, align 8, !tbaa !19, !alias.scope !1167, !noalias !1164
  %i.me = getelementptr i8, ptr %next.gep851, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep851, align 8, !tbaa !19, !alias.scope !1164, !noalias !1159
  store <2 x ptr> splat (ptr null), ptr %i.me, align 8, !tbaa !19, !alias.scope !1164, !noalias !1159
  %index.next854 = add nuw i64 %index849, 4       ; 2 uses
  %i.mf = icmp eq i64 %index.next854, %n.vec847
  br i1 %i.mf, label %middle.block855, label %vector.body848, !llvm.loop !1169

middle.block855:                                  ; preds = %vector.body848
  %cmp.n856 = icmp eq i64 %i.lt, %n.vec847
  br i1 %cmp.n856, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i249, label %.lr.ph.i.i.i.i.i.i.i245.preheader882

.lr.ph.i.i.i.i.i.i.i245.preheader882:             ; preds = %vector.memcheck837, %.lr.ph.i.i.i.i.i.i.i245.preheader, %middle.block855
  %.012.i.i.i.i.i.i.i246.ph = phi ptr [ %i.ln, %vector.memcheck837 ], [ %i.ln, %.lr.ph.i.i.i.i.i.i.i245.preheader ], [ %i.lz, %middle.block855 ]
  %.0911.i.i.i.i.i.i.i247.ph = phi ptr [ %i.lc, %vector.memcheck837 ], [ %i.lc, %.lr.ph.i.i.i.i.i.i.i245.preheader ], [ %i.ma, %middle.block855 ]
  br label %.lr.ph.i.i.i.i.i.i.i245

.lr.ph.i.i.i.i.i.i.i245:                          ; preds = %.lr.ph.i.i.i.i.i.i.i245.preheader882, %.lr.ph.i.i.i.i.i.i.i245
  %.012.i.i.i.i.i.i.i246 = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i.i.i245 ], [ %.012.i.i.i.i.i.i.i246.ph, %.lr.ph.i.i.i.i.i.i.i245.preheader882 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i247 = phi ptr [ %i.mh, %.lr.ph.i.i.i.i.i.i.i245 ], [ %.0911.i.i.i.i.i.i.i247.ph, %.lr.ph.i.i.i.i.i.i.i245.preheader882 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.mg = load i64, ptr %.0911.i.i.i.i.i.i.i247, align 8, !tbaa !19, !alias.scope !1162, !noalias !1159
  store i64 %i.mg, ptr %.012.i.i.i.i.i.i.i246, align 8, !tbaa !19, !alias.scope !1159, !noalias !1162
  store ptr null, ptr %.0911.i.i.i.i.i.i.i247, align 8, !tbaa !19, !alias.scope !1162, !noalias !1159
  %i.mh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i247, i64 8 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i246, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i248 = icmp eq ptr %i.mh, %i.ky
  br i1 %.not.i.i.i.i.i.i.i248, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i249, label %.lr.ph.i.i.i.i.i.i.i245, !llvm.loop !1170

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i249: ; preds = %.lr.ph.i.i.i.i.i.i.i245, %middle.block855, %.noexc254
  %.0.lcssa.i.i.i.i.i.i.i250 = phi ptr [ %i.ln, %.noexc254 ], [ %i.lz, %middle.block855 ], [ %i.mi, %.lr.ph.i.i.i.i.i.i.i245 ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i250, i64 8
  %.not.i23.i.i.i251 = icmp eq ptr %i.lc, null
  br i1 %.not.i23.i.i.i251, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i249
  call void @_ZdlPv(ptr noundef nonnull %i.lc) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i249, %bb.bq
  store ptr %i.ln, ptr %42, align 8, !tbaa !36
  store ptr %i.mj, ptr %i.ku, align 8, !tbaa !39
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.ll
  store ptr %i.mk, ptr %i.kt, align 8, !tbaa !40
  %.pr626 = load ptr, ptr %44, align 8, !tbaa !19 ; 3 uses
  %.not.i256 = icmp eq ptr %.pr626, null
  br i1 %.not.i256, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit258, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i257

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i257: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255
  %i.ml = load ptr, ptr %.pr626, align 8, !tbaa !23
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(56) %.pr626) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit258

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit258: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA7_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.194") align 8 %45, ptr noundef nonnull align 1 dereferenceable(7) @.str.96, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit261 unwind label %bb.bw

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit261: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit258
  %i.mo = load ptr, ptr %45, align 8, !tbaa !389
  store ptr %i.mo, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  %i.mp = load ptr, ptr %42, align 8, !tbaa !36   ; 3 uses
  %i.mq = load ptr, ptr %i.ku, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i262 = icmp eq ptr %i.mp, %i.mq
  br i1 %.not4.i.i.i262, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i263

.lr.ph.i.i.i263:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit261, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i267
  %.05.i.i.i264 = phi ptr [ %i.mv, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i267 ], [ %i.mp, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit261 ] ; 2 uses
  %i.mr = load ptr, ptr %.05.i.i.i264, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i265 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i.i265, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i267, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i266

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i266: ; preds = %.lr.ph.i.i.i263
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !23
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(56) %i.mr) #21, !inline_history !396
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i267

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i267: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i266, %.lr.ph.i.i.i263
  %i.mv = getelementptr inbounds nuw i8, ptr %.05.i.i.i264, i64 8 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %i.mv, %i.mq
  br i1 %.not.i.i.i268, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i269, label %.lr.ph.i.i.i263, !llvm.loop !89

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i269: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i267
  %.pr.i270 = load ptr, ptr %42, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i271

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i271: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i269, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit261
  %i.mw = phi ptr [ %.pr.i270, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i269 ], [ %i.mp, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit261 ] ; 2 uses
  %.not.i.i1.i272 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i1.i272, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit273, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i271
  call void @_ZdlPv(ptr noundef nonnull %i.mw) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit273

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit273: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i271, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %bb.gu

bb.bs:                                            ; preds = %.noexc215, %bb.bg
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276

bb.bt:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219, %bb.bj
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mz = load ptr, ptr %43, align 8, !tbaa !19   ; 3 uses
  %.not.i274 = icmp eq ptr %i.mz, null
  br i1 %.not.i274, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i275

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i275: ; preds = %bb.bt
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !23
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(56) %i.mz) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i275, %bb.bt, %bb.bs
  %.pn106 = phi { ptr, i32 } [ %i.mx, %bb.bs ], [ %i.my, %bb.bt ], [ %i.my, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i275 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %bb.bx

bb.bu:                                            ; preds = %.noexc237, %bb.bm
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279

bb.bv:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241, %bb.bp
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = load ptr, ptr %44, align 8, !tbaa !19   ; 3 uses
  %.not.i277 = icmp eq ptr %i.nf, null
  br i1 %.not.i277, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i278

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i278: ; preds = %bb.bv
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !23
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(56) %i.nf) #21, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i278, %bb.bv, %bb.bu
  %.pn108 = phi { ptr, i32 } [ %i.nd, %bb.bu ], [ %i.ne, %bb.bv ], [ %i.ne, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i278 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  br label %bb.bx

bb.bw:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit258
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276
  %.pn110 = phi { ptr, i32 } [ %i.nj, %bb.bw ], [ %.pn108, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit279 ], [ %.pn106, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit276 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %42) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %bb.gv

bb.by:                                            ; preds = %bb.e, %bb.e
end_hunk_6
begin_hunk_7_@_ZN6duckdb11Transformer22TransformAExprInternalERN17duckdb_libpgquery7PGAExprE:bb.a
  %i.sl = load i8, ptr %i.sk, align 8, !tbaa !117
  %.not = icmp eq i8 %i.sl, 75
  br i1 %.not, label %bb.ea, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sm = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %56)
          to label %bb.ds unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.sm, ptr noundef nonnull align 8 dereferenceable(32) %55)
          to label %bb.dt unwind label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  invoke void @__cxa_throw(ptr nonnull %i.sm, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gw unwind label %bb.dy

bb.du:                                            ; preds = %.noexc346, %bb.dj
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit436

bb.dv:                                            ; preds = %.noexc349, %bb.dm
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit433

bb.dw:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i353
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.dx:                                            ; preds = %bb.dp, %bb.do, %bb.dn, %.noexc366
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread: ; preds = %bb.dr
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dt, %bb.ds
  %.035 = phi i1 [ false, %bb.dt ], [ true, %bb.ds ] ; 2 uses
  %i.ss = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.st = load ptr, ptr %55, align 8, !tbaa !126  ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.sv = icmp eq ptr %i.st, %i.su
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368: ; preds = %bb.dy
  call void @_ZdlPv(ptr noundef %i.st) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  br i1 %.035, label %bb.dz, label %bb.ez

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370: ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  br i1 %.035, label %bb.dz, label %bb.ez

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370
  %.pn89637 = phi { ptr, i32 } [ %i.sr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread ], [ %i.ss, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370 ], [ %i.ss, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368 ]
  call void @__cxa_free_exception(ptr %i.sm) #21
  br label %bb.ez

bb.ea:                                            ; preds = %bb.dq
  %i.sw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sh, i64 noundef 1)
          to label %bb.eb unwind label %bb.eh

bb.eb:                                            ; preds = %bb.ea
  %i.sx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sw)
          to label %bb.ec unwind label %bb.eh

bb.ec:                                            ; preds = %bb.eb
  %i.sy = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN6duckdb14BaseExpression4CastINS_18ConstantExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.sx)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 80
  %i.ta = load i8, ptr %i.sz, align 8, !tbaa !1195, !range !229, !noundef !132
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.ek, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.tc = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %bb.ef unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.thread

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.tc, ptr noundef nonnull align 8 dereferenceable(32) %57)
          to label %bb.eg unwind label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  invoke void @__cxa_throw(ptr nonnull %i.tc, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gw unwind label %bb.ei

bb.eh:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i375, %bb.eo, %bb.ek, %bb.ec, %bb.eb, %bb.ea
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.thread: ; preds = %bb.ee
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %.032 = phi i1 [ false, %bb.eg ], [ true, %bb.ef ] ; 2 uses
  %i.tf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.tg = load ptr, ptr %57, align 8, !tbaa !126  ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.ti = icmp eq ptr %i.tg, %i.th
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %bb.ei
  call void @_ZdlPv(ptr noundef %i.tg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br i1 %.032, label %bb.ej, label %bb.ez

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br i1 %.032, label %bb.ej, label %bb.ez

bb.ej:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373
  %.pn83640 = phi { ptr, i32 } [ %i.te, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.thread ], [ %i.tf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373 ], [ %i.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371 ]
  call void @__cxa_free_exception(ptr %i.tc) #21
  br label %bb.ez

bb.ek:                                            ; preds = %bb.ed
  %i.tj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sh, i64 noundef 0)
          to label %bb.el unwind label %bb.eh     ; 4 uses

bb.el:                                            ; preds = %bb.ek
  %i.tk = load ptr, ptr %i.sa, align 8, !tbaa !39 ; 6 uses
  %i.tl = load ptr, ptr %i.sb, align 8, !tbaa !40
  %.not.i.i374 = icmp eq ptr %i.tk, %i.tl
  br i1 %.not.i.i374, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tm = load i64, ptr %i.tj, align 8, !tbaa !19
  store i64 %i.tm, ptr %i.tk, align 8, !tbaa !19
  store ptr null, ptr %i.tj, align 8, !tbaa !19
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  store ptr %i.tn, ptr %i.sa, align 8, !tbaa !39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit389

bb.en:                                            ; preds = %bb.el
  %i.to = load ptr, ptr %54, align 8, !tbaa !36   ; 10 uses
  %i.tp = ptrtoint ptr %i.tk to i64               ; 3 uses
  %i.tq = ptrtoint ptr %i.to to i64               ; 3 uses
  %i.tr = sub i64 %i.tp, %i.tq                    ; 3 uses
  %i.ts = icmp eq i64 %i.tr, 9223372036854775800
  br i1 %i.ts, label %bb.eo, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i375

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc387 unwind label %bb.eh

.noexc387:                                        ; preds = %bb.eo
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i375: ; preds = %bb.en
  %i.tt = ashr exact i64 %i.tr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i376 = call i64 @llvm.umax.i64(i64 %i.tt, i64 1)
  %i.tu = add nsw i64 %.sroa.speculated.i.i.i.i376, %i.tt ; 2 uses
  %i.tv = icmp ult i64 %i.tu, %i.tt
  %i.tw = call i64 @llvm.umin.i64(i64 %i.tu, i64 1152921504606846975)
  %i.tx = select i1 %i.tv, i64 1152921504606846975, i64 %i.tw ; 3 uses
  %.not.i.i.i.i377 = icmp ne i64 %i.tx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i377)
  %i.ty = shl nuw nsw i64 %i.tx, 3
  %i.tz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ty) #22
          to label %.noexc388 unwind label %bb.eh ; 10 uses

.noexc388:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i375
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.tr
  %i.ub = load i64, ptr %i.tj, align 8, !tbaa !19
  store i64 %i.ub, ptr %i.ua, align 8, !tbaa !19
  store ptr null, ptr %i.tj, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i.i378 = icmp eq ptr %i.to, %i.tk
  br i1 %.not10.i.i.i.i.i.i.i378, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i383, label %.lr.ph.i.i.i.i.i.i.i379.preheader

.lr.ph.i.i.i.i.i.i.i379.preheader:                ; preds = %.noexc388
  %i.uc = sub i64 %i.tp, %i.tq
  %i.ud = add i64 %i.uc, -8                       ; 2 uses
  %i.ue = lshr i64 %i.ud, 3
  %i.uf = add nuw nsw i64 %i.ue, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ud, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i379.preheader886, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i379.preheader
  %i.ug = add i64 %i.tp, -8
  %i.uh = sub i64 %i.ug, %i.tq
  %i.ui = and i64 %i.uh, -8
  %i.uj = add i64 %i.ui, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.tz, i64 %i.uj
  %scevgep811 = getelementptr i8, ptr %i.to, i64 %i.uj
  %bound0 = icmp ult ptr %i.tz, %scevgep811
  %bound1 = icmp ult ptr %i.to, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i379.preheader886, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uf, 4611686018427387900     ; 3 uses
  %i.uk = shl i64 %n.vec, 3                       ; 2 uses
  %i.ul = getelementptr i8, ptr %i.tz, i64 %i.uk  ; 2 uses
  %i.um = getelementptr i8, ptr %i.to, i64 %i.uk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.un = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.tz, i64 %i.un ; 2 uses
  %next.gep812 = getelementptr i8, ptr %i.to, i64 %i.un ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.uo = getelementptr i8, ptr %next.gep812, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep812, align 8, !tbaa !19, !alias.scope !1206, !noalias !1201
  %wide.load813 = load <2 x i64>, ptr %i.uo, align 8, !tbaa !19, !alias.scope !1206, !noalias !1201
  %i.up = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !1209, !noalias !1206
  store <2 x i64> %wide.load813, ptr %i.up, align 8, !tbaa !19, !alias.scope !1209, !noalias !1206
  %i.uq = getelementptr i8, ptr %next.gep812, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep812, align 8, !tbaa !19, !alias.scope !1206, !noalias !1201
  store <2 x ptr> splat (ptr null), ptr %i.uq, align 8, !tbaa !19, !alias.scope !1206, !noalias !1201
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ur = icmp eq i64 %index.next, %n.vec
  br i1 %i.ur, label %middle.block, label %vector.body, !llvm.loop !1211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i383, label %.lr.ph.i.i.i.i.i.i.i379.preheader886

.lr.ph.i.i.i.i.i.i.i379.preheader886:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i379.preheader, %middle.block
  %.012.i.i.i.i.i.i.i380.ph = phi ptr [ %i.tz, %vector.memcheck ], [ %i.tz, %.lr.ph.i.i.i.i.i.i.i379.preheader ], [ %i.ul, %middle.block ]
  %.0911.i.i.i.i.i.i.i381.ph = phi ptr [ %i.to, %vector.memcheck ], [ %i.to, %.lr.ph.i.i.i.i.i.i.i379.preheader ], [ %i.um, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i379

.lr.ph.i.i.i.i.i.i.i379:                          ; preds = %.lr.ph.i.i.i.i.i.i.i379.preheader886, %.lr.ph.i.i.i.i.i.i.i379
  %.012.i.i.i.i.i.i.i380 = phi ptr [ %i.uu, %.lr.ph.i.i.i.i.i.i.i379 ], [ %.012.i.i.i.i.i.i.i380.ph, %.lr.ph.i.i.i.i.i.i.i379.preheader886 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i381 = phi ptr [ %i.ut, %.lr.ph.i.i.i.i.i.i.i379 ], [ %.0911.i.i.i.i.i.i.i381.ph, %.lr.ph.i.i.i.i.i.i.i379.preheader886 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.us = load i64, ptr %.0911.i.i.i.i.i.i.i381, align 8, !tbaa !19, !alias.scope !1204, !noalias !1201
  store i64 %i.us, ptr %.012.i.i.i.i.i.i.i380, align 8, !tbaa !19, !alias.scope !1201, !noalias !1204
  store ptr null, ptr %.0911.i.i.i.i.i.i.i381, align 8, !tbaa !19, !alias.scope !1204, !noalias !1201
  %i.ut = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i381, i64 8 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i380, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i382 = icmp eq ptr %i.ut, %i.tk
  br i1 %.not.i.i.i.i.i.i.i382, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i383, label %.lr.ph.i.i.i.i.i.i.i379, !llvm.loop !1212

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i383: ; preds = %.lr.ph.i.i.i.i.i.i.i379, %middle.block, %.noexc388
  %.0.lcssa.i.i.i.i.i.i.i384 = phi ptr [ %i.tz, %.noexc388 ], [ %i.ul, %middle.block ], [ %i.uu, %.lr.ph.i.i.i.i.i.i.i379 ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i384, i64 8
  %.not.i23.i.i.i385 = icmp eq ptr %i.to, null
  br i1 %.not.i23.i.i.i385, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i386, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i383
  call void @_ZdlPv(ptr noundef nonnull %i.to) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i386

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i386: ; preds = %bb.ep, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i383
  store ptr %i.tz, ptr %54, align 8, !tbaa !36
  store ptr %i.uv, ptr %i.sa, align 8, !tbaa !39
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.tx
  store ptr %i.uw, ptr %i.sb, align 8, !tbaa !40
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit389

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit389: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i386, %bb.em
  %i.ux = load i64, ptr %i.t, align 8, !tbaa !168
  %i.uy = icmp eq i64 %i.ux, 2
  br i1 %i.uy, label %bb.eq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.eq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit389
  %i.uz = load ptr, ptr %31, align 8, !tbaa !126
  %i.va = load i16, ptr %i.uz, align 1
  %i.vb = icmp ne i16 %i.va, 32289
  %i.vc = zext i1 %i.vb to i32
  %i.vd = icmp eq i32 %i.vc, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.eq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit389
  %i.ve = phi i1 [ false, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit389 ], [ %i.vd, %bb.eq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr @.str.91, ptr %i.b, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #21
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRKPKcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.194") align 8 %59, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %54)
          to label %bb.er unwind label %bb.ev

bb.er:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br i1 %i.ve, label %bb.es, label %.thread

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.vf = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22
          to label %.noexc401 unwind label %bb.ew ; 3 uses

.noexc401:                                        ; preds = %bb.es
  %i.vg = load ptr, ptr %59, align 8, !tbaa !389, !noalias !1213
  store ptr null, ptr %59, align 8, !tbaa !389, !noalias !1213
  store ptr %i.vg, ptr %13, align 8, !tbaa !7, !noalias !1213
  store ptr null, ptr %14, align 8, !tbaa !7, !noalias !1213
  invoke void @_ZN6duckdb18OperatorExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(80) %i.vf, i8 noundef zeroext 13, ptr noundef nonnull %13, ptr noundef nonnull %14)
          to label %bb.et unwind label %bb.eu, !noalias !1213

bb.et:                                            ; preds = %.noexc401
  %i.vh = load ptr, ptr %14, align 8, !tbaa !19, !noalias !1213 ; 3 uses
  %.not.i.i396 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i396, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i398, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i397

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i397: ; preds = %bb.et
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !23, !noalias !1213
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8, !noalias !1213
  call void %i.vk(ptr noundef nonnull align 8 dereferenceable(56) %i.vh) #21, !noalias !1213, !inline_history !1057
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i398

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i398: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i397, %bb.et
  %i.vl = load ptr, ptr %13, align 8, !tbaa !19, !noalias !1213 ; 3 uses
  %.not.i4.i399 = icmp eq ptr %i.vl, null
  br i1 %.not.i4.i399, label %bb.ex, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i400

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i400: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i398
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !23, !noalias !1213
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !noalias !1213
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(56) %i.vl) #21, !noalias !1213, !inline_history !1057
  br label %bb.ex

bb.eu:                                            ; preds = %.noexc401
  %i.vp = landingpad { ptr, i32 }
          cleanup
  %i.vq = load ptr, ptr %14, align 8, !tbaa !19, !noalias !1213 ; 3 uses
  %.not.i7.i390 = icmp eq ptr %i.vq, null
  br i1 %.not.i7.i390, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i392, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i391

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i391: ; preds = %bb.eu
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !23, !noalias !1213
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !noalias !1213
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(56) %i.vq) #21, !noalias !1213, !inline_history !1057
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i392

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i392: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i391, %bb.eu
  %i.vu = load ptr, ptr %13, align 8, !tbaa !19, !noalias !1213 ; 3 uses
  %.not.i10.i393 = icmp eq ptr %i.vu, null
  br i1 %.not.i10.i393, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i395, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i394

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i394: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i392
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !23, !noalias !1213
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !noalias !1213
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(56) %i.vu) #21, !noalias !1213, !inline_history !1057
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i395

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i395: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i394, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i392
  call void @_ZdlPv(ptr noundef nonnull %i.vf) #23, !noalias !1213
  br label %.body402

bb.ev:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit409

bb.ew:                                            ; preds = %bb.es
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %.body402

.body402:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i395, %bb.ew
  %eh.lpad-body403 = phi { ptr, i32 } [ %i.vz, %bb.ew ], [ %i.vp, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i395 ] ; 2 uses
  %i.wa = load ptr, ptr %59, align 8, !tbaa !389  ; 3 uses
  %.not.i407 = icmp eq ptr %i.wa, null
  br i1 %.not.i407, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit409, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i408

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i408: ; preds = %.body402
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !23
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8
  call void %i.wd(ptr noundef nonnull align 8 dereferenceable(209) %i.wa) #21, !inline_history !391
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit409

.thread:                                          ; preds = %bb.er
  %i.we = load ptr, ptr %59, align 8, !tbaa !389
  store ptr %i.we, ptr %0, align 8, !tbaa !7
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit412

end_hunk_7
begin_hunk_8_@_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1285
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !166
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !126  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !126
  %i.o = load i64, ptr %i.i, align 8, !tbaa !30
  store i64 %i.o, ptr %i.g, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !168
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !168
  store ptr %i.i, ptr %i.f, align 8, !tbaa !126
  store i64 0, ptr %i.q, align 8, !tbaa !168
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !403
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !403
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !126 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #23
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !126  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #23
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127    ; 13 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !tbaa !19
  store i64 %i.j, ptr %i.f, align 8, !tbaa !19
  store ptr null, ptr %2, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  store i64 %i.n, ptr %i.f, align 8, !tbaa !19
  store ptr null, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.e, align 8, !tbaa !39
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aa, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.f, %bb.d ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.t, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.m, %bb.d ]
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !19
  store ptr null, ptr %i.t, align 8, !tbaa !19
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !19   ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(56) %i.w) #21, !inline_history !1304
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1305

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, %bb.d
  %i.ac = load ptr, ptr %2, align 8, !tbaa !19
  store ptr null, ptr %2, align 8, !tbaa !19
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(56) %i.ad) #21, !inline_history !1306
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.d    ; 4 uses
  %i.ai = ptrtoint ptr %i.f to i64                ; 3 uses
  %i.aj = sub i64 %i.ai, %i.c                     ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #22 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.d
  %i.at = load i64, ptr %2, align 8, !tbaa !19
  store i64 %i.at, ptr %i.as, align 8, !tbaa !19
  store ptr null, ptr %2, align 8, !tbaa !19
  %.not10.i.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.au = sub i64 %i.b, %i.c
  %i.av = add i64 %i.au, -8                       ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ay = add i64 %i.b, -8
  %i.az = sub i64 %i.ay, %i.c
  %i.ba = and i64 %i.az, -8
  %i.bb = add i64 %i.ba, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.bb
  %scevgep23 = getelementptr i8, ptr %i.a, i64 %i.bb
  %bound0 = icmp ult ptr %i.ar, %scevgep23
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ar, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.a, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bf ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.a, i64 %i.bf ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.bg = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !19, !alias.scope !1312, !noalias !1307
  %wide.load25 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !19, !alias.scope !1312, !noalias !1307
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !1315, !noalias !1312
  store <2 x i64> %wide.load25, ptr %i.bh, align 8, !tbaa !19, !alias.scope !1315, !noalias !1312
  %i.bi = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !19, !alias.scope !1312, !noalias !1307
  store <2 x ptr> splat (ptr null), ptr %i.bi, align 8, !tbaa !19, !alias.scope !1312, !noalias !1307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.preheader50:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.bk = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1310, !noalias !1307
  store i64 %i.bk, ptr %.012.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1307, !noalias !1310
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !1310, !noalias !1307
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1318

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ar, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.bd, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i.i16.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader

.lr.ph.i.i.i.i17.i.preheader:                     ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.bo = sub i64 %i.ai, %i.b
  %i.bp = add i64 %i.bo, -8                       ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check34 = icmp ult i64 %i.bp, 200
  br i1 %min.iters.check34, label %.lr.ph.i.i.i.i17.i.preheader49, label %vector.memcheck27

vector.memcheck27:                                ; preds = %.lr.ph.i.i.i.i17.i.preheader
  %i.bs = add i64 %i.ai, -8
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = and i64 %i.bt, -8                       ; 2 uses
  %i.bv = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.bu
  %scevgep28 = getelementptr i8, ptr %i.bv, i64 16
  %i.bw = add i64 %i.bu, %i.b
  %i.bx = add i64 %i.bw, 8
  %i.by = sub i64 %i.bx, %i.c
  %scevgep29 = getelementptr i8, ptr %i.a, i64 %i.by
  %bound030 = icmp ult ptr %i.bn, %scevgep29
  %bound131 = icmp ult ptr %1, %scevgep28
  %found.conflict32 = and i1 %bound030, %bound131
  br i1 %found.conflict32, label %.lr.ph.i.i.i.i17.i.preheader49, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck27
  %n.vec37 = and i64 %i.br, 4611686018427387900   ; 3 uses
  %i.bz = shl i64 %n.vec37, 3                     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bn, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ah, i64 %i.bz
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph35
  %index39 = phi i64 [ 0, %vector.ph35 ], [ %index.next44, %vector.body38 ] ; 2 uses
  %i.cc = shl i64 %index39, 3                     ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.bn, i64 %i.cc ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ah, i64 %i.cc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.cd = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load42 = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !19, !alias.scope !1324, !noalias !1319
  %wide.load43 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !19, !alias.scope !1324, !noalias !1319
  %i.ce = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x i64> %wide.load42, ptr %next.gep40, align 8, !tbaa !19, !alias.scope !1327, !noalias !1324
  store <2 x i64> %wide.load43, ptr %i.ce, align 8, !tbaa !19, !alias.scope !1327, !noalias !1324
  %i.cf = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !19, !alias.scope !1324, !noalias !1319
  store <2 x ptr> splat (ptr null), ptr %i.cf, align 8, !tbaa !19, !alias.scope !1324, !noalias !1319
  %index.next44 = add nuw i64 %index39, 4         ; 2 uses
  %i.cg = icmp eq i64 %index.next44, %n.vec37
  br i1 %i.cg, label %middle.block45, label %vector.body38, !llvm.loop !1329

middle.block45:                                   ; preds = %vector.body38
  %cmp.n46 = icmp eq i64 %i.br, %n.vec37
  br i1 %cmp.n46, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader49

.lr.ph.i.i.i.i17.i.preheader49:                   ; preds = %vector.memcheck27, %.lr.ph.i.i.i.i17.i.preheader, %middle.block45
  %.012.i.i.i.i18.i.ph = phi ptr [ %i.bn, %vector.memcheck27 ], [ %i.bn, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.ca, %middle.block45 ]
  %.0911.i.i.i.i19.i.ph = phi ptr [ %i.ah, %vector.memcheck27 ], [ %i.ah, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.cb, %middle.block45 ]
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i.preheader49, %.lr.ph.i.i.i.i17.i
  %.012.i.i.i.i18.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i17.i ], [ %.012.i.i.i.i18.i.ph, %.lr.ph.i.i.i.i17.i.preheader49 ] ; 2 uses
  %.0911.i.i.i.i19.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i17.i ], [ %.0911.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i17.i.preheader49 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.ch = load i64, ptr %.0911.i.i.i.i19.i, align 8, !tbaa !19, !alias.scope !1322, !noalias !1319
  store i64 %i.ch, ptr %.012.i.i.i.i18.i, align 8, !tbaa !19, !alias.scope !1319, !noalias !1322
  store ptr null, ptr %.0911.i.i.i.i19.i, align 8, !tbaa !19, !alias.scope !1322, !noalias !1319
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %i.ci, %i.f
  br i1 %.not.i.i.i.i20.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i, !llvm.loop !1330

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i17.i, %middle.block45, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %.0.lcssa.i.i.i.i21.i = phi ptr [ %i.bn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ], [ %i.ca, %middle.block45 ], [ %i.cj, %.lr.ph.i.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.g
  store ptr %i.ar, ptr %0, align 8, !tbaa !36
  store ptr %.0.lcssa.i.i.i.i21.i, ptr %i.e, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ck, ptr %i.g, align 8, !tbaa !40
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, %bb.c, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !36
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.d
  ret ptr %i.cm
}

declare void @_ZN6duckdb21ConjunctionExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(80), i8 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6duckdb18OperatorExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(80), i8 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN6duckdb14CastExpressionC1ENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEEb(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN6duckdb23NotImplementedExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIN17duckdb_libpgquery14PGBoolTestTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load i32, ptr %3, align 4, !tbaa !1331, !noalias !1332
  %i.b = zext i32 %i.a to i64
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !403  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1285
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !166
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !126  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !168  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !126
  %i.q = load i64, ptr %i.k, align 8, !tbaa !30
  store i64 %i.q, ptr %i.i, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !168
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !168
  store ptr %i.k, ptr %i.h, align 8, !tbaa !126
  store i64 0, ptr %i.s, align 8, !tbaa !168
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !403
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !403
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !126 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #23
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !126 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #23
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.y
}

declare void @_ZN6duckdb14CaseExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery10PGCaseWhenELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.53", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !466
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

end_hunk_8
