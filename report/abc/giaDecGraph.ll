Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE:bb.a
.lr.ph.i.i.i.i.i.i.i.i.i.i352:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i352, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351
  %.08.i.i.i.i.i.i.i.i.i.i353 = phi ptr [ %i.ajv, %.lr.ph.i.i.i.i.i.i.i.i.i.i352 ], [ %i.ajs, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354 = phi ptr [ %i.ajw, %.lr.ph.i.i.i.i.i.i.i.i.i.i352 ], [ %.pre834, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351 ] ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354, i64 32
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !23
  store i32 %i.aju, ptr %.08.i.i.i.i.i.i.i.i.i.i353, align 4, !tbaa !23
  %i.ajv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i353, i64 4 ; 2 uses
  %i.ajw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354) #41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i355 = icmp eq ptr %i.ajw, %i.ax
  br i1 %.not.i.i.i.i.i.i.i.i.i.i355, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i352, !llvm.loop !363

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i352
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajs, i64 %i.ajp
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357: ; preds = %bb.dj, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit, %._crit_edge783
  %.sroa.0451.0 = phi ptr [ null, %._crit_edge783 ], [ %i.ajs, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dj ]
  %.sroa.9.0 = phi ptr [ null, %._crit_edge783 ], [ %i.ajx, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dj ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i356 = phi ptr [ null, %._crit_edge783 ], [ %i.ajv, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dj ]
  %i.ajy = load ptr, ptr %2, align 16, !tbaa !92  ; 3 uses
  %i.ajz = load ptr, ptr %i.m, align 16, !tbaa !127
  store ptr %.sroa.0451.0, ptr %2, align 16, !tbaa !92
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i356, ptr %i.k, align 8, !tbaa !90
  store ptr %.sroa.9.0, ptr %i.m, align 16, !tbaa !127
  %.not.i.i.i.i.i358 = icmp eq ptr %i.ajy, null
  br i1 %.not.i.i.i.i.i358, label %_ZNSt6vectorIiSaIiEED2Ev.exit361, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357
  %i.aka = ptrtoint ptr %i.ajz to i64
  %i.akb = ptrtoint ptr %i.ajy to i64
  %i.akc = sub i64 %i.aka, %i.akb
  call void @_ZdlPvm(ptr noundef nonnull %i.ajy, i64 noundef %i.akc) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit361

_ZNSt6vectorIiSaIiEED2Ev.exit361:                 ; preds = %bb.dl, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357
  %i.akd = load ptr, ptr %i.ay, align 8, !tbaa !298
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.akd)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %.not.i.i.i362 = icmp eq ptr %.sroa.0495.0.lcssa, null
  br i1 %.not.i.i.i362, label %_ZNSt6vectorIiSaIiEED2Ev.exit363, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit361
  %i.ake = sub i64 %.sroa.23.0.lcssa, %i.uc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0495.0.lcssa, i64 noundef %i.ake) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit363

_ZNSt6vectorIiSaIiEED2Ev.exit363:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit361, %bb.dm
  %.not.i.i.i364 = icmp eq ptr %.sroa.0525.0, null
  br i1 %.not.i.i.i364, label %_ZNSt6vectorIfSaIfEED2Ev.exit365, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit363
  %i.akf = sub i64 %.sroa.15533.0, %i.qp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0525.0, i64 noundef %i.akf) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit365

.lr.ph782:                                        ; preds = %bb.dj, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.sroa.0455.0780 = phi ptr [ %i.asc, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit ], [ %i.ajn, %bb.dj ] ; 2 uses
  %i.akg = load i32, ptr %.sroa.0455.0780, align 4, !tbaa !23 ; 5 uses
  %i.akh = load i32, ptr %i.bc, align 4, !tbaa !247
  %i.aki = add nsw i32 %i.akh, 2
  %i.akj = sext i32 %i.aki to i64
  %i.akk = load ptr, ptr %i.bd, align 8, !tbaa !248 ; 8 uses
  %i.akl = load ptr, ptr %i.s, align 8, !tbaa !249 ; 7 uses
  %i.akm = ptrtoint ptr %i.akk to i64             ; 2 uses
  %i.akn = ptrtoint ptr %i.akl to i64             ; 2 uses
  %i.ako = sub i64 %i.akm, %i.akn                 ; 7 uses
  %i.akp = sdiv exact i64 %i.ako, 48              ; 12 uses
  %i.akq = lshr i64 %i.akp, 1
  %i.akr = icmp ult i64 %i.akq, %i.akj
  br i1 %i.akr, label %bb.do, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.do:                                            ; preds = %.lr.ph782
  %i.aks = icmp sgt i64 %i.ako, 0
  br i1 %i.aks, label %bb.dp, label %bb.ea

bb.dp:                                            ; preds = %bb.do
  %i.akt = load ptr, ptr %i.be, align 8, !tbaa !408
  %i.aku = ptrtoint ptr %i.akt to i64
  %i.akv = sub i64 %i.aku, %i.akm
  %i.akw = sdiv exact i64 %i.akv, 48              ; 2 uses
  %i.akx = sub nuw nsw i64 192153584101141162, %i.akp ; 2 uses
  %i.aky = icmp ule i64 %i.akw, %i.akx
  call void @llvm.assume(i1 %i.aky)
  %.not27.i = icmp ult i64 %i.akw, %i.akp
  br i1 %.not27.i, label %bb.dq, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.dp
  %xtraiter1264 = and i64 %i.akp, 3               ; 2 uses
  %lcmp.mod1265.not = icmp eq i64 %xtraiter1264, 0
  br i1 %lcmp.mod1265.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.ale, %.lr.ph.i.i.i.i.prol ], [ %i.akk, %.lr.ph.i.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.ald, %.lr.ph.i.i.i.i.prol ], [ %i.akp, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter1266 = phi i64 [ %prol.iter1266.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 8, !tbaa !251
  %i.akz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  %i.ala = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 0, ptr %i.ala, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akz, i8 0, i64 17, i1 false)
  %i.alb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40
  store i32 -1, ptr %i.alb, align 8, !tbaa !254
  %i.alc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 44
  store i32 -1, ptr %i.alc, align 4, !tbaa !253
  %i.ald = add i64 %.057.i.i.i.i.prol, -1         ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter1266.next = add i64 %prol.iter1266, 1 ; 2 uses
  %prol.iter1266.cmp.not = icmp eq i64 %prol.iter1266.next, %xtraiter1264
  br i1 %prol.iter1266.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !409

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa1217.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ale, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.akk, %.lr.ph.i.i.i.i.preheader ], [ %i.ale, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.akp, %.lr.ph.i.i.i.i.preheader ], [ %i.ald, %.lr.ph.i.i.i.i.prol ]
  %i.alf = icmp ult i64 %i.ako, 192
  br i1 %i.alf, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ama, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i = phi i64 [ %i.alz, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 8, !tbaa !251
  %i.alg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.alh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 0, ptr %i.alh, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alg, i8 0, i64 17, i1 false)
  %i.ali = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.ali, align 8, !tbaa !254
  %i.alj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 -1, ptr %i.alj, align 4, !tbaa !253
  %i.alk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 -1, ptr %i.alk, align 8, !tbaa !251
  %i.all = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  %i.alm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i64 0, ptr %i.alm, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.all, i8 0, i64 17, i1 false)
  %i.aln = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store i32 -1, ptr %i.aln, align 8, !tbaa !254
  %i.alo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i32 -1, ptr %i.alo, align 4, !tbaa !253
  %i.alp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 -1, ptr %i.alp, align 8, !tbaa !251
  %i.alq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  %i.alr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  store i64 0, ptr %i.alr, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alq, i8 0, i64 17, i1 false)
  %i.als = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 136
  store i32 -1, ptr %i.als, align 8, !tbaa !254
  %i.alt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 140
  store i32 -1, ptr %i.alt, align 4, !tbaa !253
  %i.alu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 144
  store i32 -1, ptr %i.alu, align 8, !tbaa !251
  %i.alv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  %i.alw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 176
  store i64 0, ptr %i.alw, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alv, i8 0, i64 17, i1 false)
  %i.alx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 184
  store i32 -1, ptr %i.alx, align 8, !tbaa !254
  %i.aly = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 188
  store i32 -1, ptr %i.aly, align 4, !tbaa !253
  %i.alz = add i64 %.057.i.i.i.i, -4              ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i443.3 = icmp eq i64 %i.alz, 0
  br i1 %.not.i.i.i.i443.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !410

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa1217 = phi ptr [ %.lcssa1217.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ama, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa1217, ptr %i.bd, align 8, !tbaa !248
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.dq:                                            ; preds = %bb.dp
  %i.amb = icmp ult i64 %i.akx, %i.akp
  br i1 %i.amb, label %bb.dr, label %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.dr:                                            ; preds = %bb.dq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #40
  unreachable

_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dq
  %i.amc = shl nuw nsw i64 %i.akp, 1
  %i.amd = call i64 @llvm.umin.i64(i64 %i.amc, i64 192153584101141162) ; 2 uses
  %i.ame = mul nuw nsw i64 %i.amd, 48
  %i.amf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ame) #37 ; 4 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.ako ; 3 uses
  %xtraiter1267 = and i64 %i.akp, 3               ; 2 uses
  %lcmp.mod1268.not = icmp eq i64 %xtraiter1267, 0
  br i1 %lcmp.mod1268.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol

.lr.ph.i.i.i29.i.prol:                            ; preds = %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i29.i.prol
  %.08.i.i.i30.i.prol = phi ptr [ %i.amm, %.lr.ph.i.i.i29.i.prol ], [ %i.amg, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.057.i.i.i31.i.prol = phi i64 [ %i.aml, %.lr.ph.i.i.i29.i.prol ], [ %i.akp, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter1269 = phi i64 [ %prol.iter1269.next, %.lr.ph.i.i.i29.i.prol ], [ 0, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i30.i.prol, align 8, !tbaa !251
  %i.amh = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 8
  %i.ami = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 32
  store i64 0, ptr %i.ami, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amh, i8 0, i64 17, i1 false)
  %i.amj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 40
  store i32 -1, ptr %i.amj, align 8, !tbaa !254
  %i.amk = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 44
  store i32 -1, ptr %i.amk, align 4, !tbaa !253
  %i.aml = add nsw i64 %.057.i.i.i31.i.prol, -1   ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 48 ; 2 uses
  %prol.iter1269.next = add i64 %prol.iter1269, 1 ; 2 uses
  %prol.iter1269.cmp.not = icmp eq i64 %prol.iter1269.next, %xtraiter1267
  br i1 %prol.iter1269.cmp.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol, !llvm.loop !411

.lr.ph.i.i.i29.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i29.i.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i30.i.unr = phi ptr [ %i.amg, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.amm, %.lr.ph.i.i.i29.i.prol ]
  %.057.i.i.i31.i.unr = phi i64 [ %i.akp, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.aml, %.lr.ph.i.i.i29.i.prol ]
  %i.amn = icmp ult i64 %i.ako, 192
  br i1 %i.amn, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i.i.i29.i.prol.loopexit, %.lr.ph.i.i.i29.i
  %.08.i.i.i30.i = phi ptr [ %i.ani, %.lr.ph.i.i.i29.i ], [ %.08.i.i.i30.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i31.i = phi i64 [ %i.anh, %.lr.ph.i.i.i29.i ], [ %.057.i.i.i31.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30.i, align 8, !tbaa !251
  %i.amo = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 8
  %i.amp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 32
  store i64 0, ptr %i.amp, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amo, i8 0, i64 17, i1 false)
  %i.amq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 40
  store i32 -1, ptr %i.amq, align 8, !tbaa !254
  %i.amr = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 44
  store i32 -1, ptr %i.amr, align 4, !tbaa !253
  %i.ams = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 48
  store i32 -1, ptr %i.ams, align 8, !tbaa !251
  %i.amt = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 56
  %i.amu = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 80
  store i64 0, ptr %i.amu, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amt, i8 0, i64 17, i1 false)
  %i.amv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 88
  store i32 -1, ptr %i.amv, align 8, !tbaa !254
  %i.amw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 92
  store i32 -1, ptr %i.amw, align 4, !tbaa !253
  %i.amx = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 96
  store i32 -1, ptr %i.amx, align 8, !tbaa !251
  %i.amy = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 104
  %i.amz = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 128
  store i64 0, ptr %i.amz, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amy, i8 0, i64 17, i1 false)
  %i.ana = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 136
  store i32 -1, ptr %i.ana, align 8, !tbaa !254
  %i.anb = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 140
  store i32 -1, ptr %i.anb, align 4, !tbaa !253
  %i.anc = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 144
  store i32 -1, ptr %i.anc, align 8, !tbaa !251
  %i.and = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 152
  %i.ane = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 176
  store i64 0, ptr %i.ane, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.and, i8 0, i64 17, i1 false)
  %i.anf = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 184
  store i32 -1, ptr %i.anf, align 8, !tbaa !254
  %i.ang = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 188
  store i32 -1, ptr %i.ang, align 4, !tbaa !253
  %i.anh = add nsw i64 %.057.i.i.i31.i, -4        ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 192
  %.not.i.i.i32.i.3 = icmp eq i64 %i.anh, 0
  br i1 %.not.i.i.i32.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i, !llvm.loop !410

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i: ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i.i.i29.i.prol.loopexit
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.akl, %i.akk
  br i1 %.not9.i.i.i.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.aob, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.amf, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.aoa, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.akl, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 7 uses
  %i.anj = load i32, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !251
  store i32 %i.anj, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !251
  %i.ank = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.anl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.anm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !22 ; 3 uses
  %i.ano = load <2 x ptr>, ptr %i.anl, align 8, !tbaa !31
  store <2 x ptr> %i.ano, ptr %i.ank, align 8, !tbaa !31
  %i.anp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.anq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.anr = load i8, ptr %i.anq, align 8, !tbaa !26
  store i8 %i.anr, ptr %i.anp, align 8, !tbaa !26
  %i.ans = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.ant = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !14
  store i64 %i.anu, ptr %i.ans, align 8, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i444 = icmp eq ptr %i.ann, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i444, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.anv = load i32, ptr %i.ann, align 4, !tbaa !23
  %i.anw = add nsw i32 %i.anv, 1
  store i32 %i.anw, ptr %i.ann, align 4, !tbaa !23
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.ds, %.lr.ph.i.i.i.i.i.i
  %i.anx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.any = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.anz = load i64, ptr %i.any, align 8
  store i64 %i.anz, ptr %i.anx, align 8
  %i.aoa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i445 = icmp eq ptr %i.aoa, %i.akk
  br i1 %.not.i.i.i.i.i.i445, label %.lr.ph.i446, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !412

.lr.ph.i446:                                      ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i
  %.05.i = phi ptr [ %i.apf, %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i ], [ %i.akl, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.aod = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i447 = icmp eq ptr %i.aoe, null
  br i1 %.not.i.i.i.i.i447, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i446
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !23 ; 2 uses
  %i.aog = add nsw i32 %i.aof, -1
  store i32 %i.aog, ptr %i.aoe, align 4, !tbaa !23
  %i.aoh = icmp eq i32 %i.aof, 1
  br i1 %i.aoh, label %bb.du, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i

bb.du:                                            ; preds = %bb.dt
  %i.aoi = load ptr, ptr %i.aoc, align 8, !tbaa !8 ; 8 uses
  %i.aoj = icmp eq ptr %i.aoi, null
  br i1 %i.aoj, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoi, i64 56
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i450 = icmp eq ptr %i.aol, null
  br i1 %.not.i.i.i.i.i.i.i.i.i450, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoi, i64 72
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !25
  %i.aoo = ptrtoint ptr %i.aon to i64
  %i.aop = ptrtoint ptr %i.aol to i64
  %i.aoq = sub i64 %i.aoo, %i.aop
  call void @_ZdlPvm(ptr noundef nonnull %i.aol, i64 noundef %i.aoq) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.dw, %bb.dv
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoi, i64 32
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.aos, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoi, i64 48
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !25
  %i.aov = ptrtoint ptr %i.aou to i64
  %i.aow = ptrtoint ptr %i.aos to i64
  %i.aox = sub i64 %i.aov, %i.aow
  call void @_ZdlPvm(ptr noundef nonnull %i.aos, i64 noundef %i.aox) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i:       ; preds = %bb.dx, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i.i = icmp eq ptr %i.aoz, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !25
  %i.apc = ptrtoint ptr %i.apb to i64
  %i.apd = ptrtoint ptr %i.aoz to i64
  %i.ape = sub i64 %i.apc, %i.apd
  call void @_ZdlPvm(ptr noundef nonnull %i.aoz, i64 noundef %i.ape) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i:  ; preds = %bb.dy, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aoi, i64 noundef 80) #35
  br label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i

_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i: ; preds = %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i, %bb.du, %bb.dt, %.lr.ph.i446
  %i.apf = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i448 = icmp eq ptr %i.apf, %i.akk
  br i1 %.not.i448, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit, label %.lr.ph.i446, !llvm.loop !413

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i
  %.not.i35.i = icmp eq ptr %i.akl, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit
  %i.apg = load ptr, ptr %i.be, align 8, !tbaa !408
  %i.aph = ptrtoint ptr %i.apg to i64
  %i.api = sub i64 %i.aph, %i.akn
  call void @_ZdlPvm(ptr noundef nonnull %i.akl, i64 noundef %i.api) #35
  br label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.dz, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit
  store ptr %i.amf, ptr %i.s, align 8, !tbaa !249
  %i.apj = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.ako
  store ptr %i.apj, ptr %i.bd, align 8, !tbaa !248
  %i.apk = getelementptr inbounds nuw [48 x i8], ptr %i.amf, i64 %i.amd
  store ptr %i.apk, ptr %i.be, align 8, !tbaa !408
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.ea:                                            ; preds = %bb.do
  %i.apl = icmp slt i64 %i.ako, 0
  br i1 %i.apl, label %bb.eb, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.eb:                                            ; preds = %bb.ea
  %.idx.i.i = mul nsw i64 %i.akp, 96
  %i.apm = getelementptr inbounds nuw i8, ptr %i.akl, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i367 = icmp eq ptr %i.akk, %i.apm
  br i1 %.not.i.i.i.i367, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef nonnull %i.apm, ptr noundef %i.akk)
  store ptr %i.apm, ptr %i.bd, align 8, !tbaa !248
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.ec, %bb.eb, %bb.ea, %.lr.ph782
  %i.apn = sext i32 %i.akg to i64
  %i.apo = load ptr, ptr %i.s, align 8, !tbaa !249
  %i.app = getelementptr inbounds nuw [48 x i8], ptr %i.apo, i64 %i.apn ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 40 ; 2 uses
  %i.apr = load i32, ptr %i.apq, align 8, !tbaa !254
  %.not.i366 = icmp eq i32 %i.apr, -1
  br i1 %.not.i366, label %bb.ed, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.ed:                                            ; preds = %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i
  %i.aps = getelementptr inbounds nuw i8, ptr %i.app, i64 44 ; 3 uses
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !253
  %.not33.i = icmp eq i32 %i.apt, -1
  br i1 %.not33.i, label %bb.ee, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.ee:                                            ; preds = %bb.ed
  call void @_ZN8DecGraph12DecisionNode25buildWithDecisionVariableEPNS_15DecisionDiagramEibi(ptr noundef nonnull align 8 dereferenceable(48) %i.app, ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.197, i1 zeroext poison, i32 noundef 0)
  %i.apu = load i32, ptr %i.apq, align 8, !tbaa !254 ; 4 uses
  %i.apv = icmp eq i32 %i.apu, -1
  br i1 %i.apv, label %bb.ef, label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  %i.apw = load i32, ptr %i.aps, align 4, !tbaa !253
  %i.apx = icmp eq i32 %i.apw, -1
  br i1 %i.apx, label %bb.eg, label %.thread645

bb.eg:                                            ; preds = %bb.ef
  %.02022.i.i.i418 = load ptr, ptr %i.ay, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i.i419 = icmp eq ptr %.02022.i.i.i418, null
  br i1 %.not23.i.i.i419, label %._crit_edge.thread.i.i.i436, label %.lr.ph.i.i.i420

.lr.ph.i.i.i420:                                  ; preds = %bb.eg, %.lr.ph.i.i.i420
  %.02024.i.i.i421 = phi ptr [ %.020.i.i.i424, %.lr.ph.i.i.i420 ], [ %.02022.i.i.i418, %bb.eg ] ; 4 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %.02024.i.i.i421, i64 32
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !23 ; 2 uses
  %i.aqa = icmp slt i32 %i.akg, %i.apz            ; 2 uses
  %.in.v.i.i.i422 = select i1 %i.aqa, i64 16, i64 24
  %.in.i.i.i423 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i421, i64 %.in.v.i.i.i422
  %.020.i.i.i424 = load ptr, ptr %.in.i.i.i423, align 8, !tbaa !210 ; 2 uses
  %.not.i.i.i425 = icmp eq ptr %.020.i.i.i424, null
  br i1 %.not.i.i.i425, label %._crit_edge.i.i.i426, label %.lr.ph.i.i.i420, !llvm.loop !300

._crit_edge.i.i.i426:                             ; preds = %.lr.ph.i.i.i420
  br i1 %i.aqa, label %._crit_edge.thread.i.i.i436, label %bb.ei

._crit_edge.thread.i.i.i436:                      ; preds = %._crit_edge.i.i.i426, %bb.eg
end_hunk_0
begin_hunk_1_@_ZN8DecGraph15DecisionDiagram42buildWithTheseSupportWithEntropyAndFourierERSt6vectorIiSaIiEERSt3setIiSt4lessIiES2_E:bb.a

select.unfold.i.i223:                             ; preds = %bb.bl, %._crit_edge.thread.i.i.i226
  %.sroa.4.0.i.ph.i.i224 = phi ptr [ %.019.lcssa29.i.i.i227, %._crit_edge.thread.i.i.i226 ], [ %.019.lcssa28.i.i.i217, %bb.bl ] ; 3 uses
  %i.wt = icmp eq ptr %.sroa.4.0.i.ph.i.i224, %i.k
  br i1 %i.wt, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225, label %bb.bm

bb.bm:                                            ; preds = %select.unfold.i.i223
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i224, i64 32
  %i.wv = load i32, ptr %i.a, align 4, !tbaa !23
  %i.ww = load i32, ptr %i.wu, align 4, !tbaa !23
  %i.wx = icmp slt i32 %i.wv, %i.ww
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225: ; preds = %bb.bm, %select.unfold.i.i223
  %i.wy = phi i1 [ %i.wx, %bb.bm ], [ true, %select.unfold.i.i223 ]
  %i.wz = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 32
  %i.xb = load i32, ptr %i.a, align 4, !tbaa !23
  store i32 %i.xb, ptr %i.xa, align 4, !tbaa !23
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.wy, ptr noundef nonnull %i.wz, ptr noundef nonnull %.sroa.4.0.i.ph.i.i224, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #36
  %i.xc = load i64, ptr %i.o, align 8, !tbaa !217
  %i.xd = add i64 %i.xc, 1
  store i64 %i.xd, ptr %i.o, align 8, !tbaa !217
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231:   ; preds = %bb.bl, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225
  %i.xe = call noundef i64 @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.xf = load ptr, ptr %i.af, align 8, !tbaa !298
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.xf)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i.i.i232 = icmp eq ptr %.sroa.0358.0.lcssa, null
  br i1 %.not.i.i.i232, label %_ZNSt6vectorIiSaIiEED2Ev.exit233, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231
  %i.xg = sub i64 %.sroa.23.0.lcssa, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0358.0.lcssa, i64 noundef %i.xg) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit233

_ZNSt6vectorIiSaIiEED2Ev.exit233:                 ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231, %bb.bn
  %.not.i.i.i234 = icmp eq ptr %.sroa.0388.0, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIfSaIfEED2Ev.exit235, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit233
  %i.xh = sub i64 %.sroa.15396.0, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0388.0, i64 noundef %i.xh) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit235

_ZNSt6vectorIfSaIfEED2Ev.exit235:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit233, %bb.bo
  %i.xi = load ptr, ptr %2, align 8, !tbaa !175   ; 3 uses
  %i.xj = load ptr, ptr %i.s, align 8, !tbaa !175 ; 2 uses
  %i.xk = icmp eq ptr %i.xi, %i.xj
  br i1 %i.xk, label %.critedge.thread, label %bb.f, !llvm.loop !441

.lr.ph524:                                        ; preds = %bb.bg, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.sroa.0317.0522 = phi ptr [ %i.aee, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit ], [ %i.vs, %bb.bg ] ; 2 uses
  %i.xl = load i32, ptr %.sroa.0317.0522, align 4, !tbaa !23 ; 5 uses
  %i.xm = load i32, ptr %i.a, align 4, !tbaa !23
  %i.xn = load i32, ptr %i.aj, align 4, !tbaa !247
  %i.xo = add nsw i32 %i.xn, 2
  %i.xp = sext i32 %i.xo to i64
  %i.xq = load ptr, ptr %i.ak, align 8, !tbaa !248 ; 8 uses
  %i.xr = load ptr, ptr %i.d, align 8, !tbaa !249 ; 7 uses
  %i.xs = ptrtoint ptr %i.xq to i64               ; 2 uses
  %i.xt = ptrtoint ptr %i.xr to i64               ; 2 uses
  %i.xu = sub i64 %i.xs, %i.xt                    ; 7 uses
  %i.xv = sdiv exact i64 %i.xu, 48                ; 12 uses
  %i.xw = lshr i64 %i.xv, 1
  %i.xx = icmp ult i64 %i.xw, %i.xp
  br i1 %i.xx, label %bb.bp, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bp:                                            ; preds = %.lr.ph524
  %i.xy = icmp sgt i64 %i.xu, 0
  br i1 %i.xy, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.xz = load ptr, ptr %i.al, align 8, !tbaa !408
  %i.ya = ptrtoint ptr %i.xz to i64
  %i.yb = sub i64 %i.ya, %i.xs
  %i.yc = sdiv exact i64 %i.yb, 48                ; 2 uses
  %i.yd = sub nuw nsw i64 192153584101141162, %i.xv ; 2 uses
  %i.ye = icmp ule i64 %i.yc, %i.yd
  call void @llvm.assume(i1 %i.ye)
  %.not27.i = icmp ult i64 %i.yc, %i.xv
  br i1 %.not27.i, label %bb.br, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bq
  %xtraiter913 = and i64 %i.xv, 3                 ; 2 uses
  %lcmp.mod914.not = icmp eq i64 %xtraiter913, 0
  br i1 %lcmp.mod914.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.yk, %.lr.ph.i.i.i.i.prol ], [ %i.xq, %.lr.ph.i.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.yj, %.lr.ph.i.i.i.i.prol ], [ %i.xv, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 8, !tbaa !251
  %i.yf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 0, ptr %i.yg, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yf, i8 0, i64 17, i1 false)
  %i.yh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40
  store i32 -1, ptr %i.yh, align 8, !tbaa !254
  %i.yi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 44
  store i32 -1, ptr %i.yi, align 4, !tbaa !253
  %i.yj = add i64 %.057.i.i.i.i.prol, -1          ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter913
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !442

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa871.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.yk, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.xq, %.lr.ph.i.i.i.i.preheader ], [ %i.yk, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.xv, %.lr.ph.i.i.i.i.preheader ], [ %i.yj, %.lr.ph.i.i.i.i.prol ]
  %i.yl = icmp ult i64 %i.xu, 192
  br i1 %i.yl, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.zg, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i = phi i64 [ %i.zf, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 8, !tbaa !251
  %i.ym = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 0, ptr %i.yn, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ym, i8 0, i64 17, i1 false)
  %i.yo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.yo, align 8, !tbaa !254
  %i.yp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 -1, ptr %i.yp, align 4, !tbaa !253
  %i.yq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 -1, ptr %i.yq, align 8, !tbaa !251
  %i.yr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  %i.ys = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i64 0, ptr %i.ys, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yr, i8 0, i64 17, i1 false)
  %i.yt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store i32 -1, ptr %i.yt, align 8, !tbaa !254
  %i.yu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i32 -1, ptr %i.yu, align 4, !tbaa !253
  %i.yv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 -1, ptr %i.yv, align 8, !tbaa !251
  %i.yw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  %i.yx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  store i64 0, ptr %i.yx, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yw, i8 0, i64 17, i1 false)
  %i.yy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 136
  store i32 -1, ptr %i.yy, align 8, !tbaa !254
  %i.yz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 140
  store i32 -1, ptr %i.yz, align 4, !tbaa !253
  %i.za = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 144
  store i32 -1, ptr %i.za, align 8, !tbaa !251
  %i.zb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  %i.zc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 176
  store i64 0, ptr %i.zc, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zb, i8 0, i64 17, i1 false)
  %i.zd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 184
  store i32 -1, ptr %i.zd, align 8, !tbaa !254
  %i.ze = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 188
  store i32 -1, ptr %i.ze, align 4, !tbaa !253
  %i.zf = add i64 %.057.i.i.i.i, -4               ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i310.3 = icmp eq i64 %i.zf, 0
  br i1 %.not.i.i.i.i310.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !410

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa871 = phi ptr [ %.lcssa871.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.zg, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa871, ptr %i.ak, align 8, !tbaa !248
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.zh = icmp ult i64 %i.yd, %i.xv
  br i1 %i.zh, label %bb.bs, label %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #40
  unreachable

_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.br
  %i.zi = shl nuw nsw i64 %i.xv, 1
  %i.zj = call i64 @llvm.umin.i64(i64 %i.zi, i64 192153584101141162) ; 2 uses
  %i.zk = mul nuw nsw i64 %i.zj, 48
  %i.zl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zk) #37 ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.xu ; 3 uses
  %xtraiter915 = and i64 %i.xv, 3                 ; 2 uses
  %lcmp.mod916.not = icmp eq i64 %xtraiter915, 0
  br i1 %lcmp.mod916.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol

.lr.ph.i.i.i29.i.prol:                            ; preds = %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i29.i.prol
  %.08.i.i.i30.i.prol = phi ptr [ %i.zs, %.lr.ph.i.i.i29.i.prol ], [ %i.zm, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.057.i.i.i31.i.prol = phi i64 [ %i.zr, %.lr.ph.i.i.i29.i.prol ], [ %i.xv, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter917 = phi i64 [ %prol.iter917.next, %.lr.ph.i.i.i29.i.prol ], [ 0, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i30.i.prol, align 8, !tbaa !251
  %i.zn = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 32
  store i64 0, ptr %i.zo, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zn, i8 0, i64 17, i1 false)
  %i.zp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 40
  store i32 -1, ptr %i.zp, align 8, !tbaa !254
  %i.zq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 44
  store i32 -1, ptr %i.zq, align 4, !tbaa !253
  %i.zr = add nsw i64 %.057.i.i.i31.i.prol, -1    ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 48 ; 2 uses
  %prol.iter917.next = add i64 %prol.iter917, 1   ; 2 uses
  %prol.iter917.cmp.not = icmp eq i64 %prol.iter917.next, %xtraiter915
  br i1 %prol.iter917.cmp.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol, !llvm.loop !443

.lr.ph.i.i.i29.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i29.i.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i30.i.unr = phi ptr [ %i.zm, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.zs, %.lr.ph.i.i.i29.i.prol ]
  %.057.i.i.i31.i.unr = phi i64 [ %i.xv, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.zr, %.lr.ph.i.i.i29.i.prol ]
  %i.zt = icmp ult i64 %i.xu, 192
  br i1 %i.zt, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i.i.i29.i.prol.loopexit, %.lr.ph.i.i.i29.i
  %.08.i.i.i30.i = phi ptr [ %i.aao, %.lr.ph.i.i.i29.i ], [ %.08.i.i.i30.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i31.i = phi i64 [ %i.aan, %.lr.ph.i.i.i29.i ], [ %.057.i.i.i31.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30.i, align 8, !tbaa !251
  %i.zu = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 8
  %i.zv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 32
  store i64 0, ptr %i.zv, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zu, i8 0, i64 17, i1 false)
  %i.zw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 40
  store i32 -1, ptr %i.zw, align 8, !tbaa !254
  %i.zx = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 44
  store i32 -1, ptr %i.zx, align 4, !tbaa !253
  %i.zy = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 48
  store i32 -1, ptr %i.zy, align 8, !tbaa !251
  %i.zz = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 56
  %i.aaa = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 80
  store i64 0, ptr %i.aaa, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zz, i8 0, i64 17, i1 false)
  %i.aab = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 88
  store i32 -1, ptr %i.aab, align 8, !tbaa !254
  %i.aac = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 92
  store i32 -1, ptr %i.aac, align 4, !tbaa !253
  %i.aad = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 96
  store i32 -1, ptr %i.aad, align 8, !tbaa !251
  %i.aae = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 104
  %i.aaf = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 128
  store i64 0, ptr %i.aaf, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aae, i8 0, i64 17, i1 false)
  %i.aag = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 136
  store i32 -1, ptr %i.aag, align 8, !tbaa !254
  %i.aah = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 140
  store i32 -1, ptr %i.aah, align 4, !tbaa !253
  %i.aai = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 144
  store i32 -1, ptr %i.aai, align 8, !tbaa !251
  %i.aaj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 152
  %i.aak = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 176
  store i64 0, ptr %i.aak, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaj, i8 0, i64 17, i1 false)
  %i.aal = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 184
  store i32 -1, ptr %i.aal, align 8, !tbaa !254
  %i.aam = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 188
  store i32 -1, ptr %i.aam, align 4, !tbaa !253
  %i.aan = add nsw i64 %.057.i.i.i31.i, -4        ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 192
  %.not.i.i.i32.i.3 = icmp eq i64 %i.aan, 0
  br i1 %.not.i.i.i32.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i, !llvm.loop !410

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i: ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i.i.i29.i.prol.loopexit
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.xr, %i.xq
  br i1 %.not9.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.abh, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.zl, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.abg, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.xr, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 7 uses
  %i.aap = load i32, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !251
  store i32 %i.aap, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !251
  %i.aaq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.aas = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !22 ; 3 uses
  %i.aau = load <2 x ptr>, ptr %i.aar, align 8, !tbaa !31
  store <2 x ptr> %i.aau, ptr %i.aaq, align 8, !tbaa !31
  %i.aav = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.aax = load i8, ptr %i.aaw, align 8, !tbaa !26
  store i8 %i.aax, ptr %i.aav, align 8, !tbaa !26
  %i.aay = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !14
  store i64 %i.aba, ptr %i.aay, align 8, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i311 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i311, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.abb = load i32, ptr %i.aat, align 4, !tbaa !23
  %i.abc = add nsw i32 %i.abb, 1
  store i32 %i.abc, ptr %i.aat, align 4, !tbaa !23
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bt, %.lr.ph.i.i.i.i.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.abe = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.abf = load i64, ptr %i.abe, align 8
  store i64 %i.abf, ptr %i.abd, align 8
  %i.abg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i312 = icmp eq ptr %i.abg, %i.xq
  br i1 %.not.i.i.i.i.i.i312, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !412

_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef %i.xr, ptr noundef %i.xq)
  %.not.i35.i = icmp eq ptr %i.xr, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %i.abi = load ptr, ptr %i.al, align 8, !tbaa !408
  %i.abj = ptrtoint ptr %i.abi to i64
  %i.abk = sub i64 %i.abj, %i.xt
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef %i.abk) #35
  br label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bu, %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  store ptr %i.zl, ptr %i.d, align 8, !tbaa !249
  %i.abl = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.xu
  store ptr %i.abl, ptr %i.ak, align 8, !tbaa !248
  %i.abm = getelementptr inbounds nuw [48 x i8], ptr %i.zl, i64 %i.zj
  store ptr %i.abm, ptr %i.al, align 8, !tbaa !408
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bv:                                            ; preds = %bb.bp
  %i.abn = icmp slt i64 %i.xu, 0
  br i1 %i.abn, label %bb.bw, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bw:                                            ; preds = %bb.bv
  %.idx.i.i = mul nsw i64 %i.xv, 96
  %i.abo = getelementptr inbounds nuw i8, ptr %i.xr, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i237 = icmp eq ptr %i.xq, %i.abo
  br i1 %.not.i.i.i.i237, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef nonnull %i.abo, ptr noundef %i.xq)
  store ptr %i.abo, ptr %i.ak, align 8, !tbaa !248
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.bx, %bb.bw, %bb.bv, %.lr.ph524
  %i.abp = sext i32 %i.xl to i64
  %i.abq = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.abr = getelementptr inbounds nuw [48 x i8], ptr %i.abq, i64 %i.abp ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 40 ; 2 uses
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !254
  %.not.i236 = icmp eq i32 %i.abt, -1
  br i1 %.not.i236, label %bb.by, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.by:                                            ; preds = %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 44 ; 3 uses
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !253
  %.not33.i = icmp eq i32 %i.abv, -1
  br i1 %.not33.i, label %bb.bz, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8DecGraph12DecisionNode25buildWithDecisionVariableEPNS_15DecisionDiagramEibi(ptr noundef nonnull align 8 dereferenceable(48) %i.abr, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.xm, i1 zeroext poison, i32 noundef 0)
  %i.abw = load i32, ptr %i.abs, align 8, !tbaa !254 ; 4 uses
  %i.abx = icmp eq i32 %i.abw, -1
  br i1 %i.abx, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %i.aby = load i32, ptr %i.abu, align 4, !tbaa !253
  %i.abz = icmp eq i32 %i.aby, -1
  br i1 %i.abz, label %bb.cb, label %.thread

bb.cb:                                            ; preds = %bb.ca
  %.02022.i.i.i285 = load ptr, ptr %i.af, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i.i286 = icmp eq ptr %.02022.i.i.i285, null
  br i1 %.not23.i.i.i286, label %._crit_edge.thread.i.i.i303, label %.lr.ph.i.i.i287

.lr.ph.i.i.i287:                                  ; preds = %bb.cb, %.lr.ph.i.i.i287
  %.02024.i.i.i288 = phi ptr [ %.020.i.i.i291, %.lr.ph.i.i.i287 ], [ %.02022.i.i.i285, %bb.cb ] ; 4 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.02024.i.i.i288, i64 32
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !23 ; 2 uses
  %i.acc = icmp slt i32 %i.xl, %i.acb             ; 2 uses
  %.in.v.i.i.i289 = select i1 %i.acc, i64 16, i64 24
  %.in.i.i.i290 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i288, i64 %.in.v.i.i.i289
  %.020.i.i.i291 = load ptr, ptr %.in.i.i.i290, align 8, !tbaa !210 ; 2 uses
  %.not.i.i.i292 = icmp eq ptr %.020.i.i.i291, null
  br i1 %.not.i.i.i292, label %._crit_edge.i.i.i293, label %.lr.ph.i.i.i287, !llvm.loop !300

._crit_edge.i.i.i293:                             ; preds = %.lr.ph.i.i.i287
  br i1 %i.acc, label %._crit_edge.thread.i.i.i303, label %bb.cd

._crit_edge.thread.i.i.i303:                      ; preds = %._crit_edge.i.i.i293, %bb.cb
  %.019.lcssa29.i.i.i304 = phi ptr [ %.02024.i.i.i288, %._crit_edge.i.i.i293 ], [ %i.ae, %bb.cb ] ; 4 uses
  %i.acd = load ptr, ptr %i.ag, align 8, !tbaa !213
  %i.ace = icmp eq ptr %.019.lcssa29.i.i.i304, %i.acd
  br i1 %i.ace, label %select.unfold.i.i300, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.thread.i.i.i303
  %i.acf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i304) #41
  %.phi.trans.insert.i.i305 = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %.pre.i.i306 = load i32, ptr %.phi.trans.insert.i.i305, align 4, !tbaa !23
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i.i.i293
  %i.acg = phi i32 [ %.pre.i.i306, %bb.cc ], [ %i.acb, %._crit_edge.i.i.i293 ]
  %.019.lcssa28.i.i.i294 = phi ptr [ %.019.lcssa29.i.i.i304, %bb.cc ], [ %.02024.i.i.i288, %._crit_edge.i.i.i293 ]
  %i.ach = icmp slt i32 %i.acg, %i.xl
  br i1 %i.ach, label %select.unfold.i.i300, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

select.unfold.i.i300:                             ; preds = %bb.cd, %._crit_edge.thread.i.i.i303
  %.sroa.4.0.i.ph.i.i301 = phi ptr [ %.019.lcssa29.i.i.i304, %._crit_edge.thread.i.i.i303 ], [ %.019.lcssa28.i.i.i294, %bb.cd ] ; 3 uses
  %i.aci = icmp eq ptr %.sroa.4.0.i.ph.i.i301, %i.ae
  br i1 %i.aci, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i302, label %bb.ce

bb.ce:                                            ; preds = %select.unfold.i.i300
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i301, i64 32
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !23
  %i.acl = icmp slt i32 %i.xl, %i.ack
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i302

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i302: ; preds = %bb.ce, %select.unfold.i.i300
  %i.acm = phi i1 [ %i.acl, %bb.ce ], [ true, %select.unfold.i.i300 ]
  %i.acn = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 32
  store i32 %i.xl, ptr %i.aco, align 4, !tbaa !23
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.acm, ptr noundef nonnull %i.acn, ptr noundef nonnull %.sroa.4.0.i.ph.i.i301, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #36
  br label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split

bb.cf:                                            ; preds = %bb.bz
  %i.acp = and i32 %i.abw, 1
  %.not35.i = icmp eq i32 %i.acp, 0
  br i1 %.not35.i, label %bb.cg, label %.thread

bb.cg:                                            ; preds = %bb.cf
  %i.acq = load i32, ptr %i.am, align 8, !tbaa !250
  %.not36.i = icmp eq i32 %i.abw, %i.acq
  br i1 %.not36.i, label %.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.acr = ashr exact i32 %i.abw, 1               ; 4 uses
  %.02022.i.i.i261 = load ptr, ptr %i.af, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i.i262 = icmp eq ptr %.02022.i.i.i261, null
  br i1 %.not23.i.i.i262, label %._crit_edge.thread.i.i.i279, label %.lr.ph.i.i.i263

.lr.ph.i.i.i263:                                  ; preds = %bb.ch, %.lr.ph.i.i.i263
  %.02024.i.i.i264 = phi ptr [ %.020.i.i.i267, %.lr.ph.i.i.i263 ], [ %.02022.i.i.i261, %bb.ch ] ; 4 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.02024.i.i.i264, i64 32
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !23 ; 2 uses
  %i.acu = icmp slt i32 %i.acr, %i.act            ; 2 uses
  %.in.v.i.i.i265 = select i1 %i.acu, i64 16, i64 24
  %.in.i.i.i266 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i264, i64 %.in.v.i.i.i265
  %.020.i.i.i267 = load ptr, ptr %.in.i.i.i266, align 8, !tbaa !210 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %.020.i.i.i267, null
  br i1 %.not.i.i.i268, label %._crit_edge.i.i.i269, label %.lr.ph.i.i.i263, !llvm.loop !300

._crit_edge.i.i.i269:                             ; preds = %.lr.ph.i.i.i263
  br i1 %i.acu, label %._crit_edge.thread.i.i.i279, label %bb.cj

._crit_edge.thread.i.i.i279:                      ; preds = %._crit_edge.i.i.i269, %bb.ch
  %.019.lcssa29.i.i.i280 = phi ptr [ %.02024.i.i.i264, %._crit_edge.i.i.i269 ], [ %i.ae, %bb.ch ] ; 4 uses
  %i.acv = load ptr, ptr %i.ag, align 8, !tbaa !213
  %i.acw = icmp eq ptr %.019.lcssa29.i.i.i280, %i.acv
  br i1 %i.acw, label %select.unfold.i.i276, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.thread.i.i.i279
end_hunk_1
