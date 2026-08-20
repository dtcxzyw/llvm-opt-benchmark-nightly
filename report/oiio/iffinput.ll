inline.NumInlined: 3630
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN11OpenImageIO4v3_18IffInput7readimgEv:bb.a

.lr.ph939:                                        ; preds = %.lr.ph1380
  %i.abp = icmp eq i64 %i.aci, 0
  br i1 %i.abp, label %.lr.ph939.preheader._crit_edge, label %.lr.ph1380, !llvm.loop !154

.lr.ph939.preheader._crit_edge:                   ; preds = %.lr.ph939.preheader, %.lr.ph939
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.50)
          to label %.loopexit859 unwind label %bb.ek

bb.ek:                                            ; preds = %.lr.ph939.preheader._crit_edge
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph1380:                                       ; preds = %.lr.ph939.preheader, %.lr.ph939
  %.sroa.8717.19351379 = phi i64 [ %i.aci, %.lr.ph939 ], [ %.sroa.8717.0943, %.lr.ph939.preheader ]
  %.sroa.0715.19361378 = phi ptr [ %i.acj, %.lr.ph939 ], [ %.sroa.0715.0944, %.lr.ph939.preheader ] ; 2 uses
  %.02439371377 = phi i16 [ %i.ack, %.lr.ph939 ], [ %i.abn, %.lr.ph939.preheader ] ; 2 uses
  %i.abr = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.abs = lshr i8 %i.abr, 3
  %i.abt = zext nneg i8 %i.abs to i64
  %i.abu = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.abv = zext i8 %i.abu to i64
  %i.abw = mul nuw nsw i64 %i.abt, %i.abv         ; 2 uses
  %i.abx = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i667 = icmp eq i8 %i.abx, 0
  %i.aby = load i8, ptr %i.an, align 1
  %i.abz = lshr i8 %i.aby, 3
  %narrow.i.i668 = select i1 %.not.i.i667, i8 0, i8 %i.abz
  %i.aca = zext nneg i8 %narrow.i.i668 to i64
  %i.acb = add nuw nsw i64 %i.abw, %i.aca
  %i.acc = zext i16 %.02439371377 to i64
  %i.acd = mul nuw nsw i64 %i.acb, %i.acc
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.acd
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.abw
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %indvars.iv.next11031384
  %i.ach = load i8, ptr %.sroa.0715.19361378, align 1, !tbaa !16
  store i8 %i.ach, ptr %i.acg, align 1, !tbaa !16
  %i.aci = add i64 %.sroa.8717.19351379, -1       ; 3 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0715.19361378, i64 1 ; 2 uses
  %i.ack = add i16 %.02439371377, 1               ; 2 uses
  %i.acl = load i16, ptr %i.t, align 2, !tbaa !24 ; 2 uses
  %.not419 = icmp ugt i16 %i.ack, %i.acl
  br i1 %.not419, label %._crit_edge940.loopexit, label %.lr.ph939, !llvm.loop !154

._crit_edge940.loopexit:                          ; preds = %.lr.ph1380
  %.pre1125 = load i16, ptr %i.v, align 2, !tbaa !24
  br label %._crit_edge940

._crit_edge940:                                   ; preds = %._crit_edge940.loopexit, %bb.ej
  %i.acm = phi i16 [ %i.aau, %bb.ej ], [ %.pre1125, %._crit_edge940.loopexit ] ; 2 uses
  %i.acn = phi i16 [ %i.aav, %bb.ej ], [ %i.acl, %._crit_edge940.loopexit ]
  %.sroa.8717.1.lcssa = phi i64 [ %.sroa.8717.0943, %bb.ej ], [ %i.aci, %._crit_edge940.loopexit ]
  %.sroa.0715.1.lcssa = phi ptr [ %.sroa.0715.0944, %bb.ej ], [ %i.acj, %._crit_edge940.loopexit ]
  %i.aco = add nuw nsw i32 %.0244945, 1
  %i.acp = zext i16 %i.acm to i32
  %.not418.not = icmp samesign ult i32 %.0244945, %i.acp
  br i1 %.not418.not, label %bb.ej, label %.loopexit859, !llvm.loop !155

.loopexit859:                                     ; preds = %._crit_edge940, %bb.ei, %.lr.ph939.preheader._crit_edge, %bb.ef
  %.sroa.7.1 = phi i64 [ %.sroa.7.01382, %bb.ef ], [ %i.aap, %.lr.ph939.preheader._crit_edge ], [ %i.aap, %bb.ei ], [ %i.aap, %._crit_edge940 ]
  %.sroa.0726.1 = phi ptr [ %.sroa.0726.01383, %bb.ef ], [ %i.aaq, %.lr.ph939.preheader._crit_edge ], [ %i.aaq, %bb.ei ], [ %i.aaq, %._crit_edge940 ]
  %cond9 = phi i1 [ false, %bb.ef ], [ false, %.lr.ph939.preheader._crit_edge ], [ true, %bb.ei ], [ true, %._crit_edge940 ]
  %.not.i.i.i673 = icmp eq ptr %.sroa.0721.0, null
  br i1 %.not.i.i.i673, label %_ZNSt6vectorIhSaIhEED2Ev.exit674, label %bb.el

bb.el:                                            ; preds = %.loopexit859
  %i.acq = ptrtoint ptr %.sroa.11.0 to i64
  %i.acr = sub i64 %i.acq, %i.zk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0721.0, i64 noundef %i.acr) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit674

_ZNSt6vectorIhSaIhEED2Ev.exit674:                 ; preds = %.loopexit859, %bb.el
  br i1 %cond9, label %bb.dt, label %.critedge508, !llvm.loop !153

bb.em:                                            ; preds = %bb.ek, %bb.eh
  %.pn423 = phi { ptr, i32 } [ %i.aao, %bb.eh ], [ %i.abq, %bb.ek ] ; 2 uses
  %.not.i.i.i675 = icmp eq ptr %.sroa.0721.0, null
  br i1 %.not.i.i.i675, label %_ZNSt6vectorIhSaIhEED2Ev.exit676, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.acs = ptrtoint ptr %.sroa.11.0 to i64
  %i.act = sub i64 %i.acs, %i.zk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0721.0, i64 noundef %i.act) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit676

bb.eo:                                            ; preds = %bb.dr
  %i.acu = zext nneg i8 %narrow.i643 to i64
  %i.acv = mul nuw nsw i64 %i.acu, %i.yd
  %i.acw = icmp ult i64 %i.yy, %i.acv
  br i1 %i.acw, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.51)
          to label %.critedge508 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit676

bb.er:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #30
  %i.acy = load i16, ptr %i.u, align 2, !tbaa !24 ; 3 uses
  store i16 %i.acy, ptr %i.w, align 2, !tbaa !24
  %i.acz = load i16, ptr %i.v, align 2, !tbaa !24 ; 2 uses
  %.not409930 = icmp ugt i16 %i.acy, %i.acz
  br i1 %.not409930, label %.thread850, label %.lr.ph933.preheader

.lr.ph933.preheader:                              ; preds = %bb.er
  %.pre = load i16, ptr %i.t, align 2, !tbaa !24  ; 2 uses
  %scevgep1419 = getelementptr i8, ptr %i.yu, i64 1
  br label %.lr.ph933

.lr.ph933:                                        ; preds = %.lr.ph933.preheader, %.thread848
  %i.ada = phi i16 [ %i.agx, %.thread848 ], [ %i.acz, %.lr.ph933.preheader ]
  %i.adb = phi i16 [ %i.agz, %.thread848 ], [ %.pre, %.lr.ph933.preheader ] ; 2 uses
  %i.adc = phi i16 [ %i.aha, %.thread848 ], [ %.pre, %.lr.ph933.preheader ] ; 2 uses
  %i.add = phi i16 [ %i.ahb, %.thread848 ], [ %i.acy, %.lr.ph933.preheader ] ; 2 uses
  %.0242931 = phi i32 [ %i.ahc, %.thread848 ], [ 0, %.lr.ph933.preheader ] ; 2 uses
  %i.ade = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 3 uses
  %i.adf = load i32, ptr %i.as, align 4, !tbaa !76
  %i.adg = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.adh = lshr i8 %i.adg, 3
  %i.adi = zext nneg i8 %i.adh to i64
  %i.adj = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.adk = zext i8 %i.adj to i64
  %i.adl = mul nuw nsw i64 %i.adi, %i.adk
  %i.adm = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i679 = icmp eq i8 %i.adm, 0
  %i.adn = load i8, ptr %i.an, align 1
  %i.ado = lshr i8 %i.adn, 3
  %narrow.i.i680 = select i1 %.not.i.i679, i8 0, i8 %i.ado
  %i.adp = zext nneg i8 %narrow.i.i680 to i64
  %i.adq = add nuw nsw i64 %i.adl, %i.adp
  %i.adr = zext i16 %i.add to i32
  %i.ads = mul i32 %i.adf, %i.adr
  %i.adt = zext i32 %i.ads to i64
  %i.adu = mul nuw nsw i64 %i.adq, %i.adt         ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.adu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #30
  %i.adw = load i16, ptr %i.s, align 2, !tbaa !24 ; 3 uses
  store i16 %i.adw, ptr %i.x, align 2, !tbaa !24
  %.not410926 = icmp ugt i16 %i.adw, %i.adc
  br i1 %.not410926, label %.thread848, label %.lr.ph929

.lr.ph929:                                        ; preds = %.lr.ph933
  %i.adx = mul i32 %.0242931, %i.xo
  %scevgep1414 = getelementptr i8, ptr %i.ade, i64 %i.adu
  %scevgep1416 = getelementptr i8, ptr %i.ade, i64 1
  %scevgep1417 = getelementptr i8, ptr %scevgep1416, i64 %i.adu
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph929, %._crit_edge
  %i.ady = phi i16 [ %i.adb, %.lr.ph929 ], [ %i.agu, %._crit_edge ]
  %indvars.iv1100 = phi i64 [ 0, %.lr.ph929 ], [ %indvars.iv.next1101, %._crit_edge ] ; 2 uses
  %i.adz = phi i16 [ %i.adw, %.lr.ph929 ], [ %i.agw, %._crit_edge ] ; 2 uses
  %i.aea = trunc nuw nsw i64 %indvars.iv1100 to i32
  %i.aeb = add i32 %i.adx, %i.aea
  %i.aec = zext i32 %i.aeb to i64
  %i.aed = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i681 = icmp eq i8 %i.aed, 0
  %i.aee = load i8, ptr %i.an, align 1
  %i.aef = lshr i8 %i.aee, 3
  %narrow.i682 = select i1 %.not.i681, i8 0, i8 %i.aef ; 3 uses
  %i.aeg = zext nneg i8 %narrow.i682 to i64       ; 3 uses
  %i.aeh = mul nuw nsw i64 %i.aeg, %i.aec         ; 3 uses
  %i.aei = add nuw nsw i64 %i.aeh, %i.aeg
  %.not415 = icmp ugt i64 %i.aei, %i.yy
  br i1 %.not415, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.52, ptr noundef nonnull align 2 dereferenceable(2) %i.x, ptr noundef nonnull align 2 dereferenceable(2) %i.w)
          to label %.thread849 unwind label %bb.eu

.thread849:                                       ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %.critedge508

bb.eu:                                            ; preds = %bb.et
  %i.aej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit676

bb.ev:                                            ; preds = %bb.es
  %i.aek = getelementptr i8, ptr %i.yu, i64 %i.aeh ; 13 uses
  %.not1032 = icmp eq i8 %narrow.i682, 0
  br i1 %.not1032, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ev
  %i.ael = zext nneg i8 %narrow.i682 to i64
  %.0239923 = add nuw nsw i64 %i.ael, 4294967295
  %i.aem = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.aen = lshr i8 %i.aem, 3
  %i.aeo = zext nneg i8 %i.aen to i64
  %i.aep = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aeq = zext i8 %i.aep to i64
  %i.aer = mul nuw nsw i64 %i.aeo, %i.aeq         ; 3 uses
  %i.aes = add nuw nsw i64 %i.aer, %i.aeg
  %i.aet = zext i16 %i.adz to i64
  %i.aeu = mul nuw nsw i64 %i.aes, %i.aet         ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.aeu
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.aer ; 6 uses
  %i.aex = and i64 %.0239923, 4294967295          ; 10 uses
  %i.aey = add nuw nsw i64 %i.aex, 1              ; 2 uses
  %min.iters.check1424 = icmp samesign ult i64 %i.aex, 7
  br i1 %min.iters.check1424, label %.lr.ph.preheader1437, label %vector.memcheck1413

vector.memcheck1413:                              ; preds = %.lr.ph.preheader
  %7 = add nuw nsw i64 %i.aer, %i.aeu             ; 2 uses
  %scevgep1415.a = getelementptr i8, ptr %scevgep1414, i64 %7
  %i.aez = getelementptr i8, ptr %scevgep1417, i64 %7
  %scevgep1418 = getelementptr i8, ptr %i.aez, i64 %i.aex
  %i.afa = getelementptr i8, ptr %scevgep1419, i64 %i.aeh
  %scevgep1420 = getelementptr i8, ptr %i.afa, i64 %i.aex
  %bound01421 = icmp ult ptr %scevgep1415.a, %scevgep1420
  %bound11422 = icmp ult ptr %i.aek, %scevgep1418
  %found.conflict1423 = and i1 %bound01421, %bound11422
  br i1 %found.conflict1423, label %.lr.ph.preheader1437, label %vector.ph1425

vector.ph1425:                                    ; preds = %vector.memcheck1413
  %n.vec1426 = and i64 %i.aey, 8589934584         ; 5 uses
  %i.afb = sub nsw i64 %i.aex, %n.vec1426
  %i.afc = getelementptr i8, ptr %i.aew, i64 %n.vec1426
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aek, i64 %i.aex
  %i.afe = getelementptr inbounds i8, ptr %i.afd, i64 -7
  %wide.load1430 = load <8 x i8>, ptr %i.afe, align 1, !tbaa !16, !alias.scope !156
  %reverse1431 = shufflevector <8 x i8> %wide.load1430, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1431, ptr %i.aew, align 1, !tbaa !16, !alias.scope !159, !noalias !156
  %i.aff = icmp eq i64 %n.vec1426, 8
  br i1 %i.aff, label %middle.block1433, label %vector.body1427.1

vector.body1427.1:                                ; preds = %vector.ph1425
  %next.gep1429.1 = getelementptr i8, ptr %i.aew, i64 8
  %i.afg = getelementptr i8, ptr %i.aek, i64 %i.aex
  %i.afh = getelementptr i8, ptr %i.afg, i64 -15
  %wide.load1430.1 = load <8 x i8>, ptr %i.afh, align 1, !tbaa !16, !alias.scope !156
  %reverse1431.1 = shufflevector <8 x i8> %wide.load1430.1, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1431.1, ptr %next.gep1429.1, align 1, !tbaa !16, !alias.scope !159, !noalias !156
  %i.afi = icmp eq i64 %n.vec1426, 16
  br i1 %i.afi, label %middle.block1433, label %vector.body1427.2

vector.body1427.2:                                ; preds = %vector.body1427.1
  %next.gep1429.2 = getelementptr i8, ptr %i.aew, i64 16
  %i.afj = getelementptr i8, ptr %i.aek, i64 %i.aex
  %i.afk = getelementptr i8, ptr %i.afj, i64 -23
  %wide.load1430.2 = load <8 x i8>, ptr %i.afk, align 1, !tbaa !16, !alias.scope !156
  %reverse1431.2 = shufflevector <8 x i8> %wide.load1430.2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1431.2, ptr %next.gep1429.2, align 1, !tbaa !16, !alias.scope !159, !noalias !156
  br label %middle.block1433

middle.block1433:                                 ; preds = %vector.body1427.2, %vector.body1427.1, %vector.ph1425
  %cmp.n1434 = icmp eq i64 %i.aey, %n.vec1426
  br i1 %cmp.n1434, label %._crit_edge.loopexit, label %.lr.ph.preheader1437

.lr.ph.preheader1437:                             ; preds = %vector.memcheck1413, %.lr.ph.preheader, %middle.block1433
  %indvars.iv.ph = phi i64 [ %i.aex, %vector.memcheck1413 ], [ %i.aex, %.lr.ph.preheader ], [ %i.afb, %middle.block1433 ] ; 4 uses
  %.0240924.ph = phi ptr [ %i.aew, %vector.memcheck1413 ], [ %i.aew, %.lr.ph.preheader ], [ %i.afc, %middle.block1433 ] ; 2 uses
  %i.afl = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.afl, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1437, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader1437 ] ; 2 uses
  %.0240924.prol = phi ptr [ %i.afo, %.lr.ph.prol ], [ %.0240924.ph, %.lr.ph.preheader1437 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader1437 ]
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aek, i64 %indvars.iv.prol
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !16
  %i.afo = getelementptr inbounds nuw i8, ptr %.0240924.prol, i64 1 ; 2 uses
  store i8 %i.afn, ptr %.0240924.prol, align 1, !tbaa !16
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !161

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1437
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader1437 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0240924.unr = phi ptr [ %.0240924.ph, %.lr.ph.preheader1437 ], [ %i.afo, %.lr.ph.prol ]
  %i.afp = icmp ult i64 %indvars.iv.ph, 7
  br i1 %i.afp, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0240924 = phi ptr [ %i.agt, %.lr.ph ], [ %.0240924.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aek, i64 %indvars.iv
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !16
  %i.afs = getelementptr inbounds nuw i8, ptr %.0240924, i64 1
  store i8 %i.afr, ptr %.0240924, align 1, !tbaa !16
  %i.aft = getelementptr i8, ptr %i.aek, i64 %indvars.iv
  %i.afu = getelementptr i8, ptr %i.aft, i64 -1
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !16
  %i.afw = getelementptr inbounds nuw i8, ptr %.0240924, i64 2
  store i8 %i.afv, ptr %i.afs, align 1, !tbaa !16
  %i.afx = getelementptr i8, ptr %i.aek, i64 %indvars.iv
  %i.afy = getelementptr i8, ptr %i.afx, i64 -2
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !16
  %i.aga = getelementptr inbounds nuw i8, ptr %.0240924, i64 3
  store i8 %i.afz, ptr %i.afw, align 1, !tbaa !16
  %i.agb = getelementptr i8, ptr %i.aek, i64 %indvars.iv
  %i.agc = getelementptr i8, ptr %i.agb, i64 -3
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !16
  %i.age = getelementptr inbounds nuw i8, ptr %.0240924, i64 4
  store i8 %i.agd, ptr %i.aga, align 1, !tbaa !16
  %i.agf = getelementptr i8, ptr %i.aek, i64 %indvars.iv
  %i.agg = getelementptr i8, ptr %i.agf, i64 -4
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !16
  %i.agi = getelementptr inbounds nuw i8, ptr %.0240924, i64 5
  store i8 %i.agh, ptr %i.age, align 1, !tbaa !16
  %i.agj = getelementptr i8, ptr %i.aek, i64 %indvars.iv
  %i.agk = getelementptr i8, ptr %i.agj, i64 -5
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !16
  %i.agm = getelementptr inbounds nuw i8, ptr %.0240924, i64 6
  store i8 %i.agl, ptr %i.agi, align 1, !tbaa !16
  %i.agn = getelementptr i8, ptr %i.aek, i64 %indvars.iv
  %i.ago = getelementptr i8, ptr %i.agn, i64 -6
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !16
  %i.agq = getelementptr inbounds nuw i8, ptr %.0240924, i64 7
  store i8 %i.agp, ptr %i.agm, align 1, !tbaa !16
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, -7 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.aek, i64 %indvars.iv.next.6
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !16
  %i.agt = getelementptr inbounds nuw i8, ptr %.0240924, i64 8
  store i8 %i.ags, ptr %i.agq, align 1, !tbaa !16
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, -8
  %.not1299.7 = icmp eq i64 %indvars.iv.next.6, 0
  br i1 %.not1299.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !163

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1433
  %.pre1120 = load i16, ptr %i.x, align 2, !tbaa !24
  %.pre1121 = load i16, ptr %i.t, align 2, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ev
  %i.agu = phi i16 [ %.pre1121, %._crit_edge.loopexit ], [ %i.ady, %bb.ev ] ; 4 uses
  %i.agv = phi i16 [ %.pre1120, %._crit_edge.loopexit ], [ %i.adz, %bb.ev ]
  %i.agw = add i16 %i.agv, 1                      ; 3 uses
  store i16 %i.agw, ptr %i.x, align 2, !tbaa !24
  %indvars.iv.next1101 = add nuw nsw i64 %indvars.iv1100, 1
  %.not410 = icmp ugt i16 %i.agw, %i.agu
  br i1 %.not410, label %.thread848.loopexit, label %bb.es, !llvm.loop !164

.thread848.loopexit:                              ; preds = %._crit_edge
  %.pre1122 = load i16, ptr %i.w, align 2, !tbaa !24
  %.pre1123 = load i16, ptr %i.v, align 2, !tbaa !24
  br label %.thread848

.thread848:                                       ; preds = %.thread848.loopexit, %.lr.ph933
  %i.agx = phi i16 [ %.pre1123, %.thread848.loopexit ], [ %i.ada, %.lr.ph933 ] ; 2 uses
  %i.agy = phi i16 [ %.pre1122, %.thread848.loopexit ], [ %i.add, %.lr.ph933 ]
  %i.agz = phi i16 [ %i.agu, %.thread848.loopexit ], [ %i.adb, %.lr.ph933 ]
  %i.aha = phi i16 [ %i.agu, %.thread848.loopexit ], [ %i.adc, %.lr.ph933 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  %i.ahb = add i16 %i.agy, 1                      ; 3 uses
  store i16 %i.ahb, ptr %i.w, align 2, !tbaa !24
  %i.ahc = add nuw nsw i32 %.0242931, 1
  %.not409 = icmp ugt i16 %i.ahb, %i.agx
  br i1 %.not409, label %.thread850, label %.lr.ph933, !llvm.loop !165

.thread850:                                       ; preds = %.thread848, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %.thread844

.thread844:                                       ; preds = %bb.dt, %bb.ds, %.thread850
  %i.ahd = add i16 %.0251.ph, 1
  br label %.critedge508

.critedge508:                                     ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit674, %.thread849, %bb.ep, %bb.dp, %.thread844
  %.46309 = phi i1 [ true, %.thread844 ], [ false, %bb.ep ], [ false, %.thread849 ], [ false, %bb.dp ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit674 ]
  %.1252 = phi i16 [ %i.ahd, %.thread844 ], [ %.0251.ph, %bb.ep ], [ %.0251.ph, %.thread849 ], [ %.0251.ph, %bb.dp ], [ %.0251.ph, %_ZNSt6vectorIhSaIhEED2Ev.exit674 ]
  %i.ahe = load ptr, ptr %6, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i695 = icmp eq ptr %i.ahe, null
  br i1 %.not.i.i.i695, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %.critedge508
  %i.ahf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.ahg = ptrtoint ptr %i.ahf to i64
  %i.ahh = ptrtoint ptr %i.ahe to i64
  %i.ahi = sub i64 %i.ahg, %i.ahh
  call void @_ZdlPvm(ptr noundef nonnull %i.ahe, i64 noundef %i.ahi) #31
  br label %bb.ex

.thread852:                                       ; preds = %.lr.ph.i.i636.preheader, %bb.dl, %bb.dm, %bb.dk, %.lr.ph.i.i618.preheader, %.lr.ph.i.i624.preheader, %.lr.ph.i.i630.preheader
  %.str.40.sink = phi ptr [ @.str.40, %bb.dk ], [ @.str.40, %.lr.ph.i.i630.preheader ], [ @.str.40, %.lr.ph.i.i624.preheader ], [ @.str.40, %.lr.ph.i.i618.preheader ], [ @.str.41, %bb.dm ], [ @.str.41, %bb.dl ], [ @.str.41, %.lr.ph.i.i636.preheader ]
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %.str.40.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit708

bb.ex:                                            ; preds = %bb.ew, %.critedge508
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br i1 %.46309, label %.outer, label %_ZNSt6vectorIhSaIhEED2Ev.exit708, !llvm.loop !152

_ZNSt6vectorIhSaIhEED2Ev.exit676:                 ; preds = %bb.eq, %bb.eu, %bb.eg, %bb.em, %bb.en, %bb.dq
  %.pn423.pn.pn = phi { ptr, i32 } [ %i.yt, %bb.dq ], [ %.pn423, %bb.en ], [ %i.aan, %bb.eg ], [ %.pn423, %bb.em ], [ %i.acx, %bb.eq ], [ %i.aej, %bb.eu ]
  %i.ahj = load ptr, ptr %6, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i697 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i.i697, label %_ZNSt6vectorIhSaIhEED2Ev.exit698, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit676
  %i.ahk = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.ahl = ptrtoint ptr %i.ahk to i64
  %i.ahm = ptrtoint ptr %i.ahj to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef %i.ahn) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit698

_ZNSt6vectorIhSaIhEED2Ev.exit698:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit676, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
end_hunk_0
