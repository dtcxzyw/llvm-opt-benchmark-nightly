inline.NumInlined: 11461
inline.NumDeleted: 4051
begin_hunk_0_@_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot7try_new0B8_:bb.a
  br i1 %i.gb, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gc = icmp eq i64 %.val37.i, 23
  br i1 %i.gc, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !24016)
  %i.gd = icmp ult i64 %.val37.i, 38
  br i1 %i.gd, label %.lr.ph.split.us.i.i.i.i.i, label %bb.ce

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.cd
  %i.ge = load i128, ptr %.val.i, align 1
  %i.gf = xor i128 %i.ge, 43072362355690950656158319865334099790
  %i.gg = getelementptr i8, ptr %.val.i, i64 7
  %i.gh = load i128, ptr %i.gg, align 1
  %i.gi = xor i128 %i.gh, 154763657356728356358779844745476251763
  %i.gj = or i128 %i.gf, %i.gi
  %i.gk = icmp ne i128 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.us.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i
  %.in.i.i.i.i66 = phi i64 [ %i.gx, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i ], [ %.val37.i, %.lr.ph.split.us.i.i.i.i.i ]
  %.pn.i.i.i.i65 = phi ptr [ %i.gn, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i ], [ %.val.i, %.lr.ph.split.us.i.i.i.i.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i65, i64 1 ; 3 uses
  %i.go = load i128, ptr %i.gn, align 1
  %i.gp = xor i128 %i.go, 43072362355690950656158319865334099790
  %i.gq = getelementptr i8, ptr %i.gn, i64 7
  %i.gr = load i128, ptr %i.gq, align 1
  %i.gs = xor i128 %i.gr, 154763657356728356358779844745476251763
  %i.gt = or i128 %i.gp, %i.gs
  %i.gu = icmp ne i128 %i.gt, 0
  %i.gv = zext i1 %i.gu to i32
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i: ; preds = %.lr.ph
  %i.gx = add nsw i64 %.in.i.i.i.i66, -1          ; 2 uses
  %.not28.i.i.i.i.i = icmp ugt i64 %i.gx, 23
  br i1 %.not28.i.i.i.i.i, label %.lr.ph, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24019
  store ptr %.val.i, ptr %i.d, align 8, !noalias !24019
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.val37.i, ptr %i.gy, align 8, !noalias !24019
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @369, i64 1), ptr %i.gz, align 8, !noalias !24019
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 22, ptr %i.ha, align 8, !noalias !24019
  %i.hb = icmp ult i64 %.val37.i, 87
  br i1 %i.hb, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ci, %bb.ce
  %.sroa.06.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.ce ], [ %i.iw, %bb.ci ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i = phi i8 [ 0, %bb.ce ], [ %.sroa.014.2.3.i.i.i.i, %bb.ci ] ; 2 uses
  %i.hc = add i64 %.sroa.06.0.lcssa.i.i.i.i, 38
  %i.hd = icmp uge i64 %i.hc, %.val37.i
  %i.he = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i to i1 ; 2 uses
  %or.cond338.i.i.i.i = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %or.cond338.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph40.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ce, %bb.ci
  %.sroa.06.036.i.i.i.i = phi i64 [ %i.iw, %bb.ci ], [ 0, %bb.ce ] ; 7 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.06.036.i.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.hf, align 1, !alias.scope !24020, !noalias !24021
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 22
  %.sroa.02.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.hg, align 1, !alias.scope !24020, !noalias !24021
  %i.hh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i, splat (i8 78)
  %i.hi = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i, splat (i8 116)
  %i.hj = and <16 x i1> %i.hh, %i.hi
  %i.hk = bitcast <16 x i1> %i.hj to i16          ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i.i = load <16 x i8>, ptr %i.hl, align 1, !alias.scope !24020, !noalias !24021
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 38
  %.sroa.02.0.copyload.i.1.i.i.i.i = load <16 x i8>, ptr %i.hm, align 1, !alias.scope !24020, !noalias !24021
  %i.hn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i, splat (i8 78)
  %i.ho = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i, splat (i8 116)
  %i.hp = and <16 x i1> %i.hn, %i.ho
  %i.hq = bitcast <16 x i1> %i.hp to i16          ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i.i = load <16 x i8>, ptr %i.hr, align 1, !alias.scope !24020, !noalias !24021
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 54
  %.sroa.02.0.copyload.i.2.i.i.i.i = load <16 x i8>, ptr %i.hs, align 1, !alias.scope !24020, !noalias !24021
  %i.ht = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i, splat (i8 78)
  %i.hu = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i, splat (i8 116)
  %i.hv = and <16 x i1> %i.ht, %i.hu
  %i.hw = bitcast <16 x i1> %i.hv to i16          ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i.i = load <16 x i8>, ptr %i.hx, align 1, !alias.scope !24020, !noalias !24021
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hf, i64 70
  %.sroa.02.0.copyload.i.3.i.i.i.i = load <16 x i8>, ptr %i.hy, align 1, !alias.scope !24020, !noalias !24021
  %i.hz = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i, splat (i8 78)
  %i.ia = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i, splat (i8 116)
  %i.ib = and <16 x i1> %i.hz, %i.ia
  %i.ic = bitcast <16 x i1> %i.ib to i16          ; 2 uses
  %i.id = icmp eq i16 %i.hk, 0
  br i1 %i.id, label %.preheader30.1.i.i.i.i, label %bb.cj

.preheader30.1.i.i.i.i:                           ; preds = %.noexc61.i, %.lr.ph.i.i.i.i
  %.sroa.014.2.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i ], [ %i.jb, %.noexc61.i ] ; 2 uses
  %i.ie = icmp eq i16 %i.hq, 0
  br i1 %i.ie, label %.preheader30.2.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.preheader30.1.i.i.i.i
  %i.if = or disjoint i64 %.sroa.06.036.i.i.i.i, 16
  %i.ig = trunc nuw i8 %.sroa.014.2.i.i.i.i to i1 ; 2 uses
  %i.ih = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.if, i16 noundef %i.hq, i1 noundef zeroext %i.ig) #44
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !23920

.noexc58.i:                                       ; preds = %bb.cf
  %i.ii = or i1 %i.ih, %i.ig
  %i.ij = zext i1 %i.ii to i8
  br label %.preheader30.2.i.i.i.i

.preheader30.2.i.i.i.i:                           ; preds = %.noexc58.i, %.preheader30.1.i.i.i.i
  %.sroa.014.2.1.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i, %.preheader30.1.i.i.i.i ], [ %i.ij, %.noexc58.i ] ; 2 uses
  %i.ik = icmp eq i16 %i.hw, 0
  br i1 %i.ik, label %.preheader30.3.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.preheader30.2.i.i.i.i
  %i.il = or disjoint i64 %.sroa.06.036.i.i.i.i, 32
  %i.im = trunc nuw i8 %.sroa.014.2.1.i.i.i.i to i1 ; 2 uses
  %i.in = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.il, i16 noundef %i.hw, i1 noundef zeroext %i.im) #44
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !23920

.noexc59.i:                                       ; preds = %bb.cg
  %i.io = or i1 %i.in, %i.im
  %i.ip = zext i1 %i.io to i8
  br label %.preheader30.3.i.i.i.i

.preheader30.3.i.i.i.i:                           ; preds = %.noexc59.i, %.preheader30.2.i.i.i.i
  %.sroa.014.2.2.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i, %.preheader30.2.i.i.i.i ], [ %i.ip, %.noexc59.i ] ; 2 uses
  %i.iq = icmp eq i16 %i.ic, 0
  br i1 %i.iq, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.preheader30.3.i.i.i.i
  %i.ir = or disjoint i64 %.sroa.06.036.i.i.i.i, 48
  %i.is = trunc nuw i8 %.sroa.014.2.2.i.i.i.i to i1 ; 2 uses
  %i.it = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.ir, i16 noundef %i.ic, i1 noundef zeroext %i.is) #44
          to label %.noexc60.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !23920

.noexc60.i:                                       ; preds = %bb.ch
  %i.iu = or i1 %i.it, %i.is
  %i.iv = zext i1 %i.iu to i8
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc60.i, %.preheader30.3.i.i.i.i
  %.sroa.014.2.3.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i, %.preheader30.3.i.i.i.i ], [ %i.iv, %.noexc60.i ] ; 2 uses
  %i.iw = add i64 %.sroa.06.036.i.i.i.i, 64       ; 2 uses
  %i.ix = add i64 %.sroa.06.036.i.i.i.i, 150
  %i.iy = icmp uge i64 %i.ix, %.val37.i
  %i.iz = trunc nuw i8 %.sroa.014.2.3.i.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %i.iy, i1 true, i1 %i.iz
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ja = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.036.i.i.i.i, i16 noundef %i.hk, i1 noundef zeroext false) #44
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !23920

.noexc61.i:                                       ; preds = %bb.cj
  %i.jb = zext i1 %i.ja to i8
  br label %.preheader30.1.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ck, %.preheader.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.014.4.i.i.i.i, %bb.ck ]
  %.lcssa.i.i.i.i = phi i1 [ %i.he, %.preheader.i.i.i.i ], [ %i.ju, %bb.ck ] ; 2 uses
  %i.jc = add i64 %.val37.i, -38                  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.jc ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i = load <16 x i8>, ptr %i.jd, align 1, !alias.scope !24020, !noalias !24024
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 22
  %.sroa.02.0.copyload.i59.i.i.i.i = load <16 x i8>, ptr %i.je, align 1, !alias.scope !24020, !noalias !24024
  %i.jf = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i, splat (i8 78)
  %i.jg = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i.i.i, splat (i8 116)
  %i.jh = and <16 x i1> %i.jf, %i.jg
  %i.ji = bitcast <16 x i1> %i.jh to i16          ; 2 uses
  %i.jj = icmp eq i16 %i.ji, 0
  br i1 %i.jj, label %bb.cm, label %bb.cn

.lr.ph40.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %bb.ck
  %.sroa.06.139.i.i.i.i = phi i64 [ %i.jr, %bb.ck ], [ %.sroa.06.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.06.139.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i.i.i = load <16 x i8>, ptr %i.jk, align 1, !alias.scope !24020, !noalias !24027
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 22
  %.sroa.02.0.copyload.i61.i.i.i.i = load <16 x i8>, ptr %i.jl, align 1, !alias.scope !24020, !noalias !24027
  %i.jm = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i.i.i, splat (i8 78)
  %i.jn = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i.i.i, splat (i8 116)
  %i.jo = and <16 x i1> %i.jm, %i.jn
  %i.jp = bitcast <16 x i1> %i.jo to i16          ; 2 uses
  %i.jq = icmp eq i16 %i.jp, 0
  br i1 %i.jq, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.noexc62.i, %.lr.ph40.i.i.i.i
  %.sroa.014.4.i.i.i.i = phi i8 [ 0, %.lr.ph40.i.i.i.i ], [ %i.jw, %.noexc62.i ] ; 2 uses
  %i.jr = add i64 %.sroa.06.139.i.i.i.i, 16
  %i.js = add i64 %.sroa.06.139.i.i.i.i, 54
  %i.jt = icmp uge i64 %i.js, %.val37.i
  %i.ju = trunc nuw i8 %.sroa.014.4.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i = select i1 %i.jt, i1 true, i1 %i.ju
  br i1 %or.cond3.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph40.i.i.i.i

bb.cl:                                            ; preds = %.lr.ph40.i.i.i.i
  %i.jv = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.139.i.i.i.i, i16 noundef %i.jp, i1 noundef zeroext false) #44
          to label %.noexc62.i unwind label %.loopexit.i, !noalias !23920

.noexc62.i:                                       ; preds = %bb.cl
  %i.jw = zext i1 %i.jv to i8
  br label %bb.ck

bb.cm:                                            ; preds = %.noexc63.i, %._crit_edge.i.i.i.i
  %.sroa.014.5.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ka, %.noexc63.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24019
  %i.jx = trunc nuw i8 %.sroa.014.5.i.i.i.i to i1
  br i1 %i.jx, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jy = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.jc, i16 noundef %i.ji, i1 noundef zeroext %.lcssa.i.i.i.i) #44
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !23920

.noexc63.i:                                       ; preds = %bb.cn
  %i.jz = or i1 %.lcssa.i.i.i.i, %i.jy
  %i.ka = zext i1 %i.jz to i8
  br label %bb.cm

.loopexit.i:                                      ; preds = %bb.cl
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.cj, %bb.ch, %bb.cg, %bb.cf
  %lpad.loopexit186.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.cn
  %lpad.loopexit.split-lp187.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit186.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp187.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #42
          to label %.body42.i unwind label %bb.bu, !noalias !23920

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.cc
  %i.kb = load i128, ptr %.val.i, align 1
  %i.kc = xor i128 43072362355690950656158319865334099790, %i.kb
  %i.kd = getelementptr i8, ptr %.val.i, i64 7
  %i.ke = load i128, ptr %i.kd, align 1
  %i.kf = xor i128 154763657356728356358779844745476251763, %i.ke
  %i.kg = or i128 %i.kc, %i.kf
  %i.kh = icmp ne i128 %i.kg, 0
  %i.ki = zext i1 %i.kh to i32
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cm, %bb.cc
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.co, !noalias !23920

bb.co:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body42.i unwind label %bb.cp, !noalias !23920

bb.cp:                                            ; preds = %bb.co
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !23920
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ct unwind label %bb.cs, !noalias !23920

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %.lr.ph, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cm, %.lr.ph.split.us.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i unwind label %bb.cq, !noalias !23920

bb.cq:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body42.i unwind label %bb.cr, !noalias !23920

bb.cr:                                            ; preds = %bb.cq
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !23920
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i unwind label %bb.cs, !noalias !23920

.body42.i:                                        ; preds = %bb.cs, %bb.cq, %bb.co, %.loopexit.split-lp.i, %bb.bc
  %.pn26.i = phi { ptr, i32 } [ %i.ed, %bb.bc ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.km, %bb.cq ], [ %i.kk, %bb.co ], [ %i.ko, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23916
  br label %.body78.i

bb.cs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body42.i

bb.ct:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23916
  %.sroa.0132.0.copyload.i = load i64, ptr %i.o, align 16, !noalias !23916
  %.sroa.5133.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !23916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4.0..sroa_idx4.i, i64 64, i1 false), !noalias !23916
  %i.kp = load <2 x ptr>, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx4.sroa_idx.i, align 16, !noalias !23916
  br label %bb.cy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24030
  store i64 0, ptr %i.c, align 8, !noalias !24030
  %.sroa.42.0..sroa_idx.i.i73.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i73.i, align 8, !noalias !24030
  %.sroa.53.0..sroa_idx.i.i74.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i74.i, align 8, !noalias !24030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24030
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.kq, align 8, !noalias !24030
  %.sroa.4.0..sroa_idx.i.i75.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i75.i, align 4, !noalias !24030
  %.sroa.5.0..sroa_idx.i.i76.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i76.i, align 2, !noalias !24030
  store ptr %i.c, ptr %i.b, align 8, !noalias !24030
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1212, ptr %i.kr, align 8, !noalias !24030
  %i.ks = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.cv unwind label %bb.cu, !noalias !24037

bb.cu:                                            ; preds = %bb.cw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body78.i unwind label %bb.cx, !noalias !24037

bb.cv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i
  br i1 %i.ks, label %bb.cw, label %bb.cz, !prof !3

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1213, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @517, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1215) #41
          to label %.noexc.i.i77.i unwind label %bb.cu, !noalias !24037

.noexc.i.i77.i:                                   ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %bb.cu
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !24037
  unreachable

bb.cy:                                            ; preds = %bb.cz, %bb.ct
  %.sroa.0103.2178.i = phi i64 [ -9223372036854775735, %bb.cz ], [ %.sroa.0132.0.copyload.i, %bb.ct ]
  %.sroa.6.2176.i = phi ptr [ %.sroa.0122.0.copyload.i, %bb.cz ], [ %.sroa.5133.0.copyload.i, %bb.ct ]
  %i.kv = phi <2 x ptr> [ undef, %bb.cz ], [ %i.kp, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !23916
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i

bb.cz:                                            ; preds = %bb.cv
  %.sroa.0122.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !24038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i73.i, i64 16, i1 false), !noalias !23916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24030
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.o)
          to label %bb.cy unwind label %bb.db, !noalias !23920

bb.da:                                            ; preds = %.body78.i, %bb.db
  %.pn30.i = phi { ptr, i32 } [ %i.kw, %bb.db ], [ %.pn28.ph.i, %.body78.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !23916
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.db:                                            ; preds = %bb.cz
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.body78.i:                                        ; preds = %bb.cu, %.body42.i
  %.pn28.ph.i = phi { ptr, i32 } [ %.pn26.i, %.body42.i ], [ %i.kt, %bb.cu ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.o) #42
          to label %bb.da unwind label %bb.bu, !noalias !23920

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit.i: ; preds = %bb.dc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.kx = phi ptr [ %i.cy, %bb.dc ], [ %i.ft, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ky = phi ptr [ %i.cz, %bb.dc ], [ %i.fu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.pn35.i = phi { ptr, i32 } [ %i.kz, %bb.dc ], [ %.pn32.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  store i8 2, ptr %i.kx, align 8, !noalias !23916
  br label %.body31

bb.dc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit.i

end_hunk_0
begin_hunk_1_@_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21sql_similarto_to_exprB18_:bb.a
  store ptr %i.j, ptr %i.dt, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.495.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @52, ptr noundef nonnull %i.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit139 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %.body142 unwind label %bb.av

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit139: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i141 unwind label %bb.bc

bb.bc:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit139
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body142 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i141: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit139
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit145 unwind label %bb.ax

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit145: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i147 unwind label %bb.be

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit145
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body148 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i147: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit145
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit151 unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit151: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.222.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.dz, align 8
  store i64 37, ptr %0, align 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.bg unwind label %bb.l

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ag, %bb.bg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168
  %.sroa.037.6 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168 ], [ 1, %bb.ag ], [ 0, %bb.bg ] ; 3 uses
  %.sroa.039.7 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168 ], [ %.sroa.039.6, %bb.ag ], [ 0, %bb.bg ] ; 3 uses
  %.sroa.041.8 = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168 ], [ 0, %bb.ag ], [ 1, %bb.bg ] ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.v)
          to label %bb.bs unwind label %.thread

bb.bi:                                            ; preds = %.noexc
  %i.ea = load ptr, ptr %i.as, align 8, !noalias !28121, !nonnull !8, !noundef !8 ; 2 uses
  %i.eb = icmp ugt i64 %i.ar, 39
  call void @llvm.assume(i1 %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ea, ptr noundef nonnull readonly align 1 dereferenceable(40) @542, i64 range(i64 0, -9223372036854775808) 40, i1 false), !noalias !28143
  store i64 %i.ar, ptr %i.s, align 8
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ea, ptr %.sroa.4176.0..sroa_idx, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 40, ptr %.sroa.5177.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bk unwind label %bb.bj

.body156:                                         ; preds = %bb.bo, %bb.bj, %bb.bn
  %.pn106 = phi { ptr, i32 } [ %i.el, %bb.bn ], [ %i.ec, %bb.bj ], [ %i.em, %bb.bo ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #42
          to label %.body116 unwind label %bb.av

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155, %bb.bl, %bb.bi
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body156

bb.bk:                                            ; preds = %bb.bi
  %i.ed = load i64, ptr %i.c, align 8, !range !64, !noundef !8
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !65, !noundef !8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ee, label %bb.bl, label %bb.bm, !prof !3

bb.bl:                                            ; preds = %bb.bk
  %i.ei = load i64, ptr %i.eh, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.eg, i64 %i.ei) #41
          to label %bb.ae unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bk
  %i.ej = load ptr, ptr %i.eh, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.eg, ptr %i.r, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ej, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.565.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.ek, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @52, ptr noundef nonnull %i.q)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit153 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #42
          to label %.body156 unwind label %bb.av

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit153: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155 unwind label %bb.bo

bb.bo:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit153
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body156 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit153
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit159 unwind label %bb.bj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit159: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i161 unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit159
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body116 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i161: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit159
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.217.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.eq, align 8
  store i64 37, ptr %0, align 16
  br label %bb.bh

bb.bs:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.x)
          to label %bb.bt unwind label %bb.c

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.er = load i64, ptr %5, align 8, !range !3153, !noundef !8 ; 2 uses
  %i.es = icmp ne i64 %i.er, -9223372036854775787
  %i.et = trunc nuw i8 %.sroa.037.6 to i1
  %or.cond = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit174

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit174: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i170, %bb.bx, %bb.bw, %bb.bt
  %.sroa.041.9 = phi i8 [ %.sroa.041.10, %bb.bw ], [ %.sroa.041.11, %bb.bx ], [ %.sroa.041.8, %bb.bt ], [ %.sroa.041.12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i170 ]
  %i.eu = trunc nuw i8 %.sroa.041.9 to i1
  br i1 %i.eu, label %.thread201, label %bb.as

bb.bu:                                            ; preds = %bb.bt, %bb.bv
  %i.ev = phi i64 [ %i.er, %bb.bt ], [ %i.ey, %bb.bv ] ; 2 uses
  %.sroa.039.8 = phi i8 [ %.sroa.039.7, %bb.bt ], [ 1, %bb.bv ]
  %.sroa.041.10 = phi i8 [ %.sroa.041.8, %bb.bt ], [ 1, %bb.bv ] ; 3 uses
  %i.ew = icmp ne i64 %i.ev, -9223372036854775806
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq i64 %i.ev, -9223372036854775807
  br i1 %i.ex, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ey = load i64, ptr %5, align 8, !range !3153, !noundef !8 ; 2 uses
  %.not112 = icmp eq i64 %i.ey, -9223372036854775787
  br i1 %.not112, label %.thread201, label %bb.bu

bb.bw:                                            ; preds = %bb.bu
  %i.ez = trunc nuw i8 %.sroa.039.8 to i1
  br i1 %i.ez, label %bb.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit174

bb.bx:                                            ; preds = %bb.cc, %bb.bu
  %.sroa.041.11 = phi i8 [ 1, %bb.cc ], [ %.sroa.041.10, %bb.bu ] ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.au

bb.by:                                            ; preds = %bb.cc, %bb.bw
  %.sroa.041.12 = phi i8 [ 1, %bb.cc ], [ %.sroa.041.10, %bb.bw ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i170 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %.body171 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i170: ; preds = %bb.by
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit174 unwind label %bb.au

bb.cb:                                            ; preds = %.thread, %bb.g
  %.pn106.pn.pn189 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %.pn106.pn, %bb.g ]
  %.sroa.041.2188 = phi i8 [ %.sroa.041.3.ph, %.thread ], [ %.sroa.041.4, %bb.g ]
  %.sroa.039.2187 = phi i8 [ %.sroa.039.3.ph, %.thread ], [ %.sroa.039.4, %bb.g ]
  %.sroa.037.2186 = phi i8 [ %.sroa.037.3.ph, %.thread ], [ %.sroa.037.4, %bb.g ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.x) #42
          to label %bb.b unwind label %bb.av

bb.cc:                                            ; preds = %bb.e
  %i.fd = icmp ne i64 %i.ag, -9223372036854775806
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %i.ag, -9223372036854775807
  br i1 %i.fe, label %bb.by, label %bb.bx

.thread201:                                       ; preds = %bb.bv, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit174
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %3)
  br label %bb.as

bb.cd:                                            ; preds = %bb.b
  %i.ff = icmp ne i64 %i.y, -9223372036854775806
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp eq i64 %i.y, -9223372036854775807
  br i1 %i.fg, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.fh = trunc nuw i8 %.sroa.039.0 to i1
  br i1 %i.fh, label %bb.cg, label %.body171

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %5) #42
          to label %.body171 unwind label %bb.av

bb.cg:                                            ; preds = %bb.ce
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fi) #42
          to label %.body171 unwind label %bb.av

bb.ch:                                            ; preds = %bb.ci, %.body171
  resume { ptr, i32 } %.pn114

bb.ci:                                            ; preds = %.body171
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %3) #42
          to label %bb.ch unwind label %bb.av
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24sql_expr_to_logical_exprB18_(ptr dead_on_unwind noalias noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(328) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef align 8 dereferenceable(80) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [112 x i8], align 16              ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [112 x i8], align 16              ; 7 uses
  %i.k = alloca [112 x i8], align 16              ; 17 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.37.i.sroa.11.sroa.9 = alloca [64 x i8], align 16 ; 7 uses
  %.sroa.37.i.sroa.11.sroa.10 = alloca [128 x i8], align 16 ; 6 uses
  %i.m = alloca [256 x i8], align 16              ; 14 uses
  %i.n = alloca [256 x i8], align 16              ; 17 uses
  %.sroa.7.i.sroa.14 = alloca [192 x i8], align 8 ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  %i.p = alloca [112 x i8], align 16              ; 11 uses
  %.sroa.17.sroa.11 = alloca [64 x i8], align 1   ; 5 uses
  %i.q = alloca [112 x i8], align 16              ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [112 x i8], align 16              ; 5 uses
  %i.t = alloca [328 x i8], align 8               ; 4 uses
  %i.u = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.611 = alloca [40 x i8], align 8          ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 18 uses
  %i.z = alloca [328 x i8], align 8               ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.ab = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 32, i64 noundef range(i64 8, 17) 8) #46 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !308

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #41
          to label %.noexc unwind label %bb.cn

.noexc:                                           ; preds = %bb.b
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.z, ptr noundef nonnull align 8 dereferenceable(328) %2, i64 328, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !28144
  %i.ad = tail call noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 328, i64 noundef range(i64 8, 17) 8) #46, !noalias !28144 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.c, label %.lr.ph, !prof !308

bb.c:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #41
          to label %.noexc49 unwind label %bb.d

.noexc49:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.z) #42
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

.body:                                            ; preds = %bb.d
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 32, i64 noundef 8) #46
  br label %.thread199

.lr.ph:                                           ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ad, ptr noundef nonnull align 8 dereferenceable(328) %2, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 69, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  store ptr %i.ab, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 10 uses
  store i64 0, ptr %i.ak, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val48 = load ptr, ptr %1, align 8, !nonnull !8, !align !216 ; 2 uses
  %.sroa.7.i.sroa.14.216..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.i.sroa.14, i64 160 ; 2 uses
  %.sroa.7.i.sroa.14.104..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.i.sroa.14, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val48, i64 1688
  %i.am = getelementptr inbounds nuw i8, ptr %.val48, i64 1696
end_hunk_1
begin_hunk_2_@_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE26convert_data_type_to_fieldB14_:bb.a
  unreachable

common.resume:                                    ; preds = %bb.cx, %bb.ab, %bb.ap, %bb.ay, %bb.br, %bb.bt, %.body.i, %bb.cl, %.body, %bb.dm, %bb.dl
  %common.resume.op = phi { ptr, i32 } [ %i.gi, %bb.cl ], [ %lpad.thr_comm.split-lp, %bb.dl ], [ %i.ho, %bb.cx ], [ %.pn, %.body ], [ %lpad.thr_comm.split-lp, %bb.dm ], [ %.pn.i, %bb.bt ], [ %.pn224.i, %bb.ab ], [ %.pn221.i, %bb.ap ], [ %.pn226.i, %.body.i ], [ %.pn219.i, %bb.ay ], [ %i.fg, %bb.br ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !3072, !noundef !8 ; 4 uses
  %i.bb = icmp ne i64 %i.ba, 4
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nsw i64 %i.ba, -2
  %.inv = icmp samesign ult i64 %i.ba, 2
  %i.bd = select i1 %.inv, i64 2, i64 %i.bc
  switch i64 %i.bd, label %.thread [
    i64 0, label %.split132
    i64 1, label %bb.co
    i64 2, label %bb.cp
  ]

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %2, ptr %i.aj, align 8, !noalias !31197
  br label %.split209.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %2, ptr %i.aj, align 8, !noalias !31208
  switch i8 %i.aw, label %default.unreachable [
    i8 0, label %.split209.i
    i8 1, label %.split209.i
    i8 2, label %.split209.i
    i8 3, label %bb.f
    i8 4, label %.split209.i
    i8 5, label %.split209.i
    i8 6, label %bb.g
    i8 7, label %.split209.i
    i8 8, label %.split209.i
    i8 9, label %.split209.i
    i8 10, label %.split209.i
    i8 11, label %.split209.i
    i8 12, label %.split209.i
    i8 13, label %.split209.i
    i8 14, label %.split209.i
    i8 15, label %.split209.i
    i8 16, label %.split209.i
    i8 17, label %.split209.i
    i8 18, label %.split209.i
    i8 19, label %bb.am
    i8 20, label %bb.am
    i8 21, label %.split209.i
    i8 22, label %.split209.i
    i8 23, label %.split209.i
    i8 24, label %.split209.i
    i8 25, label %.split209.i
    i8 26, label %bb.h
    i8 27, label %.split209.i
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %.split209.i
    i8 31, label %bb.k
    i8 32, label %bb.l
    i8 33, label %bb.k
    i8 34, label %bb.l
    i8 35, label %.split209.i
    i8 36, label %.split209.i
    i8 37, label %.split209.i
    i8 38, label %bb.m
    i8 39, label %bb.m
    i8 40, label %bb.n
    i8 41, label %.split209.i
    i8 42, label %.split209.i
    i8 43, label %.split209.i
    i8 44, label %.split209.i
    i8 45, label %.split209.i
    i8 46, label %bb.m
    i8 47, label %bb.o
    i8 48, label %bb.o
    i8 49, label %bb.o
    i8 50, label %.split209.i
    i8 51, label %.split209.i
    i8 52, label %.split209.i
    i8 53, label %.split209.i
    i8 54, label %.split209.i
    i8 55, label %.split209.i
    i8 56, label %.split209.i
    i8 57, label %.split209.i
    i8 58, label %bb.n
    i8 59, label %bb.p
    i8 60, label %.split209.i
    i8 61, label %bb.p
    i8 62, label %.split209.i
    i8 63, label %.split209.i
    i8 64, label %.split209.i
    i8 65, label %.split209.i
    i8 66, label %bb.q
    i8 67, label %.split209.i
    i8 68, label %.split209.i
    i8 69, label %bb.q
    i8 70, label %.split209.i
    i8 71, label %bb.r
    i8 72, label %bb.s
    i8 73, label %.split209.i
    i8 74, label %bb.r
    i8 75, label %.split209.i
    i8 76, label %bb.t
    i8 77, label %bb.t
    i8 78, label %bb.u
    i8 79, label %.split209.i
    i8 80, label %bb.v
    i8 81, label %.split209.i
    i8 82, label %.split209.i
    i8 83, label %bb.w
    i8 84, label %.split209.i
    i8 85, label %bb.x
    i8 86, label %.split209.i
    i8 87, label %.split209.i
    i8 88, label %.split209.i
    i8 89, label %bb.f
    i8 90, label %.split209.i
    i8 91, label %.split209.i
    i8 92, label %.split209.i
    i8 93, label %bb.f
    i8 94, label %.split209.i
    i8 95, label %bb.y
    i8 96, label %.split209.i
    i8 97, label %.split209.i
    i8 98, label %.split209.i
    i8 99, label %.split209.i
    i8 100, label %.split209.i
    i8 101, label %.split209.i
    i8 102, label %.split209.i
    i8 103, label %.split209.i
    i8 104, label %.split209.i
    i8 105, label %.split209.i
    i8 106, label %bb.z
    i8 107, label %.split209.i
    i8 108, label %.split209.i
    i8 109, label %.split209.i
    i8 110, label %.split209.i
    i8 111, label %.split209.i
    i8 112, label %.split209.i
    i8 113, label %.split209.i
    i8 114, label %.split209.i
    i8 115, label %.split209.i
  ]

default.unreachable:                              ; preds = %bb.am, %bb.e
  unreachable

.split209.i:                                      ; preds = %.thread, %bb.bf, %bb.v, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !31208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !31208
  store ptr %i.aj, ptr %i.j, align 8, !noalias !31208
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.496.0..sroa_idx.i, align 8, !noalias !31208
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @650, ptr noundef nonnull %i.j), !noalias !31209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !31208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31208
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cf unwind label %bb.ce, !noalias !31209

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bf = load i8, ptr %i.be, align 1, !range !89, !alias.scope !31204, !noalias !31210, !noundef !8
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  br i1 %i.bg, label %bb.cb, label %bb.ca

bb.g:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bj = load i8, ptr %i.bi, align 2, !range !89, !alias.scope !31204, !noalias !31210, !noundef !8
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !range !466, !alias.scope !31206, !noalias !31209, !noundef !8
  %.not223.i = icmp eq i8 %i.bm, 2
  %brmerge.i = select i1 %.not223.i, i1 true, i1 %i.bk
  br i1 %brmerge.i, label %bb.aa, label %.split195.i

bb.h:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 11, ptr %i.bn, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 2, ptr %i.bo, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 6, ptr %i.bp, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 3, ptr %i.bq, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.l:                                             ; preds = %bb.e, %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 7, ptr %i.br, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.m:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 4, ptr %i.bs, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.n:                                             ; preds = %bb.e, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 5, ptr %i.bt, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.o:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 8, ptr %i.bu, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.p:                                             ; preds = %bb.e, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 9, ptr %i.bv, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.q:                                             ; preds = %bb.e, %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 11, ptr %i.bw, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.r:                                             ; preds = %bb.s, %bb.e, %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 12, ptr %i.bx, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.s:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !3023, !alias.scope !31206, !noalias !31209, !noundef !8
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %.split197.i

bb.t:                                             ; preds = %bb.e, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 1, ptr %i.cb, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.u:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 14, ptr %i.cc, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.v:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !64, !alias.scope !31206, !noalias !31209, !noundef !8
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %.split209.i, label %bb.aw

bb.w:                                             ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !64, !alias.scope !31206, !noalias !31209, !noundef !8 ; 2 uses
  %.not216.i = icmp eq i64 %i.ch, 0
  br i1 %.not216.i, label %bb.bg, label %bb.bf

bb.x:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !range !26430, !alias.scope !31206, !noalias !31209, !noundef !8
  %.not213.i = icmp eq i8 %i.cj, 13
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !64, !alias.scope !31206, !noalias !31209
  %.not214.i = icmp eq i64 %i.cl, 0
  %or.cond.i = select i1 %.not213.i, i1 %.not214.i, i1 false
  br i1 %or.cond.i, label %bb.bs, label %.split205.i

bb.y:                                             ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 20, ptr %i.cm, align 8, !alias.scope !31202, !noalias !31211
  store i64 20, ptr %i.an, align 8, !alias.scope !31202, !noalias !31211
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.z:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !31208
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !31206, !noalias !31209, !nonnull !8, !noundef !8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !31206, !noalias !31209, !noundef !8
  %i.cr = getelementptr inbounds nuw [144 x i8], ptr %i.co, i64 %i.cq
  store ptr %i.co, ptr %i.n, align 8, !noalias !31208
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cr, ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !31208
  %.sroa.581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.581.0..sroa_idx.i, align 8, !noalias !31208
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %1, ptr %i.cs, align 8, !noalias !31208
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2R_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6k_IB6i_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB5z_EB74_EINtNtNtB4_6traits7collect12FromIteratorIB6i_B5z_B74_EE9from_iterBQ_E0B8l_EB3R_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.n), !noalias !31202
  %i.ct = load i64, ptr %i.o, align 8, !range !43, !noalias !31208, !noundef !8 ; 2 uses
  %.not212.i = icmp eq i64 %i.ct, 20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !31208
  br i1 %.not212.i, label %bb.cd, label %bb.cc

bb.aa:                                            ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.cw = load i8, ptr %i.cv, align 1, !range !89, !alias.scope !31204, !noalias !31210, !noundef !8
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.al, label %bb.ak

.split195.i:                                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !31208
  call fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) @648, i64 89, ptr nonnull @648, ptr nonnull inttoptr (i64 179 to ptr)) #44, !noalias !31209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !31208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31208
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %bb.ac, !noalias !31209

bb.ab:                                            ; preds = %bb.ag, %bb.ac
  %.pn224.i = phi { ptr, i32 } [ %i.cz, %bb.ac ], [ %i.di, %bb.ag ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #42
          to label %common.resume unwind label %bb.ai, !noalias !31209

bb.ac:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ae, %.split195.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %.split195.i
  %i.da = load i64, ptr %i.g, align 8, !range !64, !noalias !31208, !noundef !8
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !range !65, !noalias !31208, !noundef !8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.db, label %bb.ae, label %bb.af, !prof !3

bb.ae:                                            ; preds = %bb.ad
  %i.df = load i64, ptr %i.de, align 8, !noalias !31208
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dd, i64 %i.df) #41
          to label %bb.aj unwind label %bb.ac, !noalias !31209

bb.af:                                            ; preds = %bb.ad
  %i.dg = load ptr, ptr %i.de, align 8, !noalias !31208, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31208
  store i64 %i.dd, ptr %i.ag, align 8, !noalias !31208
  %.sroa.4104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.dg, ptr %.sroa.4104.0..sroa_idx.i, align 8, !noalias !31208
  %.sroa.5105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %.sroa.5105.0..sroa_idx.i, align 8, !noalias !31208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !31208
  store ptr %i.ah, ptr %i.af, align 8, !noalias !31208
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4109.0..sroa_idx.i, align 8, !noalias !31208
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.dh, align 8, !noalias !31208
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !31208
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @52, ptr noundef nonnull %i.af)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ag, !noalias !31209

bb.ag:                                            ; preds = %bb.af
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #42
          to label %bb.ab unwind label %bb.ai, !noalias !31209

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.af
end_hunk_2
