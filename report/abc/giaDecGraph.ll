Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE:bb.a
  br i1 %.not.i.i.i.i.i.i336, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i337, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiu, i64 72
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !48
  %i.aja = ptrtoint ptr %i.aiz to i64
  %i.ajb = ptrtoint ptr %i.aix to i64
  %i.ajc = sub i64 %i.aja, %i.ajb
  call void @_ZdlPvm(ptr noundef nonnull %i.aix, i64 noundef %i.ajc) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i337

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i337:           ; preds = %bb.di, %bb.dh
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiu, i64 32
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i338 = icmp eq ptr %i.aje, null
  br i1 %.not.i.i.i1.i.i.i338, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i339, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i337
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aiu, i64 48
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !48
  %i.ajh = ptrtoint ptr %i.ajg to i64
  %i.aji = ptrtoint ptr %i.aje to i64
  %i.ajj = sub i64 %i.ajh, %i.aji
  call void @_ZdlPvm(ptr noundef nonnull %i.aje, i64 noundef %i.ajj) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i339

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i339:          ; preds = %bb.dj, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i337
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i340 = icmp eq ptr %i.ajl, null
  br i1 %.not.i.i.i3.i.i.i340, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i341, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i339
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aiu, i64 24
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !48
  %i.ajo = ptrtoint ptr %i.ajn to i64
  %i.ajp = ptrtoint ptr %i.ajl to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  call void @_ZdlPvm(ptr noundef nonnull %i.ajl, i64 noundef %i.ajq) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i341

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i341:     ; preds = %bb.dk, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i339
  call void @_ZdlPvm(ptr noundef nonnull %i.aiu, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit342

_ZN8DecGraph10TruthTableD2Ev.exit342:             ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit334, %bb.df, %bb.dg, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262:         ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, %_ZN8DecGraph10TruthTableD2Ev.exit342
  %i.ajr = add nuw nsw i64 %.sroa.0466.0773, 1    ; 2 uses
  %.not656 = icmp eq i64 %i.ajr, %i.uy
  br i1 %.not656, label %.preheader.preheader, label %bb.bx

.preheader.preheader:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262
  br i1 %min.iters.check, label %.preheader.preheader1193, label %vector.body

vector.body:                                      ; preds = %.preheader.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %index ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16
  %wide.load = load <4 x float>, ptr %i.ajs, align 4, !tbaa !84
  %wide.load1072 = load <4 x float>, ptr %i.ajt, align 4, !tbaa !84
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %index ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 16 ; 2 uses
  %wide.load1073 = load <4 x float>, ptr %i.aju, align 4, !tbaa !84
  %wide.load1074 = load <4 x float>, ptr %i.ajv, align 4, !tbaa !84
  %i.ajw = fadd <4 x float> %wide.load, %wide.load1073
  %i.ajx = fadd <4 x float> %wide.load1072, %wide.load1074
  store <4 x float> %i.ajw, ptr %i.aju, align 4, !tbaa !84
  store <4 x float> %i.ajx, ptr %i.ajv, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ajy = icmp eq i64 %index.next, %n.vec
  br i1 %i.ajy, label %middle.block, label %vector.body, !llvm.loop !445

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEED2Ev.exit344, label %.preheader.preheader1193

.preheader.preheader1193:                         ; preds = %.preheader.preheader, %middle.block
  %.sroa.0459.0774.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

_ZNSt6vectorIfSaIfEED2Ev.exit344:                 ; preds = %.preheader, %middle.block
  call void @_ZdlPvm(ptr noundef nonnull %i.we, i64 noundef %i.ux) #35
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.0477.0776, i64 4 ; 2 uses
  %.not654 = icmp eq ptr %i.ajz, %i.vi
  br i1 %.not654, label %._crit_edge778, label %.lr.ph777

.preheader:                                       ; preds = %.preheader.preheader1193, %.preheader
  %.sroa.0459.0774 = phi i64 [ %i.akf, %.preheader ], [ %.sroa.0459.0774.ph, %.preheader.preheader1193 ] ; 3 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %.sroa.0459.0774
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !84
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %.sroa.0459.0774 ; 2 uses
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !84
  %i.ake = fadd float %i.akb, %i.akd
  store float %i.ake, ptr %i.akc, align 4, !tbaa !84
  %i.akf = add nuw nsw i64 %.sroa.0459.0774, 1    ; 2 uses
  %.not657 = icmp eq i64 %i.akf, %i.uy
  br i1 %.not657, label %_ZNSt6vectorIfSaIfEED2Ev.exit344, label %.preheader, !llvm.loop !446

bb.dl:                                            ; preds = %._crit_edge831, %_ZNSt6vectorIfSaIfEED2Ev.exit254
  %i.akg = phi ptr [ %i.vi, %_ZNSt6vectorIfSaIfEED2Ev.exit254 ], [ %.pre833, %._crit_edge831 ] ; 2 uses
  %i.akh = phi ptr [ %i.vh, %_ZNSt6vectorIfSaIfEED2Ev.exit254 ], [ %.pre832, %._crit_edge831 ] ; 2 uses
  %.197 = phi i32 [ %i.wb, %_ZNSt6vectorIfSaIfEED2Ev.exit254 ], [ %.096, %._crit_edge831 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i32 0, ptr %i.ax, align 8, !tbaa !134
  store ptr null, ptr %i.ay, align 8, !tbaa !135
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !104
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !136
  store i64 0, ptr %i.bb, align 8, !tbaa !105
  %.not655779 = icmp eq ptr %i.akh, %i.akg
  br i1 %.not655779, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357, label %.lr.ph782

._crit_edge783:                                   ; preds = %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.pre834 = load ptr, ptr %i.az, align 8, !tbaa !104 ; 3 uses
  %.not4.i.i.i345 = icmp eq ptr %.pre834, %i.ax
  br i1 %.not4.i.i.i345, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357, label %.lr.ph.i.i.i346

.lr.ph.i.i.i346:                                  ; preds = %._crit_edge783, %.lr.ph.i.i.i346
  %.06.i.i.i347 = phi i64 [ %i.akj, %.lr.ph.i.i.i346 ], [ 0, %._crit_edge783 ] ; 2 uses
  %.sroa.02.05.i.i.i348 = phi ptr [ %i.aki, %.lr.ph.i.i.i346 ], [ %.pre834, %._crit_edge783 ]
  %i.aki = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i348) #41 ; 2 uses
  %i.akj = add nuw nsw i64 %.06.i.i.i347, 1       ; 3 uses
  %.not.i.i.i349 = icmp eq ptr %i.aki, %i.ax
  br i1 %.not.i.i.i349, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i350, label %.lr.ph.i.i.i346, !llvm.loop !13

_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i350: ; preds = %.lr.ph.i.i.i346
  %i.akk = icmp samesign ugt i64 %.06.i.i.i347, 2305843009213693950
  br i1 %i.akk, label %bb.dm, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351

bb.dm:                                            ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i350
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i350
  %i.akl = shl nuw nsw i64 %i.akj, 2
  %i.akm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akl) #37 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i352

.lr.ph.i.i.i.i.i.i.i.i.i.i352:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i352, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351
  %.08.i.i.i.i.i.i.i.i.i.i353 = phi ptr [ %i.akp, %.lr.ph.i.i.i.i.i.i.i.i.i.i352 ], [ %i.akm, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354 = phi ptr [ %i.akq, %.lr.ph.i.i.i.i.i.i.i.i.i.i352 ], [ %.pre834, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351 ] ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354, i64 32
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !46
  store i32 %i.ako, ptr %.08.i.i.i.i.i.i.i.i.i.i353, align 4, !tbaa !46
  %i.akp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i353, i64 4 ; 2 uses
  %i.akq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354) #41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i355 = icmp eq ptr %i.akq, %i.ax
  br i1 %.not.i.i.i.i.i.i.i.i.i.i355, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i352, !llvm.loop !14

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i352
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.akj
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357: ; preds = %bb.dl, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit, %._crit_edge783
  %.sroa.0451.0 = phi ptr [ null, %._crit_edge783 ], [ %i.akm, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dl ]
  %.sroa.9.0 = phi ptr [ null, %._crit_edge783 ], [ %i.akr, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dl ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i356 = phi ptr [ null, %._crit_edge783 ], [ %i.akp, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dl ]
  %i.aks = load ptr, ptr %2, align 16, !tbaa !67  ; 3 uses
  %i.akt = load ptr, ptr %i.m, align 16, !tbaa !75
  store ptr %.sroa.0451.0, ptr %2, align 16, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i356, ptr %i.k, align 8, !tbaa !66
  store ptr %.sroa.9.0, ptr %i.m, align 16, !tbaa !75
  %.not.i.i.i.i.i358 = icmp eq ptr %i.aks, null
  br i1 %.not.i.i.i.i.i358, label %_ZNSt6vectorIiSaIiEED2Ev.exit361, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357
  %i.aku = ptrtoint ptr %i.akt to i64
  %i.akv = ptrtoint ptr %i.aks to i64
  %i.akw = sub i64 %i.aku, %i.akv
  call void @_ZdlPvm(ptr noundef nonnull %i.aks, i64 noundef %i.akw) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit361

_ZNSt6vectorIiSaIiEED2Ev.exit361:                 ; preds = %bb.dn, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357
  %i.akx = load ptr, ptr %i.ay, align 8, !tbaa !135
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.akx)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %.not.i.i.i362 = icmp eq ptr %.sroa.0495.0.lcssa, null
  br i1 %.not.i.i.i362, label %_ZNSt6vectorIiSaIiEED2Ev.exit363, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit361
  %i.aky = sub i64 %.sroa.23.0.lcssa, %i.uw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0495.0.lcssa, i64 noundef %i.aky) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit363

_ZNSt6vectorIiSaIiEED2Ev.exit363:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit361, %bb.do
  %.not.i.i.i364 = icmp eq ptr %.sroa.0525.0, null
  br i1 %.not.i.i.i364, label %_ZNSt6vectorIfSaIfEED2Ev.exit365, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit363
  %i.akz = sub i64 %.sroa.15533.0, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0525.0, i64 noundef %i.akz) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit365

.lr.ph782:                                        ; preds = %bb.dl, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.sroa.0455.0780 = phi ptr [ %i.asw, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit ], [ %i.akh, %bb.dl ] ; 2 uses
  %i.ala = load i32, ptr %.sroa.0455.0780, align 4, !tbaa !46 ; 5 uses
  %i.alb = load i32, ptr %i.bc, align 4, !tbaa !122
  %i.alc = add nsw i32 %i.alb, 2
  %i.ald = sext i32 %i.alc to i64
  %i.ale = load ptr, ptr %i.bd, align 8, !tbaa !123 ; 8 uses
  %i.alf = load ptr, ptr %i.s, align 8, !tbaa !124 ; 7 uses
  %i.alg = ptrtoint ptr %i.ale to i64             ; 2 uses
  %i.alh = ptrtoint ptr %i.alf to i64             ; 2 uses
  %i.ali = sub i64 %i.alg, %i.alh                 ; 7 uses
  %i.alj = sdiv exact i64 %i.ali, 48              ; 12 uses
  %i.alk = lshr i64 %i.alj, 1
  %i.all = icmp ult i64 %i.alk, %i.ald
  br i1 %i.all, label %bb.dq, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.dq:                                            ; preds = %.lr.ph782
  %i.alm = icmp sgt i64 %i.ali, 0
  br i1 %i.alm, label %bb.dr, label %bb.ec

bb.dr:                                            ; preds = %bb.dq
  %i.aln = load ptr, ptr %i.be, align 8, !tbaa !165
  %i.alo = ptrtoint ptr %i.aln to i64
  %i.alp = sub i64 %i.alo, %i.alg
  %i.alq = sdiv exact i64 %i.alp, 48              ; 2 uses
  %i.alr = sub nuw nsw i64 192153584101141162, %i.alj ; 2 uses
  %i.als = icmp ule i64 %i.alq, %i.alr
  call void @llvm.assume(i1 %i.als)
  %.not27.i = icmp ult i64 %i.alq, %i.alj
  br i1 %.not27.i, label %bb.ds, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.dr
  %xtraiter1266 = and i64 %i.alj, 3               ; 2 uses
  %lcmp.mod1267.not = icmp eq i64 %xtraiter1266, 0
  br i1 %lcmp.mod1267.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.aly, %.lr.ph.i.i.i.i.prol ], [ %i.ale, %.lr.ph.i.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.alx, %.lr.ph.i.i.i.i.prol ], [ %i.alj, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter1268 = phi i64 [ %prol.iter1268.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 8, !tbaa !127
  %i.alt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  %i.alu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 0, ptr %i.alu, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alt, i8 0, i64 17, i1 false)
  %i.alv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40
  store i32 -1, ptr %i.alv, align 8, !tbaa !129
  %i.alw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 44
  store i32 -1, ptr %i.alw, align 4, !tbaa !128
  %i.alx = add i64 %.057.i.i.i.i.prol, -1         ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter1268.next = add i64 %prol.iter1268, 1 ; 2 uses
  %prol.iter1268.cmp.not = icmp eq i64 %prol.iter1268.next, %xtraiter1266
  br i1 %prol.iter1268.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !447

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa1217.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.aly, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.ale, %.lr.ph.i.i.i.i.preheader ], [ %i.aly, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.alj, %.lr.ph.i.i.i.i.preheader ], [ %i.alx, %.lr.ph.i.i.i.i.prol ]
  %i.alz = icmp ult i64 %i.ali, 192
  br i1 %i.alz, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.amu, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i = phi i64 [ %i.amt, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 8, !tbaa !127
  %i.ama = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.amb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 0, ptr %i.amb, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ama, i8 0, i64 17, i1 false)
  %i.amc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.amc, align 8, !tbaa !129
  %i.amd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 -1, ptr %i.amd, align 4, !tbaa !128
  %i.ame = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 -1, ptr %i.ame, align 8, !tbaa !127
  %i.amf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  %i.amg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i64 0, ptr %i.amg, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amf, i8 0, i64 17, i1 false)
  %i.amh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store i32 -1, ptr %i.amh, align 8, !tbaa !129
  %i.ami = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i32 -1, ptr %i.ami, align 4, !tbaa !128
  %i.amj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 -1, ptr %i.amj, align 8, !tbaa !127
  %i.amk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  %i.aml = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  store i64 0, ptr %i.aml, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amk, i8 0, i64 17, i1 false)
  %i.amm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 136
  store i32 -1, ptr %i.amm, align 8, !tbaa !129
  %i.amn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 140
  store i32 -1, ptr %i.amn, align 4, !tbaa !128
  %i.amo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 144
  store i32 -1, ptr %i.amo, align 8, !tbaa !127
  %i.amp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  %i.amq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 176
  store i64 0, ptr %i.amq, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amp, i8 0, i64 17, i1 false)
  %i.amr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 184
  store i32 -1, ptr %i.amr, align 8, !tbaa !129
  %i.ams = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 188
  store i32 -1, ptr %i.ams, align 4, !tbaa !128
  %i.amt = add i64 %.057.i.i.i.i, -4              ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i443.3 = icmp eq i64 %i.amt, 0
  br i1 %.not.i.i.i.i443.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa1217 = phi ptr [ %.lcssa1217.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.amu, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa1217, ptr %i.bd, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.ds:                                            ; preds = %bb.dr
  %i.amv = icmp ult i64 %i.alr, %i.alj
  br i1 %i.amv, label %bb.dt, label %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.dt:                                            ; preds = %bb.ds
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #40
  unreachable

_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ds
  %i.amw = shl nuw nsw i64 %i.alj, 1
  %i.amx = call i64 @llvm.umin.i64(i64 %i.amw, i64 192153584101141162) ; 2 uses
  %i.amy = mul nuw nsw i64 %i.amx, 48
  %i.amz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amy) #37 ; 4 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 %i.ali ; 3 uses
  %xtraiter1269 = and i64 %i.alj, 3               ; 2 uses
  %lcmp.mod1270.not = icmp eq i64 %xtraiter1269, 0
  br i1 %lcmp.mod1270.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol

.lr.ph.i.i.i29.i.prol:                            ; preds = %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i29.i.prol
  %.08.i.i.i30.i.prol = phi ptr [ %i.ang, %.lr.ph.i.i.i29.i.prol ], [ %i.ana, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.057.i.i.i31.i.prol = phi i64 [ %i.anf, %.lr.ph.i.i.i29.i.prol ], [ %i.alj, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter1271 = phi i64 [ %prol.iter1271.next, %.lr.ph.i.i.i29.i.prol ], [ 0, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i30.i.prol, align 8, !tbaa !127
  %i.anb = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 8
  %i.anc = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 32
  store i64 0, ptr %i.anc, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anb, i8 0, i64 17, i1 false)
  %i.and = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 40
  store i32 -1, ptr %i.and, align 8, !tbaa !129
  %i.ane = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 44
  store i32 -1, ptr %i.ane, align 4, !tbaa !128
  %i.anf = add nsw i64 %.057.i.i.i31.i.prol, -1   ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 48 ; 2 uses
  %prol.iter1271.next = add i64 %prol.iter1271, 1 ; 2 uses
  %prol.iter1271.cmp.not = icmp eq i64 %prol.iter1271.next, %xtraiter1269
  br i1 %prol.iter1271.cmp.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol, !llvm.loop !448

.lr.ph.i.i.i29.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i29.i.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i30.i.unr = phi ptr [ %i.ana, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ang, %.lr.ph.i.i.i29.i.prol ]
  %.057.i.i.i31.i.unr = phi i64 [ %i.alj, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.anf, %.lr.ph.i.i.i29.i.prol ]
  %i.anh = icmp ult i64 %i.ali, 192
  br i1 %i.anh, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i.i.i29.i.prol.loopexit, %.lr.ph.i.i.i29.i
  %.08.i.i.i30.i = phi ptr [ %i.aoc, %.lr.ph.i.i.i29.i ], [ %.08.i.i.i30.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i31.i = phi i64 [ %i.aob, %.lr.ph.i.i.i29.i ], [ %.057.i.i.i31.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30.i, align 8, !tbaa !127
  %i.ani = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 8
  %i.anj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 32
  store i64 0, ptr %i.anj, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ani, i8 0, i64 17, i1 false)
  %i.ank = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 40
  store i32 -1, ptr %i.ank, align 8, !tbaa !129
  %i.anl = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 44
  store i32 -1, ptr %i.anl, align 4, !tbaa !128
  %i.anm = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 48
  store i32 -1, ptr %i.anm, align 8, !tbaa !127
  %i.ann = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 56
  %i.ano = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 80
  store i64 0, ptr %i.ano, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ann, i8 0, i64 17, i1 false)
  %i.anp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 88
  store i32 -1, ptr %i.anp, align 8, !tbaa !129
  %i.anq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 92
  store i32 -1, ptr %i.anq, align 4, !tbaa !128
  %i.anr = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 96
  store i32 -1, ptr %i.anr, align 8, !tbaa !127
  %i.ans = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 104
  %i.ant = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 128
  store i64 0, ptr %i.ant, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ans, i8 0, i64 17, i1 false)
  %i.anu = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 136
  store i32 -1, ptr %i.anu, align 8, !tbaa !129
  %i.anv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 140
  store i32 -1, ptr %i.anv, align 4, !tbaa !128
  %i.anw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 144
  store i32 -1, ptr %i.anw, align 8, !tbaa !127
  %i.anx = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 152
  %i.any = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 176
  store i64 0, ptr %i.any, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anx, i8 0, i64 17, i1 false)
  %i.anz = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 184
  store i32 -1, ptr %i.anz, align 8, !tbaa !129
  %i.aoa = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 188
  store i32 -1, ptr %i.aoa, align 4, !tbaa !128
  %i.aob = add nsw i64 %.057.i.i.i31.i, -4        ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 192
  %.not.i.i.i32.i.3 = icmp eq i64 %i.aob, 0
  br i1 %.not.i.i.i32.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i: ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i.i.i29.i.prol.loopexit
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.alf, %i.ale
  br i1 %.not9.i.i.i.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.aov, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.amz, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.aou, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.alf, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 7 uses
  %i.aod = load i32, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !127
  store i32 %i.aod, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !127
  %i.aoe = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.aof = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.aog = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !45 ; 3 uses
  %i.aoi = load <2 x ptr>, ptr %i.aof, align 8, !tbaa !51
  store <2 x ptr> %i.aoi, ptr %i.aoe, align 8, !tbaa !51
  %i.aoj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.aok = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.aol = load i8, ptr %i.aok, align 8, !tbaa !49
  store i8 %i.aol, ptr %i.aoj, align 8, !tbaa !49
  %i.aom = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.aon = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.aoo = load i64, ptr %i.aon, align 8, !tbaa !37
  store i64 %i.aoo, ptr %i.aom, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i.i444 = icmp eq ptr %i.aoh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i444, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aop = load i32, ptr %i.aoh, align 4, !tbaa !46
  %i.aoq = add nsw i32 %i.aop, 1
  store i32 %i.aoq, ptr %i.aoh, align 4, !tbaa !46
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.du, %.lr.ph.i.i.i.i.i.i
  %i.aor = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.aos = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.aot = load i64, ptr %i.aos, align 8
  store i64 %i.aot, ptr %i.aor, align 8
  %i.aou = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i445 = icmp eq ptr %i.aou, %i.ale
  br i1 %.not.i.i.i.i.i.i445, label %.lr.ph.i446, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

.lr.ph.i446:                                      ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i
  %.05.i = phi ptr [ %i.apz, %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i ], [ %i.alf, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.aox = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i447 = icmp eq ptr %i.aoy, null
  br i1 %.not.i.i.i.i.i447, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i446
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !46 ; 2 uses
  %i.apa = add nsw i32 %i.aoz, -1
  store i32 %i.apa, ptr %i.aoy, align 4, !tbaa !46
  %i.apb = icmp eq i32 %i.aoz, 1
  br i1 %i.apb, label %bb.dw, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i

bb.dw:                                            ; preds = %bb.dv
  %i.apc = load ptr, ptr %i.aow, align 8, !tbaa !36 ; 8 uses
  %i.apd = icmp eq ptr %i.apc, null
  br i1 %i.apd, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 56
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i450 = icmp eq ptr %i.apf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i450, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 72
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !48
  %i.api = ptrtoint ptr %i.aph to i64
  %i.apj = ptrtoint ptr %i.apf to i64
  %i.apk = sub i64 %i.api, %i.apj
  call void @_ZdlPvm(ptr noundef nonnull %i.apf, i64 noundef %i.apk) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.dy, %bb.dx
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apc, i64 32
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.apm, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apc, i64 48
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !48
  %i.app = ptrtoint ptr %i.apo to i64
  %i.apq = ptrtoint ptr %i.apm to i64
  %i.apr = sub i64 %i.app, %i.apq
  call void @_ZdlPvm(ptr noundef nonnull %i.apm, i64 noundef %i.apr) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i:       ; preds = %bb.dz, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apc, i64 8
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i.i = icmp eq ptr %i.apt, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apc, i64 24
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !48
  %i.apw = ptrtoint ptr %i.apv to i64
  %i.apx = ptrtoint ptr %i.apt to i64
  %i.apy = sub i64 %i.apw, %i.apx
  call void @_ZdlPvm(ptr noundef nonnull %i.apt, i64 noundef %i.apy) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i:  ; preds = %bb.ea, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.apc, i64 noundef 80) #35
  br label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i

_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i: ; preds = %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i, %bb.dw, %bb.dv, %.lr.ph.i446
  %i.apz = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i448 = icmp eq ptr %i.apz, %i.ale
  br i1 %.not.i448, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit, label %.lr.ph.i446, !llvm.loop !19

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i
  %.not.i35.i = icmp eq ptr %i.alf, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit
  %i.aqa = load ptr, ptr %i.be, align 8, !tbaa !165
  %i.aqb = ptrtoint ptr %i.aqa to i64
  %i.aqc = sub i64 %i.aqb, %i.alh
  call void @_ZdlPvm(ptr noundef nonnull %i.alf, i64 noundef %i.aqc) #35
  br label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.eb, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit
  store ptr %i.amz, ptr %i.s, align 8, !tbaa !124
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.ana, i64 %i.ali
  store ptr %i.aqd, ptr %i.bd, align 8, !tbaa !123
  %i.aqe = getelementptr inbounds nuw [48 x i8], ptr %i.amz, i64 %i.amx
  store ptr %i.aqe, ptr %i.be, align 8, !tbaa !165
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.ec:                                            ; preds = %bb.dq
  %i.aqf = icmp slt i64 %i.ali, 0
  br i1 %i.aqf, label %bb.ed, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.ed:                                            ; preds = %bb.ec
  %.idx.i.i = mul nsw i64 %i.alj, 96
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.alf, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i367 = icmp eq ptr %i.ale, %i.aqg
  br i1 %.not.i.i.i.i367, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef nonnull %i.aqg, ptr noundef %i.ale)
  store ptr %i.aqg, ptr %i.bd, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.ee, %bb.ed, %bb.ec, %.lr.ph782
  %i.aqh = sext i32 %i.ala to i64
  %i.aqi = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.aqj = getelementptr inbounds nuw [48 x i8], ptr %i.aqi, i64 %i.aqh ; 3 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 40 ; 2 uses
  %i.aql = load i32, ptr %i.aqk, align 8, !tbaa !129
  %.not.i366 = icmp eq i32 %i.aql, -1
  br i1 %.not.i366, label %bb.ef, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.ef:                                            ; preds = %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqj, i64 44 ; 3 uses
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !128
  %.not33.i = icmp eq i32 %i.aqn, -1
  br i1 %.not33.i, label %bb.eg, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN8DecGraph12DecisionNode25buildWithDecisionVariableEPNS_15DecisionDiagramEibi(ptr noundef nonnull align 8 dereferenceable(48) %i.aqj, ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.197, i1 zeroext poison, i32 noundef 0)
  %i.aqo = load i32, ptr %i.aqk, align 8, !tbaa !129 ; 4 uses
  %i.aqp = icmp eq i32 %i.aqo, -1
  br i1 %i.aqp, label %bb.eh, label %bb.em

bb.eh:                                            ; preds = %bb.eg
  %i.aqq = load i32, ptr %i.aqm, align 4, !tbaa !128
  %i.aqr = icmp eq i32 %i.aqq, -1
  br i1 %i.aqr, label %bb.ei, label %.thread645

bb.ei:                                            ; preds = %bb.eh
  %.02022.i.i.i418 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i419 = icmp eq ptr %.02022.i.i.i418, null
  br i1 %.not23.i.i.i419, label %._crit_edge.thread.i.i.i436, label %.lr.ph.i.i.i420

.lr.ph.i.i.i420:                                  ; preds = %bb.ei, %.lr.ph.i.i.i420
  %.02024.i.i.i421 = phi ptr [ %.020.i.i.i424, %.lr.ph.i.i.i420 ], [ %.02022.i.i.i418, %bb.ei ] ; 4 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %.02024.i.i.i421, i64 32
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !46 ; 2 uses
  %i.aqu = icmp slt i32 %i.ala, %i.aqt            ; 2 uses
  %.in.v.i.i.i422 = select i1 %i.aqu, i64 16, i64 24
  %.in.i.i.i423 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i421, i64 %.in.v.i.i.i422
  %.020.i.i.i424 = load ptr, ptr %.in.i.i.i423, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i425 = icmp eq ptr %.020.i.i.i424, null
  br i1 %.not.i.i.i425, label %._crit_edge.i.i.i426, label %.lr.ph.i.i.i420, !llvm.loop !7

._crit_edge.i.i.i426:                             ; preds = %.lr.ph.i.i.i420
  br i1 %i.aqu, label %._crit_edge.thread.i.i.i436, label %bb.ek

._crit_edge.thread.i.i.i436:                      ; preds = %._crit_edge.i.i.i426, %bb.ei
  %.019.lcssa29.i.i.i437 = phi ptr [ %.02024.i.i.i421, %._crit_edge.i.i.i426 ], [ %i.ax, %bb.ei ] ; 4 uses
  %i.aqv = load ptr, ptr %i.az, align 8, !tbaa !104
  %i.aqw = icmp eq ptr %.019.lcssa29.i.i.i437, %i.aqv
  br i1 %i.aqw, label %select.unfold.i.i433, label %bb.ej

bb.ej:                                            ; preds = %._crit_edge.thread.i.i.i436
  %i.aqx = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i437) #41
  %.phi.trans.insert.i.i438 = getelementptr inbounds nuw i8, ptr %i.aqx, i64 32
  %.pre.i.i439 = load i32, ptr %.phi.trans.insert.i.i438, align 4, !tbaa !46
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %._crit_edge.i.i.i426
  %i.aqy = phi i32 [ %.pre.i.i439, %bb.ej ], [ %i.aqt, %._crit_edge.i.i.i426 ]
  %.019.lcssa28.i.i.i427 = phi ptr [ %.019.lcssa29.i.i.i437, %bb.ej ], [ %.02024.i.i.i421, %._crit_edge.i.i.i426 ]
  %i.aqz = icmp slt i32 %i.aqy, %i.ala
  br i1 %i.aqz, label %select.unfold.i.i433, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

select.unfold.i.i433:                             ; preds = %bb.ek, %._crit_edge.thread.i.i.i436
  %.sroa.4.0.i.ph.i.i434 = phi ptr [ %.019.lcssa29.i.i.i437, %._crit_edge.thread.i.i.i436 ], [ %.019.lcssa28.i.i.i427, %bb.ek ] ; 3 uses
  %i.ara = icmp eq ptr %.sroa.4.0.i.ph.i.i434, %i.ax
  br i1 %i.ara, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i435, label %bb.el

bb.el:                                            ; preds = %select.unfold.i.i433
  %i.arb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i434, i64 32
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !46
  %i.ard = icmp slt i32 %i.ala, %i.arc
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i435

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i435: ; preds = %bb.el, %select.unfold.i.i433
  %i.are = phi i1 [ %i.ard, %bb.el ], [ true, %select.unfold.i.i433 ]
  %i.arf = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 32
  store i32 %i.ala, ptr %i.arg, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.are, ptr noundef nonnull %i.arf, ptr noundef nonnull %.sroa.4.0.i.ph.i.i434, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #36
  br label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split

bb.em:                                            ; preds = %bb.eg
  %i.arh = and i32 %i.aqo, 1
  %.not35.i = icmp eq i32 %i.arh, 0
  br i1 %.not35.i, label %bb.en, label %.thread645

bb.en:                                            ; preds = %bb.em
  %i.ari = load i32, ptr %i.bf, align 8, !tbaa !125
  %.not36.i = icmp eq i32 %i.aqo, %i.ari
  br i1 %.not36.i, label %.thread645, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.arj = ashr exact i32 %i.aqo, 1               ; 4 uses
  %.02022.i.i.i394 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i395 = icmp eq ptr %.02022.i.i.i394, null
  br i1 %.not23.i.i.i395, label %._crit_edge.thread.i.i.i412, label %.lr.ph.i.i.i396

.lr.ph.i.i.i396:                                  ; preds = %bb.eo, %.lr.ph.i.i.i396
  %.02024.i.i.i397 = phi ptr [ %.020.i.i.i400, %.lr.ph.i.i.i396 ], [ %.02022.i.i.i394, %bb.eo ] ; 4 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %.02024.i.i.i397, i64 32
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !46 ; 2 uses
  %i.arm = icmp slt i32 %i.arj, %i.arl            ; 2 uses
  %.in.v.i.i.i398 = select i1 %i.arm, i64 16, i64 24
  %.in.i.i.i399 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i397, i64 %.in.v.i.i.i398
  %.020.i.i.i400 = load ptr, ptr %.in.i.i.i399, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i401 = icmp eq ptr %.020.i.i.i400, null
  br i1 %.not.i.i.i401, label %._crit_edge.i.i.i402, label %.lr.ph.i.i.i396, !llvm.loop !7

._crit_edge.i.i.i402:                             ; preds = %.lr.ph.i.i.i396
  br i1 %i.arm, label %._crit_edge.thread.i.i.i412, label %bb.eq

._crit_edge.thread.i.i.i412:                      ; preds = %._crit_edge.i.i.i402, %bb.eo
  %.019.lcssa29.i.i.i413 = phi ptr [ %.02024.i.i.i397, %._crit_edge.i.i.i402 ], [ %i.ax, %bb.eo ] ; 4 uses
  %i.arn = load ptr, ptr %i.az, align 8, !tbaa !104
  %i.aro = icmp eq ptr %.019.lcssa29.i.i.i413, %i.arn
  br i1 %i.aro, label %select.unfold.i.i409, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge.thread.i.i.i412
  %i.arp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i413) #41
  %.phi.trans.insert.i.i414 = getelementptr inbounds nuw i8, ptr %i.arp, i64 32
  %.pre.i.i415 = load i32, ptr %.phi.trans.insert.i.i414, align 4, !tbaa !46
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge.i.i.i402
  %i.arq = phi i32 [ %.pre.i.i415, %bb.ep ], [ %i.arl, %._crit_edge.i.i.i402 ]
  %.019.lcssa28.i.i.i403 = phi ptr [ %.019.lcssa29.i.i.i413, %bb.ep ], [ %.02024.i.i.i397, %._crit_edge.i.i.i402 ]
  %i.arr = icmp slt i32 %i.arq, %i.arj
  br i1 %i.arr, label %select.unfold.i.i409, label %.thread645

select.unfold.i.i409:                             ; preds = %bb.eq, %._crit_edge.thread.i.i.i412
  %.sroa.4.0.i.ph.i.i410 = phi ptr [ %.019.lcssa29.i.i.i413, %._crit_edge.thread.i.i.i412 ], [ %.019.lcssa28.i.i.i403, %bb.eq ] ; 3 uses
  %i.ars = icmp eq ptr %.sroa.4.0.i.ph.i.i410, %i.ax
  br i1 %i.ars, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i411, label %bb.er

bb.er:                                            ; preds = %select.unfold.i.i409
  %i.art = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i410, i64 32
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !46
  %i.arv = icmp slt i32 %i.arj, %i.aru
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i411

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i411: ; preds = %bb.er, %select.unfold.i.i409
  %i.arw = phi i1 [ %i.arv, %bb.er ], [ true, %select.unfold.i.i409 ]
  %i.arx = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 32
  store i32 %i.arj, ptr %i.ary, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.arw, ptr noundef nonnull %i.arx, ptr noundef nonnull %.sroa.4.0.i.ph.i.i410, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #36
  %i.arz = load i64, ptr %i.bb, align 8, !tbaa !105
  %i.asa = add i64 %i.arz, 1
  store i64 %i.asa, ptr %i.bb, align 8, !tbaa !105
  br label %.thread645

.thread645:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i411, %bb.eq, %bb.eh, %bb.en, %bb.em
  %i.asb = load i32, ptr %i.aqm, align 4, !tbaa !128 ; 3 uses
  %i.asc = and i32 %i.asb, 1
  %.not37.i = icmp eq i32 %i.asc, 0
  br i1 %.not37.i, label %bb.es, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.es:                                            ; preds = %.thread645
  %i.asd = load i32, ptr %i.bf, align 8, !tbaa !125
  %.not38.i = icmp eq i32 %i.asb, %i.asd
  br i1 %.not38.i, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ase = ashr exact i32 %i.asb, 1               ; 4 uses
  %.02022.i.i.i372 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i373 = icmp eq ptr %.02022.i.i.i372, null
end_hunk_0
begin_hunk_1_@_ZN8DecGraph15DecisionDiagram42buildWithTheseSupportWithEntropyAndFourierERSt6vectorIiSaIiEERSt3setIiSt4lessIiES2_E:bb.a
_ZNSt6vectorIfSaIfEED2Ev.exit204:                 ; preds = %.preheader, %middle.block
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.gj) #35
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.0339.0518, i64 4 ; 2 uses
  %.not438 = icmp eq ptr %i.vl, %i.gu
  br i1 %.not438, label %._crit_edge520, label %.lr.ph519

.preheader:                                       ; preds = %.preheader.preheader863, %.preheader
  %.sroa.0321.0516 = phi i64 [ %i.vr, %.preheader ], [ %.sroa.0321.0516.ph, %.preheader.preheader863 ] ; 3 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.sroa.0321.0516
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !84
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.sroa.0321.0516 ; 2 uses
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !84
  %i.vq = fadd float %i.vn, %i.vp
  store float %i.vq, ptr %i.vo, align 4, !tbaa !84
  %i.vr = add nuw nsw i64 %.sroa.0321.0516, 1     ; 2 uses
  %.not441 = icmp eq i64 %i.vr, %i.gk
  br i1 %.not441, label %_ZNSt6vectorIfSaIfEED2Ev.exit204, label %.preheader, !llvm.loop !479

bb.bg:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit123, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 0, ptr %i.ae, align 8, !tbaa !134
  store ptr null, ptr %i.af, align 8, !tbaa !135
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !104
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !136
  store i64 0, ptr %i.ai, align 8, !tbaa !105
  %i.vs = load ptr, ptr %2, align 8, !tbaa !93    ; 3 uses
  %i.vt = load ptr, ptr %i.s, align 8, !tbaa !93  ; 2 uses
  %.not439521 = icmp eq ptr %i.vs, %i.vt
  br i1 %.not439521, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit, label %.lr.ph524

._crit_edge525:                                   ; preds = %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.pre578 = load ptr, ptr %i.ag, align 8, !tbaa !104 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.pre578, %i.ae
  br i1 %.not4.i.i.i, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split, label %.lr.ph.i.i.i205

.lr.ph.i.i.i205:                                  ; preds = %._crit_edge525, %.lr.ph.i.i.i205
  %.06.i.i.i = phi i64 [ %i.vv, %.lr.ph.i.i.i205 ], [ 0, %._crit_edge525 ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.vu, %.lr.ph.i.i.i205 ], [ %.pre578, %._crit_edge525 ]
  %i.vu = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i) #41 ; 2 uses
  %i.vv = add nuw nsw i64 %.06.i.i.i, 1           ; 3 uses
  %.not.i.i.i206 = icmp eq ptr %i.vu, %i.ae
  br i1 %.not.i.i.i206, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i205, !llvm.loop !13

_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i205
  %i.vw = icmp samesign ugt i64 %.06.i.i.i, 2305843009213693950
  br i1 %i.vw, label %bb.bh, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

bb.bh:                                            ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  %i.vx = shl nuw nsw i64 %i.vv, 2
  %i.vy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vx) #37 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.vy, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre578, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !46
  store i32 %i.wa, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !46
  %i.wb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.wc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i) #41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wc, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.vv
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split: ; preds = %._crit_edge525, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit
  %.sroa.0313.0.ph = phi ptr [ %i.vy, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge525 ]
  %.sroa.9.0.ph = phi ptr [ %i.wd, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge525 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.wb, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge525 ]
  %.pr = load ptr, ptr %2, align 8, !tbaa !67
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit: ; preds = %bb.bg, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split
  %i.we = phi ptr [ %.pr, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ %i.vs, %bb.bg ] ; 3 uses
  %.sroa.0313.0 = phi ptr [ %.sroa.0313.0.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %i.wf = load ptr, ptr %i.an, align 8, !tbaa !75
  store ptr %.sroa.0313.0, ptr %2, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !66
  store ptr %.sroa.9.0, ptr %i.an, align 8, !tbaa !75
  %.not.i.i.i.i.i = icmp eq ptr %i.we, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit
  %i.wg = ptrtoint ptr %i.wf to i64
  %i.wh = ptrtoint ptr %i.we to i64
  %i.wi = sub i64 %i.wg, %i.wh
  call void @_ZdlPvm(ptr noundef nonnull %i.we, i64 noundef %i.wi) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit
  %.02022.i.i.i208 = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i209 = icmp eq ptr %.02022.i.i.i208, null
  br i1 %.not23.i.i.i209, label %._crit_edge.thread.i.i.i226, label %.lr.ph.i.i.i210

.lr.ph.i.i.i210:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.wj = load i32, ptr %i.a, align 4, !tbaa !46  ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i.i210
  %.02024.i.i.i211 = phi ptr [ %.02022.i.i.i208, %.lr.ph.i.i.i210 ], [ %.020.i.i.i214, %bb.bj ] ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.02024.i.i.i211, i64 32
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !46 ; 2 uses
  %i.wm = icmp slt i32 %i.wj, %i.wl               ; 2 uses
  %.in.v.i.i.i212 = select i1 %i.wm, i64 16, i64 24
  %.in.i.i.i213 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i211, i64 %.in.v.i.i.i212
  %.020.i.i.i214 = load ptr, ptr %.in.i.i.i213, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %.020.i.i.i214, null
  br i1 %.not.i.i.i215, label %._crit_edge.i.i.i216, label %bb.bj, !llvm.loop !7

._crit_edge.i.i.i216:                             ; preds = %bb.bj
  br i1 %i.wm, label %._crit_edge.thread.i.i.i226, label %bb.bl

._crit_edge.thread.i.i.i226:                      ; preds = %._crit_edge.i.i.i216, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.019.lcssa29.i.i.i227 = phi ptr [ %.02024.i.i.i211, %._crit_edge.i.i.i216 ], [ %i.k, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  %i.wn = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.wo = icmp eq ptr %.019.lcssa29.i.i.i227, %i.wn
  br i1 %i.wo, label %select.unfold.i.i223, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.thread.i.i.i226
  %i.wp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i227) #41
  %.phi.trans.insert.i.i228 = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  %.pre.i.i229 = load i32, ptr %.phi.trans.insert.i.i228, align 4, !tbaa !46
  %.pre18.i.i230 = load i32, ptr %i.a, align 4, !tbaa !46
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge.i.i.i216
  %i.wq = phi i32 [ %.pre18.i.i230, %bb.bk ], [ %i.wj, %._crit_edge.i.i.i216 ]
  %i.wr = phi i32 [ %.pre.i.i229, %bb.bk ], [ %i.wl, %._crit_edge.i.i.i216 ]
  %.019.lcssa28.i.i.i217 = phi ptr [ %.019.lcssa29.i.i.i227, %bb.bk ], [ %.02024.i.i.i211, %._crit_edge.i.i.i216 ]
  %i.ws = icmp slt i32 %i.wr, %i.wq
  br i1 %i.ws, label %select.unfold.i.i223, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231

select.unfold.i.i223:                             ; preds = %bb.bl, %._crit_edge.thread.i.i.i226
  %.sroa.4.0.i.ph.i.i224 = phi ptr [ %.019.lcssa29.i.i.i227, %._crit_edge.thread.i.i.i226 ], [ %.019.lcssa28.i.i.i217, %bb.bl ] ; 3 uses
  %i.wt = icmp eq ptr %.sroa.4.0.i.ph.i.i224, %i.k
  br i1 %i.wt, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225, label %bb.bm

bb.bm:                                            ; preds = %select.unfold.i.i223
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i224, i64 32
  %i.wv = load i32, ptr %i.a, align 4, !tbaa !46
  %i.ww = load i32, ptr %i.wu, align 4, !tbaa !46
  %i.wx = icmp slt i32 %i.wv, %i.ww
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225: ; preds = %bb.bm, %select.unfold.i.i223
  %i.wy = phi i1 [ %i.wx, %bb.bm ], [ true, %select.unfold.i.i223 ]
  %i.wz = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 32
  %i.xb = load i32, ptr %i.a, align 4, !tbaa !46
  store i32 %i.xb, ptr %i.xa, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.wy, ptr noundef nonnull %i.wz, ptr noundef nonnull %.sroa.4.0.i.ph.i.i224, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #36
  %i.xc = load i64, ptr %i.o, align 8, !tbaa !105
  %i.xd = add i64 %i.xc, 1
  store i64 %i.xd, ptr %i.o, align 8, !tbaa !105
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231:   ; preds = %bb.bl, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225
  %i.xe = call noundef i64 @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.xf = load ptr, ptr %i.af, align 8, !tbaa !135
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
  %i.xi = load ptr, ptr %2, align 8, !tbaa !93    ; 3 uses
  %i.xj = load ptr, ptr %i.s, align 8, !tbaa !93  ; 2 uses
  %i.xk = icmp eq ptr %i.xi, %i.xj
  br i1 %i.xk, label %.critedge.thread, label %bb.f, !llvm.loop !480

.lr.ph524:                                        ; preds = %bb.bg, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.sroa.0317.0522 = phi ptr [ %i.aee, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit ], [ %i.vs, %bb.bg ] ; 2 uses
  %i.xl = load i32, ptr %.sroa.0317.0522, align 4, !tbaa !46 ; 5 uses
  %i.xm = load i32, ptr %i.a, align 4, !tbaa !46
  %i.xn = load i32, ptr %i.aj, align 4, !tbaa !122
  %i.xo = add nsw i32 %i.xn, 2
  %i.xp = sext i32 %i.xo to i64
  %i.xq = load ptr, ptr %i.ak, align 8, !tbaa !123 ; 8 uses
  %i.xr = load ptr, ptr %i.d, align 8, !tbaa !124 ; 7 uses
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
  %i.xz = load ptr, ptr %i.al, align 8, !tbaa !165
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
  store i32 -1, ptr %.08.i.i.i.i.prol, align 8, !tbaa !127
  %i.yf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 0, ptr %i.yg, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yf, i8 0, i64 17, i1 false)
  %i.yh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40
  store i32 -1, ptr %i.yh, align 8, !tbaa !129
  %i.yi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 44
  store i32 -1, ptr %i.yi, align 4, !tbaa !128
  %i.yj = add i64 %.057.i.i.i.i.prol, -1          ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter913
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !481

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa871.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.yk, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.xq, %.lr.ph.i.i.i.i.preheader ], [ %i.yk, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.xv, %.lr.ph.i.i.i.i.preheader ], [ %i.yj, %.lr.ph.i.i.i.i.prol ]
  %i.yl = icmp ult i64 %i.xu, 192
  br i1 %i.yl, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.zg, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i = phi i64 [ %i.zf, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 8, !tbaa !127
  %i.ym = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 0, ptr %i.yn, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ym, i8 0, i64 17, i1 false)
  %i.yo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.yo, align 8, !tbaa !129
  %i.yp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 -1, ptr %i.yp, align 4, !tbaa !128
  %i.yq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 -1, ptr %i.yq, align 8, !tbaa !127
  %i.yr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  %i.ys = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i64 0, ptr %i.ys, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yr, i8 0, i64 17, i1 false)
  %i.yt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store i32 -1, ptr %i.yt, align 8, !tbaa !129
  %i.yu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i32 -1, ptr %i.yu, align 4, !tbaa !128
  %i.yv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 -1, ptr %i.yv, align 8, !tbaa !127
  %i.yw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  %i.yx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  store i64 0, ptr %i.yx, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yw, i8 0, i64 17, i1 false)
  %i.yy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 136
  store i32 -1, ptr %i.yy, align 8, !tbaa !129
  %i.yz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 140
  store i32 -1, ptr %i.yz, align 4, !tbaa !128
  %i.za = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 144
  store i32 -1, ptr %i.za, align 8, !tbaa !127
  %i.zb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  %i.zc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 176
  store i64 0, ptr %i.zc, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zb, i8 0, i64 17, i1 false)
  %i.zd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 184
  store i32 -1, ptr %i.zd, align 8, !tbaa !129
  %i.ze = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 188
  store i32 -1, ptr %i.ze, align 4, !tbaa !128
  %i.zf = add i64 %.057.i.i.i.i, -4               ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i310.3 = icmp eq i64 %i.zf, 0
  br i1 %.not.i.i.i.i310.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa871 = phi ptr [ %.lcssa871.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.zg, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa871, ptr %i.ak, align 8, !tbaa !123
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
  store i32 -1, ptr %.08.i.i.i30.i.prol, align 8, !tbaa !127
  %i.zn = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 32
  store i64 0, ptr %i.zo, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zn, i8 0, i64 17, i1 false)
  %i.zp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 40
  store i32 -1, ptr %i.zp, align 8, !tbaa !129
  %i.zq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 44
  store i32 -1, ptr %i.zq, align 4, !tbaa !128
  %i.zr = add nsw i64 %.057.i.i.i31.i.prol, -1    ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 48 ; 2 uses
  %prol.iter917.next = add i64 %prol.iter917, 1   ; 2 uses
  %prol.iter917.cmp.not = icmp eq i64 %prol.iter917.next, %xtraiter915
  br i1 %prol.iter917.cmp.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol, !llvm.loop !482

.lr.ph.i.i.i29.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i29.i.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i30.i.unr = phi ptr [ %i.zm, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.zs, %.lr.ph.i.i.i29.i.prol ]
  %.057.i.i.i31.i.unr = phi i64 [ %i.xv, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.zr, %.lr.ph.i.i.i29.i.prol ]
  %i.zt = icmp ult i64 %i.xu, 192
  br i1 %i.zt, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i.i.i29.i.prol.loopexit, %.lr.ph.i.i.i29.i
  %.08.i.i.i30.i = phi ptr [ %i.aao, %.lr.ph.i.i.i29.i ], [ %.08.i.i.i30.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i31.i = phi i64 [ %i.aan, %.lr.ph.i.i.i29.i ], [ %.057.i.i.i31.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30.i, align 8, !tbaa !127
  %i.zu = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 8
  %i.zv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 32
  store i64 0, ptr %i.zv, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zu, i8 0, i64 17, i1 false)
  %i.zw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 40
  store i32 -1, ptr %i.zw, align 8, !tbaa !129
  %i.zx = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 44
  store i32 -1, ptr %i.zx, align 4, !tbaa !128
  %i.zy = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 48
  store i32 -1, ptr %i.zy, align 8, !tbaa !127
  %i.zz = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 56
  %i.aaa = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 80
  store i64 0, ptr %i.aaa, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zz, i8 0, i64 17, i1 false)
  %i.aab = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 88
  store i32 -1, ptr %i.aab, align 8, !tbaa !129
  %i.aac = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 92
  store i32 -1, ptr %i.aac, align 4, !tbaa !128
  %i.aad = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 96
  store i32 -1, ptr %i.aad, align 8, !tbaa !127
  %i.aae = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 104
  %i.aaf = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 128
  store i64 0, ptr %i.aaf, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aae, i8 0, i64 17, i1 false)
  %i.aag = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 136
  store i32 -1, ptr %i.aag, align 8, !tbaa !129
  %i.aah = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 140
  store i32 -1, ptr %i.aah, align 4, !tbaa !128
  %i.aai = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 144
  store i32 -1, ptr %i.aai, align 8, !tbaa !127
  %i.aaj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 152
  %i.aak = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 176
  store i64 0, ptr %i.aak, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaj, i8 0, i64 17, i1 false)
  %i.aal = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 184
  store i32 -1, ptr %i.aal, align 8, !tbaa !129
  %i.aam = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 188
  store i32 -1, ptr %i.aam, align 4, !tbaa !128
  %i.aan = add nsw i64 %.057.i.i.i31.i, -4        ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 192
  %.not.i.i.i32.i.3 = icmp eq i64 %i.aan, 0
  br i1 %.not.i.i.i32.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i: ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i.i.i29.i.prol.loopexit
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.xr, %i.xq
  br i1 %.not9.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.abh, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.zl, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.abg, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.xr, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 7 uses
  %i.aap = load i32, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !127
  store i32 %i.aap, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !127
  %i.aaq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.aas = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !45 ; 3 uses
  %i.aau = load <2 x ptr>, ptr %i.aar, align 8, !tbaa !51
  store <2 x ptr> %i.aau, ptr %i.aaq, align 8, !tbaa !51
  %i.aav = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.aax = load i8, ptr %i.aaw, align 8, !tbaa !49
  store i8 %i.aax, ptr %i.aav, align 8, !tbaa !49
  %i.aay = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !37
  store i64 %i.aba, ptr %i.aay, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i.i311 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i311, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.abb = load i32, ptr %i.aat, align 4, !tbaa !46
  %i.abc = add nsw i32 %i.abb, 1
  store i32 %i.abc, ptr %i.aat, align 4, !tbaa !46
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bt, %.lr.ph.i.i.i.i.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.abe = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.abf = load i64, ptr %i.abe, align 8
  store i64 %i.abf, ptr %i.abd, align 8
  %i.abg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i312 = icmp eq ptr %i.abg, %i.xq
  br i1 %.not.i.i.i.i.i.i312, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef %i.xr, ptr noundef %i.xq)
  %.not.i35.i = icmp eq ptr %i.xr, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %i.abi = load ptr, ptr %i.al, align 8, !tbaa !165
  %i.abj = ptrtoint ptr %i.abi to i64
  %i.abk = sub i64 %i.abj, %i.xt
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef %i.abk) #35
  br label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bu, %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  store ptr %i.zl, ptr %i.d, align 8, !tbaa !124
  %i.abl = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.xu
  store ptr %i.abl, ptr %i.ak, align 8, !tbaa !123
  %i.abm = getelementptr inbounds nuw [48 x i8], ptr %i.zl, i64 %i.zj
  store ptr %i.abm, ptr %i.al, align 8, !tbaa !165
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
  store ptr %i.abo, ptr %i.ak, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.bx, %bb.bw, %bb.bv, %.lr.ph524
  %i.abp = sext i32 %i.xl to i64
  %i.abq = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.abr = getelementptr inbounds nuw [48 x i8], ptr %i.abq, i64 %i.abp ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 40 ; 2 uses
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !129
  %.not.i236 = icmp eq i32 %i.abt, -1
  br i1 %.not.i236, label %bb.by, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.by:                                            ; preds = %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 44 ; 3 uses
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !128
  %.not33.i = icmp eq i32 %i.abv, -1
  br i1 %.not33.i, label %bb.bz, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8DecGraph12DecisionNode25buildWithDecisionVariableEPNS_15DecisionDiagramEibi(ptr noundef nonnull align 8 dereferenceable(48) %i.abr, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.xm, i1 zeroext poison, i32 noundef 0)
  %i.abw = load i32, ptr %i.abs, align 8, !tbaa !129 ; 4 uses
  %i.abx = icmp eq i32 %i.abw, -1
  br i1 %i.abx, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %i.aby = load i32, ptr %i.abu, align 4, !tbaa !128
  %i.abz = icmp eq i32 %i.aby, -1
  br i1 %i.abz, label %bb.cb, label %.thread

bb.cb:                                            ; preds = %bb.ca
  %.02022.i.i.i285 = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i286 = icmp eq ptr %.02022.i.i.i285, null
  br i1 %.not23.i.i.i286, label %._crit_edge.thread.i.i.i303, label %.lr.ph.i.i.i287

.lr.ph.i.i.i287:                                  ; preds = %bb.cb, %.lr.ph.i.i.i287
  %.02024.i.i.i288 = phi ptr [ %.020.i.i.i291, %.lr.ph.i.i.i287 ], [ %.02022.i.i.i285, %bb.cb ] ; 4 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.02024.i.i.i288, i64 32
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !46 ; 2 uses
  %i.acc = icmp slt i32 %i.xl, %i.acb             ; 2 uses
  %.in.v.i.i.i289 = select i1 %i.acc, i64 16, i64 24
  %.in.i.i.i290 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i288, i64 %.in.v.i.i.i289
  %.020.i.i.i291 = load ptr, ptr %.in.i.i.i290, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i292 = icmp eq ptr %.020.i.i.i291, null
  br i1 %.not.i.i.i292, label %._crit_edge.i.i.i293, label %.lr.ph.i.i.i287, !llvm.loop !7

._crit_edge.i.i.i293:                             ; preds = %.lr.ph.i.i.i287
  br i1 %i.acc, label %._crit_edge.thread.i.i.i303, label %bb.cd

._crit_edge.thread.i.i.i303:                      ; preds = %._crit_edge.i.i.i293, %bb.cb
  %.019.lcssa29.i.i.i304 = phi ptr [ %.02024.i.i.i288, %._crit_edge.i.i.i293 ], [ %i.ae, %bb.cb ] ; 4 uses
  %i.acd = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ace = icmp eq ptr %.019.lcssa29.i.i.i304, %i.acd
  br i1 %i.ace, label %select.unfold.i.i300, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.thread.i.i.i303
  %i.acf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i304) #41
  %.phi.trans.insert.i.i305 = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %.pre.i.i306 = load i32, ptr %.phi.trans.insert.i.i305, align 4, !tbaa !46
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
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !46
  %i.acl = icmp slt i32 %i.xl, %i.ack
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i302

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i302: ; preds = %bb.ce, %select.unfold.i.i300
  %i.acm = phi i1 [ %i.acl, %bb.ce ], [ true, %select.unfold.i.i300 ]
  %i.acn = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 32
  store i32 %i.xl, ptr %i.aco, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.acm, ptr noundef nonnull %i.acn, ptr noundef nonnull %.sroa.4.0.i.ph.i.i301, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #36
  br label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split

bb.cf:                                            ; preds = %bb.bz
  %i.acp = and i32 %i.abw, 1
  %.not35.i = icmp eq i32 %i.acp, 0
  br i1 %.not35.i, label %bb.cg, label %.thread

bb.cg:                                            ; preds = %bb.cf
  %i.acq = load i32, ptr %i.am, align 8, !tbaa !125
  %.not36.i = icmp eq i32 %i.abw, %i.acq
  br i1 %.not36.i, label %.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.acr = ashr exact i32 %i.abw, 1               ; 4 uses
  %.02022.i.i.i261 = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i262 = icmp eq ptr %.02022.i.i.i261, null
  br i1 %.not23.i.i.i262, label %._crit_edge.thread.i.i.i279, label %.lr.ph.i.i.i263

.lr.ph.i.i.i263:                                  ; preds = %bb.ch, %.lr.ph.i.i.i263
  %.02024.i.i.i264 = phi ptr [ %.020.i.i.i267, %.lr.ph.i.i.i263 ], [ %.02022.i.i.i261, %bb.ch ] ; 4 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.02024.i.i.i264, i64 32
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !46 ; 2 uses
  %i.acu = icmp slt i32 %i.acr, %i.act            ; 2 uses
  %.in.v.i.i.i265 = select i1 %i.acu, i64 16, i64 24
  %.in.i.i.i266 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i264, i64 %.in.v.i.i.i265
  %.020.i.i.i267 = load ptr, ptr %.in.i.i.i266, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %.020.i.i.i267, null
  br i1 %.not.i.i.i268, label %._crit_edge.i.i.i269, label %.lr.ph.i.i.i263, !llvm.loop !7

._crit_edge.i.i.i269:                             ; preds = %.lr.ph.i.i.i263
  br i1 %i.acu, label %._crit_edge.thread.i.i.i279, label %bb.cj

._crit_edge.thread.i.i.i279:                      ; preds = %._crit_edge.i.i.i269, %bb.ch
  %.019.lcssa29.i.i.i280 = phi ptr [ %.02024.i.i.i264, %._crit_edge.i.i.i269 ], [ %i.ae, %bb.ch ] ; 4 uses
  %i.acv = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.acw = icmp eq ptr %.019.lcssa29.i.i.i280, %i.acv
  br i1 %i.acw, label %select.unfold.i.i276, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.thread.i.i.i279
  %i.acx = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i280) #41
  %.phi.trans.insert.i.i281 = getelementptr inbounds nuw i8, ptr %i.acx, i64 32
  %.pre.i.i282 = load i32, ptr %.phi.trans.insert.i.i281, align 4, !tbaa !46
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge.i.i.i269
  %i.acy = phi i32 [ %.pre.i.i282, %bb.ci ], [ %i.act, %._crit_edge.i.i.i269 ]
  %.019.lcssa28.i.i.i270 = phi ptr [ %.019.lcssa29.i.i.i280, %bb.ci ], [ %.02024.i.i.i264, %._crit_edge.i.i.i269 ]
  %i.acz = icmp slt i32 %i.acy, %i.acr
  br i1 %i.acz, label %select.unfold.i.i276, label %.thread

select.unfold.i.i276:                             ; preds = %bb.cj, %._crit_edge.thread.i.i.i279
  %.sroa.4.0.i.ph.i.i277 = phi ptr [ %.019.lcssa29.i.i.i280, %._crit_edge.thread.i.i.i279 ], [ %.019.lcssa28.i.i.i270, %bb.cj ] ; 3 uses
  %i.ada = icmp eq ptr %.sroa.4.0.i.ph.i.i277, %i.ae
  br i1 %i.ada, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i278, label %bb.ck

bb.ck:                                            ; preds = %select.unfold.i.i276
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i277, i64 32
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !46
  %i.add = icmp slt i32 %i.acr, %i.adc
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i278

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i278: ; preds = %bb.ck, %select.unfold.i.i276
  %i.ade = phi i1 [ %i.add, %bb.ck ], [ true, %select.unfold.i.i276 ]
  %i.adf = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 32
  store i32 %i.acr, ptr %i.adg, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ade, ptr noundef nonnull %i.adf, ptr noundef nonnull %.sroa.4.0.i.ph.i.i277, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #36
  %i.adh = load i64, ptr %i.ai, align 8, !tbaa !105
  %i.adi = add i64 %i.adh, 1
  store i64 %i.adi, ptr %i.ai, align 8, !tbaa !105
  br label %.thread

.thread:                                          ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i278, %bb.cj, %bb.ca, %bb.cg, %bb.cf
  %i.adj = load i32, ptr %i.abu, align 4, !tbaa !128 ; 3 uses
  %i.adk = and i32 %i.adj, 1
  %.not37.i = icmp eq i32 %i.adk, 0
  br i1 %.not37.i, label %bb.cl, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.cl:                                            ; preds = %.thread
  %i.adl = load i32, ptr %i.am, align 8, !tbaa !125
  %.not38.i = icmp eq i32 %i.adj, %i.adl
  br i1 %.not38.i, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.adm = ashr exact i32 %i.adj, 1               ; 4 uses
  %.02022.i.i.i239 = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
end_hunk_1
