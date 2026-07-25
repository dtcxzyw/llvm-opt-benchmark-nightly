inline.NumInlined: 707
inline.NumDeleted: 352
begin_hunk_0_@_RNCNvXs5_CsjPLGVgcokxX_22deltalake_catalog_glueNtB7_15GlueDataCatalogNtNtCs14kWLkQVSKO_14deltalake_core12data_catalog11DataCatalog26get_table_storage_location0B7_:bb.a
  %.sroa.1351.0.copyload.i.i.i = load i64, ptr %.sroa.1351.0..sroa_idx.i.i.i, align 8, !noalias !1538 ; 42 uses
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.14.0.copyload.i.i.i = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !1538 ; 5 uses
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !1538 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1538
  %i.lt = trunc nuw i64 %.sroa.041.0.copyload.i.i.i to i1
  %i.lu = add nsw i64 %.sroa.15.0.copyload.i.i.i, -1 ; 3 uses
  br i1 %i.lt, label %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i, label %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i.i.i

_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i: ; preds = %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload.i.i.i) ]
  %i.lv = sub i64 %.sroa.15.0.copyload.i.i.i, %.sroa.644.0.copyload.i.i.i
  %umax49.i49.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.442.0.copyload.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i)
  %i.lw = add i64 %.sroa.442.0.copyload.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %i.lw, %.sroa.15.0.copyload.i.i.i
  %.first_iter.i.fr.i.i = freeze i1 %.first_iter.i.i.i
  %.not72.us.i.i.i = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  %invariant.op = sub i64 1, %.sroa.442.0.copyload.i.i.i
  %exitcond.not.i51.us.i.i.i694.not = icmp ult i64 %.sroa.442.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i
  %invariant.op768 = sub i64 1, %.sroa.442.0.copyload.i.i.i
  %.not72.us.i.us.i.i697 = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  br label %bb.em

bb.em:                                            ; preds = %bb.fc, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i
  %.sroa.18.0.us.i.i.i = phi i64 [ %.sroa.846.0.copyload.i.i.i, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.18.3.us.i.i.i, %bb.fc ] ; 3 uses
  %.sroa.3013.0.us.i.i.i = phi i64 [ %.sroa.1048.0.copyload.i.i.i, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.3013.3.us.i.i.i, %bb.fc ] ; 2 uses
  %.sroa.04.0.us.i.i.i = phi i64 [ 0, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.18.3.us.i.i.i, %bb.fc ] ; 7 uses
  %i.lx = icmp eq i64 %.sroa.3013.0.us.i.i.i, -1
  %i.ly = add i64 %.sroa.18.0.us.i.i.i, %i.lu     ; 3 uses
  %i.lz = icmp ult i64 %i.ly, %.sroa.1351.0.copyload.i.i.i ; 2 uses
  br i1 %i.lx, label %bb.ew, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  br i1 %i.lz, label %.lr.ph.i38.us.i.i.i, label %.loopexit.i.i.i

.lr.ph.i38.us.i.i.i:                              ; preds = %bb.en, %.sink.split.i.us.i.i.i
  %i.ma = phi i64 [ %.sink.i.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.3013.0.us.i.i.i, %bb.en ] ; 3 uses
  %i.mb = phi i64 [ %i.ne, %.sink.split.i.us.i.i.i ], [ %i.ly, %bb.en ]
  %i.mc = phi i64 [ %.ph71.i.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.18.0.us.i.i.i, %bb.en ] ; 8 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.mb
  %i.me = load i8, ptr %i.md, align 1, !alias.scope !1544, !noalias !1549, !noundef !4
  %i.mf = and i8 %i.me, 63
  %i.mg = zext nneg i8 %i.mf to i64
  %i.mh = shl nuw i64 1, %i.mg
  %i.mi = and i64 %i.mh, %.sroa.745.0.copyload.i.i.i
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %bb.ev, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i38.us.i.i.i
  %.sroa.0.0.i.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %i.ma, i64 %.sroa.442.0.copyload.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i)
  %exitcond.not.i.us.i.i.i689.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i, %.sroa.15.0.copyload.i.i.i
  br i1 %exitcond.not.i.us.i.i.i689.not, label %.lr.ph, label %.preheader74.us.i.i.i.preheader

bb.ep:                                            ; preds = %bb.eq
  %i.mk = add i64 %.sroa.02.0.i.us.i.i.i690, 1    ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.mk, %umax49.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader74.us.i.i.i.preheader, label %.lr.ph

.preheader74.us.i.i.i.preheader:                  ; preds = %bb.ep, %bb.eo
  %i.ml = icmp ult i64 %i.ma, %.sroa.442.0.copyload.i.i.i
  br i1 %i.ml, label %.lr.ph692, label %.loopexit.i.us.i.i.i

.lr.ph:                                           ; preds = %bb.eo, %bb.ep
  %.sroa.02.0.i.us.i.i.i690 = phi i64 [ %i.mk, %bb.ep ], [ %.sroa.0.0.i.i.us.i.i.i, %bb.eo ] ; 4 uses
  %i.mm = add i64 %.sroa.02.0.i.us.i.i.i690, %i.mc ; 2 uses
  %i.mn = icmp ult i64 %i.mm, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.mn, label %bb.eq, label %.split.us.i.i.i

bb.eq:                                            ; preds = %.lr.ph
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i.us.i.i.i690
  %i.mp = load i8, ptr %i.mo, align 1, !alias.scope !1547, !noalias !1552, !noundef !4
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.mm
  %i.mr = load i8, ptr %i.mq, align 1, !alias.scope !1544, !noalias !1549, !noundef !4
  %.not21.i.us.i.i.i = icmp eq i8 %i.mp, %i.mr
  br i1 %.not21.i.us.i.i.i, label %bb.ep, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.mc, %invariant.op
  %i.ms = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i690
  br label %.sink.split.i.us.i.i.i

.preheader74.us.i.i.i:                            ; preds = %bb.et
  %i.mt = icmp ult i64 %i.ma, %i.mu
  br i1 %i.mt, label %.lr.ph692, label %.loopexit.i.us.i.i.i

.lr.ph692:                                        ; preds = %.preheader74.us.i.i.i.preheader, %.preheader74.us.i.i.i
  %.sroa.2.0.i.us.i.i.i691 = phi i64 [ %i.mu, %.preheader74.us.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader74.us.i.i.i.preheader ]
  %i.mu = add i64 %.sroa.2.0.i.us.i.i.i691, -1    ; 6 uses
  %i.mv = icmp ult i64 %i.mu, %.sroa.15.0.copyload.i.i.i
  br i1 %i.mv, label %bb.es, label %.split132.us.invoke.i.i.i

bb.es:                                            ; preds = %.lr.ph692
  %i.mw = add i64 %i.mu, %i.mc                    ; 3 uses
  %i.mx = icmp ult i64 %i.mw, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.mx, label %bb.et, label %.split132.us.invoke.i.i.i

bb.et:                                            ; preds = %bb.es
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %i.mu
  %i.mz = load i8, ptr %i.my, align 1, !alias.scope !1547, !noalias !1552, !noundef !4
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.mw
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !1544, !noalias !1549, !noundef !4
  %.not.i39.us.i.i.i = icmp eq i8 %i.mz, %i.nb
  br i1 %.not.i39.us.i.i.i, label %.preheader74.us.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.nc = add i64 %i.mc, %.sroa.644.0.copyload.i.i.i
  br label %.sink.split.i.us.i.i.i

bb.ev:                                            ; preds = %.lr.ph.i38.us.i.i.i
  %i.nd = add i64 %i.mc, %.sroa.15.0.copyload.i.i.i
  br label %.sink.split.i.us.i.i.i

.sink.split.i.us.i.i.i:                           ; preds = %bb.ev, %bb.eu, %bb.er
  %.sink.i.us.i.i.i = phi i64 [ %i.lv, %bb.eu ], [ 0, %bb.er ], [ 0, %bb.ev ]
  %.ph71.i.us.i.i.i = phi i64 [ %i.nc, %bb.eu ], [ %i.ms, %bb.er ], [ %i.nd, %bb.ev ] ; 2 uses
  %i.ne = add i64 %.ph71.i.us.i.i.i, %i.lu        ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.nf, label %.lr.ph.i38.us.i.i.i, label %.loopexit.i.i.i

bb.ew:                                            ; preds = %bb.em
  call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  br i1 %i.lz, label %.lr.ph.i46.us.i.i.i, label %.loopexit.i.i.i

.lr.ph.i46.us.i.i.i:                              ; preds = %bb.ew, %5
  %i.ng = phi i64 [ %7, %5 ], [ %i.ly, %bb.ew ]
  %i.nh = phi i64 [ %6, %5 ], [ %.sroa.18.0.us.i.i.i, %bb.ew ] ; 9 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.ng
  %i.nj = load i8, ptr %i.ni, align 1, !alias.scope !1553, !noalias !1558, !noundef !4
  %i.nk = and i8 %i.nj, 63
  %i.nl = zext nneg i8 %i.nk to i64
  %i.nm = shl nuw i64 1, %i.nl
  %i.nn = and i64 %i.nm, %.sroa.745.0.copyload.i.i.i
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %3, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i46.us.i.i.i
  br i1 %exitcond.not.i51.us.i.i.i694.not, label %.lr.ph696, label %.preheader.us.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %bb.ey
  %i.np = add i64 %.sroa.02.0.i50.us.i.i.i695, 1  ; 2 uses
  %exitcond.not.i51.us.i.i.i = icmp eq i64 %i.np, %umax49.i49.us.i.i.i
  br i1 %exitcond.not.i51.us.i.i.i, label %.preheader.us.i.preheader.i.i, label %.lr.ph696

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not72.us.i.us.i.i697, label %.loopexit.i.us.i.i.i, label %.lr.ph699

.preheader.us.i.us.i.i:                           ; preds = %bb.ex
  %.not72.us.i.us.i.i = icmp eq i64 %i.nq, 0
  br i1 %.not72.us.i.us.i.i, label %.loopexit.i.us.i.i.i, label %.lr.ph699

.lr.ph699:                                        ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i54.us.i.us.i.i698 = phi i64 [ %i.nq, %.preheader.us.i.us.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ]
  %i.nq = add i64 %.sroa.2.0.i54.us.i.us.i.i698, -1 ; 4 uses
  %i.nr = add i64 %i.nq, %i.nh                    ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.ns, label %bb.ex, label %.split132.us.invoke.i.i.i

bb.ex:                                            ; preds = %.lr.ph699
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %i.nq
  %i.nu = load i8, ptr %i.nt, align 1, !alias.scope !1556, !noalias !1561, !noundef !4
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.nr
  %i.nw = load i8, ptr %i.nv, align 1, !alias.scope !1553, !noalias !1558, !noundef !4
  %.not.i55.us.i.us.i.i = icmp eq i8 %i.nu, %i.nw
  br i1 %.not.i55.us.i.us.i.i, label %.preheader.us.i.us.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.ex
  %i.nx = add i64 %i.nh, %.sroa.644.0.copyload.i.i.i
  br label %5

.preheader.us.i.preheader.split.i.i:              ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not72.us.i.i.i, label %.loopexit.i.us.i.i.i, label %.split132.us.invoke.i.i.i

.lr.ph696:                                        ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.sroa.02.0.i50.us.i.i.i695 = phi i64 [ %i.np, %.preheader.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader.i.i.i.preheader ] ; 4 uses
  %i.ny = add i64 %.sroa.02.0.i50.us.i.i.i695, %i.nh ; 2 uses
  %i.nz = icmp ult i64 %i.ny, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.nz, label %bb.ey, label %.split139.us.i.i.i

bb.ey:                                            ; preds = %.lr.ph696
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i50.us.i.i.i695
  %i.ob = load i8, ptr %i.oa, align 1, !alias.scope !1556, !noalias !1561, !noundef !4
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.ny
  %i.od = load i8, ptr %i.oc, align 1, !alias.scope !1553, !noalias !1558, !noundef !4
  %.not21.i53.us.i.i.i = icmp eq i8 %i.ob, %i.od
  br i1 %.not21.i53.us.i.i.i, label %.preheader.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.reass267.i.reass.i.reass.i.reass.reass = add i64 %i.nh, %invariant.op768
  %i.oe = add i64 %.reass267.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i50.us.i.i.i695
  br label %5

3:                                                ; preds = %.lr.ph.i46.us.i.i.i
  %4 = add i64 %i.nh, %.sroa.15.0.copyload.i.i.i
  br label %5

5:                                                ; preds = %3, %bb.ez, %.split.us.i.i
  %6 = phi i64 [ %i.oe, %bb.ez ], [ %4, %3 ], [ %i.nx, %.split.us.i.i ] ; 2 uses
  %7 = add i64 %6, %i.lu                          ; 2 uses
  %8 = icmp ult i64 %7, %.sroa.1351.0.copyload.i.i.i
  br i1 %8, label %.lr.ph.i46.us.i.i.i, label %.loopexit.i.i.i

.loopexit.i.us.i.i.i:                             ; preds = %.preheader74.us.i.i.i.preheader, %.preheader.us.i.us.i.i.preheader, %.preheader74.us.i.i.i, %.preheader.us.i.us.i.i, %.preheader.us.i.preheader.split.i.i
  %.sroa.3013.3.us.i.i.i = phi i64 [ -1, %.preheader.us.i.us.i.i ], [ -1, %.preheader.us.i.preheader.split.i.i ], [ 0, %.preheader74.us.i.i.i ], [ -1, %.preheader.us.i.us.i.i.preheader ], [ 0, %.preheader74.us.i.i.i.preheader ]
  %.sroa.753.4.us.i.i.i = phi i64 [ %i.nh, %.preheader.us.i.us.i.i ], [ %i.nh, %.preheader.us.i.preheader.split.i.i ], [ %i.mc, %.preheader74.us.i.i.i ], [ %i.nh, %.preheader.us.i.us.i.i.preheader ], [ %i.mc, %.preheader74.us.i.i.i.preheader ] ; 3 uses
  %.sroa.18.3.us.i.i.i = add i64 %.sroa.753.4.us.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.li, i64 %.sroa.04.0.us.i.i.i
  %gepdiff.us.i.i.i = sub nuw nsw i64 %.sroa.753.4.us.i.i.i, %.sroa.04.0.us.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsjPLGVgcokxX_22deltalake_catalog_glue(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff.us.i.i.i)
          to label %.noexc30.us.i.i.i unwind label %.loopexit77.split.us.i.i.i, !noalias !1543

.noexc30.us.i.i.i:                                ; preds = %.loopexit.i.us.i.i.i
  %i.og = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1562, !noalias !1538, !noundef !4 ; 3 uses
  %i.oh = icmp sgt i64 %i.og, -1
  call void @llvm.assume(i1 %i.oh)
  %.not.i28.us.i.i.i = icmp eq i64 %.sroa.753.4.us.i.i.i, %.sroa.04.0.us.i.i.i
  br i1 %.not.i28.us.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.noexc30.us.i.i.i
  %i.oi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1562, !noalias !1538, !nonnull !4, !noundef !4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.og
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oj, ptr nonnull readonly align 1 %i.of, i64 %gepdiff.us.i.i.i, i1 false), !noalias !1543
  %.pre.i29.us.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1562, !noalias !1538
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %.noexc30.us.i.i.i
  %i.ok = phi i64 [ %.pre.i29.us.i.i.i, %bb.fa ], [ %i.og, %.noexc30.us.i.i.i ]
  %i.ol = add i64 %i.ok, %gepdiff.us.i.i.i
  store i64 %i.ol, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1562, !noalias !1538
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsjPLGVgcokxX_22deltalake_catalog_glue(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 2)
          to label %bb.fc unwind label %.loopexit77.split.us.i.i.i, !noalias !1543

bb.fc:                                            ; preds = %bb.fb
  %i.om = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1565, !noalias !1538, !noundef !4 ; 2 uses
  %i.on = icmp sgt i64 %i.om, -1
  call void @llvm.assume(i1 %i.on)
  %i.oo = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1565, !noalias !1538, !nonnull !4, !noundef !4
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.om
  store i16 13171, ptr %i.op, align 1, !noalias !1543
  %.pre.i33.us.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1565, !noalias !1538
  %i.oq = add i64 %.pre.i33.us.i.i.i, 2
  store i64 %i.oq, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1565, !noalias !1538
  br label %bb.em

.loopexit77.split.us.i.i.i:                       ; preds = %bb.fb, %.loopexit.i.us.i.i.i
  %lpad.loopexit.us.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit77.i.i.i

_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i.i.i: ; preds = %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i.i.i
  %i.or = and i64 %.sroa.644.0.copyload.i.i.i, 65536
  %.not.i.i.i160 = icmp eq i64 %i.or, 0
  br i1 %.not.i.i.i160, label %.lr.ph.i.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i.i.i) ]
  %i.os = trunc i64 %.sroa.644.0.copyload.i.i.i to i1 ; 2 uses
  %i.ot = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  br i1 %i.ot, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph.i.lr.ph.i.i.i
  %.not.i.i.i.peel.i.peel.i.i = icmp ult i64 %.sroa.442.0.copyload.i.i.i, %.sroa.1351.0.copyload.i.i.i
  br i1 %.not.i.i.i.peel.i.peel.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ou = icmp eq i64 %.sroa.442.0.copyload.i.i.i, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.ou, label %bb.fg, label %.loopexit203.i.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %.sroa.442.0.copyload.i.i.i
  %i.ow = load i8, ptr %i.ov, align 1, !alias.scope !1568, !noalias !1571, !noundef !4
  %i.ox = icmp sgt i8 %i.ow, -65
  br i1 %i.ox, label %bb.fg, label %.loopexit203.i.i.i

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %.lr.ph.i.lr.ph.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %.sroa.442.0.copyload.i.i.i ; 4 uses
  %i.oz = icmp samesign eq i64 %.sroa.442.0.copyload.i.i.i, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.oz, label %.loopexit204.i.peel.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.pa = load i8, ptr %i.oy, align 1, !noalias !1578, !noundef !4 ; 5 uses
  %i.pb = icmp sgt i8 %i.pa, -1
  br i1 %i.pb, label %bb.fi, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.peel.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.peel.i.peel.i.i: ; preds = %bb.fh
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  %i.pd = and i8 %i.pa, 31
  %i.pe = zext nneg i8 %i.pd to i32               ; 3 uses
  %i.pf = add nuw nsw i64 %.sroa.442.0.copyload.i.i.i, 1
  %i.pg = icmp samesign ne i64 %i.pf, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.pg)
  %i.ph = load i8, ptr %i.pc, align 1, !noalias !1578, !noundef !4
  %i.pi = shl nuw nsw i32 %i.pe, 6
  %i.pj = and i8 %i.ph, 63
  %i.pk = zext nneg i8 %i.pj to i32               ; 2 uses
  %i.pl = or disjoint i32 %i.pi, %i.pk
  %i.pm = icmp samesign ugt i8 %i.pa, -33
  br i1 %i.pm, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.peel.i.peel.i.i, label %bb.fj

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.peel.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.peel.i.peel.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oy, i64 2
  %i.po = add nuw nsw i64 %.sroa.442.0.copyload.i.i.i, 2
  %i.pp = icmp samesign ne i64 %i.po, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.pp)
  %i.pq = load i8, ptr %i.pn, align 1, !noalias !1578, !noundef !4
  %i.pr = shl nuw nsw i32 %i.pk, 6
  %i.ps = and i8 %i.pq, 63
  %i.pt = zext nneg i8 %i.ps to i32
  %i.pu = or disjoint i32 %i.pr, %i.pt            ; 2 uses
  %i.pv = shl nuw nsw i32 %i.pe, 12
  %i.pw = or disjoint i32 %i.pu, %i.pv
  %i.px = icmp samesign ugt i8 %i.pa, -17
  br i1 %i.px, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit16.i.i.i.peel.i.peel.i.i, label %bb.fj

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit16.i.i.i.peel.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.peel.i.peel.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.oy, i64 3
  %i.pz = add nuw nsw i64 %.sroa.442.0.copyload.i.i.i, 3
  %i.qa = icmp samesign ne i64 %i.pz, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.qa)
  %i.qb = load i8, ptr %i.py, align 1, !noalias !1578, !noundef !4
  %i.qc = shl nuw nsw i32 %i.pe, 18
  %i.qd = and i32 %i.qc, 1835008
  %i.qe = shl nuw nsw i32 %i.pu, 6
  %i.qf = and i8 %i.qb, 63
  %i.qg = zext nneg i8 %i.qf to i32
  %i.qh = or disjoint i32 %i.qe, %i.qg
  %i.qi = or disjoint i32 %i.qh, %i.qd
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.qj = zext nneg i8 %i.pa to i32
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit16.i.i.i.peel.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.peel.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.peel.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i = phi i32 [ %i.pw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.peel.i.peel.i.i ], [ %i.qi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit16.i.i.i.peel.i.peel.i.i ], [ %i.pl, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.peel.i.peel.i.i ], [ %i.qj, %bb.fi ] ; 4 uses
  %i.qk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i, 1114112
  call void @llvm.assume(i1 %i.qk)
  br i1 %i.os, label %.loopexit.i.i.peel.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ql = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i, 128
  br i1 %i.ql, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.qm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i, 2048
  br i1 %i.qm, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.qn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i, 65536
  %..i.i.peel.i.peel.i.i = select i1 %i.qn, i64 3, i64 4
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fk
  %.sroa.01.0.i.i.peel.i.peel.i.i = phi i64 [ 2, %bb.fl ], [ %..i.i.peel.i.peel.i.i, %bb.fm ], [ 1, %bb.fk ]
  %i.qo = add i64 %.sroa.01.0.i.i.peel.i.peel.i.i, %.sroa.442.0.copyload.i.i.i ; 15 uses
  %i.qp = icmp eq i64 %i.qo, 0
  br i1 %i.qp, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %.not.i.i.i.i.peel.i.i = icmp ult i64 %i.qo, %.sroa.1351.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.peel.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.qq = icmp eq i64 %i.qo, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.qq, label %bb.fr, label %.loopexit203.i.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.qo
  %i.qs = load i8, ptr %i.qr, align 1, !alias.scope !1568, !noalias !1571, !noundef !4
  %i.qt = icmp sgt i8 %i.qs, -65
  br i1 %i.qt, label %bb.fr, label %.loopexit203.i.i.i

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %bb.fn
  %i.qu = icmp samesign eq i64 %i.qo, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.qu, label %.loopexit.i.i.peel.i.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.qo
  %i.qw = load i8, ptr %i.qv, align 1, !noalias !1578, !noundef !4 ; 3 uses
  %i.qx = icmp sgt i8 %i.qw, -1
  br i1 %i.qx, label %.loopexit.i.i.peel.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.i.peel.i.i: ; preds = %bb.fs
  %i.qy = add nuw nsw i64 %i.qo, 1
  %i.qz = icmp samesign ne i64 %i.qy, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.qz)
  %i.ra = icmp samesign ugt i8 %i.qw, -33
  br i1 %i.ra, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.i.peel.i.i, label %.loopexit.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.i.peel.i.i
  %i.rb = add nuw nsw i64 %i.qo, 2
  %i.rc = icmp samesign ne i64 %i.rb, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.rc)
  %i.rd = icmp samesign ugt i8 %i.qw, -17
  br i1 %i.rd, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit16.i.i.i.i.peel.i.i, label %.loopexit.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit16.i.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.i.peel.i.i
  %i.re = add nuw nsw i64 %i.qo, 3
  %i.rf = icmp samesign ne i64 %i.re, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.rf)
  br label %.loopexit.i.i.peel.i.i

.loopexit204.i.peel.i.i:                          ; preds = %bb.fg
  br i1 %i.os, label %.loopexit.i.i.peel.i.i, label %.loopexit.i.i.i

.loopexit.i.i.peel.i.i:                           ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit16.i.i.i.i.peel.i.i, %bb.fs, %.loopexit204.i.peel.i.i, %bb.fr, %bb.fj
  %.sroa.47.1201.i.peel.i.i = phi i64 [ %.sroa.442.0.copyload.i.i.i, %.loopexit204.i.peel.i.i ], [ %.sroa.1351.0.copyload.i.i.i, %bb.fr ], [ %.sroa.442.0.copyload.i.i.i, %bb.fj ], [ %i.qo, %bb.fs ], [ %i.qo, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit16.i.i.i.i.peel.i.i ], [ %i.qo, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit14.i.i.i.i.peel.i.i ], [ %i.qo, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjPLGVgcokxX_22deltalake_catalog_glue.exit12.i.i.i.i.peel.i.i ] ; 5 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsjPLGVgcokxX_22deltalake_catalog_glue(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.47.1201.i.peel.i.i)
          to label %.noexc30.i.peel.i.i unwind label %.loopexit77.split.i.loopexit.split-lp.i.i, !noalias !1543

.noexc30.i.peel.i.i:                              ; preds = %.loopexit.i.i.peel.i.i
  %i.rg = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1562, !noalias !1538, !noundef !4 ; 3 uses
  %i.rh = icmp sgt i64 %i.rg, -1
  call void @llvm.assume(i1 %i.rh)
  %.not.i28.i.peel.i.i = icmp eq i64 %.sroa.47.1201.i.peel.i.i, 0
  br i1 %.not.i28.i.peel.i.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %.noexc30.i.peel.i.i
  %i.ri = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1562, !noalias !1538, !nonnull !4, !noundef !4
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rj, ptr nonnull readonly align 1 %i.li, i64 %.sroa.47.1201.i.peel.i.i, i1 false), !noalias !1543
  %.pre.i29.i.peel.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1562, !noalias !1538
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.noexc30.i.peel.i.i
  %i.rk = phi i64 [ %.pre.i29.i.peel.i.i, %bb.ft ], [ %i.rg, %.noexc30.i.peel.i.i ]
  %i.rl = add i64 %i.rk, %.sroa.47.1201.i.peel.i.i
  store i64 %i.rl, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1562, !noalias !1538
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsjPLGVgcokxX_22deltalake_catalog_glue(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 2)
          to label %.lr.ph.i.i.i.i unwind label %.loopexit77.split.i.loopexit.split-lp.i.i, !noalias !1543

.lr.ph.i.i.i.i:                                   ; preds = %bb.fu, %bb.gj
  %.sroa.04.0154.i.i.i = phi i64 [ %.sroa.47.1201.i.i.i, %bb.gj ], [ %.sroa.47.1201.i.peel.i.i, %bb.fu ] ; 14 uses
  %i.rm = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1565, !noalias !1538, !noundef !4 ; 2 uses
  %i.rn = icmp sgt i64 %i.rm, -1
  call void @llvm.assume(i1 %i.rn)
  %i.ro = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1565, !noalias !1538, !nonnull !4, !noundef !4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rm
  store i16 13171, ptr %i.rp, align 1, !noalias !1543
  %.pre.i33.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1565, !noalias !1538
  %storemerge.i.i = add i64 %.pre.i33.i.i.i, 2
  store i64 %storemerge.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1565, !noalias !1538
  %i.rq = icmp eq i64 %.sroa.04.0154.i.i.i, 0
  br i1 %i.rq, label %bb.fy, label %bb.fv
end_hunk_0
