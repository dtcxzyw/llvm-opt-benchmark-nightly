Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE:bb.a
  br i1 %.not.i.i.i.i.i.i335, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i336, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiv, i64 72
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !48
  %i.ajb = ptrtoint ptr %i.aja to i64
  %i.ajc = ptrtoint ptr %i.aiy to i64
  %i.ajd = sub i64 %i.ajb, %i.ajc
  call void @_ZdlPvm(ptr noundef nonnull %i.aiy, i64 noundef %i.ajd) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i336

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i336:           ; preds = %bb.di, %bb.dh
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i337 = icmp eq ptr %i.ajf, null
  br i1 %.not.i.i.i1.i.i.i337, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i338, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i336
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !48
  %i.aji = ptrtoint ptr %i.ajh to i64
  %i.ajj = ptrtoint ptr %i.ajf to i64
  %i.ajk = sub i64 %i.aji, %i.ajj
  call void @_ZdlPvm(ptr noundef nonnull %i.ajf, i64 noundef %i.ajk) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i338

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i338:          ; preds = %bb.dj, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i336
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i339 = icmp eq ptr %i.ajm, null
  br i1 %.not.i.i.i3.i.i.i339, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i340, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i338
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !48
  %i.ajp = ptrtoint ptr %i.ajo to i64
  %i.ajq = ptrtoint ptr %i.ajm to i64
  %i.ajr = sub i64 %i.ajp, %i.ajq
  call void @_ZdlPvm(ptr noundef nonnull %i.ajm, i64 noundef %i.ajr) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i340

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i340:     ; preds = %bb.dk, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i338
  call void @_ZdlPvm(ptr noundef nonnull %i.aiv, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit341

_ZN8DecGraph10TruthTableD2Ev.exit341:             ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit333, %bb.df, %bb.dg, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit261

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit261:         ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, %_ZN8DecGraph10TruthTableD2Ev.exit341
  %i.ajs = add nuw nsw i64 %.sroa.0465.0772, 1    ; 2 uses
  %.not655 = icmp eq i64 %i.ajs, %i.uy
  br i1 %.not655, label %.preheader.preheader, label %bb.bx

.preheader.preheader:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit261
  br i1 %min.iters.check, label %.preheader.preheader1192, label %vector.body

vector.body:                                      ; preds = %.preheader.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %index ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  %wide.load = load <4 x float>, ptr %i.ajt, align 4, !tbaa !84
  %wide.load1071 = load <4 x float>, ptr %i.aju, align 4, !tbaa !84
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %index ; 3 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 16 ; 2 uses
  %wide.load1072 = load <4 x float>, ptr %i.ajv, align 4, !tbaa !84
  %wide.load1073 = load <4 x float>, ptr %i.ajw, align 4, !tbaa !84
  %i.ajx = fadd <4 x float> %wide.load, %wide.load1072
  %i.ajy = fadd <4 x float> %wide.load1071, %wide.load1073
  store <4 x float> %i.ajx, ptr %i.ajv, align 4, !tbaa !84
  store <4 x float> %i.ajy, ptr %i.ajw, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ajz = icmp eq i64 %index.next, %n.vec
  br i1 %i.ajz, label %middle.block, label %vector.body, !llvm.loop !444

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEED2Ev.exit343, label %.preheader.preheader1192

.preheader.preheader1192:                         ; preds = %.preheader.preheader, %middle.block
  %.sroa.0458.0773.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

_ZNSt6vectorIfSaIfEED2Ev.exit343:                 ; preds = %.preheader, %middle.block
  call void @_ZdlPvm(ptr noundef nonnull %i.wf, i64 noundef %i.ux) #35
  %i.aka = getelementptr inbounds nuw i8, ptr %.sroa.0476.0775, i64 4 ; 2 uses
  %.not653 = icmp eq ptr %i.aka, %i.vi
  br i1 %.not653, label %._crit_edge777, label %.lr.ph776

.preheader:                                       ; preds = %.preheader.preheader1192, %.preheader
  %.sroa.0458.0773 = phi i64 [ %i.akg, %.preheader ], [ %.sroa.0458.0773.ph, %.preheader.preheader1192 ] ; 3 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.sroa.0458.0773
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !84
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %.sroa.0458.0773 ; 2 uses
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !84
  %i.akf = fadd float %i.akc, %i.ake
  store float %i.akf, ptr %i.akd, align 4, !tbaa !84
  %i.akg = add nuw nsw i64 %.sroa.0458.0773, 1    ; 2 uses
  %.not656 = icmp eq i64 %i.akg, %i.uy
  br i1 %.not656, label %_ZNSt6vectorIfSaIfEED2Ev.exit343, label %.preheader, !llvm.loop !445

bb.dl:                                            ; preds = %._crit_edge830, %_ZNSt6vectorIfSaIfEED2Ev.exit253
  %i.akh = phi ptr [ %i.vi, %_ZNSt6vectorIfSaIfEED2Ev.exit253 ], [ %.pre832, %._crit_edge830 ] ; 2 uses
  %i.aki = phi ptr [ %i.vh, %_ZNSt6vectorIfSaIfEED2Ev.exit253 ], [ %.pre831, %._crit_edge830 ] ; 2 uses
  %.197 = phi i32 [ %i.wc, %_ZNSt6vectorIfSaIfEED2Ev.exit253 ], [ %.096, %._crit_edge830 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i32 0, ptr %i.ax, align 8, !tbaa !134
  store ptr null, ptr %i.ay, align 8, !tbaa !135
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !104
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !136
  store i64 0, ptr %i.bb, align 8, !tbaa !105
  %.not654778 = icmp eq ptr %i.aki, %i.akh
  br i1 %.not654778, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356, label %.lr.ph781

._crit_edge782:                                   ; preds = %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.pre833 = load ptr, ptr %i.az, align 8, !tbaa !104 ; 3 uses
  %.not4.i.i.i344 = icmp eq ptr %.pre833, %i.ax
  br i1 %.not4.i.i.i344, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356, label %.lr.ph.i.i.i345

.lr.ph.i.i.i345:                                  ; preds = %._crit_edge782, %.lr.ph.i.i.i345
  %.06.i.i.i346 = phi i64 [ %i.akk, %.lr.ph.i.i.i345 ], [ 0, %._crit_edge782 ] ; 2 uses
  %.sroa.02.05.i.i.i347 = phi ptr [ %i.akj, %.lr.ph.i.i.i345 ], [ %.pre833, %._crit_edge782 ]
  %i.akj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i347) #41 ; 2 uses
  %i.akk = add nuw nsw i64 %.06.i.i.i346, 1       ; 3 uses
  %.not.i.i.i348 = icmp eq ptr %i.akj, %i.ax
  br i1 %.not.i.i.i348, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i349, label %.lr.ph.i.i.i345, !llvm.loop !13

_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i349: ; preds = %.lr.ph.i.i.i345
  %i.akl = icmp samesign ugt i64 %.06.i.i.i346, 2305843009213693950
  br i1 %i.akl, label %bb.dm, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i350

bb.dm:                                            ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i349
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i350: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i349
  %i.akm = shl nuw nsw i64 %i.akk, 2
  %i.akn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akm) #37 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i351

.lr.ph.i.i.i.i.i.i.i.i.i.i351:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i351, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i350
  %.08.i.i.i.i.i.i.i.i.i.i352 = phi ptr [ %i.akq, %.lr.ph.i.i.i.i.i.i.i.i.i.i351 ], [ %i.akn, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i350 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i353 = phi ptr [ %i.akr, %.lr.ph.i.i.i.i.i.i.i.i.i.i351 ], [ %.pre833, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i350 ] ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i353, i64 32
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !46
  store i32 %i.akp, ptr %.08.i.i.i.i.i.i.i.i.i.i352, align 4, !tbaa !46
  %i.akq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i352, i64 4 ; 2 uses
  %i.akr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i353) #41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i354 = icmp eq ptr %i.akr, %i.ax
  br i1 %.not.i.i.i.i.i.i.i.i.i.i354, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i351, !llvm.loop !14

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i351
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.akn, i64 %i.akk
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356: ; preds = %bb.dl, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356.loopexit, %._crit_edge782
  %.sroa.0450.0 = phi ptr [ null, %._crit_edge782 ], [ %i.akn, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356.loopexit ], [ null, %bb.dl ]
  %.sroa.9.0 = phi ptr [ null, %._crit_edge782 ], [ %i.aks, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356.loopexit ], [ null, %bb.dl ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i355 = phi ptr [ null, %._crit_edge782 ], [ %i.akq, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356.loopexit ], [ null, %bb.dl ]
  %i.akt = load ptr, ptr %2, align 16, !tbaa !67  ; 3 uses
  %i.aku = load ptr, ptr %i.m, align 16, !tbaa !75
  store ptr %.sroa.0450.0, ptr %2, align 16, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i355, ptr %i.k, align 8, !tbaa !66
  store ptr %.sroa.9.0, ptr %i.m, align 16, !tbaa !75
  %.not.i.i.i.i.i357 = icmp eq ptr %i.akt, null
  br i1 %.not.i.i.i.i.i357, label %_ZNSt6vectorIiSaIiEED2Ev.exit360, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356
  %i.akv = ptrtoint ptr %i.aku to i64
  %i.akw = ptrtoint ptr %i.akt to i64
  %i.akx = sub i64 %i.akv, %i.akw
  call void @_ZdlPvm(ptr noundef nonnull %i.akt, i64 noundef %i.akx) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit360

_ZNSt6vectorIiSaIiEED2Ev.exit360:                 ; preds = %bb.dn, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit356
  %i.aky = load ptr, ptr %i.ay, align 8, !tbaa !135
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.aky)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %.not.i.i.i361 = icmp eq ptr %.sroa.0494.0.lcssa, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorIiSaIiEED2Ev.exit362, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit360
  %i.akz = sub i64 %.sroa.23.0.lcssa, %i.uw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0494.0.lcssa, i64 noundef %i.akz) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit362

_ZNSt6vectorIiSaIiEED2Ev.exit362:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit360, %bb.do
  %.not.i.i.i363 = icmp eq ptr %.sroa.0524.0, null
  br i1 %.not.i.i.i363, label %_ZNSt6vectorIfSaIfEED2Ev.exit364, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit362
  %i.ala = sub i64 %.sroa.15532.0, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0524.0, i64 noundef %i.ala) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit364

.lr.ph781:                                        ; preds = %bb.dl, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.sroa.0454.0779 = phi ptr [ %i.asx, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit ], [ %i.aki, %bb.dl ] ; 2 uses
  %i.alb = load i32, ptr %.sroa.0454.0779, align 4, !tbaa !46 ; 5 uses
  %i.alc = load i32, ptr %i.bc, align 4, !tbaa !122
  %i.ald = add nsw i32 %i.alc, 2
  %i.ale = sext i32 %i.ald to i64
  %i.alf = load ptr, ptr %i.bd, align 8, !tbaa !123 ; 8 uses
  %i.alg = load ptr, ptr %i.s, align 8, !tbaa !124 ; 7 uses
  %i.alh = ptrtoint ptr %i.alf to i64             ; 2 uses
  %i.ali = ptrtoint ptr %i.alg to i64             ; 2 uses
  %i.alj = sub i64 %i.alh, %i.ali                 ; 7 uses
  %i.alk = sdiv exact i64 %i.alj, 48              ; 12 uses
  %i.all = lshr i64 %i.alk, 1
  %i.alm = icmp ult i64 %i.all, %i.ale
  br i1 %i.alm, label %bb.dq, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.dq:                                            ; preds = %.lr.ph781
  %i.aln = icmp sgt i64 %i.alj, 0
  br i1 %i.aln, label %bb.dr, label %bb.ec

bb.dr:                                            ; preds = %bb.dq
  %i.alo = load ptr, ptr %i.be, align 8, !tbaa !165
  %i.alp = ptrtoint ptr %i.alo to i64
  %i.alq = sub i64 %i.alp, %i.alh
  %i.alr = sdiv exact i64 %i.alq, 48              ; 2 uses
  %i.als = sub nuw nsw i64 192153584101141162, %i.alk ; 2 uses
  %i.alt = icmp ule i64 %i.alr, %i.als
  call void @llvm.assume(i1 %i.alt)
  %.not27.i = icmp ult i64 %i.alr, %i.alk
  br i1 %.not27.i, label %bb.ds, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.dr
  %xtraiter1265 = and i64 %i.alk, 3               ; 2 uses
  %lcmp.mod1266.not = icmp eq i64 %xtraiter1265, 0
  br i1 %lcmp.mod1266.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.alz, %.lr.ph.i.i.i.i.prol ], [ %i.alf, %.lr.ph.i.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.aly, %.lr.ph.i.i.i.i.prol ], [ %i.alk, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter1267 = phi i64 [ %prol.iter1267.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 8, !tbaa !127
  %i.alu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  %i.alv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 0, ptr %i.alv, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alu, i8 0, i64 17, i1 false)
  %i.alw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40
  store i32 -1, ptr %i.alw, align 8, !tbaa !129
  %i.alx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 44
  store i32 -1, ptr %i.alx, align 4, !tbaa !128
  %i.aly = add nsw i64 %.057.i.i.i.i.prol, -1     ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter1267.next = add i64 %prol.iter1267, 1 ; 2 uses
  %prol.iter1267.cmp.not = icmp eq i64 %prol.iter1267.next, %xtraiter1265
  br i1 %prol.iter1267.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !446

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa1216.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.alz, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.alf, %.lr.ph.i.i.i.i.preheader ], [ %i.alz, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.alk, %.lr.ph.i.i.i.i.preheader ], [ %i.aly, %.lr.ph.i.i.i.i.prol ]
  %i.ama = icmp ult i64 %i.alj, 192
  br i1 %i.ama, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.amv, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i = phi i64 [ %i.amu, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 8, !tbaa !127
  %i.amb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.amc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 0, ptr %i.amc, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amb, i8 0, i64 17, i1 false)
  %i.amd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.amd, align 8, !tbaa !129
  %i.ame = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 -1, ptr %i.ame, align 4, !tbaa !128
  %i.amf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 -1, ptr %i.amf, align 8, !tbaa !127
  %i.amg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  %i.amh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i64 0, ptr %i.amh, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amg, i8 0, i64 17, i1 false)
  %i.ami = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store i32 -1, ptr %i.ami, align 8, !tbaa !129
  %i.amj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i32 -1, ptr %i.amj, align 4, !tbaa !128
  %i.amk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 -1, ptr %i.amk, align 8, !tbaa !127
  %i.aml = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  %i.amm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  store i64 0, ptr %i.amm, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aml, i8 0, i64 17, i1 false)
  %i.amn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 136
  store i32 -1, ptr %i.amn, align 8, !tbaa !129
  %i.amo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 140
  store i32 -1, ptr %i.amo, align 4, !tbaa !128
  %i.amp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 144
  store i32 -1, ptr %i.amp, align 8, !tbaa !127
  %i.amq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  %i.amr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 176
  store i64 0, ptr %i.amr, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amq, i8 0, i64 17, i1 false)
  %i.ams = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 184
  store i32 -1, ptr %i.ams, align 8, !tbaa !129
  %i.amt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 188
  store i32 -1, ptr %i.amt, align 4, !tbaa !128
  %i.amu = add nsw i64 %.057.i.i.i.i, -4          ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i442.3 = icmp eq i64 %i.amu, 0
  br i1 %.not.i.i.i.i442.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa1216 = phi ptr [ %.lcssa1216.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.amv, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa1216, ptr %i.bd, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.ds:                                            ; preds = %bb.dr
  %i.amw = icmp ult i64 %i.als, %i.alk
  br i1 %i.amw, label %bb.dt, label %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.dt:                                            ; preds = %bb.ds
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #40
  unreachable

_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ds
  %i.amx = shl nuw nsw i64 %i.alk, 1
  %i.amy = call i64 @llvm.umin.i64(i64 %i.amx, i64 192153584101141162) ; 2 uses
  %i.amz = mul nuw nsw i64 %i.amy, 48
  %i.ana = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amz) #37 ; 4 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 %i.alj ; 3 uses
  %xtraiter1268 = and i64 %i.alk, 3               ; 2 uses
  %lcmp.mod1269.not = icmp eq i64 %xtraiter1268, 0
  br i1 %lcmp.mod1269.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol

.lr.ph.i.i.i29.i.prol:                            ; preds = %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i29.i.prol
  %.08.i.i.i30.i.prol = phi ptr [ %i.anh, %.lr.ph.i.i.i29.i.prol ], [ %i.anb, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.057.i.i.i31.i.prol = phi i64 [ %i.ang, %.lr.ph.i.i.i29.i.prol ], [ %i.alk, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter1270 = phi i64 [ %prol.iter1270.next, %.lr.ph.i.i.i29.i.prol ], [ 0, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i30.i.prol, align 8, !tbaa !127
  %i.anc = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 8
  %i.and = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 32
  store i64 0, ptr %i.and, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anc, i8 0, i64 17, i1 false)
  %i.ane = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 40
  store i32 -1, ptr %i.ane, align 8, !tbaa !129
  %i.anf = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 44
  store i32 -1, ptr %i.anf, align 4, !tbaa !128
  %i.ang = add nsw i64 %.057.i.i.i31.i.prol, -1   ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 48 ; 2 uses
  %prol.iter1270.next = add i64 %prol.iter1270, 1 ; 2 uses
  %prol.iter1270.cmp.not = icmp eq i64 %prol.iter1270.next, %xtraiter1268
  br i1 %prol.iter1270.cmp.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol, !llvm.loop !447

.lr.ph.i.i.i29.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i29.i.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i30.i.unr = phi ptr [ %i.anb, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.anh, %.lr.ph.i.i.i29.i.prol ]
  %.057.i.i.i31.i.unr = phi i64 [ %i.alk, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ang, %.lr.ph.i.i.i29.i.prol ]
  %i.ani = icmp ult i64 %i.alj, 192
  br i1 %i.ani, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i.i.i29.i.prol.loopexit, %.lr.ph.i.i.i29.i
  %.08.i.i.i30.i = phi ptr [ %i.aod, %.lr.ph.i.i.i29.i ], [ %.08.i.i.i30.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i31.i = phi i64 [ %i.aoc, %.lr.ph.i.i.i29.i ], [ %.057.i.i.i31.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30.i, align 8, !tbaa !127
  %i.anj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 8
  %i.ank = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 32
  store i64 0, ptr %i.ank, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anj, i8 0, i64 17, i1 false)
  %i.anl = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 40
  store i32 -1, ptr %i.anl, align 8, !tbaa !129
  %i.anm = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 44
  store i32 -1, ptr %i.anm, align 4, !tbaa !128
  %i.ann = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 48
  store i32 -1, ptr %i.ann, align 8, !tbaa !127
  %i.ano = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 56
  %i.anp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 80
  store i64 0, ptr %i.anp, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ano, i8 0, i64 17, i1 false)
  %i.anq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 88
  store i32 -1, ptr %i.anq, align 8, !tbaa !129
  %i.anr = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 92
  store i32 -1, ptr %i.anr, align 4, !tbaa !128
  %i.ans = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 96
  store i32 -1, ptr %i.ans, align 8, !tbaa !127
  %i.ant = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 104
  %i.anu = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 128
  store i64 0, ptr %i.anu, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ant, i8 0, i64 17, i1 false)
  %i.anv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 136
  store i32 -1, ptr %i.anv, align 8, !tbaa !129
  %i.anw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 140
  store i32 -1, ptr %i.anw, align 4, !tbaa !128
  %i.anx = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 144
  store i32 -1, ptr %i.anx, align 8, !tbaa !127
  %i.any = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 152
  %i.anz = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 176
  store i64 0, ptr %i.anz, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.any, i8 0, i64 17, i1 false)
  %i.aoa = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 184
  store i32 -1, ptr %i.aoa, align 8, !tbaa !129
  %i.aob = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 188
  store i32 -1, ptr %i.aob, align 4, !tbaa !128
  %i.aoc = add nsw i64 %.057.i.i.i31.i, -4        ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 192
  %.not.i.i.i32.i.3 = icmp eq i64 %i.aoc, 0
  br i1 %.not.i.i.i32.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i: ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i.i.i29.i.prol.loopexit
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.alg, %i.alf
  br i1 %.not9.i.i.i.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.aow, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.ana, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.aov, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.alg, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 7 uses
  %i.aoe = load i32, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !127
  store i32 %i.aoe, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !127
  %i.aof = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.aog = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !45 ; 3 uses
  %i.aoj = load <2 x ptr>, ptr %i.aog, align 8, !tbaa !51
  store <2 x ptr> %i.aoj, ptr %i.aof, align 8, !tbaa !51
  %i.aok = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.aol = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.aom = load i8, ptr %i.aol, align 8, !tbaa !49
  store i8 %i.aom, ptr %i.aok, align 8, !tbaa !49
  %i.aon = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.aoo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !37
  store i64 %i.aop, ptr %i.aon, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i.i443 = icmp eq ptr %i.aoi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i443, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aoq = load i32, ptr %i.aoi, align 4, !tbaa !46
  %i.aor = add nsw i32 %i.aoq, 1
  store i32 %i.aor, ptr %i.aoi, align 4, !tbaa !46
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.du, %.lr.ph.i.i.i.i.i.i
  %i.aos = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.aot = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.aou = load i64, ptr %i.aot, align 8
  store i64 %i.aou, ptr %i.aos, align 8
  %i.aov = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i444 = icmp eq ptr %i.aov, %i.alf
  br i1 %.not.i.i.i.i.i.i444, label %.lr.ph.i445, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

.lr.ph.i445:                                      ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i
  %.05.i = phi ptr [ %i.aqa, %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i ], [ %i.alg, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.aoy = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i446 = icmp eq ptr %i.aoz, null
  br i1 %.not.i.i.i.i.i446, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i445
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !46 ; 2 uses
  %i.apb = add nsw i32 %i.apa, -1
  store i32 %i.apb, ptr %i.aoz, align 4, !tbaa !46
  %i.apc = icmp eq i32 %i.apa, 1
  br i1 %i.apc, label %bb.dw, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i

bb.dw:                                            ; preds = %bb.dv
  %i.apd = load ptr, ptr %i.aox, align 8, !tbaa !36 ; 8 uses
  %i.ape = icmp eq ptr %i.apd, null
  br i1 %i.ape, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 56
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i449 = icmp eq ptr %i.apg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i449, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apd, i64 72
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !48
  %i.apj = ptrtoint ptr %i.api to i64
  %i.apk = ptrtoint ptr %i.apg to i64
  %i.apl = sub i64 %i.apj, %i.apk
  call void @_ZdlPvm(ptr noundef nonnull %i.apg, i64 noundef %i.apl) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.dy, %bb.dx
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apd, i64 32
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.apn, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apd, i64 48
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !48
  %i.apq = ptrtoint ptr %i.app to i64
  %i.apr = ptrtoint ptr %i.apn to i64
  %i.aps = sub i64 %i.apq, %i.apr
  call void @_ZdlPvm(ptr noundef nonnull %i.apn, i64 noundef %i.aps) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i:       ; preds = %bb.dz, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i.i = icmp eq ptr %i.apu, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apd, i64 24
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !48
  %i.apx = ptrtoint ptr %i.apw to i64
  %i.apy = ptrtoint ptr %i.apu to i64
  %i.apz = sub i64 %i.apx, %i.apy
  call void @_ZdlPvm(ptr noundef nonnull %i.apu, i64 noundef %i.apz) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i:  ; preds = %bb.ea, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.apd, i64 noundef 80) #35
  br label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i

_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i: ; preds = %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i, %bb.dw, %bb.dv, %.lr.ph.i445
  %i.aqa = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i447 = icmp eq ptr %i.aqa, %i.alf
  br i1 %.not.i447, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit, label %.lr.ph.i445, !llvm.loop !19

_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i
  %.not.i35.i = icmp eq ptr %i.alg, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit
  %i.aqb = load ptr, ptr %i.be, align 8, !tbaa !165
  %i.aqc = ptrtoint ptr %i.aqb to i64
  %i.aqd = sub i64 %i.aqc, %i.ali
  call void @_ZdlPvm(ptr noundef nonnull %i.alg, i64 noundef %i.aqd) #35
  br label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.eb, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit
  store ptr %i.ana, ptr %i.s, align 8, !tbaa !124
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.anb, i64 %i.alj
  store ptr %i.aqe, ptr %i.bd, align 8, !tbaa !123
  %i.aqf = getelementptr inbounds nuw [48 x i8], ptr %i.ana, i64 %i.amy
  store ptr %i.aqf, ptr %i.be, align 8, !tbaa !165
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.ec:                                            ; preds = %bb.dq
  %i.aqg = icmp slt i64 %i.alj, 0
  br i1 %i.aqg, label %bb.ed, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.ed:                                            ; preds = %bb.ec
  %.idx.i.i = mul nsw i64 %i.alk, 96
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.alg, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i366 = icmp eq ptr %i.alf, %i.aqh
  br i1 %.not.i.i.i.i366, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef nonnull %i.aqh, ptr noundef %i.alf)
  store ptr %i.aqh, ptr %i.bd, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.ee, %bb.ed, %bb.ec, %.lr.ph781
  %i.aqi = sext i32 %i.alb to i64
  %i.aqj = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.aqk = getelementptr inbounds nuw [48 x i8], ptr %i.aqj, i64 %i.aqi ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 40 ; 2 uses
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !129
  %.not.i365 = icmp eq i32 %i.aqm, -1
  br i1 %.not.i365, label %bb.ef, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.ef:                                            ; preds = %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 44 ; 3 uses
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !128
  %.not33.i = icmp eq i32 %i.aqo, -1
  br i1 %.not33.i, label %bb.eg, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN8DecGraph12DecisionNode25buildWithDecisionVariableEPNS_15DecisionDiagramEibi(ptr noundef nonnull align 8 dereferenceable(48) %i.aqk, ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.197, i1 zeroext poison, i32 noundef 0)
  %i.aqp = load i32, ptr %i.aql, align 8, !tbaa !129 ; 4 uses
  %i.aqq = icmp eq i32 %i.aqp, -1
  br i1 %i.aqq, label %bb.eh, label %bb.em

bb.eh:                                            ; preds = %bb.eg
  %i.aqr = load i32, ptr %i.aqn, align 4, !tbaa !128
  %i.aqs = icmp eq i32 %i.aqr, -1
  br i1 %i.aqs, label %bb.ei, label %.thread644

bb.ei:                                            ; preds = %bb.eh
  %.02022.i.i.i417 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i418 = icmp eq ptr %.02022.i.i.i417, null
  br i1 %.not23.i.i.i418, label %._crit_edge.thread.i.i.i435, label %.lr.ph.i.i.i419

.lr.ph.i.i.i419:                                  ; preds = %bb.ei, %.lr.ph.i.i.i419
  %.02024.i.i.i420 = phi ptr [ %.020.i.i.i423, %.lr.ph.i.i.i419 ], [ %.02022.i.i.i417, %bb.ei ] ; 4 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %.02024.i.i.i420, i64 32
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !46 ; 2 uses
  %i.aqv = icmp slt i32 %i.alb, %i.aqu            ; 2 uses
  %.in.v.i.i.i421 = select i1 %i.aqv, i64 16, i64 24
  %.in.i.i.i422 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i420, i64 %.in.v.i.i.i421
  %.020.i.i.i423 = load ptr, ptr %.in.i.i.i422, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i424 = icmp eq ptr %.020.i.i.i423, null
  br i1 %.not.i.i.i424, label %._crit_edge.i.i.i425, label %.lr.ph.i.i.i419, !llvm.loop !7

._crit_edge.i.i.i425:                             ; preds = %.lr.ph.i.i.i419
  br i1 %i.aqv, label %._crit_edge.thread.i.i.i435, label %bb.ek

._crit_edge.thread.i.i.i435:                      ; preds = %._crit_edge.i.i.i425, %bb.ei
  %.019.lcssa29.i.i.i436 = phi ptr [ %.02024.i.i.i420, %._crit_edge.i.i.i425 ], [ %i.ax, %bb.ei ] ; 4 uses
  %i.aqw = load ptr, ptr %i.az, align 8, !tbaa !104
  %i.aqx = icmp eq ptr %.019.lcssa29.i.i.i436, %i.aqw
  br i1 %i.aqx, label %select.unfold.i.i432, label %bb.ej

bb.ej:                                            ; preds = %._crit_edge.thread.i.i.i435
  %i.aqy = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i436) #41
  %.phi.trans.insert.i.i437 = getelementptr inbounds nuw i8, ptr %i.aqy, i64 32
  %.pre.i.i438 = load i32, ptr %.phi.trans.insert.i.i437, align 4, !tbaa !46
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %._crit_edge.i.i.i425
  %i.aqz = phi i32 [ %.pre.i.i438, %bb.ej ], [ %i.aqu, %._crit_edge.i.i.i425 ]
  %.019.lcssa28.i.i.i426 = phi ptr [ %.019.lcssa29.i.i.i436, %bb.ej ], [ %.02024.i.i.i420, %._crit_edge.i.i.i425 ]
  %i.ara = icmp slt i32 %i.aqz, %i.alb
  br i1 %i.ara, label %select.unfold.i.i432, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

select.unfold.i.i432:                             ; preds = %bb.ek, %._crit_edge.thread.i.i.i435
  %.sroa.4.0.i.ph.i.i433 = phi ptr [ %.019.lcssa29.i.i.i436, %._crit_edge.thread.i.i.i435 ], [ %.019.lcssa28.i.i.i426, %bb.ek ] ; 3 uses
  %i.arb = icmp eq ptr %.sroa.4.0.i.ph.i.i433, %i.ax
  br i1 %i.arb, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i434, label %bb.el

bb.el:                                            ; preds = %select.unfold.i.i432
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i433, i64 32
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !46
  %i.are = icmp slt i32 %i.alb, %i.ard
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i434

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i434: ; preds = %bb.el, %select.unfold.i.i432
  %i.arf = phi i1 [ %i.are, %bb.el ], [ true, %select.unfold.i.i432 ]
  %i.arg = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 32
  store i32 %i.alb, ptr %i.arh, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.arf, ptr noundef nonnull %i.arg, ptr noundef nonnull %.sroa.4.0.i.ph.i.i433, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #36
  br label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split

bb.em:                                            ; preds = %bb.eg
  %i.ari = and i32 %i.aqp, 1
  %.not35.i = icmp eq i32 %i.ari, 0
  br i1 %.not35.i, label %bb.en, label %.thread644

bb.en:                                            ; preds = %bb.em
  %i.arj = load i32, ptr %i.bf, align 8, !tbaa !125
  %.not36.i = icmp eq i32 %i.aqp, %i.arj
  br i1 %.not36.i, label %.thread644, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ark = ashr exact i32 %i.aqp, 1               ; 4 uses
  %.02022.i.i.i393 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i394 = icmp eq ptr %.02022.i.i.i393, null
  br i1 %.not23.i.i.i394, label %._crit_edge.thread.i.i.i411, label %.lr.ph.i.i.i395

.lr.ph.i.i.i395:                                  ; preds = %bb.eo, %.lr.ph.i.i.i395
  %.02024.i.i.i396 = phi ptr [ %.020.i.i.i399, %.lr.ph.i.i.i395 ], [ %.02022.i.i.i393, %bb.eo ] ; 4 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %.02024.i.i.i396, i64 32
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !46 ; 2 uses
  %i.arn = icmp slt i32 %i.ark, %i.arm            ; 2 uses
  %.in.v.i.i.i397 = select i1 %i.arn, i64 16, i64 24
  %.in.i.i.i398 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i396, i64 %.in.v.i.i.i397
  %.020.i.i.i399 = load ptr, ptr %.in.i.i.i398, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i400 = icmp eq ptr %.020.i.i.i399, null
  br i1 %.not.i.i.i400, label %._crit_edge.i.i.i401, label %.lr.ph.i.i.i395, !llvm.loop !7

._crit_edge.i.i.i401:                             ; preds = %.lr.ph.i.i.i395
  br i1 %i.arn, label %._crit_edge.thread.i.i.i411, label %bb.eq

._crit_edge.thread.i.i.i411:                      ; preds = %._crit_edge.i.i.i401, %bb.eo
  %.019.lcssa29.i.i.i412 = phi ptr [ %.02024.i.i.i396, %._crit_edge.i.i.i401 ], [ %i.ax, %bb.eo ] ; 4 uses
  %i.aro = load ptr, ptr %i.az, align 8, !tbaa !104
  %i.arp = icmp eq ptr %.019.lcssa29.i.i.i412, %i.aro
  br i1 %i.arp, label %select.unfold.i.i408, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge.thread.i.i.i411
  %i.arq = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i412) #41
  %.phi.trans.insert.i.i413 = getelementptr inbounds nuw i8, ptr %i.arq, i64 32
  %.pre.i.i414 = load i32, ptr %.phi.trans.insert.i.i413, align 4, !tbaa !46
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge.i.i.i401
  %i.arr = phi i32 [ %.pre.i.i414, %bb.ep ], [ %i.arm, %._crit_edge.i.i.i401 ]
  %.019.lcssa28.i.i.i402 = phi ptr [ %.019.lcssa29.i.i.i412, %bb.ep ], [ %.02024.i.i.i396, %._crit_edge.i.i.i401 ]
  %i.ars = icmp slt i32 %i.arr, %i.ark
  br i1 %i.ars, label %select.unfold.i.i408, label %.thread644

select.unfold.i.i408:                             ; preds = %bb.eq, %._crit_edge.thread.i.i.i411
  %.sroa.4.0.i.ph.i.i409 = phi ptr [ %.019.lcssa29.i.i.i412, %._crit_edge.thread.i.i.i411 ], [ %.019.lcssa28.i.i.i402, %bb.eq ] ; 3 uses
  %i.art = icmp eq ptr %.sroa.4.0.i.ph.i.i409, %i.ax
  br i1 %i.art, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i410, label %bb.er

bb.er:                                            ; preds = %select.unfold.i.i408
  %i.aru = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i409, i64 32
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !46
  %i.arw = icmp slt i32 %i.ark, %i.arv
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i410

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i410: ; preds = %bb.er, %select.unfold.i.i408
  %i.arx = phi i1 [ %i.arw, %bb.er ], [ true, %select.unfold.i.i408 ]
  %i.ary = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 32
  store i32 %i.ark, ptr %i.arz, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.arx, ptr noundef nonnull %i.ary, ptr noundef nonnull %.sroa.4.0.i.ph.i.i409, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #36
  %i.asa = load i64, ptr %i.bb, align 8, !tbaa !105
  %i.asb = add i64 %i.asa, 1
  store i64 %i.asb, ptr %i.bb, align 8, !tbaa !105
  br label %.thread644

.thread644:                                       ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i410, %bb.eq, %bb.eh, %bb.en, %bb.em
  %i.asc = load i32, ptr %i.aqn, align 4, !tbaa !128 ; 3 uses
  %i.asd = and i32 %i.asc, 1
  %.not37.i = icmp eq i32 %i.asd, 0
  br i1 %.not37.i, label %bb.es, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.es:                                            ; preds = %.thread644
  %i.ase = load i32, ptr %i.bf, align 8, !tbaa !125
  %.not38.i = icmp eq i32 %i.asc, %i.ase
  br i1 %.not38.i, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.asf = ashr exact i32 %i.asc, 1               ; 4 uses
  %.02022.i.i.i371 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i372 = icmp eq ptr %.02022.i.i.i371, null
end_hunk_0
begin_hunk_1_@_ZN8DecGraph15DecisionDiagram42buildWithTheseSupportWithEntropyAndFourierERSt6vectorIiSaIiEERSt3setIiSt4lessIiES2_E:bb.a
_ZNSt6vectorIfSaIfEED2Ev.exit203:                 ; preds = %.preheader, %middle.block
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.gj) #35
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.0338.0517, i64 4 ; 2 uses
  %.not437 = icmp eq ptr %i.vm, %i.gu
  br i1 %.not437, label %._crit_edge519, label %.lr.ph518

.preheader:                                       ; preds = %.preheader.preheader862, %.preheader
  %.sroa.0320.0515 = phi i64 [ %i.vs, %.preheader ], [ %.sroa.0320.0515.ph, %.preheader.preheader862 ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %.sroa.0320.0515
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !84
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.sroa.0320.0515 ; 2 uses
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !84
  %i.vr = fadd float %i.vo, %i.vq
  store float %i.vr, ptr %i.vp, align 4, !tbaa !84
  %i.vs = add nuw nsw i64 %.sroa.0320.0515, 1     ; 2 uses
  %.not440 = icmp eq i64 %i.vs, %i.gk
  br i1 %.not440, label %_ZNSt6vectorIfSaIfEED2Ev.exit203, label %.preheader, !llvm.loop !478

bb.bg:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit122, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 0, ptr %i.ae, align 8, !tbaa !134
  store ptr null, ptr %i.af, align 8, !tbaa !135
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !104
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !136
  store i64 0, ptr %i.ai, align 8, !tbaa !105
  %i.vt = load ptr, ptr %2, align 8, !tbaa !93    ; 3 uses
  %i.vu = load ptr, ptr %i.s, align 8, !tbaa !93  ; 2 uses
  %.not438520 = icmp eq ptr %i.vt, %i.vu
  br i1 %.not438520, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit, label %.lr.ph523

._crit_edge524:                                   ; preds = %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.pre577 = load ptr, ptr %i.ag, align 8, !tbaa !104 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.pre577, %i.ae
  br i1 %.not4.i.i.i, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split, label %.lr.ph.i.i.i204

.lr.ph.i.i.i204:                                  ; preds = %._crit_edge524, %.lr.ph.i.i.i204
  %.06.i.i.i = phi i64 [ %i.vw, %.lr.ph.i.i.i204 ], [ 0, %._crit_edge524 ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.vv, %.lr.ph.i.i.i204 ], [ %.pre577, %._crit_edge524 ]
  %i.vv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i) #41 ; 2 uses
  %i.vw = add nuw nsw i64 %.06.i.i.i, 1           ; 3 uses
  %.not.i.i.i205 = icmp eq ptr %i.vv, %i.ae
  br i1 %.not.i.i.i205, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i204, !llvm.loop !13

_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i204
  %i.vx = icmp samesign ugt i64 %.06.i.i.i, 2305843009213693950
  br i1 %i.vx, label %bb.bh, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

bb.bh:                                            ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  %i.vy = shl nuw nsw i64 %i.vw, 2
  %i.vz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vy) #37 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.vz, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre577, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !46
  store i32 %i.wb, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !46
  %i.wc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.wd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i) #41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wd, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %i.vw
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split: ; preds = %._crit_edge524, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit
  %.sroa.0312.0.ph = phi ptr [ %i.vz, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge524 ]
  %.sroa.9.0.ph = phi ptr [ %i.we, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge524 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.wc, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge524 ]
  %.pr = load ptr, ptr %2, align 8, !tbaa !67
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit: ; preds = %bb.bg, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split
  %i.wf = phi ptr [ %.pr, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ %i.vt, %bb.bg ] ; 3 uses
  %.sroa.0312.0 = phi ptr [ %.sroa.0312.0.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %i.wg = load ptr, ptr %i.an, align 8, !tbaa !75
  store ptr %.sroa.0312.0, ptr %2, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !66
  store ptr %.sroa.9.0, ptr %i.an, align 8, !tbaa !75
  %.not.i.i.i.i.i = icmp eq ptr %i.wf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = ptrtoint ptr %i.wf to i64
  %i.wj = sub i64 %i.wh, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.wf, i64 noundef %i.wj) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit
  %.02022.i.i.i207 = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i208 = icmp eq ptr %.02022.i.i.i207, null
  br i1 %.not23.i.i.i208, label %._crit_edge.thread.i.i.i225, label %.lr.ph.i.i.i209

.lr.ph.i.i.i209:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.wk = load i32, ptr %i.a, align 4, !tbaa !46  ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i.i209
  %.02024.i.i.i210 = phi ptr [ %.02022.i.i.i207, %.lr.ph.i.i.i209 ], [ %.020.i.i.i213, %bb.bj ] ; 4 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.02024.i.i.i210, i64 32
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !46 ; 2 uses
  %i.wn = icmp slt i32 %i.wk, %i.wm               ; 2 uses
  %.in.v.i.i.i211 = select i1 %i.wn, i64 16, i64 24
  %.in.i.i.i212 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i210, i64 %.in.v.i.i.i211
  %.020.i.i.i213 = load ptr, ptr %.in.i.i.i212, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %.020.i.i.i213, null
  br i1 %.not.i.i.i214, label %._crit_edge.i.i.i215, label %bb.bj, !llvm.loop !7

._crit_edge.i.i.i215:                             ; preds = %bb.bj
  br i1 %i.wn, label %._crit_edge.thread.i.i.i225, label %bb.bl

._crit_edge.thread.i.i.i225:                      ; preds = %._crit_edge.i.i.i215, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.019.lcssa29.i.i.i226 = phi ptr [ %.02024.i.i.i210, %._crit_edge.i.i.i215 ], [ %i.k, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  %i.wo = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.wp = icmp eq ptr %.019.lcssa29.i.i.i226, %i.wo
  br i1 %i.wp, label %select.unfold.i.i222, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.thread.i.i.i225
  %i.wq = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i226) #41
  %.phi.trans.insert.i.i227 = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  %.pre.i.i228 = load i32, ptr %.phi.trans.insert.i.i227, align 4, !tbaa !46
  %.pre18.i.i229 = load i32, ptr %i.a, align 4, !tbaa !46
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge.i.i.i215
  %i.wr = phi i32 [ %.pre18.i.i229, %bb.bk ], [ %i.wk, %._crit_edge.i.i.i215 ]
  %i.ws = phi i32 [ %.pre.i.i228, %bb.bk ], [ %i.wm, %._crit_edge.i.i.i215 ]
  %.019.lcssa28.i.i.i216 = phi ptr [ %.019.lcssa29.i.i.i226, %bb.bk ], [ %.02024.i.i.i210, %._crit_edge.i.i.i215 ]
  %i.wt = icmp slt i32 %i.ws, %i.wr
  br i1 %i.wt, label %select.unfold.i.i222, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit230

select.unfold.i.i222:                             ; preds = %bb.bl, %._crit_edge.thread.i.i.i225
  %.sroa.4.0.i.ph.i.i223 = phi ptr [ %.019.lcssa29.i.i.i226, %._crit_edge.thread.i.i.i225 ], [ %.019.lcssa28.i.i.i216, %bb.bl ] ; 3 uses
  %i.wu = icmp eq ptr %.sroa.4.0.i.ph.i.i223, %i.k
  br i1 %i.wu, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i224, label %bb.bm

bb.bm:                                            ; preds = %select.unfold.i.i222
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i223, i64 32
  %i.ww = load i32, ptr %i.a, align 4, !tbaa !46
  %i.wx = load i32, ptr %i.wv, align 4, !tbaa !46
  %i.wy = icmp slt i32 %i.ww, %i.wx
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i224

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i224: ; preds = %bb.bm, %select.unfold.i.i222
  %i.wz = phi i1 [ %i.wy, %bb.bm ], [ true, %select.unfold.i.i222 ]
  %i.xa = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 32
  %i.xc = load i32, ptr %i.a, align 4, !tbaa !46
  store i32 %i.xc, ptr %i.xb, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.wz, ptr noundef nonnull %i.xa, ptr noundef nonnull %.sroa.4.0.i.ph.i.i223, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #36
  %i.xd = load i64, ptr %i.o, align 8, !tbaa !105
  %i.xe = add i64 %i.xd, 1
  store i64 %i.xe, ptr %i.o, align 8, !tbaa !105
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit230

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit230:   ; preds = %bb.bl, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i224
  %i.xf = call noundef i64 @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.xg = load ptr, ptr %i.af, align 8, !tbaa !135
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.xg)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i.i.i231 = icmp eq ptr %.sroa.0357.0.lcssa, null
  br i1 %.not.i.i.i231, label %_ZNSt6vectorIiSaIiEED2Ev.exit232, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit230
  %i.xh = sub i64 %.sroa.23.0.lcssa, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.0.lcssa, i64 noundef %i.xh) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit232

_ZNSt6vectorIiSaIiEED2Ev.exit232:                 ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit230, %bb.bn
  %.not.i.i.i233 = icmp eq ptr %.sroa.0387.0, null
  br i1 %.not.i.i.i233, label %_ZNSt6vectorIfSaIfEED2Ev.exit234, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit232
  %i.xi = sub i64 %.sroa.15395.0, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.0, i64 noundef %i.xi) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit234

_ZNSt6vectorIfSaIfEED2Ev.exit234:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit232, %bb.bo
  %i.xj = load ptr, ptr %2, align 8, !tbaa !93    ; 3 uses
  %i.xk = load ptr, ptr %i.s, align 8, !tbaa !93  ; 2 uses
  %i.xl = icmp eq ptr %i.xj, %i.xk
  br i1 %i.xl, label %.critedge.thread, label %bb.f, !llvm.loop !479

.lr.ph523:                                        ; preds = %bb.bg, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.sroa.0316.0521 = phi ptr [ %i.aef, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit ], [ %i.vt, %bb.bg ] ; 2 uses
  %i.xm = load i32, ptr %.sroa.0316.0521, align 4, !tbaa !46 ; 5 uses
  %i.xn = load i32, ptr %i.a, align 4, !tbaa !46
  %i.xo = load i32, ptr %i.aj, align 4, !tbaa !122
  %i.xp = add nsw i32 %i.xo, 2
  %i.xq = sext i32 %i.xp to i64
  %i.xr = load ptr, ptr %i.ak, align 8, !tbaa !123 ; 8 uses
  %i.xs = load ptr, ptr %i.d, align 8, !tbaa !124 ; 7 uses
  %i.xt = ptrtoint ptr %i.xr to i64               ; 2 uses
  %i.xu = ptrtoint ptr %i.xs to i64               ; 2 uses
  %i.xv = sub i64 %i.xt, %i.xu                    ; 7 uses
  %i.xw = sdiv exact i64 %i.xv, 48                ; 12 uses
  %i.xx = lshr i64 %i.xw, 1
  %i.xy = icmp ult i64 %i.xx, %i.xq
  br i1 %i.xy, label %bb.bp, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bp:                                            ; preds = %.lr.ph523
  %i.xz = icmp sgt i64 %i.xv, 0
  br i1 %i.xz, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.ya = load ptr, ptr %i.al, align 8, !tbaa !165
  %i.yb = ptrtoint ptr %i.ya to i64
  %i.yc = sub i64 %i.yb, %i.xt
  %i.yd = sdiv exact i64 %i.yc, 48                ; 2 uses
  %i.ye = sub nuw nsw i64 192153584101141162, %i.xw ; 2 uses
  %i.yf = icmp ule i64 %i.yd, %i.ye
  call void @llvm.assume(i1 %i.yf)
  %.not27.i = icmp ult i64 %i.yd, %i.xw
  br i1 %.not27.i, label %bb.br, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bq
  %xtraiter912 = and i64 %i.xw, 3                 ; 2 uses
  %lcmp.mod913.not = icmp eq i64 %xtraiter912, 0
  br i1 %lcmp.mod913.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.yl, %.lr.ph.i.i.i.i.prol ], [ %i.xr, %.lr.ph.i.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.yk, %.lr.ph.i.i.i.i.prol ], [ %i.xw, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 8, !tbaa !127
  %i.yg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  %i.yh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 0, ptr %i.yh, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yg, i8 0, i64 17, i1 false)
  %i.yi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40
  store i32 -1, ptr %i.yi, align 8, !tbaa !129
  %i.yj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 44
  store i32 -1, ptr %i.yj, align 4, !tbaa !128
  %i.yk = add nsw i64 %.057.i.i.i.i.prol, -1      ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter912
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !480

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa870.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.yl, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.xr, %.lr.ph.i.i.i.i.preheader ], [ %i.yl, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.xw, %.lr.ph.i.i.i.i.preheader ], [ %i.yk, %.lr.ph.i.i.i.i.prol ]
  %i.ym = icmp ult i64 %i.xv, 192
  br i1 %i.ym, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.zh, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i = phi i64 [ %i.zg, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 8, !tbaa !127
  %i.yn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.yo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 0, ptr %i.yo, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yn, i8 0, i64 17, i1 false)
  %i.yp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.yp, align 8, !tbaa !129
  %i.yq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 -1, ptr %i.yq, align 4, !tbaa !128
  %i.yr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 -1, ptr %i.yr, align 8, !tbaa !127
  %i.ys = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  %i.yt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i64 0, ptr %i.yt, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ys, i8 0, i64 17, i1 false)
  %i.yu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store i32 -1, ptr %i.yu, align 8, !tbaa !129
  %i.yv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i32 -1, ptr %i.yv, align 4, !tbaa !128
  %i.yw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 -1, ptr %i.yw, align 8, !tbaa !127
  %i.yx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  %i.yy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  store i64 0, ptr %i.yy, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yx, i8 0, i64 17, i1 false)
  %i.yz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 136
  store i32 -1, ptr %i.yz, align 8, !tbaa !129
  %i.za = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 140
  store i32 -1, ptr %i.za, align 4, !tbaa !128
  %i.zb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 144
  store i32 -1, ptr %i.zb, align 8, !tbaa !127
  %i.zc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  %i.zd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 176
  store i64 0, ptr %i.zd, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zc, i8 0, i64 17, i1 false)
  %i.ze = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 184
  store i32 -1, ptr %i.ze, align 8, !tbaa !129
  %i.zf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 188
  store i32 -1, ptr %i.zf, align 4, !tbaa !128
  %i.zg = add nsw i64 %.057.i.i.i.i, -4           ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i309.3 = icmp eq i64 %i.zg, 0
  br i1 %.not.i.i.i.i309.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa870 = phi ptr [ %.lcssa870.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.zh, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa870, ptr %i.ak, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.zi = icmp ult i64 %i.ye, %i.xw
  br i1 %i.zi, label %bb.bs, label %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #40
  unreachable

_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.br
  %i.zj = shl nuw nsw i64 %i.xw, 1
  %i.zk = call i64 @llvm.umin.i64(i64 %i.zj, i64 192153584101141162) ; 2 uses
  %i.zl = mul nuw nsw i64 %i.zk, 48
  %i.zm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zl) #37 ; 4 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.xv ; 3 uses
  %xtraiter914 = and i64 %i.xw, 3                 ; 2 uses
  %lcmp.mod915.not = icmp eq i64 %xtraiter914, 0
  br i1 %lcmp.mod915.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol

.lr.ph.i.i.i29.i.prol:                            ; preds = %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i29.i.prol
  %.08.i.i.i30.i.prol = phi ptr [ %i.zt, %.lr.ph.i.i.i29.i.prol ], [ %i.zn, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.057.i.i.i31.i.prol = phi i64 [ %i.zs, %.lr.ph.i.i.i29.i.prol ], [ %i.xw, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter916 = phi i64 [ %prol.iter916.next, %.lr.ph.i.i.i29.i.prol ], [ 0, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i30.i.prol, align 8, !tbaa !127
  %i.zo = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 8
  %i.zp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 32
  store i64 0, ptr %i.zp, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zo, i8 0, i64 17, i1 false)
  %i.zq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 40
  store i32 -1, ptr %i.zq, align 8, !tbaa !129
  %i.zr = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 44
  store i32 -1, ptr %i.zr, align 4, !tbaa !128
  %i.zs = add nsw i64 %.057.i.i.i31.i.prol, -1    ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 48 ; 2 uses
  %prol.iter916.next = add i64 %prol.iter916, 1   ; 2 uses
  %prol.iter916.cmp.not = icmp eq i64 %prol.iter916.next, %xtraiter914
  br i1 %prol.iter916.cmp.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol, !llvm.loop !481

.lr.ph.i.i.i29.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i29.i.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i30.i.unr = phi ptr [ %i.zn, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.zt, %.lr.ph.i.i.i29.i.prol ]
  %.057.i.i.i31.i.unr = phi i64 [ %i.xw, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.zs, %.lr.ph.i.i.i29.i.prol ]
  %i.zu = icmp ult i64 %i.xv, 192
  br i1 %i.zu, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i.i.i29.i.prol.loopexit, %.lr.ph.i.i.i29.i
  %.08.i.i.i30.i = phi ptr [ %i.aap, %.lr.ph.i.i.i29.i ], [ %.08.i.i.i30.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i31.i = phi i64 [ %i.aao, %.lr.ph.i.i.i29.i ], [ %.057.i.i.i31.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30.i, align 8, !tbaa !127
  %i.zv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 8
  %i.zw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 32
  store i64 0, ptr %i.zw, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zv, i8 0, i64 17, i1 false)
  %i.zx = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 40
  store i32 -1, ptr %i.zx, align 8, !tbaa !129
  %i.zy = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 44
  store i32 -1, ptr %i.zy, align 4, !tbaa !128
  %i.zz = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 48
  store i32 -1, ptr %i.zz, align 8, !tbaa !127
  %i.aaa = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 56
  %i.aab = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 80
  store i64 0, ptr %i.aab, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaa, i8 0, i64 17, i1 false)
  %i.aac = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 88
  store i32 -1, ptr %i.aac, align 8, !tbaa !129
  %i.aad = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 92
  store i32 -1, ptr %i.aad, align 4, !tbaa !128
  %i.aae = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 96
  store i32 -1, ptr %i.aae, align 8, !tbaa !127
  %i.aaf = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 104
  %i.aag = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 128
  store i64 0, ptr %i.aag, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaf, i8 0, i64 17, i1 false)
  %i.aah = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 136
  store i32 -1, ptr %i.aah, align 8, !tbaa !129
  %i.aai = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 140
  store i32 -1, ptr %i.aai, align 4, !tbaa !128
  %i.aaj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 144
  store i32 -1, ptr %i.aaj, align 8, !tbaa !127
  %i.aak = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 152
  %i.aal = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 176
  store i64 0, ptr %i.aal, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aak, i8 0, i64 17, i1 false)
  %i.aam = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 184
  store i32 -1, ptr %i.aam, align 8, !tbaa !129
  %i.aan = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 188
  store i32 -1, ptr %i.aan, align 4, !tbaa !128
  %i.aao = add nsw i64 %.057.i.i.i31.i, -4        ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 192
  %.not.i.i.i32.i.3 = icmp eq i64 %i.aao, 0
  br i1 %.not.i.i.i32.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i: ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i.i.i29.i.prol.loopexit
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.xs, %i.xr
  br i1 %.not9.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.abi, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.zm, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.abh, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.xs, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 7 uses
  %i.aaq = load i32, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !127
  store i32 %i.aaq, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !127
  %i.aar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.aas = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.aat = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !45 ; 3 uses
  %i.aav = load <2 x ptr>, ptr %i.aas, align 8, !tbaa !51
  store <2 x ptr> %i.aav, ptr %i.aar, align 8, !tbaa !51
  %i.aaw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.aax = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.aay = load i8, ptr %i.aax, align 8, !tbaa !49
  store i8 %i.aay, ptr %i.aaw, align 8, !tbaa !49
  %i.aaz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.aba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !37
  store i64 %i.abb, ptr %i.aaz, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i.i310 = icmp eq ptr %i.aau, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i310, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.abc = load i32, ptr %i.aau, align 4, !tbaa !46
  %i.abd = add nsw i32 %i.abc, 1
  store i32 %i.abd, ptr %i.aau, align 4, !tbaa !46
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bt, %.lr.ph.i.i.i.i.i.i
  %i.abe = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.abf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.abg = load i64, ptr %i.abf, align 8
  store i64 %i.abg, ptr %i.abe, align 8
  %i.abh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i311 = icmp eq ptr %i.abh, %i.xr
  br i1 %.not.i.i.i.i.i.i311, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef %i.xs, ptr noundef %i.xr)
  %.not.i35.i = icmp eq ptr %i.xs, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %i.abj = load ptr, ptr %i.al, align 8, !tbaa !165
  %i.abk = ptrtoint ptr %i.abj to i64
  %i.abl = sub i64 %i.abk, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef %i.abl) #35
  br label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bu, %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  store ptr %i.zm, ptr %i.d, align 8, !tbaa !124
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.xv
  store ptr %i.abm, ptr %i.ak, align 8, !tbaa !123
  %i.abn = getelementptr inbounds nuw [48 x i8], ptr %i.zm, i64 %i.zk
  store ptr %i.abn, ptr %i.al, align 8, !tbaa !165
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bv:                                            ; preds = %bb.bp
  %i.abo = icmp slt i64 %i.xv, 0
  br i1 %i.abo, label %bb.bw, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bw:                                            ; preds = %bb.bv
  %.idx.i.i = mul nsw i64 %i.xw, 96
  %i.abp = getelementptr inbounds nuw i8, ptr %i.xs, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i236 = icmp eq ptr %i.xr, %i.abp
  br i1 %.not.i.i.i.i236, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef nonnull %i.abp, ptr noundef %i.xr)
  store ptr %i.abp, ptr %i.ak, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.bx, %bb.bw, %bb.bv, %.lr.ph523
  %i.abq = sext i32 %i.xm to i64
  %i.abr = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.abs = getelementptr inbounds nuw [48 x i8], ptr %i.abr, i64 %i.abq ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 40 ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 8, !tbaa !129
  %.not.i235 = icmp eq i32 %i.abu, -1
  br i1 %.not.i235, label %bb.by, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.by:                                            ; preds = %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abs, i64 44 ; 3 uses
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !128
  %.not33.i = icmp eq i32 %i.abw, -1
  br i1 %.not33.i, label %bb.bz, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8DecGraph12DecisionNode25buildWithDecisionVariableEPNS_15DecisionDiagramEibi(ptr noundef nonnull align 8 dereferenceable(48) %i.abs, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.xn, i1 zeroext poison, i32 noundef 0)
  %i.abx = load i32, ptr %i.abt, align 8, !tbaa !129 ; 4 uses
  %i.aby = icmp eq i32 %i.abx, -1
  br i1 %i.aby, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %i.abz = load i32, ptr %i.abv, align 4, !tbaa !128
  %i.aca = icmp eq i32 %i.abz, -1
  br i1 %i.aca, label %bb.cb, label %.thread

bb.cb:                                            ; preds = %bb.ca
  %.02022.i.i.i284 = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i285 = icmp eq ptr %.02022.i.i.i284, null
  br i1 %.not23.i.i.i285, label %._crit_edge.thread.i.i.i302, label %.lr.ph.i.i.i286

.lr.ph.i.i.i286:                                  ; preds = %bb.cb, %.lr.ph.i.i.i286
  %.02024.i.i.i287 = phi ptr [ %.020.i.i.i290, %.lr.ph.i.i.i286 ], [ %.02022.i.i.i284, %bb.cb ] ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.02024.i.i.i287, i64 32
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !46 ; 2 uses
  %i.acd = icmp slt i32 %i.xm, %i.acc             ; 2 uses
  %.in.v.i.i.i288 = select i1 %i.acd, i64 16, i64 24
  %.in.i.i.i289 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i287, i64 %.in.v.i.i.i288
  %.020.i.i.i290 = load ptr, ptr %.in.i.i.i289, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i291 = icmp eq ptr %.020.i.i.i290, null
  br i1 %.not.i.i.i291, label %._crit_edge.i.i.i292, label %.lr.ph.i.i.i286, !llvm.loop !7

._crit_edge.i.i.i292:                             ; preds = %.lr.ph.i.i.i286
  br i1 %i.acd, label %._crit_edge.thread.i.i.i302, label %bb.cd

._crit_edge.thread.i.i.i302:                      ; preds = %._crit_edge.i.i.i292, %bb.cb
  %.019.lcssa29.i.i.i303 = phi ptr [ %.02024.i.i.i287, %._crit_edge.i.i.i292 ], [ %i.ae, %bb.cb ] ; 4 uses
  %i.ace = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.acf = icmp eq ptr %.019.lcssa29.i.i.i303, %i.ace
  br i1 %i.acf, label %select.unfold.i.i299, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.thread.i.i.i302
  %i.acg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i303) #41
  %.phi.trans.insert.i.i304 = getelementptr inbounds nuw i8, ptr %i.acg, i64 32
  %.pre.i.i305 = load i32, ptr %.phi.trans.insert.i.i304, align 4, !tbaa !46
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i.i.i292
  %i.ach = phi i32 [ %.pre.i.i305, %bb.cc ], [ %i.acc, %._crit_edge.i.i.i292 ]
  %.019.lcssa28.i.i.i293 = phi ptr [ %.019.lcssa29.i.i.i303, %bb.cc ], [ %.02024.i.i.i287, %._crit_edge.i.i.i292 ]
  %i.aci = icmp slt i32 %i.ach, %i.xm
  br i1 %i.aci, label %select.unfold.i.i299, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

select.unfold.i.i299:                             ; preds = %bb.cd, %._crit_edge.thread.i.i.i302
  %.sroa.4.0.i.ph.i.i300 = phi ptr [ %.019.lcssa29.i.i.i303, %._crit_edge.thread.i.i.i302 ], [ %.019.lcssa28.i.i.i293, %bb.cd ] ; 3 uses
  %i.acj = icmp eq ptr %.sroa.4.0.i.ph.i.i300, %i.ae
  br i1 %i.acj, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i301, label %bb.ce

bb.ce:                                            ; preds = %select.unfold.i.i299
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i300, i64 32
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !46
  %i.acm = icmp slt i32 %i.xm, %i.acl
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i301

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i301: ; preds = %bb.ce, %select.unfold.i.i299
  %i.acn = phi i1 [ %i.acm, %bb.ce ], [ true, %select.unfold.i.i299 ]
  %i.aco = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  store i32 %i.xm, ptr %i.acp, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.acn, ptr noundef nonnull %i.aco, ptr noundef nonnull %.sroa.4.0.i.ph.i.i300, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #36
  br label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit.sink.split

bb.cf:                                            ; preds = %bb.bz
  %i.acq = and i32 %i.abx, 1
  %.not35.i = icmp eq i32 %i.acq, 0
  br i1 %.not35.i, label %bb.cg, label %.thread

bb.cg:                                            ; preds = %bb.cf
  %i.acr = load i32, ptr %i.am, align 8, !tbaa !125
  %.not36.i = icmp eq i32 %i.abx, %i.acr
  br i1 %.not36.i, label %.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.acs = ashr exact i32 %i.abx, 1               ; 4 uses
  %.02022.i.i.i260 = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i261 = icmp eq ptr %.02022.i.i.i260, null
  br i1 %.not23.i.i.i261, label %._crit_edge.thread.i.i.i278, label %.lr.ph.i.i.i262

.lr.ph.i.i.i262:                                  ; preds = %bb.ch, %.lr.ph.i.i.i262
  %.02024.i.i.i263 = phi ptr [ %.020.i.i.i266, %.lr.ph.i.i.i262 ], [ %.02022.i.i.i260, %bb.ch ] ; 4 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.02024.i.i.i263, i64 32
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !46 ; 2 uses
  %i.acv = icmp slt i32 %i.acs, %i.acu            ; 2 uses
  %.in.v.i.i.i264 = select i1 %i.acv, i64 16, i64 24
  %.in.i.i.i265 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i263, i64 %.in.v.i.i.i264
  %.020.i.i.i266 = load ptr, ptr %.in.i.i.i265, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %.020.i.i.i266, null
  br i1 %.not.i.i.i267, label %._crit_edge.i.i.i268, label %.lr.ph.i.i.i262, !llvm.loop !7

._crit_edge.i.i.i268:                             ; preds = %.lr.ph.i.i.i262
  br i1 %i.acv, label %._crit_edge.thread.i.i.i278, label %bb.cj

._crit_edge.thread.i.i.i278:                      ; preds = %._crit_edge.i.i.i268, %bb.ch
  %.019.lcssa29.i.i.i279 = phi ptr [ %.02024.i.i.i263, %._crit_edge.i.i.i268 ], [ %i.ae, %bb.ch ] ; 4 uses
  %i.acw = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.acx = icmp eq ptr %.019.lcssa29.i.i.i279, %i.acw
  br i1 %i.acx, label %select.unfold.i.i275, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.thread.i.i.i278
  %i.acy = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i279) #41
  %.phi.trans.insert.i.i280 = getelementptr inbounds nuw i8, ptr %i.acy, i64 32
  %.pre.i.i281 = load i32, ptr %.phi.trans.insert.i.i280, align 4, !tbaa !46
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge.i.i.i268
  %i.acz = phi i32 [ %.pre.i.i281, %bb.ci ], [ %i.acu, %._crit_edge.i.i.i268 ]
  %.019.lcssa28.i.i.i269 = phi ptr [ %.019.lcssa29.i.i.i279, %bb.ci ], [ %.02024.i.i.i263, %._crit_edge.i.i.i268 ]
  %i.ada = icmp slt i32 %i.acz, %i.acs
  br i1 %i.ada, label %select.unfold.i.i275, label %.thread

select.unfold.i.i275:                             ; preds = %bb.cj, %._crit_edge.thread.i.i.i278
  %.sroa.4.0.i.ph.i.i276 = phi ptr [ %.019.lcssa29.i.i.i279, %._crit_edge.thread.i.i.i278 ], [ %.019.lcssa28.i.i.i269, %bb.cj ] ; 3 uses
  %i.adb = icmp eq ptr %.sroa.4.0.i.ph.i.i276, %i.ae
  br i1 %i.adb, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i277, label %bb.ck

bb.ck:                                            ; preds = %select.unfold.i.i275
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i276, i64 32
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !46
  %i.ade = icmp slt i32 %i.acs, %i.add
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i277

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i277: ; preds = %bb.ck, %select.unfold.i.i275
  %i.adf = phi i1 [ %i.ade, %bb.ck ], [ true, %select.unfold.i.i275 ]
  %i.adg = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  store i32 %i.acs, ptr %i.adh, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.adf, ptr noundef nonnull %i.adg, ptr noundef nonnull %.sroa.4.0.i.ph.i.i276, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #36
  %i.adi = load i64, ptr %i.ai, align 8, !tbaa !105
  %i.adj = add i64 %i.adi, 1
  store i64 %i.adj, ptr %i.ai, align 8, !tbaa !105
  br label %.thread

.thread:                                          ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i277, %bb.cj, %bb.ca, %bb.cg, %bb.cf
  %i.adk = load i32, ptr %i.abv, align 4, !tbaa !128 ; 3 uses
  %i.adl = and i32 %i.adk, 1
  %.not37.i = icmp eq i32 %i.adl, 0
  br i1 %.not37.i, label %bb.cl, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.cl:                                            ; preds = %.thread
  %i.adm = load i32, ptr %i.am, align 8, !tbaa !125
  %.not38.i = icmp eq i32 %i.adk, %i.adm
  br i1 %.not38.i, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.adn = ashr exact i32 %i.adk, 1               ; 4 uses
  %.02022.i.i.i238 = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
end_hunk_1
