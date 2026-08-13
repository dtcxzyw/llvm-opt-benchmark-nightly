inline.NumInlined: 32
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ff_vvc_reconstruct:bb.a
  %i.aby = load i32, ptr %i.bl, align 4, !tbaa !107
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abt, i64 12
  store i32 %i.aby, ptr %i.abz, align 4, !tbaa !107
  %.pre32.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i, align 8, !tbaa !107
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.zd ; 5 uses
  store i32 %.pre32.i.i.i, ptr %i.aca, align 4, !tbaa !107
  %i.acb = load i32, ptr %i.bm, align 8, !tbaa !107
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aca, i64 4
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !107
  %i.acd = load i32, ptr %i.bn, align 8, !tbaa !107
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !107
  %i.acf = load i32, ptr %i.bo, align 8, !tbaa !107
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aca, i64 12
  store i32 %i.acf, ptr %i.acg, align 4, !tbaa !107
  %.pre35.i.i.i = load i32, ptr %.sink49.i.sroa.gep117.i.i, align 4, !tbaa !107
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %i.zd ; 2 uses
  store i32 %.pre35.i.i.i, ptr %i.ach, align 4, !tbaa !107
  br label %.loopexit.sink.split.i.i.i

.peel.next20.i.i.i:                               ; preds = %bb.bj
  %i.aci = sext i32 %i.uf to i64                  ; 7 uses
  %i.acj = zext nneg i32 %i.ul to i64             ; 5 uses
  %i.ack = shl nuw nsw i64 %i.acj, 2              ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.xe, ptr noundef nonnull align 16 dereferenceable(1) %i.d, i64 %i.ack, i1 false)
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.xe, i64 %i.aci ; 2 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.acj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.acl, ptr noundef nonnull align 16 dereferenceable(1) %i.acm, i64 %i.ack, i1 false)
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.aci ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.acm, i64 %i.acj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.acn, ptr noundef nonnull align 16 dereferenceable(1) %i.aco, i64 %i.ack, i1 false)
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.acn, i64 %i.aci ; 2 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %i.acj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.acp, ptr noundef nonnull align 16 dereferenceable(1) %i.acq, i64 %i.ack, i1 false)
  br i1 %.not97.i.i.i, label %ilfnst_transform.exit.i.i, label %.peel.next22.i.i.i

.peel.next22.i.i.i:                               ; preds = %.peel.next20.i.i.i
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.acj ; 4 uses
  %.0885.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %i.aci ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0885.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.acr, i64 16, i1 false)
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  %.0885.i.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %.0885.i.i.i, i64 %i.aci ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0885.i.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.acs, i64 16, i1 false)
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 32
  %.0885.i.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %.0885.i.1.i.i, i64 %i.aci ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0885.i.2.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.act, i64 16, i1 false)
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 48
  %.0885.i.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %.0885.i.2.i.i, i64 %i.aci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0885.i.3.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.acu, i64 16, i1 false)
  br label %ilfnst_transform.exit.i.i

.loopexit.sink.split.i.i.i:                       ; preds = %.loopexit.loopexit14.i.i.i, %.preheader.i.i.i
  %.sink49.i.sroa.phi.i.i = phi ptr [ %.sink49.i.sroa.gep.i.i, %.loopexit.loopexit14.i.i.i ], [ %.sink49.i.sroa.gep117.i.i, %.preheader.i.i.i ]
  %.sink47.i.i.i = phi ptr [ %i.ach, %.loopexit.loopexit14.i.i.i ], [ %i.zb, %.preheader.i.i.i ] ; 3 uses
  %.sink44.i.sroa.phi.i.i = phi ptr [ %.sink44.i.sroa.gep.i.i, %.loopexit.loopexit14.i.i.i ], [ %.sink44.i.sroa.gep118.i.i, %.preheader.i.i.i ]
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sink.i.sroa.gep.i.i, %.loopexit.loopexit14.i.i.i ], [ %.sink49.i.sroa.gep.i.i, %.preheader.i.i.i ]
  %i.acv = load i32, ptr %.sink49.i.sroa.phi.i.i, align 4, !tbaa !107
  %i.acw = getelementptr inbounds nuw i8, ptr %.sink47.i.i.i, i64 4
  store i32 %i.acv, ptr %i.acw, align 4, !tbaa !107
  %i.acx = load i32, ptr %.sink44.i.sroa.phi.i.i, align 4, !tbaa !107
  %i.acy = getelementptr inbounds nuw i8, ptr %.sink47.i.i.i, i64 8
  store i32 %i.acx, ptr %i.acy, align 4, !tbaa !107
  %i.acz = load i32, ptr %.sink.i.sroa.phi.i.i, align 4, !tbaa !107
  %i.ada = getelementptr inbounds nuw i8, ptr %.sink47.i.i.i, i64 12
  store i32 %i.acz, ptr %i.ada, align 4, !tbaa !107
  br label %ilfnst_transform.exit.i.i

ilfnst_transform.exit.i.i:                        ; preds = %.loopexit.sink.split.i.i.i, %.peel.next22.i.i.i, %.peel.next20.i.i.i
  %i.adb = add nsw i32 %i.ul, -1                  ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.kb, i64 28
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !164
  store i32 %i.adb, ptr %i.rn, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %.val61.pre.i.i = load ptr, ptr %i.x, align 16, !tbaa !94
  %.pre.i.i = load i8, ptr %i.kc, align 1, !tbaa !95
  br label %bb.bm

bb.bm:                                            ; preds = %ilfnst_transform.exit.i.i, %bb.bd
  %i.add = phi i32 [ %i.adb, %ilfnst_transform.exit.i.i ], [ %i.ub, %bb.bd ] ; 4 uses
  %i.ade = phi i8 [ %.pre.i.i, %ilfnst_transform.exit.i.i ], [ %i.pc, %bb.bd ]
  %.val61.i.i = phi ptr [ %.val61.pre.i.i, %ilfnst_transform.exit.i.i ], [ %i.pb, %bb.bd ] ; 10 uses
  %.val60.i.i = load ptr, ptr %i.jz, align 8, !tbaa !20 ; 8 uses
  %.not.i69.i.i = icmp eq i8 %i.ade, 0
  br i1 %.not.i69.i.i, label %bb.bn, label %derive_transform_type.exit.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.adf = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 48
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !154
  %.not39.i.i.i = icmp eq i32 %i.adg, 0
  br i1 %.not39.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.adh = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 32
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !189
  %.not40.i70.i.i = icmp eq i32 %i.adi, 0
  br i1 %.not40.i70.i.i, label %.thread.i.i.i, label %derive_transform_type.exit.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.adj = load ptr, ptr %.val60.i.i, align 8, !tbaa !73 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 15497
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !191
  %.not41.i.i.i = icmp eq i8 %i.adl, 0
  br i1 %.not41.i.i.i, label %bb.bx, label %bb.bq

.thread.i.i.i:                                    ; preds = %bb.bo
  %i.adm = load ptr, ptr %.val60.i.i, align 8, !tbaa !73
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 15497
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !191
  %.not411.i.i.i = icmp eq i8 %i.ado, 0
  br i1 %.not411.i.i.i, label %bb.bx, label %.thread..critedge_crit_edge.i.i.i

.thread..critedge_crit_edge.i.i.i:                ; preds = %.thread.i.i.i
  %.phi.trans.insert.i71.i.i = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 29
  %.pre.i72.i.i = load i8, ptr %.phi.trans.insert.i71.i.i, align 1, !tbaa !192
  br label %.critedge.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.adp = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 29
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !192 ; 2 uses
  %.not43.i.i.i = icmp eq i8 %i.adq, 0
  br i1 %.not43.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.adr = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !134
  %i.adt = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.adu = load i32, ptr %i.adt, align 8, !tbaa !135
  %..i.i.i = call i32 @llvm.smax.i32(i32 %i.ads, i32 %i.adu)
  %i.adv = icmp slt i32 %..i.i.i, 33
  br i1 %i.adv, label %.critedge.thread.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adj, i64 15498
  %i.adx = load i8, ptr %i.adw, align 2, !tbaa !193
  %.not44.i.i.i = icmp eq i8 %i.adx, 0
  br i1 %.not44.i.i.i, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.ady = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 52
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !128
  %i.aea = icmp eq i32 %i.adz, 1
  br i1 %i.aea, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.aeb = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 32
  %i.aec = load i32, ptr %i.aeb, align 8, !tbaa !189
  %.not45.i.i.i = icmp eq i32 %i.aec, 0
  br i1 %.not45.i.i.i, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.aed = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 42
  %i.aee = load i8, ptr %i.aed, align 2, !tbaa !194
  %.not46.i.i.i = icmp eq i8 %i.aee, 0
  br i1 %.not46.i.i.i, label %.critedge.i.i.i, label %bb.bx

.critedge.i.i.i:                                  ; preds = %bb.bv, %.thread..critedge_crit_edge.i.i.i
  %i.aef = phi i8 [ %.pre.i72.i.i, %.thread..critedge_crit_edge.i.i.i ], [ %i.adq, %bb.bv ]
  %.not48.i.i.i = icmp eq i8 %i.aef, 0
  br i1 %.not48.i.i.i, label %bb.bw, label %.critedge.thread.i.i.i

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.br
  %i.aeg = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 30
  %i.aeh = load i8, ptr %i.aeg, align 2, !tbaa !195
  %.not49.i.i.i = icmp eq i8 %i.aeh, 0            ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 31
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !196
  %.not50.i.i.i = icmp eq i8 %i.aej, 0
  %i.aek = select i1 %.not50.i.i.i, i32 2, i32 1  ; 2 uses
  %..i.i = select i1 %.not49.i.i.i, i32 %i.aek, i32 1
  %.200.i.i = select i1 %.not49.i.i.i, i32 1, i32 %i.aek
  br label %derive_transform_type.exit.i.i

bb.bw:                                            ; preds = %.critedge.i.i.i
  %i.ael = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.aem = load i32, ptr %i.ael, align 8, !tbaa !135
  %i.aen = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !134
  %i.aep = add i32 %i.aeo, -4
  %i.aeq = icmp ult i32 %i.aep, 13
  %i.aer = zext i1 %i.aeq to i32
  %i.aes = add i32 %i.aem, -4
  %i.aet = icmp ult i32 %i.aes, 13
  %i.aeu = zext i1 %i.aet to i32
  br label %derive_transform_type.exit.i.i

bb.bx:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %.thread.i.i.i, %bb.bp
  %i.aev = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 36
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !197
  %i.aex = zext i32 %i.aew to i64                 ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr @derive_transform_type.mts_to_trh, i64 %i.aex
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !107
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr @derive_transform_type.mts_to_trv, i64 %i.aex
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !107
  br label %derive_transform_type.exit.i.i

derive_transform_type.exit.i.i:                   ; preds = %bb.bx, %bb.bw, %.critedge.thread.i.i.i, %bb.bo, %bb.bm
  %.1.i.i = phi i32 [ %i.aez, %bb.bx ], [ 0, %bb.bm ], [ 0, %bb.bo ], [ %i.aer, %bb.bw ], [ %..i.i, %.critedge.thread.i.i.i ] ; 4 uses
  %.0120.i.i = phi i32 [ %i.afb, %bb.bx ], [ 0, %bb.bm ], [ 0, %bb.bo ], [ %i.aeu, %bb.bw ], [ %.200.i.i, %.critedge.thread.i.i.i ] ; 4 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !134 ; 12 uses
  %i.afe = icmp sgt i32 %i.afd, 1
  %i.aff = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.afg = load i32, ptr %i.aff, align 8, !tbaa !135 ; 7 uses
  %i.afh = icmp sgt i32 %i.afg, 1                 ; 2 uses
  br i1 %i.afe, label %bb.by, label %.thread123.i.i

bb.by:                                            ; preds = %derive_transform_type.exit.i.i
  %i.afi = getelementptr inbounds nuw i8, ptr %i.kb, i64 28
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !164 ; 6 uses
  br i1 %i.afh, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.afk = add i32 %i.afj, 1                      ; 6 uses
  %i.afl = sext i32 %i.afk to i64
  %i.afm = add nsw i32 %i.add, 1
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 65 ; 2 uses
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !112
  %i.afq = zext i8 %i.afp to i32                  ; 2 uses
  %i.afr = add nuw nsw i32 %i.afq, 5
  %i.afs = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 28
  %i.aft = load i8, ptr %i.afs, align 4, !tbaa !111
  %i.afu = zext i8 %i.aft to i32
  %i.afv = sub nsw i32 %i.afr, %i.afu             ; 5 uses
  %i.afw = icmp eq i32 %i.afd, %i.afg
  %i.afx = icmp eq i32 %i.afj, 0
  %or.cond.i73.i.i = select i1 %i.afw, i1 %i.afx, i1 false
  %i.afy = or i32 %.0120.i.i, %i.add
  %i.afz = or i32 %i.afy, %.1.i.i
  %i.aga = icmp eq i32 %i.afz, 0
  %or.cond7.i.i.i = select i1 %or.cond.i73.i.i, i1 %i.aga, i1 false
  br i1 %or.cond7.i.i.i, label %.lr.ph79.preheader.i.i.i, label %.preheader.i74.i.i

.preheader.i74.i.i:                               ; preds = %bb.bz
  %.not.i75.i.i = icmp eq i32 %i.afk, 0
  br i1 %.not.i75.i.i, label %.preheader.i74..lr.ph25.i.i_crit_edge.i.i, label %.lr.ph.i76.i.i

.preheader.i74..lr.ph25.i.i_crit_edge.i.i:        ; preds = %.preheader.i74.i.i
  %.pre160.i.i = zext nneg i32 %i.afd to i64
  br label %.lr.ph25.i.i.i.i

.lr.ph.i76.i.i:                                   ; preds = %.preheader.i74.i.i
  %i.agb = zext i32 %.0120.i.i to i64
  %i.agc = getelementptr [48 x i8], ptr %i.jl, i64 %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.age = zext nneg i32 %i.afd to i64            ; 2 uses
  %wide.trip.count.i77.i.i = zext i32 %i.afk to i64
  br label %bb.ca

.lr.ph79.preheader.i.i.i:                         ; preds = %bb.bz
  %i.agf = add nsw i32 %i.afv, -1
  %i.agg = shl nuw i32 1, %i.agf
  %i.agh = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !140 ; 3 uses
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !107
  %i.agk = shl nsw i32 %i.agj, 6
  %i.agl = add nsw i32 %i.agk, 64
  %i.agm = ashr exact i32 %i.agl, 1
  %i.agn = and i32 %i.agm, -64
  %i.ago = add nsw i32 %i.agn, %i.agg
  %i.agp = ashr i32 %i.ago, %i.afv                ; 2 uses
  %i.agq = mul nuw nsw i32 %i.afd, %i.afd
  %wide.trip.count91.i.i.i = zext nneg i32 %i.agq to i64 ; 3 uses
  %min.iters.check = icmp eq i32 %i.afd, 2
  br i1 %min.iters.check, label %.lr.ph79.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph79.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count91.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.agp, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %index ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.agr, align 4, !tbaa !107
  store <4 x i32> %broadcast.splat, ptr %i.ags, align 4, !tbaa !107
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.agt = icmp eq i64 %index.next, %n.vec
  br i1 %i.agt, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count91.i.i.i
  br i1 %cmp.n, label %itx_2d.exit.i.i, label %.lr.ph79.i.i.i.preheader

.lr.ph79.i.i.i.preheader:                         ; preds = %.lr.ph79.preheader.i.i.i, %middle.block
  %indvars.iv88.i.i.i.ph = phi i64 [ 0, %.lr.ph79.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph79.i.i.i

.lr.ph79.i.i.i:                                   ; preds = %.lr.ph79.i.i.i.preheader, %.lr.ph79.i.i.i
  %indvars.iv88.i.i.i = phi i64 [ %indvars.iv.next89.i.i.i, %.lr.ph79.i.i.i ], [ %indvars.iv88.i.i.i.ph, %.lr.ph79.i.i.i.preheader ] ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %indvars.iv88.i.i.i
  store i32 %i.agp, ptr %i.agu, align 4, !tbaa !107
  %indvars.iv.next89.i.i.i = add nuw nsw i64 %indvars.iv88.i.i.i, 1 ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %indvars.iv.next89.i.i.i, %wide.trip.count91.i.i.i
  br i1 %exitcond92.not.i.i.i, label %itx_2d.exit.i.i, label %.lr.ph79.i.i.i, !llvm.loop !201

.lr.ph25.i.i.loopexit.i.i:                        ; preds = %bb.ca
  %.pre158.i.i = load i8, ptr %i.afo, align 1, !tbaa !112
  %.pre159.i.i = zext i8 %.pre158.i.i to i32
  br label %.lr.ph25.i.i.i.i

.lr.ph25.i.i.i.i:                                 ; preds = %.lr.ph25.i.i.loopexit.i.i, %.preheader.i74..lr.ph25.i.i_crit_edge.i.i
  %.pre-phi161.i.i = phi i64 [ %.pre160.i.i, %.preheader.i74..lr.ph25.i.i_crit_edge.i.i ], [ %i.age, %.lr.ph25.i.i.loopexit.i.i ] ; 16 uses
  %.pre-phi.i.i = phi i32 [ %i.afq, %.preheader.i74..lr.ph25.i.i_crit_edge.i.i ], [ %.pre159.i.i, %.lr.ph25.i.i.loopexit.i.i ] ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.kb, i64 64 ; 3 uses
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !140 ; 10 uses
  %i.agx = icmp sgt i32 %i.afj, -1
  %i.agy = shl nuw i32 1, %.pre-phi.i.i           ; 3 uses
  %.neg.i.i.i.i.i = shl i32 -2, %.pre-phi.i.i     ; 2 uses
  %i.agz = add nsw i32 %i.agy, -1                 ; 2 uses
  %i.aha = sub nsw i32 %i.afd, %i.afk
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = shl nsw i64 %i.ahb, 2                  ; 10 uses
  %wide.trip.count33.i.i.i.i = zext nneg i32 %i.afg to i64 ; 5 uses
  br i1 %i.agx, label %.lr.ph.us.i.i.i.i.preheader, label %.lr.ph25.split.i.i.i.i.preheader

.lr.ph25.split.i.i.i.i.preheader:                 ; preds = %.lr.ph25.i.i.i.i
  %xtraiter = and i64 %wide.trip.count33.i.i.i.i, 7 ; 3 uses
  %i.ahd = icmp ult i32 %i.afg, 8
  br i1 %i.ahd, label %.lr.ph25.split.i.i.i.i.epil.preheader, label %.lr.ph25.split.i.i.i.i.preheader.new

.lr.ph25.split.i.i.i.i.preheader.new:             ; preds = %.lr.ph25.split.i.i.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count33.i.i.i.i, 2147483640
  br label %.lr.ph25.split.i.i.i.i

.lr.ph.us.i.i.i.i.preheader:                      ; preds = %.lr.ph25.i.i.i.i
  %i.ahe = zext i32 %i.afk to i64                 ; 2 uses
  %min.iters.check187 = icmp ult i32 %i.afk, 8
  %n.vec189 = and i64 %i.ahe, 4294967288          ; 4 uses
  %i.ahf = trunc nuw i64 %n.vec189 to i32
  %i.ahg = shl nuw nsw i64 %n.vec189, 2
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %i.agy, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %.neg.i.i.i.i.i, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %i.agz, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n202 = icmp eq i64 %n.vec189, %i.ahe
  br label %.lr.ph.us.i.i.i.i

.lr.ph.us.i.i.i.i:                                ; preds = %.lr.ph.us.i.i.i.i.preheader, %._crit_edge.us.i.i.i.i
  %indvars.iv30.i.i.i.i = phi i64 [ %indvars.iv.next31.i.i.i.i, %._crit_edge.us.i.i.i.i ], [ 0, %.lr.ph.us.i.i.i.i.preheader ] ; 2 uses
  %i.ahh = mul nuw nsw i64 %indvars.iv30.i.i.i.i, %.pre-phi161.i.i
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ahh ; 3 uses
  br i1 %min.iters.check187, label %scalar.ph186.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph.us.i.i.i.i
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 %i.ahg ; 2 uses
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph188
  %index197 = phi i64 [ 0, %vector.ph188 ], [ %index.next200, %vector.body196 ] ; 2 uses
  %i.ahk = shl i64 %index197, 2
  %next.gep = getelementptr i8, ptr %i.ahi, i64 %i.ahk ; 3 uses
  %i.ahl = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load198 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !107
  %wide.load199 = load <4 x i32>, ptr %i.ahl, align 4, !tbaa !107
  %i.ahm = add nsw <4 x i32> %wide.load198, splat (i32 64) ; 2 uses
  %i.ahn = add nsw <4 x i32> %wide.load199, splat (i32 64) ; 2 uses
  %i.aho = ashr <4 x i32> %i.ahm, splat (i32 7)   ; 2 uses
  %i.ahp = ashr <4 x i32> %i.ahn, splat (i32 7)   ; 2 uses
  %i.ahq = add <4 x i32> %i.aho, %broadcast.splat191
  %i.ahr = add <4 x i32> %i.ahp, %broadcast.splat191
  %i.ahs = and <4 x i32> %i.ahq, %broadcast.splat193
  %i.aht = and <4 x i32> %i.ahr, %broadcast.splat193
  %i.ahu = icmp eq <4 x i32> %i.ahs, zeroinitializer
  %i.ahv = icmp eq <4 x i32> %i.aht, zeroinitializer
  %i.ahw = ashr <4 x i32> %i.ahm, splat (i32 31)
  %i.ahx = ashr <4 x i32> %i.ahn, splat (i32 31)
  %i.ahy = xor <4 x i32> %i.ahw, %broadcast.splat195
  %i.ahz = xor <4 x i32> %i.ahx, %broadcast.splat195
  %i.aia = select <4 x i1> %i.ahu, <4 x i32> %i.aho, <4 x i32> %i.ahy
  %i.aib = select <4 x i1> %i.ahv, <4 x i32> %i.ahp, <4 x i32> %i.ahz
  store <4 x i32> %i.aia, ptr %next.gep, align 4, !tbaa !107
  store <4 x i32> %i.aib, ptr %i.ahl, align 4, !tbaa !107
  %index.next200 = add nuw i64 %index197, 8       ; 2 uses
  %i.aic = icmp eq i64 %index.next200, %n.vec189
  br i1 %i.aic, label %middle.block201, label %vector.body196, !llvm.loop !202

middle.block201:                                  ; preds = %vector.body196
  br i1 %cmp.n202, label %._crit_edge.us.i.i.i.i, label %scalar.ph186.preheader

scalar.ph186.preheader:                           ; preds = %.lr.ph.us.i.i.i.i, %middle.block201
  %.022.us.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.us.i.i.i.i ], [ %i.ahf, %middle.block201 ]
  %.01821.us.i.i.i.i.ph = phi ptr [ %i.ahi, %.lr.ph.us.i.i.i.i ], [ %i.ahj, %middle.block201 ]
  br label %scalar.ph186

scalar.ph186:                                     ; preds = %scalar.ph186.preheader, %scalar.ph186
  %.022.us.i.i.i.i = phi i32 [ %i.ail, %scalar.ph186 ], [ %.022.us.i.i.i.i.ph, %scalar.ph186.preheader ] ; 2 uses
  %.01821.us.i.i.i.i = phi ptr [ %i.aik, %scalar.ph186 ], [ %.01821.us.i.i.i.i.ph, %scalar.ph186.preheader ] ; 3 uses
  %i.aid = load i32, ptr %.01821.us.i.i.i.i, align 4, !tbaa !107
  %i.aie = add nsw i32 %i.aid, 64                 ; 2 uses
  %i.aif = ashr i32 %i.aie, 7                     ; 2 uses
  %i.aig = add i32 %i.aif, %i.agy
  %i.aih = and i32 %i.aig, %.neg.i.i.i.i.i
  %.not.i.us.i.i.i.i = icmp eq i32 %i.aih, 0
  %i.aii = ashr i32 %i.aie, 31
  %i.aij = xor i32 %i.aii, %i.agz
  %.0.i.us.i.i.i.i = select i1 %.not.i.us.i.i.i.i, i32 %i.aif, i32 %i.aij
  store i32 %.0.i.us.i.i.i.i, ptr %.01821.us.i.i.i.i, align 4, !tbaa !107
  %i.aik = getelementptr inbounds nuw i8, ptr %.01821.us.i.i.i.i, i64 4 ; 2 uses
  %i.ail = add nuw nsw i32 %.022.us.i.i.i.i, 1
  %exitcond29.not.i.i.i.i = icmp eq i32 %.022.us.i.i.i.i, %i.afj
  br i1 %exitcond29.not.i.i.i.i, label %._crit_edge.us.i.i.i.i, label %scalar.ph186, !llvm.loop !203

._crit_edge.us.i.i.i.i:                           ; preds = %scalar.ph186, %middle.block201
  %.lcssa169 = phi ptr [ %i.ahj, %middle.block201 ], [ %i.aik, %scalar.ph186 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.lcssa169, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next31.i.i.i.i = add nuw nsw i64 %indvars.iv30.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i = icmp eq i64 %indvars.iv.next31.i.i.i.i, %wide.trip.count33.i.i.i.i
  br i1 %exitcond34.not.i.i.i.i, label %.lr.ph75.i.i.i, label %.lr.ph.us.i.i.i.i, !llvm.loop !204

.lr.ph25.split.i.i.i.i:                           ; preds = %.lr.ph25.split.i.i.i.i, %.lr.ph25.split.i.i.i.i.preheader.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph25.split.i.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.7, %.lr.ph25.split.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph25.split.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph25.split.i.i.i.i ]
  %i.aim = mul nuw nsw i64 %indvars.iv.i.i.i.i, %.pre-phi161.i.i
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aim
  call void @llvm.memset.p0.i64(ptr align 4 %i.ain, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1
  %i.aio = mul nuw nsw i64 %indvars.iv.next.i.i.i.i, %.pre-phi161.i.i
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aio
  call void @llvm.memset.p0.i64(ptr align 4 %i.aip, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.i, 2
  %i.aiq = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.1, %.pre-phi161.i.i
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aiq
  call void @llvm.memset.p0.i64(ptr align 4 %i.air, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i.i, 3
  %i.ais = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.2, %.pre-phi161.i.i
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ais
  call void @llvm.memset.p0.i64(ptr align 4 %i.ait, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i.3 = or disjoint i64 %indvars.iv.i.i.i.i, 4
  %i.aiu = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.3, %.pre-phi161.i.i
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aiu
  call void @llvm.memset.p0.i64(ptr align 4 %i.aiv, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i.4 = or disjoint i64 %indvars.iv.i.i.i.i, 5
  %i.aiw = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.4, %.pre-phi161.i.i
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aiw
  call void @llvm.memset.p0.i64(ptr align 4 %i.aix, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i.5 = or disjoint i64 %indvars.iv.i.i.i.i, 6
  %i.aiy = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.5, %.pre-phi161.i.i
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aiy
  call void @llvm.memset.p0.i64(ptr align 4 %i.aiz, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i.6 = or disjoint i64 %indvars.iv.i.i.i.i, 7
  %i.aja = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.6, %.pre-phi161.i.i
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aja
  call void @llvm.memset.p0.i64(ptr align 4 %i.ajb, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph75.i.i.i.loopexit234.unr-lcssa, label %.lr.ph25.split.i.i.i.i, !llvm.loop !204

.lr.ph75.i.i.i.loopexit234.unr-lcssa:             ; preds = %.lr.ph25.split.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph75.i.i.i, label %.lr.ph25.split.i.i.i.i.epil.preheader

.lr.ph25.split.i.i.i.i.epil.preheader:            ; preds = %.lr.ph75.i.i.i.loopexit234.unr-lcssa, %.lr.ph25.split.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph25.split.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.7, %.lr.ph75.i.i.i.loopexit234.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod244)
  br label %.lr.ph25.split.i.i.i.i.epil

.lr.ph25.split.i.i.i.i.epil:                      ; preds = %.lr.ph25.split.i.i.i.i.epil, %.lr.ph25.split.i.i.i.i.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.epil, %.lr.ph25.split.i.i.i.i.epil ], [ %indvars.iv.i.i.i.i.epil.init, %.lr.ph25.split.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph25.split.i.i.i.i.epil ], [ 0, %.lr.ph25.split.i.i.i.i.epil.preheader ]
  %i.ajc = mul nuw nsw i64 %indvars.iv.i.i.i.i.epil, %.pre-phi161.i.i
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ajc
  call void @llvm.memset.p0.i64(ptr align 4 %i.ajd, i8 0, i64 %i.ahc, i1 false)
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph75.i.i.i, label %.lr.ph25.split.i.i.i.i.epil, !llvm.loop !205

.lr.ph75.i.i.i:                                   ; preds = %.lr.ph75.i.i.i.loopexit234.unr-lcssa, %.lr.ph25.split.i.i.i.i.epil, %._crit_edge.us.i.i.i.i
  %i.aje = zext i32 %.1.i.i to i64
  %i.ajf = getelementptr [48 x i8], ptr %i.jl, i64 %i.aje
  br label %bb.cb

bb.ca:                                            ; preds = %bb.ca, %.lr.ph.i76.i.i
  %indvars.iv.i78.i.i = phi i64 [ 0, %.lr.ph.i76.i.i ], [ %indvars.iv.next.i79.i.i, %bb.ca ] ; 2 uses
  %i.ajg = load i32, ptr %i.lz, align 8, !tbaa !110
  %i.ajh = sext i32 %i.ajg to i64
  %i.aji = getelementptr [8 x i8], ptr %i.agc, i64 %i.ajh
  %i.ajj = getelementptr i8, ptr %i.aji, i64 21312
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !207
  %i.ajl = load ptr, ptr %i.agd, align 8, !tbaa !140
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %indvars.iv.i78.i.i
  call void %i.ajk(ptr noundef %i.ajm, i64 noundef %i.age, i64 noundef %i.afn) #7, !inline_history !208
  %indvars.iv.next.i79.i.i = add nuw nsw i64 %indvars.iv.i78.i.i, 1 ; 2 uses
  %exitcond.not.i80.i.i = icmp eq i64 %indvars.iv.next.i79.i.i, %wide.trip.count.i77.i.i
  br i1 %exitcond.not.i80.i.i, label %.lr.ph25.i.i.loopexit.i.i, label %bb.ca, !llvm.loop !209

._crit_edge76.i.i.i:                              ; preds = %bb.cb
  %i.ajn = load ptr, ptr %i.agv, align 8, !tbaa !140
  %i.ajo = add nsw i32 %i.afv, -1
  %i.ajp = shl nuw i32 1, %i.ajo                  ; 2 uses
  %min.iters.check172 = icmp samesign ult i64 %.pre-phi161.i.i, 8
  %n.vec174 = and i64 %.pre-phi161.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert175 = insertelement <4 x i32> poison, i32 %i.ajp, i64 0
  %broadcast.splat176 = shufflevector <4 x i32> %broadcast.splatinsert175, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert177 = insertelement <4 x i32> poison, i32 %i.afv, i64 0
  %broadcast.splat178 = shufflevector <4 x i32> %broadcast.splatinsert177, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n184 = icmp eq i64 %.pre-phi161.i.i, %n.vec174
  br label %.preheader.i.i.i.i.a

.preheader.i.i.i.i.a:                             ; preds = %._crit_edge.i.i82.i.i, %._crit_edge76.i.i.i
  %indvars.iv24.i.i.i.i = phi i64 [ 0, %._crit_edge76.i.i.i ], [ %indvars.iv.next25.i.i.i.i, %._crit_edge.i.i82.i.i ] ; 2 uses
  %4 = mul nuw nsw i64 %indvars.iv24.i.i.i.i, %.pre-phi161.i.i
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %4 ; 2 uses
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.body179

vector.body179:                                   ; preds = %.preheader.i.i.i.i.a, %vector.body179
  %index180 = phi i64 [ %index.next182, %vector.body179 ], [ 0, %.preheader.i.i.i.i.a ] ; 2 uses
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index180 ; 3 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ajq, align 4, !tbaa !107
  %wide.load181 = load <4 x i32>, ptr %i.ajr, align 4, !tbaa !107
  %i.ajs = add nsw <4 x i32> %wide.load, %broadcast.splat176
  %i.ajt = add nsw <4 x i32> %wide.load181, %broadcast.splat176
  %i.aju = ashr <4 x i32> %i.ajs, %broadcast.splat178
  %i.ajv = ashr <4 x i32> %i.ajt, %broadcast.splat178
  store <4 x i32> %i.aju, ptr %i.ajq, align 4, !tbaa !107
  store <4 x i32> %i.ajv, ptr %i.ajr, align 4, !tbaa !107
  %index.next182 = add nuw i64 %index180, 8       ; 2 uses
  %i.ajw = icmp eq i64 %index.next182, %n.vec174
  br i1 %i.ajw, label %middle.block183, label %vector.body179, !llvm.loop !210

middle.block183:                                  ; preds = %vector.body179
  br i1 %cmp.n184, label %._crit_edge.i.i82.i.i, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %.preheader.i.i.i.i.a, %middle.block183
  %indvars.iv.i68.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.a ], [ %n.vec174, %middle.block183 ]
  br label %scalar.ph171

._crit_edge.i.i82.i.i:                            ; preds = %scalar.ph171, %middle.block183
  %indvars.iv.next25.i.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i.i, 1 ; 2 uses
  %exitcond28.not.i.i.i.i = icmp eq i64 %indvars.iv.next25.i.i.i.i, %wide.trip.count33.i.i.i.i
  br i1 %exitcond28.not.i.i.i.i, label %itx_2d.exit.i.i, label %.preheader.i.i.i.i.a, !llvm.loop !211

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %indvars.iv.i68.i.i.i = phi i64 [ %indvars.iv.next.i69.i.i.i, %scalar.ph171 ], [ %indvars.iv.i68.i.i.i.ph, %scalar.ph171.preheader ] ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i68.i.i.i ; 2 uses
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !107
  %i.ajz = add nsw i32 %i.ajy, %i.ajp
  %i.aka = ashr i32 %i.ajz, %i.afv
  store i32 %i.aka, ptr %i.ajx, align 4, !tbaa !107
  %indvars.iv.next.i69.i.i.i = add nuw nsw i64 %indvars.iv.i68.i.i.i, 1 ; 2 uses
  %exitcond.not.i70.i.i.i = icmp eq i64 %indvars.iv.next.i69.i.i.i, %.pre-phi161.i.i
  br i1 %exitcond.not.i70.i.i.i, label %._crit_edge.i.i82.i.i, label %scalar.ph171, !llvm.loop !212

bb.cb:                                            ; preds = %bb.cb, %.lr.ph75.i.i.i
  %indvars.iv83.i.i.i = phi i64 [ 0, %.lr.ph75.i.i.i ], [ %indvars.iv.next84.i.i.i, %bb.cb ] ; 2 uses
  %i.akb = load i32, ptr %i.mb, align 4, !tbaa !109
  %i.akc = sext i32 %i.akb to i64
  %i.akd = getelementptr [8 x i8], ptr %i.ajf, i64 %i.akc
  %i.ake = getelementptr i8, ptr %i.akd, i64 21312
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !207
  %i.akg = load ptr, ptr %i.agv, align 8, !tbaa !140
  %i.akh = mul nuw nsw i64 %indvars.iv83.i.i.i, %.pre-phi161.i.i
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %i.akh
  call void %i.akf(ptr noundef %i.aki, i64 noundef 1, i64 noundef %i.afl) #7, !inline_history !208
  %indvars.iv.next84.i.i.i = add nuw nsw i64 %indvars.iv83.i.i.i, 1 ; 2 uses
  %exitcond87.not.i.i.i = icmp eq i64 %indvars.iv.next84.i.i.i, %wide.trip.count33.i.i.i.i
  br i1 %exitcond87.not.i.i.i, label %._crit_edge76.i.i.i, label %bb.cb, !llvm.loop !213

bb.cc:                                            ; preds = %bb.by
  %i.akj = or i32 %i.afj, %.1.i.i
  %i.akk = icmp eq i32 %i.akj, 0
  br i1 %i.akk, label %bb.cd, label %.thread125.i.i

.thread123.i.i:                                   ; preds = %derive_transform_type.exit.i.i
  %i.akl = or i32 %.0120.i.i, %i.add
  %i.akm = icmp eq i32 %i.akl, 0
  %or.cond7.i83124.i.i = select i1 %i.afh, i1 %i.akm, i1 false
  br i1 %or.cond7.i83124.i.i, label %bb.cd, label %.thread125.i.i

bb.cd:                                            ; preds = %.thread123.i.i, %bb.cc
  %i.akn = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 65
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !112
  %i.akp = zext i8 %i.ako to i32
  %i.akq = add nuw nsw i32 %i.akp, 6
  %i.akr = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 28
  %i.aks = load i8, ptr %i.akr, align 4, !tbaa !111
  %i.akt = zext i8 %i.aks to i32
  %i.aku = sub nsw i32 %i.akq, %i.akt             ; 2 uses
  %i.akv = add nsw i32 %i.aku, -1
  %i.akw = shl nuw i32 1, %i.akv
  %i.akx = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !140 ; 3 uses
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !107
  %i.ala = shl nsw i32 %i.akz, 6
  %i.alb = add nsw i32 %i.akw, %i.ala
  %i.alc = ashr i32 %i.alb, %i.aku                ; 2 uses
  %i.ald = mul nsw i32 %i.afg, %i.afd             ; 3 uses
  %i.ale = icmp sgt i32 %i.ald, 0
  br i1 %i.ale, label %.lr.ph.preheader.i.i.i, label %itx_2d.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cd
  %wide.trip.count.i97.i.i = zext nneg i32 %i.ald to i64 ; 3 uses
  %min.iters.check206 = icmp ult i32 %i.ald, 8
  br i1 %min.iters.check206, label %.lr.ph.i98.i.i.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph.preheader.i.i.i
  %n.vec208 = and i64 %wide.trip.count.i97.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert209 = insertelement <4 x i32> poison, i32 %i.alc, i64 0
  %broadcast.splat210 = shufflevector <4 x i32> %broadcast.splatinsert209, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body211 ] ; 2 uses
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.aky, i64 %index212 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  store <4 x i32> %broadcast.splat210, ptr %i.alf, align 4, !tbaa !107
  store <4 x i32> %broadcast.splat210, ptr %i.alg, align 4, !tbaa !107
  %index.next213 = add nuw i64 %index212, 8       ; 2 uses
  %i.alh = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.alh, label %middle.block214, label %vector.body211, !llvm.loop !214

middle.block214:                                  ; preds = %vector.body211
  %cmp.n215 = icmp eq i64 %n.vec208, %wide.trip.count.i97.i.i
  br i1 %cmp.n215, label %itx_2d.exit.i.i, label %.lr.ph.i98.i.i.preheader

.lr.ph.i98.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i, %middle.block214
  %indvars.iv.i99.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec208, %middle.block214 ]
  br label %.lr.ph.i98.i.i

.lr.ph.i98.i.i:                                   ; preds = %.lr.ph.i98.i.i.preheader, %.lr.ph.i98.i.i
  %indvars.iv.i99.i.i = phi i64 [ %indvars.iv.next.i100.i.i, %.lr.ph.i98.i.i ], [ %indvars.iv.i99.i.i.ph, %.lr.ph.i98.i.i.preheader ] ; 2 uses
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.aky, i64 %indvars.iv.i99.i.i
  store i32 %i.alc, ptr %i.ali, align 4, !tbaa !107
  %indvars.iv.next.i100.i.i = add nuw nsw i64 %indvars.iv.i99.i.i, 1 ; 2 uses
  %exitcond.not.i101.i.i = icmp eq i64 %indvars.iv.next.i100.i.i, %wide.trip.count.i97.i.i
  br i1 %exitcond.not.i101.i.i, label %itx_2d.exit.i.i, label %.lr.ph.i98.i.i, !llvm.loop !215

.thread125.i.i:                                   ; preds = %.thread123.i.i, %bb.cc
  %.sink60.in.i.i.i = phi ptr [ %i.lz, %.thread123.i.i ], [ %i.mb, %bb.cc ]
  %.pn.in.i.i.i = phi i32 [ %.0120.i.i, %.thread123.i.i ], [ %.1.i.i, %bb.cc ]
  %.sink.in.in.i.i.i = phi i32 [ %i.add, %.thread123.i.i ], [ %i.afj, %bb.cc ]
  %i.alj = getelementptr inbounds nuw i8, ptr %i.kb, i64 64 ; 2 uses
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !140
  %.sink.in.i.i38.i = add nsw i32 %.sink.in.in.i.i.i, 1
  %.sink.i84.i.i = sext i32 %.sink.in.i.i38.i to i64
  %.pn.i85.i.i = zext i32 %.pn.in.i.i.i to i64
  %.sink58.i.i.i = getelementptr [48 x i8], ptr %i.jl, i64 %.pn.i85.i.i
  %.sink60.i.i.i = load i32, ptr %.sink60.in.i.i.i, align 4, !tbaa !107
  %i.all = sext i32 %.sink60.i.i.i to i64
  %i.alm = getelementptr [8 x i8], ptr %.sink58.i.i.i, i64 %i.all
  %i.aln = getelementptr i8, ptr %i.alm, i64 21312
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !207
  call void %i.alo(ptr noundef %i.alk, i64 noundef 1, i64 noundef %.sink.i84.i.i) #7, !inline_history !216
  %i.alp = load ptr, ptr %i.alj, align 8, !tbaa !140
  %i.alq = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 65
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !112
  %i.als = zext i8 %i.alr to i32
  %i.alt = add nuw nsw i32 %i.als, 6
  %i.alu = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 28
  %i.alv = load i8, ptr %i.alu, align 4, !tbaa !111
  %i.alw = zext i8 %i.alv to i32
  %i.alx = sub nsw i32 %i.alt, %i.alw             ; 3 uses
  %i.aly = add nsw i32 %i.alx, -1
  %i.alz = shl nuw i32 1, %i.aly                  ; 2 uses
  %i.ama = icmp sgt i32 %i.afg, 0
  %i.amb = icmp sgt i32 %i.afd, 0
  %or.cond.i.i86.i.i = and i1 %i.amb, %i.ama
  br i1 %or.cond.i.i86.i.i, label %.preheader.preheader.i.i87.i.i, label %itx_2d.exit.i.i

.preheader.preheader.i.i87.i.i:                   ; preds = %.thread125.i.i
  %i.amc = zext nneg i32 %i.afd to i64            ; 4 uses
  %wide.trip.count27.i.i88.i.i = zext nneg i32 %i.afg to i64
  %min.iters.check218 = icmp ult i32 %i.afd, 8
  %n.vec220 = and i64 %i.amc, 2147483640          ; 3 uses
  %broadcast.splatinsert221 = insertelement <4 x i32> poison, i32 %i.alz, i64 0
  %broadcast.splat222 = shufflevector <4 x i32> %broadcast.splatinsert221, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert223 = insertelement <4 x i32> poison, i32 %i.alx, i64 0
  %broadcast.splat224 = shufflevector <4 x i32> %broadcast.splatinsert223, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n231 = icmp eq i64 %n.vec220, %i.amc
  br label %.preheader.i.i89.i.i.a

.preheader.i.i89.i.i.a:                           ; preds = %._crit_edge.i.i94.i.i, %.preheader.preheader.i.i87.i.i
  %indvars.iv24.i.i90.i.i = phi i64 [ 0, %.preheader.preheader.i.i87.i.i ], [ %indvars.iv.next25.i.i95.i.i, %._crit_edge.i.i94.i.i ] ; 2 uses
  %6 = mul nuw nsw i64 %indvars.iv24.i.i90.i.i, %i.amc
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.alp, i64 %6 ; 2 uses
  br i1 %min.iters.check218, label %scalar.ph217.preheader, label %vector.body225

vector.body225:                                   ; preds = %.preheader.i.i89.i.i.a, %vector.body225
  %index226 = phi i64 [ %index.next229, %vector.body225 ], [ 0, %.preheader.i.i89.i.i.a ] ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index226 ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 16 ; 2 uses
  %wide.load227 = load <4 x i32>, ptr %i.amd, align 4, !tbaa !107
  %wide.load228 = load <4 x i32>, ptr %i.ame, align 4, !tbaa !107
  %i.amf = add nsw <4 x i32> %wide.load227, %broadcast.splat222
  %i.amg = add nsw <4 x i32> %wide.load228, %broadcast.splat222
  %i.amh = ashr <4 x i32> %i.amf, %broadcast.splat224
  %i.ami = ashr <4 x i32> %i.amg, %broadcast.splat224
  store <4 x i32> %i.amh, ptr %i.amd, align 4, !tbaa !107
  store <4 x i32> %i.ami, ptr %i.ame, align 4, !tbaa !107
  %index.next229 = add nuw i64 %index226, 8       ; 2 uses
  %i.amj = icmp eq i64 %index.next229, %n.vec220
  br i1 %i.amj, label %middle.block230, label %vector.body225, !llvm.loop !217

middle.block230:                                  ; preds = %vector.body225
  br i1 %cmp.n231, label %._crit_edge.i.i94.i.i, label %scalar.ph217.preheader

scalar.ph217.preheader:                           ; preds = %.preheader.i.i89.i.i.a, %middle.block230
  %indvars.iv.i.i91.i.i.ph = phi i64 [ 0, %.preheader.i.i89.i.i.a ], [ %n.vec220, %middle.block230 ]
  br label %scalar.ph217

._crit_edge.i.i94.i.i:                            ; preds = %scalar.ph217, %middle.block230
  %indvars.iv.next25.i.i95.i.i = add nuw nsw i64 %indvars.iv24.i.i90.i.i, 1 ; 2 uses
  %exitcond28.not.i.i96.i.i = icmp eq i64 %indvars.iv.next25.i.i95.i.i, %wide.trip.count27.i.i88.i.i
  br i1 %exitcond28.not.i.i96.i.i, label %itx_2d.exit.i.i, label %.preheader.i.i89.i.i.a, !llvm.loop !211

scalar.ph217:                                     ; preds = %scalar.ph217.preheader, %scalar.ph217
  %indvars.iv.i.i91.i.i = phi i64 [ %indvars.iv.next.i.i92.i.i, %scalar.ph217 ], [ %indvars.iv.i.i91.i.i.ph, %scalar.ph217.preheader ] ; 2 uses
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.i91.i.i ; 2 uses
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !107
  %i.amm = add nsw i32 %i.aml, %i.alz
  %i.amn = ashr i32 %i.amm, %i.alx
  store i32 %i.amn, ptr %i.amk, align 4, !tbaa !107
  %indvars.iv.next.i.i92.i.i = add nuw nsw i64 %indvars.iv.i.i91.i.i, 1 ; 2 uses
  %exitcond.not.i.i93.i.i = icmp eq i64 %indvars.iv.next.i.i92.i.i, %i.amc
  br i1 %exitcond.not.i.i93.i.i, label %._crit_edge.i.i94.i.i, label %scalar.ph217, !llvm.loop !218

itx_2d.exit.i.i:                                  ; preds = %._crit_edge.i.i94.i.i, %.lr.ph.i98.i.i, %._crit_edge.i.i82.i.i, %.lr.ph79.i.i.i, %middle.block214, %middle.block, %.thread125.i.i, %bb.cd, %dequant.exit.i.i
  %i.amo = load ptr, ptr %i.f, align 8, !tbaa !9  ; 4 uses
  %i.amp = load ptr, ptr %i.x, align 16, !tbaa !94 ; 2 uses
  %i.amq = load i8, ptr %i.kc, align 1, !tbaa !95
  %.not.i102.i.i = icmp eq i8 %i.amq, 0
  %i.amr = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !134 ; 6 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.amu = load i32, ptr %i.amt, align 8, !tbaa !135 ; 6 uses
  br i1 %.not.i102.i.i, label %lmcs_scale_chroma.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %itx_2d.exit.i.i
  %i.amv = load ptr, ptr %i.aa, align 16, !tbaa !87
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !219
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 1364
  %i.amz = load i8, ptr %i.amy, align 4, !tbaa !220
  %.not45.i103.i.i = icmp eq i8 %i.amz, 0
  br i1 %.not45.i103.i.i, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amo, i64 2080
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !221
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 46
  %i.and = load i8, ptr %i.anc, align 2, !tbaa !222
  %.not46.i104.i.i = icmp eq i8 %i.and, 0
  br i1 %.not46.i104.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ane = mul nsw i32 %i.amu, %i.ams
  %.fr57.i.i.i = freeze i32 %i.ane
  %i.anf = icmp sgt i32 %.fr57.i.i.i, 4
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %.fr56.i.i.i = phi i1 [ false, %bb.cf ], [ false, %bb.ce ], [ %i.anf, %bb.cg ] ; 2 uses
  %i.ang = load i8, ptr %i.jv, align 2, !tbaa !98
  %.fr73.i.i.i = freeze i8 %i.ang
  %.not74.i.i.i = icmp eq i8 %.fr73.i.i.i, 0
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amo, i64 2080 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amo, i64 21312 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.kb, i64 64 ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amo, i64 21232 ; 3 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amp, i64 4 ; 3 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amp, i64 8 ; 3 uses
  br i1 %.not74.i.i.i, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.ch
  br i1 %.fr56.i.i.i, label %.split50.us.split.loopexit59.i.i.i, label %lmcs_scale_chroma.exit.i.i

.split.i.i.i:                                     ; preds = %bb.ch
  br i1 %.fr56.i.i.i, label %.split.split.us.peel.next.i.i.i, label %.split.split.peel.next.i.i.i

.split.split.peel.next.i.i.i:                     ; preds = %.split.i.i.i
  %i.ann = load i8, ptr %i.jw, align 2, !tbaa !101 ; 2 uses
  %i.ano = zext i8 %i.ann to i64
  %i.anp = add nuw nsw i64 %i.ano, 1
  %i.anq = load i8, ptr %i.ka, align 1, !tbaa !95
  %i.anr = zext i8 %i.anq to i64
  %i.ans = sub nsw i64 %i.anp, %i.anr
  %i.ant = getelementptr inbounds [72 x i8], ptr %i.jn, i64 %i.ans
  %i.anu = load ptr, ptr %i.anh, align 8, !tbaa !221
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 1049
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !223
  %i.anx = zext i8 %i.anw to i32
  %i.any = shl nuw nsw i32 %i.anx, 1
  %i.anz = sub nsw i32 1, %i.any
  %i.aoa = load i8, ptr %i.jx, align 1, !tbaa !101
  %i.aob = xor i8 %i.aoa, %i.ann
  %i.aoc = zext i8 %i.aob to i32
  %i.aod = load ptr, ptr %i.ani, align 8, !tbaa !224
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.ant, i64 64
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !140
  %i.aog = load ptr, ptr %i.anj, align 8, !tbaa !140
  call void %i.aod(ptr noundef %i.aof, ptr noundef %i.aog, i32 noundef %i.ams, i32 noundef %i.amu, i32 noundef %i.anz, i32 noundef %i.aoc) #7, !inline_history !225
  br label %lmcs_scale_chroma.exit.i.i

.split.split.us.peel.next.i.i.i:                  ; preds = %.split.i.i.i
  %i.aoh = load ptr, ptr %i.anj, align 8, !tbaa !140 ; 2 uses
  %i.aoi = load i8, ptr %i.jw, align 2, !tbaa !101 ; 2 uses
  %i.aoj = zext i8 %i.aoi to i64
  %i.aok = add nuw nsw i64 %i.aoj, 1
  %i.aol = load i8, ptr %i.ka, align 1, !tbaa !95
  %i.aom = zext i8 %i.aol to i64
  %i.aon = sub nsw i64 %i.aok, %i.aom
  %i.aoo = getelementptr inbounds [72 x i8], ptr %i.jn, i64 %i.aon
  %i.aop = load ptr, ptr %i.anh, align 8, !tbaa !221
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 1049
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !223
  %i.aos = zext i8 %i.aor to i32
  %i.aot = shl nuw nsw i32 %i.aos, 1
  %i.aou = sub nsw i32 1, %i.aot
  %i.aov = load i8, ptr %i.jx, align 1, !tbaa !101
  %i.aow = xor i8 %i.aov, %i.aoi
  %i.aox = zext i8 %i.aow to i32
  %i.aoy = load ptr, ptr %i.ani, align 8, !tbaa !224
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoo, i64 64
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !140
  call void %i.aoy(ptr noundef %i.apa, ptr noundef %i.aoh, i32 noundef %i.ams, i32 noundef %i.amu, i32 noundef %i.aou, i32 noundef %i.aox) #7, !inline_history !225
  %i.apb = load ptr, ptr %i.ank, align 8, !tbaa !226
  %i.apc = load i32, ptr %i.anl, align 4, !tbaa !139
  %i.apd = load i32, ptr %i.anm, align 8, !tbaa !138
  call void %i.apb(ptr noundef nonnull %0, ptr noundef %i.aoh, i32 noundef %i.ams, i32 noundef %i.amu, i32 noundef %i.apc, i32 noundef %i.apd) #7, !inline_history !225
  %i.ape = load i8, ptr %i.jw, align 2, !tbaa !101
  %i.apf = zext i8 %i.ape to i64
  %i.apg = add nuw nsw i64 %i.apf, 1
  %i.aph = load i8, ptr %i.ka, align 1, !tbaa !95
  %i.api = zext i8 %i.aph to i64
  %i.apj = sub nsw i64 %i.apg, %i.api
  %i.apk = getelementptr inbounds [72 x i8], ptr %i.jn, i64 %i.apj
  %.in.us55.i.i.i = getelementptr inbounds nuw i8, ptr %i.apk, i64 64
  %i.apl = load ptr, ptr %.in.us55.i.i.i, align 8, !tbaa !140
  %.pre66.i.i.i = load i32, ptr %i.anm, align 8, !tbaa !138
  %.pre65.i.i.i = load i32, ptr %i.anl, align 4, !tbaa !139
  %.pre.i105.i.i = load ptr, ptr %i.ank, align 8, !tbaa !226
  call void %.pre.i105.i.i(ptr noundef nonnull %0, ptr noundef %i.apl, i32 noundef %i.ams, i32 noundef %i.amu, i32 noundef %.pre65.i.i.i, i32 noundef %.pre66.i.i.i) #7, !inline_history !225
  br label %lmcs_scale_chroma.exit.i.i

.split50.us.split.loopexit59.i.i.i:               ; preds = %.split.us.i.i.i
  %i.apm = load ptr, ptr %i.anj, align 8, !tbaa !140
  %i.apn = load ptr, ptr %i.ank, align 8, !tbaa !226
  %i.apo = load i32, ptr %i.anl, align 4, !tbaa !139
  %i.app = load i32, ptr %i.anm, align 8, !tbaa !138
  call void %i.apn(ptr noundef nonnull %0, ptr noundef %i.apm, i32 noundef %i.ams, i32 noundef %i.amu, i32 noundef %i.apo, i32 noundef %i.app) #7, !inline_history !225
  br label %lmcs_scale_chroma.exit.i.i

lmcs_scale_chroma.exit.i.i:                       ; preds = %.split50.us.split.loopexit59.i.i.i, %.split.split.us.peel.next.i.i.i, %.split.split.peel.next.i.i.i, %.split.us.i.i.i, %itx_2d.exit.i.i, %bb.ab
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.apq = load i8, ptr %i.js, align 2, !tbaa !133 ; 2 uses
  %i.apr = zext i8 %i.apq to i64
  %i.aps = icmp samesign ult i64 %indvars.iv.next.i.i, %i.apr
  br i1 %i.aps, label %bb.z, label %._crit_edge.i.i, !llvm.loop !227

bb.ci:                                            ; preds = %._crit_edge.i.i
  %i.apt = getelementptr inbounds nuw i8, ptr %i.jl, i64 21472
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !228
  %i.apv = getelementptr inbounds nuw i8, ptr %.02764.i, i64 88
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !140
  %i.apx = getelementptr inbounds nuw i8, ptr %.02764.i, i64 160
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !140
  %i.apz = getelementptr inbounds nuw i8, ptr %.02764.i, i64 232
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !140
  %i.aqb = getelementptr inbounds nuw i8, ptr %.02764.i, i64 36
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !134
  %i.aqd = getelementptr inbounds nuw i8, ptr %.02764.i, i64 40
  %i.aqe = load i32, ptr %i.aqd, align 8, !tbaa !135
  call void %i.apu(ptr noundef %i.apw, ptr noundef %i.apy, ptr noundef %i.aqa, i32 noundef %i.aqc, i32 noundef %i.aqe) #7, !inline_history !229
  %.pr.i.i = load i8, ptr %i.js, align 2, !tbaa !133
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge.i.i
  %i.aqf = phi i8 [ %.pr.i.i, %bb.ci ], [ %.lcssa141.i.i, %._crit_edge.i.i ] ; 2 uses
  %.not3.i.i.i = icmp eq i8 %i.aqf, 0
  br i1 %.not3.i.i.i, label %itransform.exit.i, label %.lr.ph.i106.i.i

.lr.ph.i106.i.i:                                  ; preds = %bb.cj
  %.val63.i.i = load ptr, ptr %i.x, align 16, !tbaa !94
  %.val62.i.i = load ptr, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %.val62.i.i, i64 2048
  %i.aqh = getelementptr inbounds nuw i8, ptr %.val63.i.i, i64 40
  %i.aqi = getelementptr inbounds nuw i8, ptr %.02764.i, i64 18
  %i.aqj = getelementptr inbounds nuw i8, ptr %.val62.i.i, i64 2064
  %i.aqk = getelementptr inbounds nuw i8, ptr %.val62.i.i, i64 21304
  br label %bb.ck

bb.ck:                                            ; preds = %.thread.i110.i.i, %.lr.ph.i106.i.i
  %i.aql = phi i8 [ %i.aqf, %.lr.ph.i106.i.i ], [ %i.asj, %.thread.i110.i.i ] ; 2 uses
  %indvars.iv.i107.i.i = phi i64 [ 0, %.lr.ph.i106.i.i ], [ %indvars.iv.next.i111.i.i, %.thread.i110.i.i ] ; 2 uses
  %i.aqm = getelementptr inbounds nuw [72 x i8], ptr %i.jn, i64 %indvars.iv.i107.i.i ; 7 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 1
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !95 ; 3 uses
  %i.aqp = icmp ne i8 %i.aqo, 0
  %i.aqq = load ptr, ptr %i.aqg, align 8, !tbaa !136 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 64
  %i.aqs = zext i8 %i.aqo to i64                  ; 4 uses
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.aqr, i64 %i.aqs
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !107 ; 2 uses
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = load i8, ptr %i.aqm, align 8, !tbaa !160
  %.not.i108.i.i = icmp eq i8 %i.aqw, 0
  br i1 %.not.i108.i.i, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.aqx = load i8, ptr %i.aqh, align 8, !tbaa !102
  %.not35.i.i.i = icmp eq i8 %i.aqx, 0
  br i1 %.not35.i.i.i, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %.not36.i.i.i = icmp eq i8 %i.aqo, 0
  br i1 %.not36.i.i.i, label %.thread.i110.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aqy = load i8, ptr %i.aqi, align 2, !tbaa !98
  %i.aqz = icmp ne i8 %i.aqy, 0
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cl, %bb.ck
  %i.ara = phi i1 [ true, %bb.cl ], [ true, %bb.ck ], [ %i.aqz, %bb.cn ]
  %i.arb = zext i1 %i.aqp to i64
  %i.arc = icmp eq i64 %indvars.iv.i70, %i.arb
  %or.cond.i109.i.i = select i1 %i.arc, i1 %i.ara, i1 false
  br i1 %or.cond.i109.i.i, label %bb.cp, label %.thread.i110.i.i

bb.cp:                                            ; preds = %bb.co
  %i.ard = getelementptr inbounds nuw [8 x i8], ptr %i.aqq, i64 %i.aqs
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !137
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8
  %i.arg = load i32, ptr %i.arf, align 8, !tbaa !182
  %i.arh = load ptr, ptr %i.aqj, align 8, !tbaa !20 ; 3 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 11
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.aqs
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !101
  %i.arl = zext nneg i8 %i.ark to i32
  %i.arm = ashr i32 %i.arg, %i.arl
  %i.arn = mul nsw i32 %i.arm, %i.aqu
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqm, i64 4
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !180
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.aqs
  %i.ars = load i8, ptr %i.arr, align 1, !tbaa !101
  %i.art = zext nneg i8 %i.ars to i32
  %i.aru = ashr i32 %i.arp, %i.art
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arh, i64 20
  %i.arw = load i8, ptr %i.arv, align 4, !tbaa !132
  %i.arx = zext nneg i8 %i.arw to i32
  %i.ary = shl i32 %i.aru, %i.arx
  %i.arz = add nsw i32 %i.ary, %i.arn
  %i.asa = sext i32 %i.arz to i64
  %i.asb = getelementptr inbounds i8, ptr %i.are, i64 %i.asa
  %i.asc = load ptr, ptr %i.aqk, align 8, !tbaa !230
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aqm, i64 64
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !140
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aqm, i64 12
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !134
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  %i.asi = load i32, ptr %i.ash, align 8, !tbaa !135
  call void %i.asc(ptr noundef %i.asb, ptr noundef %i.ase, i32 noundef %i.asg, i32 noundef %i.asi, i64 noundef %i.aqv) #7, !inline_history !231
  %.pre.i113.i.i = load i8, ptr %i.js, align 2, !tbaa !133
  br label %.thread.i110.i.i

.thread.i110.i.i:                                 ; preds = %bb.cp, %bb.co, %bb.cm
  %i.asj = phi i8 [ %i.aql, %bb.cm ], [ %.pre.i113.i.i, %bb.cp ], [ %i.aql, %bb.co ] ; 2 uses
  %indvars.iv.next.i111.i.i = add nuw nsw i64 %indvars.iv.i107.i.i, 1 ; 2 uses
  %i.ask = zext i8 %i.asj to i64
  %i.asl = icmp samesign ult i64 %indvars.iv.next.i111.i.i, %i.ask
  br i1 %i.asl, label %bb.ck, label %itransform.exit.i, !llvm.loop !232

itransform.exit.i:                                ; preds = %.thread.i110.i.i, %bb.cj
  %i.asm = getelementptr inbounds nuw i8, ptr %.02764.i, i64 240
  %i.asn = add nuw nsw i32 %.062.i, 1
  %.027.i = load ptr, ptr %i.asm, align 8, !tbaa !144 ; 2 uses
  %.not34.i = icmp eq ptr %.027.i, null
  br i1 %.not34.i, label %predict_intra.exit.i, label %bb.k, !llvm.loop !233

predict_intra.exit.i:                             ; preds = %itransform.exit.i, %.lr.ph67.split.i
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i
  br i1 %exitcond.not.i, label %reconstruct.exit, label %.lr.ph67.split.i, !llvm.loop !234

bb.cq:                                            ; preds = %vvc_predict_ibc.exit
  %i.aso = load i32, ptr %.05399, align 8, !tbaa !129
  %.not62 = icmp eq i32 %i.aso, 2
  br i1 %.not62, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.asp = load i32, ptr %i.t, align 4, !tbaa !107 ; 3 uses
  %i.asq = icmp ugt i32 %i.asp, 1023
  br i1 %i.asq, label %add_reconstructed_area.exit.thread, label %add_reconstructed_area.exit

add_reconstructed_area.exit:                      ; preds = %bb.cr
  %i.asr = getelementptr inbounds nuw i8, ptr %.05399, i64 16
  %i.ass = load i32, ptr %i.asr, align 8, !tbaa !235
  %i.ast = getelementptr inbounds nuw i8, ptr %.05399, i64 12
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !236
  %i.asv = getelementptr inbounds nuw i8, ptr %.05399, i64 8
  %i.asw = load i32, ptr %i.asv, align 8, !tbaa !138
  %i.asx = getelementptr inbounds nuw i8, ptr %.05399, i64 4
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !139
  %i.asz = zext nneg i32 %i.asp to i64
  %i.ata = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 2064
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !20 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 11
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !101
  %i.atf = zext i8 %i.ate to i32                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atc, i64 8
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !101
  %i.ati = zext i8 %i.ath to i32                  ; 2 uses
  %i.atj = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.asz ; 4 uses
  %i.atk = ashr i32 %i.asy, %i.ati
  store i32 %i.atk, ptr %i.atj, align 4, !tbaa !149
  %i.atl = ashr i32 %i.asw, %i.atf
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 4
  store i32 %i.atl, ptr %i.atm, align 4, !tbaa !151
  %i.atn = ashr i32 %i.asu, %i.ati
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atj, i64 8
  store i32 %i.atn, ptr %i.ato, align 4, !tbaa !152
  %i.atp = ashr i32 %i.ass, %i.atf
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atj, i64 12
  store i32 %i.atp, ptr %i.atq, align 4, !tbaa !153
  %i.atr = add nuw nsw i32 %i.asp, 1
  store i32 %i.atr, ptr %i.t, align 4, !tbaa !107
  br label %bb.cs

bb.cs:                                            ; preds = %add_reconstructed_area.exit, %bb.cq
  %.1 = phi i32 [ 0, %add_reconstructed_area.exit ], [ %.0101, %bb.cq ] ; 2 uses
  %i.ats = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 7
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !130
  %.not63 = icmp eq i8 %i.atu, 0
  br i1 %.not63, label %reconstruct.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.atv = load i32, ptr %.05399, align 8, !tbaa !129
  %.not64 = icmp eq i32 %i.atv, 1
  br i1 %.not64, label %reconstruct.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.atw = load i32, ptr %i.u, align 16, !tbaa !107 ; 3 uses
  %i.atx = icmp ugt i32 %i.atw, 1023
  br i1 %i.atx, label %add_reconstructed_area.exit.thread, label %add_reconstructed_area.exit74

add_reconstructed_area.exit74:                    ; preds = %bb.cu
  %i.aty = getelementptr inbounds nuw i8, ptr %.05399, i64 16
  %i.atz = load i32, ptr %i.aty, align 8, !tbaa !235
  %i.aua = getelementptr inbounds nuw i8, ptr %.05399, i64 12
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !236
  %i.auc = getelementptr inbounds nuw i8, ptr %.05399, i64 8
  %i.aud = load i32, ptr %i.auc, align 8, !tbaa !138
  %i.aue = getelementptr inbounds nuw i8, ptr %.05399, i64 4
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !139
  %i.aug = zext nneg i32 %i.atw to i64
  %i.auh = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 2064
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !20 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 12
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !101
  %i.aum = zext i8 %i.aul to i32                  ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auj, i64 9
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !101
  %i.aup = zext i8 %i.auo to i32                  ; 2 uses
  %i.auq = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aug ; 4 uses
  %i.aur = ashr i32 %i.auf, %i.aup
  store i32 %i.aur, ptr %i.auq, align 4, !tbaa !149
  %i.aus = ashr i32 %i.aud, %i.aum
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 4
  store i32 %i.aus, ptr %i.aut, align 4, !tbaa !151
  %i.auu = ashr i32 %i.aub, %i.aup
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auq, i64 8
  store i32 %i.auu, ptr %i.auv, align 4, !tbaa !152
  %i.auw = ashr i32 %i.atz, %i.aum
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auq, i64 12
  store i32 %i.auw, ptr %i.aux, align 4, !tbaa !153
  %i.auy = add nuw nsw i32 %i.atw, 1
  store i32 %i.auy, ptr %i.u, align 16, !tbaa !107
  br label %reconstruct.exit

reconstruct.exit:                                 ; preds = %predict_intra.exit.i, %bb.x, %get_luma_predict_unit.exit.thread.i.i, %bb.l, %add_reconstructed_area.exit74, %.lr.ph67.i, %bb.j, %bb.cs, %bb.ct
  %.2 = phi i32 [ %.1, %bb.cs ], [ 0, %add_reconstructed_area.exit74 ], [ %.1, %bb.ct ], [ 0, %bb.j ], [ 0, %.lr.ph67.i ], [ -1094995529, %bb.x ], [ -1094995529, %bb.l ], [ -1094995529, %get_luma_predict_unit.exit.thread.i.i ], [ 0, %predict_intra.exit.i ] ; 2 uses
  %i.auz = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 38748
  %i.avb = load i8, ptr %i.ava, align 4, !tbaa !237
  %.not65 = icmp eq i8 %i.avb, 0
  br i1 %.not65, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %reconstruct.exit
  %.val67 = load ptr, ptr %i.f, align 8, !tbaa !9 ; 4 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %.val67, i64 2064 ; 2 uses
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ave = load i32, ptr %.05399, align 8, !tbaa !129
  %i.avf = load ptr, ptr %i.avd, align 8, !tbaa !73
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 7
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !130
  call void @ff_vvc_channel_range(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.ave, i8 noundef zeroext %i.avh) #7
  %i.avi = load i32, ptr %i.a, align 4, !tbaa !107 ; 2 uses
  %i.avj = load i32, ptr %i.b, align 4, !tbaa !107
  %i.avk = icmp slt i32 %i.avi, %i.avj
  br i1 %i.avk, label %.lr.ph.i75, label %ibc_fill_vir_buf.exit

.lr.ph.i75:                                       ; preds = %bb.cv
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avd, i64 11
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avd, i64 20
  %i.avo = getelementptr inbounds nuw i8, ptr %.05399, i64 4
  %i.avp = getelementptr inbounds nuw i8, ptr %.val67, i64 22444
  %i.avq = getelementptr inbounds nuw i8, ptr %.05399, i64 8
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avd, i64 30
  %i.avs = getelementptr inbounds nuw i8, ptr %.val67, i64 2048
  %i.avt = getelementptr inbounds nuw i8, ptr %.val67, i64 22376
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avd, i64 32
  %i.avv = getelementptr inbounds nuw i8, ptr %.05399, i64 12
  %i.avw = getelementptr inbounds nuw i8, ptr %.05399, i64 16
  %i.avx = sext i32 %i.avi to i64
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.lr.ph.i75
  %indvars.iv.i76 = phi i64 [ %i.avx, %.lr.ph.i75 ], [ %indvars.iv.next.i77, %bb.cw ] ; 8 uses
  %i.avy = getelementptr inbounds i8, ptr %i.avl, i64 %indvars.iv.i76
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !101
  %i.awa = zext i8 %i.avz to i32                  ; 3 uses
  %i.awb = getelementptr inbounds i8, ptr %i.avm, i64 %indvars.iv.i76
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !101
  %i.awd = zext i8 %i.awc to i32                  ; 4 uses
  %i.awe = load i8, ptr %i.avn, align 4, !tbaa !132
  %i.awf = zext i8 %i.awe to i32                  ; 3 uses
  %i.awg = load i32, ptr %i.avo, align 4, !tbaa !139 ; 2 uses
  %i.awh = ashr i32 %i.awg, %i.awa
  %i.awi = load i32, ptr %i.avp, align 4, !tbaa !238
  %i.awj = ashr i32 %i.awi, %i.awa                ; 2 uses
  %i.awk = add nsw i32 %i.awj, -1
  %i.awl = and i32 %i.awk, %i.awh
  %i.awm = load i32, ptr %i.avq, align 8, !tbaa !138 ; 3 uses
  %i.awn = ashr i32 %i.awm, %i.awd
  %i.awo = load i8, ptr %i.avr, align 2, !tbaa !122
  %i.awp = zext nneg i8 %i.awo to i32
  %i.awq = shl nuw i32 1, %i.awp
  %i.awr = ashr i32 %i.awq, %i.awd
  %i.aws = add nsw i32 %i.awr, -1
  %i.awt = and i32 %i.aws, %i.awn
  %i.awu = load ptr, ptr %i.avs, align 8, !tbaa !136 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 64
  %i.aww = getelementptr inbounds [4 x i8], ptr %i.awv, i64 %indvars.iv.i76
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !107 ; 2 uses
  %i.awy = shl i32 %i.awj, %i.awf                 ; 2 uses
  %i.awz = getelementptr inbounds [8 x i8], ptr %i.awu, i64 %indvars.iv.i76
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !137
  %i.axb = load ptr, ptr %i.avc, align 8, !tbaa !20 ; 3 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 11
  %i.axd = getelementptr inbounds i8, ptr %i.axc, i64 %indvars.iv.i76
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !101
  %i.axf = zext nneg i8 %i.axe to i32
  %i.axg = ashr i32 %i.awm, %i.axf
  %i.axh = mul nsw i32 %i.axg, %i.awx
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axb, i64 8
  %i.axj = getelementptr inbounds i8, ptr %i.axi, i64 %indvars.iv.i76
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !101
  %i.axl = zext nneg i8 %i.axk to i32
  %i.axm = ashr i32 %i.awg, %i.axl
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axb, i64 20
  %i.axo = load i8, ptr %i.axn, align 4, !tbaa !132
  %i.axp = zext nneg i8 %i.axo to i32
  %i.axq = shl i32 %i.axm, %i.axp
  %i.axr = add nsw i32 %i.axq, %i.axh
  %i.axs = sext i32 %i.axr to i64
  %i.axt = getelementptr inbounds i8, ptr %i.axa, i64 %i.axs
  %i.axu = getelementptr inbounds [8 x i8], ptr %i.avt, i64 %indvars.iv.i76
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !137
  %i.axw = shl i32 %i.awl, %i.awf
  %i.axx = sext i32 %i.axw to i64
  %i.axy = getelementptr inbounds i8, ptr %i.axv, i64 %i.axx
  %i.axz = load i16, ptr %i.avu, align 8, !tbaa !239
  %i.aya = zext i16 %i.axz to i32
  %i.ayb = sub nsw i32 0, %i.aya
  %i.ayc = and i32 %i.awm, %i.ayb
  %i.ayd = ashr i32 %i.ayc, %i.awd
  %i.aye = add nsw i32 %i.ayd, %i.awt
  %i.ayf = mul nsw i32 %i.aye, %i.awy
  %i.ayg = sext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds i8, ptr %i.axy, i64 %i.ayg
  %i.ayi = load i32, ptr %i.avv, align 4, !tbaa !236
  %i.ayj = ashr i32 %i.ayi, %i.awa
  %i.ayk = shl i32 %i.ayj, %i.awf
  %i.ayl = load i32, ptr %i.avw, align 8, !tbaa !235
  %i.aym = ashr i32 %i.ayl, %i.awd
  call void @av_image_copy_plane(ptr noundef %i.ayh, i32 noundef %i.awy, ptr noundef %i.axt, i32 noundef %i.awx, i32 noundef %i.ayk, i32 noundef %i.aym) #7
  %indvars.iv.next.i77 = add nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %i.ayn = load i32, ptr %i.b, align 4, !tbaa !107
  %i.ayo = sext i32 %i.ayn to i64
  %i.ayp = icmp slt i64 %indvars.iv.next.i77, %i.ayo
  br i1 %i.ayp, label %bb.cw, label %ibc_fill_vir_buf.exit, !llvm.loop !240

ibc_fill_vir_buf.exit:                            ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.cx

bb.cx:                                            ; preds = %ibc_fill_vir_buf.exit, %reconstruct.exit
  %i.ayq = getelementptr inbounds nuw i8, ptr %.05399, i64 776
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !241 ; 2 uses
  %.not = icmp eq ptr %i.ayr, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !242

._crit_edge:                                      ; preds = %bb.cx, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.cx ]
  %i.ays = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.ayt = getelementptr inbounds [8 x i8], ptr %i.ays, i64 %i.q
  call void @ff_vvc_ctu_free_cus(ptr noundef %i.ayt) #7
  br label %add_reconstructed_area.exit.thread

add_reconstructed_area.exit.thread:               ; preds = %bb.cu, %bb.cr, %._crit_edge
  %.054 = phi i32 [ %.0.lcssa, %._crit_edge ], [ -1094995529, %bb.cr ], [ -1094995529, %bb.cu ]
  ret i32 %.054
}

declare void @ff_vvc_decode_neighbour(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_vvc_predict_ciip(ptr noundef) local_unnamed_addr #3

declare void @ff_vvc_ctu_free_cus(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @intra_block_copy(ptr nofree readonly captures(none) %.88.val, ptr nofree readonly captures(none) %.112.val, i32 noundef range(i32 0, 3) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 2064
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.112.val, i64 576
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = zext nneg i32 %0 to i64                  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !101
  %i.h = zext i8 %i.g to i32                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !101
  %i.l = zext i8 %i.k to i32                      ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.n = load i8, ptr %i.m, align 4, !tbaa !132
  %i.o = zext i8 %i.n to i32                      ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.112.val, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139
  %i.r = ashr i32 %i.q, %i.h                      ; 2 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !243
  %i.t = add nuw nsw i32 %i.h, 4
  %i.u = ashr i32 %i.s, %i.t
  %i.v = add nsw i32 %i.u, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %.88.val, i64 22444
  %i.x = load i32, ptr %i.w, align 4, !tbaa !238
  %i.y = ashr i32 %i.x, %i.h                      ; 3 uses
  %i.z = add nsw i32 %i.y, -1
  %i.aa = and i32 %i.z, %i.v                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.112.val, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !138 ; 2 uses
  %i.ad = ashr i32 %i.ac, %i.l                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.112.val, i64 580
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !245
  %i.ag = add nuw nsw i32 %i.l, 4
  %i.ah = ashr i32 %i.af, %i.ag
  %i.ai = add nsw i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !122
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw i32 1, %i.al
  %i.an = ashr i32 %i.am, %i.l
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = and i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.112.val, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !236
  %i.as = ashr i32 %i.ar, %i.h                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.112.val, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !235
  %i.av = ashr i32 %i.au, %i.l                    ; 2 uses
  %i.aw = sub nsw i32 %i.y, %i.aa                 ; 2 uses
  %i.ax = icmp sgt i32 %i.as, %i.aw
  %i.ay = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.aw) ; 2 uses
  %i.az = shl i32 %i.y, %i.o                      ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.88.val, i64 2048
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !136 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.e
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !107 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.88.val, i64 22376
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.e ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !137
  %i.bi = shl i32 %i.aa, %i.o
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !239
  %i.bn = zext i16 %i.bm to i32
  %i.bo = sub nsw i32 0, %i.bn
  %i.bp = and i32 %i.ac, %i.bo
  %i.bq = ashr i32 %i.bp, %i.l
  %i.br = add nsw i32 %i.bq, %i.ap
  %i.bs = mul nsw i32 %i.br, %i.az
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bk, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.e
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !137
  %i.bx = mul nsw i32 %i.be, %i.ad
  %i.by = shl i32 %i.r, %i.o
  %i.bz = add nsw i32 %i.bx, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bw, i64 %i.ca ; 2 uses
  %i.cc = shl i32 %i.ay, %i.o                     ; 2 uses
  tail call void @av_image_copy_plane(ptr noundef %i.cb, i32 noundef %i.be, ptr noundef %i.bu, i32 noundef %i.az, i32 noundef %i.cc, i32 noundef %i.av) #7
  br i1 %i.ax, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !137
  %i.ce = load i32, ptr %i.ab, align 8, !tbaa !138
  %i.cf = load i16, ptr %i.bl, align 8, !tbaa !239
  %i.cg = zext i16 %i.cf to i32
  %i.ch = sub nsw i32 0, %i.cg
  %i.ci = and i32 %i.ce, %i.ch
  %i.cj = ashr i32 %i.ci, %i.l
  %i.ck = add nsw i32 %i.cj, %i.ap
  %i.cl = mul nsw i32 %i.ck, %i.az
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.cd, i64 %i.cm
  %i.co = sext i32 %i.cc to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cb, i64 %i.co
  %i.cq = sub nsw i32 %i.as, %i.ay
  %i.cr = shl i32 %i.cq, %i.o
  tail call void @av_image_copy_plane(ptr noundef %i.cp, i32 noundef %i.be, ptr noundef %i.cn, i32 noundef %i.az, i32 noundef %i.cr, i32 noundef %i.av) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_vvc_set_neighbour_available(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_vvc_inv_lfnst_1d(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_vvc_wide_angle_mode_mapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @ff_vvc_channel_range(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !15, i64 88}
!10 = !{!"VVCLocalContext", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !6, i64 4, !6, i64 8, !11, i64 12, !12, i64 68, !13, i64 80, !15, i64 88, !16, i64 96, !17, i64 104, !18, i64 112, !6, i64 120, !7, i64 124, !7, i64 132, !19, i64 32900, !7, i64 32928}
!11 = !{!"", !6, i64 0, !7, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!13 = !{!"p1 _ZTS12SliceContext", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTS15VVCFrameContext", !14, i64 0}
!16 = !{!"p1 _ZTS10EntryPoint", !14, i64 0}
!17 = !{!"p1 int", !14, i64 0}
!18 = !{!"p1 _ZTS10CodingUnit", !14, i64 0}
!19 = !{!"NeighbourAvailable", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!20 = !{!21, !24, i64 2064}
!21 = !{!"VVCFrameContext", !14, i64 0, !7, i64 8, !22, i64 2048, !22, i64 2056, !23, i64 2064, !31, i64 19072, !49, i64 19400, !6, i64 19408, !6, i64 19412, !50, i64 19416, !51, i64 19424, !59, i64 21736, !60, i64 21752, !61, i64 21760, !62, i64 21768, !62, i64 21776, !62, i64 21784, !62, i64 21792, !63, i64 21800}
!22 = !{!"p1 _ZTS7AVFrame", !14, i64 0}
!23 = !{!"VVCFrameParamSets", !24, i64 0, !25, i64 8, !26, i64 16, !7, i64 480, !29, i64 544, !30, i64 17000}
!24 = !{!"p1 _ZTS6VVCSPS", !14, i64 0}
!25 = !{!"p1 _ZTS6VVCPPS", !14, i64 0}
!26 = !{!"VVCPH", !27, i64 0, !14, i64 8, !6, i64 16, !6, i64 20, !7, i64 24, !7, i64 26, !7, i64 32, !7, i64 34, !28, i64 40}
!27 = !{!"p1 _ZTS20H266RawPictureHeader", !14, i64 0}
!28 = !{!"PredWeightTable", !7, i64 0, !7, i64 2, !7, i64 4, !7, i64 64, !7, i64 244}
!29 = !{!"VVCLMCS", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 8194, !7, i64 16386, !7, i64 16420}
!30 = !{!"p1 _ZTS14VVCScalingList", !14, i64 0}
!31 = !{!"VVCSEI", !32, i64 0, !47, i64 256, !48, i64 312}
!32 = !{!"H2645SEI", !33, i64 0, !36, i64 128, !39, i64 144, !40, i64 176, !41, i64 192, !42, i64 200, !44, i64 212, !45, i64 240, !46, i64 248}
!33 = !{!"FFITUTT35Meta", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !35, i64 56}
!34 = !{!"p1 _ZTS11AVBufferRef", !14, i64 0}
!35 = !{!"AVFilmGrainAFGS1Params", !6, i64 0, !7, i64 8}
!36 = !{!"H2645SEIUnregistered", !37, i64 0, !6, i64 8, !6, i64 12}
!37 = !{!"p2 _ZTS11AVBufferRef", !38, i64 0}
!38 = !{!"any p2 pointer", !14, i64 0}
!39 = !{!"H2645SEIFramePacking", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!40 = !{!"H2645SEIDisplayOrientation", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!41 = !{!"H2645SEIAlternativeTransfer", !6, i64 0, !6, i64 4}
!42 = !{!"H2645SEIAmbientViewingEnvironment", !6, i64 0, !6, i64 4, !43, i64 8, !43, i64 10}
!43 = !{!"short", !7, i64 0}
!44 = !{!"H2645SEIMasteringDisplay", !6, i64 0, !7, i64 4, !7, i64 16, !6, i64 20, !6, i64 24}
!45 = !{!"H2645SEIContentLight", !6, i64 0, !43, i64 4, !43, i64 6}
!46 = !{!"p1 _ZTS32H2645SEIFilmGrainCharacteristics", !14, i64 0}
!47 = !{!"H274SEIPictureHash", !6, i64 0, !7, i64 4, !7, i64 52}
!48 = !{!"H274SEIFrameFieldInfo", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 9, !7, i64 10}
!49 = !{!"p2 _ZTS12SliceContext", !38, i64 0}
!50 = !{!"p1 _ZTS8VVCFrame", !14, i64 0}
!51 = !{!"VVCDSPContext", !52, i64 0, !53, i64 1800, !54, i64 1880, !55, i64 2056, !56, i64 2064, !57, i64 2112, !58, i64 2272}
!52 = !{!"VVCInterDSPContext", !7, i64 0, !7, i64 448, !7, i64 896, !7, i64 1344, !7, i64 1456, !7, i64 1568, !14, i64 1680, !14, i64 1688, !14, i64 1696, !14, i64 1704, !14, i64 1712, !14, i64 1720, !14, i64 1728, !14, i64 1736, !14, i64 1744, !14, i64 1752, !14, i64 1760, !7, i64 1768}
!53 = !{!"VVCIntraDSPContext", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72}
!54 = !{!"VVCItxDSPContext", !14, i64 0, !14, i64 8, !7, i64 16, !14, i64 160, !14, i64 168}
!55 = !{!"VVCLMCSDSPContext", !14, i64 0}
!56 = !{!"VVCLFDSPContext", !7, i64 0, !7, i64 16, !7, i64 32}
!57 = !{!"VVCSAODSPContext", !7, i64 0, !7, i64 72, !7, i64 144}
!58 = !{!"VVCALFDSPContext", !7, i64 0, !14, i64 16, !14, i64 24, !14, i64 32}
!59 = !{!"VideoDSPContext", !14, i64 0, !14, i64 8}
!60 = !{!"p1 _ZTS14VVCFrameThread", !14, i64 0}
!61 = !{!"long", !7, i64 0}
!62 = !{!"p1 _ZTS15AVRefStructPool", !14, i64 0}
!63 = !{!"", !64, i64 0, !65, i64 8, !66, i64 16, !67, i64 24, !7, i64 32, !7, i64 48, !7, i64 64, !7, i64 80, !7, i64 96, !7, i64 112, !68, i64 136, !68, i64 144, !7, i64 152, !68, i64 168, !68, i64 176, !7, i64 184, !68, i64 200, !68, i64 208, !68, i64 216, !7, i64 224, !69, i64 240, !7, i64 248, !68, i64 272, !7, i64 280, !7, i64 296, !7, i64 312, !7, i64 328, !7, i64 376, !7, i64 392, !7, i64 408, !7, i64 432, !7, i64 456, !7, i64 504, !17, i64 552, !70, i64 560, !71, i64 568, !7, i64 576, !72, i64 600}
!64 = !{!"p1 short", !14, i64 0}
!65 = !{!"p1 _ZTS8DBParams", !14, i64 0}
!66 = !{!"p1 _ZTS9SAOParams", !14, i64 0}
!67 = !{!"p1 _ZTS9ALFParams", !14, i64 0}
!68 = !{!"p1 omnipotent char", !14, i64 0}
!69 = !{!"p1 _ZTS7MvField", !14, i64 0}
!70 = !{!"p1 _ZTS3CTU", !14, i64 0}
!71 = !{!"p2 _ZTS10CodingUnit", !38, i64 0}
!72 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!73 = !{!74, !75, i64 0}
!74 = !{!"VVCSPS", !75, i64 0, !7, i64 8, !7, i64 11, !6, i64 16, !7, i64 20, !6, i64 24, !7, i64 28, !7, i64 29, !7, i64 30, !43, i64 32, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 44, !7, i64 64, !7, i64 65, !7, i64 66}
!75 = !{!"p1 _ZTS10H266RawSPS", !14, i64 0}
!76 = !{!77, !7, i64 38747}
!77 = !{!"H266RawSPS", !78, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !79, i64 12, !7, i64 1388, !7, i64 1389, !7, i64 1390, !43, i64 1392, !43, i64 1394, !7, i64 1396, !43, i64 1398, !43, i64 1400, !43, i64 1402, !43, i64 1404, !7, i64 1406, !43, i64 1408, !7, i64 1410, !7, i64 1411, !7, i64 1412, !7, i64 3412, !7, i64 5412, !7, i64 7412, !7, i64 9412, !7, i64 10412, !7, i64 11412, !7, i64 11413, !7, i64 11414, !7, i64 11416, !7, i64 15416, !7, i64 15417, !7, i64 15418, !7, i64 15419, !7, i64 15420, !7, i64 15421, !7, i64 15422, !7, i64 15423, !7, i64 15439, !7, i64 15440, !7, i64 15456, !81, i64 15457, !7, i64 15478, !7, i64 15479, !7, i64 15480, !7, i64 15481, !7, i64 15482, !7, i64 15483, !7, i64 15484, !7, i64 15485, !7, i64 15486, !7, i64 15487, !7, i64 15488, !7, i64 15489, !7, i64 15490, !7, i64 15491, !7, i64 15492, !7, i64 15493, !7, i64 15494, !7, i64 15495, !7, i64 15496, !7, i64 15497, !7, i64 15498, !7, i64 15499, !7, i64 15500, !7, i64 15501, !7, i64 15502, !7, i64 15503, !7, i64 15506, !7, i64 15509, !7, i64 15842, !7, i64 16175, !7, i64 16176, !7, i64 16177, !7, i64 16178, !7, i64 16179, !7, i64 16180, !7, i64 16181, !7, i64 16182, !7, i64 16183, !7, i64 16184, !7, i64 16185, !7, i64 16187, !7, i64 38715, !7, i64 38716, !7, i64 38717, !7, i64 38718, !7, i64 38719, !7, i64 38720, !7, i64 38721, !7, i64 38722, !7, i64 38723, !7, i64 38724, !7, i64 38725, !7, i64 38726, !7, i64 38727, !7, i64 38728, !7, i64 38729, !7, i64 38730, !7, i64 38731, !7, i64 38732, !7, i64 38733, !7, i64 38734, !7, i64 38735, !7, i64 38736, !7, i64 38737, !7, i64 38738, !7, i64 38739, !7, i64 38740, !7, i64 38741, !7, i64 38742, !7, i64 38743, !7, i64 38744, !7, i64 38745, !7, i64 38746, !7, i64 38747, !7, i64 38748, !7, i64 38749, !7, i64 38750, !7, i64 38751, !7, i64 38752, !7, i64 38753, !7, i64 38758, !7, i64 38766, !7, i64 38767, !7, i64 38768, !7, i64 38769, !7, i64 38770, !7, i64 38771, !7, i64 38772, !7, i64 38773, !7, i64 38774, !7, i64 38776, !7, i64 38782, !7, i64 38784, !7, i64 38790, !7, i64 38791, !82, i64 38792, !83, i64 38812, !7, i64 46464, !7, i64 46465, !43, i64 46466, !85, i64 46472, !7, i64 46520, !7, i64 46521, !7, i64 46522, !7, i64 46523, !7, i64 46524, !7, i64 46525, !7, i64 46526, !7, i64 46527, !86, i64 46528}
!78 = !{!"H266RawNALUnitHeader", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3}
!79 = !{!"H266RawProfileTierLevel", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !80, i64 5, !7, i64 334, !7, i64 340, !7, i64 346, !7, i64 348, !7, i64 1372}
!80 = !{!"H266GeneralConstraintsInfo", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !7, i64 28, !7, i64 29, !7, i64 30, !7, i64 31, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44, !7, i64 45, !7, i64 46, !7, i64 47, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51, !7, i64 52, !7, i64 53, !7, i64 54, !7, i64 55, !7, i64 56, !7, i64 57, !7, i64 58, !7, i64 59, !7, i64 60, !7, i64 61, !7, i64 62, !7, i64 63, !7, i64 64, !7, i64 65, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 323, !7, i64 324, !7, i64 325, !7, i64 326, !7, i64 327, !7, i64 328}
!81 = !{!"H266DpbParameters", !7, i64 0, !7, i64 7, !7, i64 14}
!82 = !{!"H266RawGeneralTimingHrdParameters", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16}
!83 = !{!"H266RawOlsTimingHrdParameters", !7, i64 0, !7, i64 7, !7, i64 14, !7, i64 28, !84, i64 36, !84, i64 3844}
!84 = !{!"H266RawSubLayerHRDParameters", !7, i64 0, !7, i64 896, !7, i64 1792, !7, i64 2688, !7, i64 3584}
!85 = !{!"H266RawVUI", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !43, i64 8, !43, i64 10, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !86, i64 24}
!86 = !{!"H266RawExtensionData", !68, i64 0, !34, i64 8, !61, i64 16}
!87 = !{!10, !13, i64 80}
!88 = !{!89, !91, i64 8}
!89 = !{!"SliceContext", !6, i64 0, !90, i64 8, !16, i64 16680, !6, i64 16688, !93, i64 16696, !14, i64 16704}
!90 = !{!"VVCSH", !91, i64 0, !6, i64 8, !17, i64 16, !28, i64 24, !7, i64 448, !7, i64 450, !92, i64 451, !7, i64 457, !7, i64 459, !7, i64 461, !7, i64 463, !7, i64 465, !7, i64 466, !7, i64 468}
!91 = !{!"p1 _ZTS18H266RawSliceHeader", !14, i64 0}
!92 = !{!"DBParams", !7, i64 0, !7, i64 3}
!93 = !{!"p1 _ZTS10RefPicList", !14, i64 0}
!94 = !{!10, !18, i64 112}
!95 = !{!96, !7, i64 1}
!96 = !{!"TransformBlock", !7, i64 0, !7, i64 1, !7, i64 2, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!97 = !{!74, !7, i64 29}
!98 = !{!99, !7, i64 18}
!99 = !{!"TransformUnit", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 18, !7, i64 19, !7, i64 22, !7, i64 24, !100, i64 240}
!100 = !{!"p1 _ZTS13TransformUnit", !14, i64 0}
!101 = !{!7, !7, i64 0}
!102 = !{!103, !7, i64 40}
!103 = !{!"CodingUnit", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !7, i64 29, !7, i64 30, !7, i64 31, !6, i64 32, !6, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !7, i64 72, !7, i64 84, !104, i64 96, !7, i64 112, !7, i64 116, !105, i64 504, !18, i64 776}
!104 = !{!"", !100, i64 0, !100, i64 8}
!105 = !{!"PredictionUnit", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 8, !6, i64 56, !106, i64 60, !7, i64 128, !7, i64 129, !7, i64 130, !7, i64 194, !7, i64 260}
!106 = !{!"MotionInfo", !6, i64 0, !7, i64 4, !7, i64 6, !7, i64 7, !6, i64 8, !7, i64 12, !6, i64 60, !6, i64 64}
!107 = !{!6, !6, i64 0}
!108 = !{!96, !7, i64 2}
!109 = !{!96, !6, i64 20}
!110 = !{!96, !6, i64 24}
!111 = !{!74, !7, i64 28}
!112 = !{!74, !7, i64 65}
!113 = !{!114, !7, i64 2341}
!114 = !{!"H266RawSliceHeader", !78, i64 0, !7, i64 4, !115, i64 6, !43, i64 1324, !43, i64 1326, !7, i64 1328, !7, i64 1344, !7, i64 1345, !7, i64 1346, !7, i64 1347, !7, i64 1348, !7, i64 1349, !7, i64 1357, !7, i64 1358, !7, i64 1359, !7, i64 1360, !7, i64 1361, !7, i64 1362, !7, i64 1363, !7, i64 1364, !7, i64 1365, !116, i64 1366, !7, i64 2012, !7, i64 2013, !7, i64 2015, !7, i64 2016, !7, i64 2017, !117, i64 2018, !7, i64 2326, !7, i64 2327, !7, i64 2328, !7, i64 2329, !7, i64 2330, !7, i64 2331, !7, i64 2332, !7, i64 2333, !7, i64 2334, !7, i64 2335, !7, i64 2336, !7, i64 2337, !7, i64 2338, !7, i64 2339, !7, i64 2340, !7, i64 2341, !7, i64 2342, !7, i64 2343, !7, i64 2344, !7, i64 2345, !43, i64 2346, !7, i64 2348, !7, i64 2604, !7, i64 2608, !43, i64 18808, !6, i64 18812, !7, i64 18816}
!115 = !{!"H266RawPictureHeader", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !43, i64 6, !7, i64 8, !7, i64 9, !7, i64 25, !7, i64 26, !7, i64 27, !7, i64 28, !7, i64 29, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44, !7, i64 45, !7, i64 46, !7, i64 47, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 52, !7, i64 58, !7, i64 60, !7, i64 66, !116, i64 68, !7, i64 714, !7, i64 715, !7, i64 716, !7, i64 717, !7, i64 718, !7, i64 719, !7, i64 720, !7, i64 721, !7, i64 722, !7, i64 723, !7, i64 724, !7, i64 725, !7, i64 726, !7, i64 727, !7, i64 728, !7, i64 729, !7, i64 730, !7, i64 731, !7, i64 732, !7, i64 733, !7, i64 734, !7, i64 735, !7, i64 736, !7, i64 737, !7, i64 738, !117, i64 740, !7, i64 1048, !7, i64 1049, !7, i64 1050, !7, i64 1051, !7, i64 1052, !7, i64 1053, !7, i64 1054, !7, i64 1055, !7, i64 1056, !7, i64 1057, !7, i64 1058, !7, i64 1059, !7, i64 1060, !7, i64 1061}
!116 = !{!"H266RefPicLists", !7, i64 0, !7, i64 2, !7, i64 4, !7, i64 356, !7, i64 472, !7, i64 530}
!117 = !{!"H266RawPredWeightTable", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 18, !7, i64 33, !7, i64 48, !7, i64 63, !7, i64 94, !7, i64 154, !7, i64 155, !7, i64 170, !7, i64 185, !7, i64 200, !7, i64 215, !7, i64 246, !7, i64 306, !7, i64 307}
!118 = !{!96, !6, i64 44}
!119 = !{!96, !6, i64 48}
!120 = !{!96, !6, i64 52}
!121 = !{!96, !6, i64 56}
!122 = !{!74, !7, i64 30}
!123 = !{!21, !71, i64 22368}
!124 = !{!18, !18, i64 0}
!125 = !{!10, !6, i64 72}
!126 = !{!10, !6, i64 76}
!127 = !{!103, !7, i64 44}
!128 = !{!103, !6, i64 52}
!129 = !{!103, !6, i64 0}
!130 = !{!77, !7, i64 7}
!131 = !{!103, !100, i64 96}
!132 = !{!74, !7, i64 20}
!133 = !{!99, !7, i64 22}
!134 = !{!96, !6, i64 12}
!135 = !{!96, !6, i64 16}
!136 = !{!21, !22, i64 2048}
!137 = !{!68, !68, i64 0}
!138 = !{!103, !6, i64 8}
!139 = !{!103, !6, i64 4}
!140 = !{!96, !17, i64 64}
!141 = distinct !{!141, !142}
!142 = !{!"llvm.loop.mustprogress"}
!143 = !{!103, !7, i64 28}
!144 = !{!100, !100, i64 0}
!145 = !{!99, !6, i64 12}
!146 = !{!99, !6, i64 8}
!147 = !{!99, !6, i64 4}
!148 = !{!99, !6, i64 0}
!149 = !{!150, !6, i64 0}
!150 = !{!"ReconstructedArea", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!151 = !{!150, !6, i64 4}
!152 = !{!150, !6, i64 8}
!153 = !{!150, !6, i64 12}
!154 = !{!103, !6, i64 48}
!155 = !{!21, !14, i64 21240}
!156 = distinct !{null, null}
!157 = !{!103, !6, i64 56}
!158 = !{!103, !6, i64 64}
!159 = !{!21, !14, i64 21224}
!160 = !{!96, !7, i64 0}
!161 = !{!21, !14, i64 21464}
!162 = distinct !{null, null, null}
!163 = !{!96, !6, i64 32}
!164 = !{!96, !6, i64 28}
!165 = !{!23, !30, i64 17000}
!166 = !{!114, !7, i64 1365}
!167 = !{!77, !7, i64 38767}
!168 = !{!77, !7, i64 38768}
!169 = !{!77, !7, i64 38769}
!170 = !{!21, !14, i64 0}
!171 = !{!23, !27, i64 16}
!172 = !{!115, !7, i64 48}
!173 = !{!96, !6, i64 40}
!174 = !{!96, !6, i64 36}
!175 = distinct !{!175, !142, !176}
!176 = !{!"llvm.loop.unswitch.partial.disable"}
!177 = distinct !{!177, !142}
!178 = distinct !{!178, !142, !176}
!179 = distinct !{!179, !142}
!180 = !{!96, !6, i64 4}
!181 = !{!74, !7, i64 34}
!182 = !{!96, !6, i64 8}
!183 = !{!21, !25, i64 2072}
!184 = !{!185, !43, i64 4034}
!185 = !{!"VVCPPS", !186, i64 0, !7, i64 8, !7, i64 11, !43, i64 30, !43, i64 32, !7, i64 34, !7, i64 2034, !43, i64 4034, !43, i64 4036, !43, i64 4038, !43, i64 4040, !6, i64 4044, !43, i64 4048, !43, i64 4050, !43, i64 4052, !43, i64 4054, !17, i64 4056, !64, i64 4064, !64, i64 4072, !64, i64 4080, !64, i64 4088, !43, i64 4096, !43, i64 4098, !43, i64 4100, !43, i64 4102, !43, i64 4104, !7, i64 4106, !7, i64 6106, !7, i64 8106, !7, i64 10106}
!186 = !{!"p1 _ZTS10H266RawPPS", !14, i64 0}
!187 = !{!21, !68, i64 21968}
!188 = !{!21, !68, i64 21976}
!189 = !{!103, !6, i64 32}
!190 = distinct !{!190, !142}
!191 = !{!77, !7, i64 15497}
!192 = !{!103, !7, i64 29}
!193 = !{!77, !7, i64 15498}
!194 = !{!103, !7, i64 42}
!195 = !{!103, !7, i64 30}
!196 = !{!103, !7, i64 31}
!197 = !{!103, !6, i64 36}
!198 = distinct !{!198, !142, !199, !200}
!199 = !{!"llvm.loop.isvectorized", i32 1}
!200 = !{!"llvm.loop.unroll.runtime.disable"}
!201 = distinct !{!201, !142, !200, !199}
!202 = distinct !{!202, !142, !199, !200}
!203 = distinct !{!203, !142, !200, !199}
!204 = distinct !{!204, !142}
!205 = distinct !{!205, !206}
!206 = !{!"llvm.loop.unroll.disable"}
!207 = !{!14, !14, i64 0}
!208 = distinct !{null, null, null}
!209 = distinct !{!209, !142}
!210 = distinct !{!210, !142, !199, !200}
!211 = distinct !{!211, !142}
!212 = distinct !{!212, !142, !200, !199}
!213 = distinct !{!213, !142}
!214 = distinct !{!214, !142, !199, !200}
!215 = distinct !{!215, !142, !200, !199}
!216 = distinct !{null, null, null}
!217 = distinct !{!217, !142, !199, !200}
!218 = distinct !{!218, !142, !200, !199}
!219 = !{!90, !91, i64 0}
!220 = !{!114, !7, i64 1364}
!221 = !{!21, !27, i64 2080}
!222 = !{!115, !7, i64 46}
!223 = !{!115, !7, i64 1049}
!224 = !{!21, !14, i64 21312}
!225 = distinct !{null, null, null}
!226 = !{!21, !14, i64 21232}
!227 = distinct !{!227, !142}
!228 = !{!21, !14, i64 21472}
!229 = distinct !{null, null}
!230 = !{!21, !14, i64 21304}
!231 = distinct !{null, null, null}
!232 = distinct !{!232, !142}
!233 = distinct !{!233, !142}
!234 = distinct !{!234, !142, !176}
!235 = !{!103, !6, i64 16}
!236 = !{!103, !6, i64 12}
!237 = !{!77, !7, i64 38748}
!238 = !{!21, !6, i64 22444}
!239 = !{!74, !43, i64 32}
!240 = distinct !{!240, !142}
!241 = !{!103, !18, i64 776}
!242 = distinct !{!242, !142}
!243 = !{!244, !6, i64 0}
!244 = !{!"Mv", !6, i64 0, !6, i64 4}
!245 = !{!244, !6, i64 4}
end_hunk_0
